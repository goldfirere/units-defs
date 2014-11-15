{-# LANGUAGE TemplateHaskell, TypeFamilies, TypeOperators #-}

-----------------------------------------------------------------------------
-- |
-- Module      :  Data.Metrology.Units.PreciousMetals
-- Copyright   :  (C) 2013 Richard Eisenberg
-- License     :  BSD-style (see LICENSE)
-- Maintainer  :  Richard Eisenberg (eir@cis.upenn.edu)
-- Stability   :  experimental
-- Portability :  non-portable
--
-- Units used in the measure of precious metals.
-----------------------------------------------------------------------------

module Data.Units.PreciousMetals where

import Data.Metrology
import Data.Metrology.TH
import Data.Metrology.SI.Units
import Data.Metrology.SI.Prefixes

import qualified Data.Units.US.Avoirdupois as Avdp
import qualified Data.Units.US.Troy        as Troy

declareDerivedUnit "Carat"    [t| Milli :@ Gram |] 200  (Just "carat")
declareDerivedUnit "Point"    [t| Carat         |] 0.01 (Just "point")
declareDerivedUnit "AssayTon" [t| (Milli :@ Gram) :* (Avdp.Ton :/ Troy.Ounce) |]
                              1 (Just "AT")