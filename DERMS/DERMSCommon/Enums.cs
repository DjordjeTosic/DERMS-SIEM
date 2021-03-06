﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DERMSCommon
{
    public class Enums
    {
        public enum LogLevel
        {
            Info = 0,
            Warning,
            Error,
            Fatal
        }

        public enum Component
        {
            CalculationEngine = 0,
            NMS,
            SCADA,
            TransactionCoordinator,
            UI
        }
        public enum GeneratorType
        {
            Solar = 0,
            Wind
        }

        public enum Topics
        {
            DerForecastDayAhead = 1,
            Flexibility,
			NetworkModelTreeClass,
            DataPoints,
            NetworkModelTreeClass_NodeData
            //TREBA VIDETI SA CAVICEM KO SE SVE PRETPLACUJE NA PUBSUB
        }

		public enum FlexibilityIncDec
		{
			Default = 0,
			Increase,
			Decrease,
		}

		public enum Energized
        {
            NotEnergized = 0,
            FromEnergySRC,
            FromIsland
        }
        public enum ThreatDetection
        {
            Safe = 0,
            DDoSAttackSign,
            MITMAttackSign
        }
    }
}
