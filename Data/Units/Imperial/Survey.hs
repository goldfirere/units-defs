{-# LANGUAGE TemplateHaskell, TypeFamilies, TypeOperators #-}

-----------------------------------------------------------------------------
-- |
-- Module      :  Data.Units.Imperial.Survey
-- Copyright   :  (C) 2013 Richard Eisenberg
-- License     :  BSD-style (see LICENSE)
-- Maintainer  :  Richard Eisenberg (rae@cs.brynmawr.edu)
-- Stability   :  experimental
-- Portability :  non-portable
--
-- Survey units are Gunter's units, so called because thay have been
-- standardised by Edmund Gunter in 1620 at 25 links to the rod, 4 rods
-- to the chain.
--
-- Where possible, reference have been made to UK legislation. However,
-- Wikipedia's page is /much/ better organized than any government
-- resource immediately available.
--
-- Where possible, reference have been made to UK legislation. However,
-- Wikipedia's page is /much/ better organized than any government
-- resource immediately available.
-- The UK legislation used as references are as follows:
-- <http://www.legislation.gov.uk/ukpga/1985/72/enacted>
-- <http://www.legislation.gov.uk/uksi/1994/2867/schedule/part/VI/made>
-- <http://www.legislation.gov.uk/uksi/1995/1804/schedule/made>
-----------------------------------------------------------------------------

module Data.Units.Imperial.Survey where

import Data.Metrology.TH
import Data.Units.Imperial.Length
import Language.Haskell.TH

declareDerivedUnit "Rod"  [t| Chain |] 0.25 (Just "rd")
declareDerivedUnit "Link" [t| Rod   |] 0.04 (Just "li")

-- | Survey lengths: All units above
surveyLengths :: [Name]
surveyLengths = [ ''Link, ''Rod ]
