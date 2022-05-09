; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ddbridge/ddbridge-hw.c_pt.bc'
source_filename = "../drivers/media/pci/ddbridge/ddbridge-hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ddb_device_id = type { i16, i16, i16, i16, ptr }
%struct.ddb_info = type { i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr }
%struct.ddb_regmap = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ddb_regset = type { i32, i32, i32 }

@ddb_device_ids = internal constant { [29 x %struct.ddb_device_id], [68 x i8] } { [29 x %struct.ddb_device_id] [%struct.ddb_device_id { i16 -8959, i16 2, i16 -8959, i16 1, ptr @ddb_octopus }, %struct.ddb_device_id { i16 -8959, i16 3, i16 -8959, i16 1, ptr @ddb_octopus }, %struct.ddb_device_id { i16 -8959, i16 5, i16 -8959, i16 4, ptr @ddb_octopusv3 }, %struct.ddb_device_id { i16 -8959, i16 3, i16 -8959, i16 2, ptr @ddb_octopus_le }, %struct.ddb_device_id { i16 -8959, i16 3, i16 -8959, i16 3, ptr @ddb_octopus_oem }, %struct.ddb_device_id { i16 -8959, i16 3, i16 -8959, i16 16, ptr @ddb_octopus_mini }, %struct.ddb_device_id { i16 -8959, i16 5, i16 -8959, i16 17, ptr @ddb_octopus_mini }, %struct.ddb_device_id { i16 -8959, i16 3, i16 -8959, i16 32, ptr @ddb_v6 }, %struct.ddb_device_id { i16 -8959, i16 3, i16 -8959, i16 33, ptr @ddb_v6_5 }, %struct.ddb_device_id { i16 -8959, i16 6, i16 -8959, i16 34, ptr @ddb_v7 }, %struct.ddb_device_id { i16 -8959, i16 6, i16 -8959, i16 36, ptr @ddb_v7a }, %struct.ddb_device_id { i16 -8959, i16 3, i16 -8959, i16 48, ptr @ddb_dvbct }, %struct.ddb_device_id { i16 -8959, i16 3, i16 -8959, i16 -9469, ptr @ddb_satixs2v3 }, %struct.ddb_device_id { i16 -8959, i16 6, i16 -8959, i16 49, ptr @ddb_ctv7 }, %struct.ddb_device_id { i16 -8959, i16 6, i16 -8959, i16 50, ptr @ddb_ctv7 }, %struct.ddb_device_id { i16 -8959, i16 6, i16 -8959, i16 51, ptr @ddb_ctv7 }, %struct.ddb_device_id { i16 -8959, i16 7, i16 -8959, i16 35, ptr @ddb_s2_48 }, %struct.ddb_device_id { i16 -8959, i16 8, i16 -8959, i16 52, ptr @ddb_ct2_8 }, %struct.ddb_device_id { i16 -8959, i16 8, i16 -8959, i16 53, ptr @ddb_c2t2_8 }, %struct.ddb_device_id { i16 -8959, i16 8, i16 -8959, i16 54, ptr @ddb_isdbt_8 }, %struct.ddb_device_id { i16 -8959, i16 8, i16 -8959, i16 55, ptr @ddb_c2t2i_v0_8 }, %struct.ddb_device_id { i16 -8959, i16 8, i16 -8959, i16 56, ptr @ddb_c2t2i_8 }, %struct.ddb_device_id { i16 -8959, i16 9, i16 -8959, i16 37, ptr @ddb_s2x_48 }, %struct.ddb_device_id { i16 -8959, i16 6, i16 -8959, i16 57, ptr @ddb_ctv7 }, %struct.ddb_device_id { i16 -8959, i16 17, i16 -8959, i16 64, ptr @ddb_ci }, %struct.ddb_device_id { i16 -8959, i16 17, i16 -8959, i16 65, ptr @ddb_cis }, %struct.ddb_device_id { i16 -8959, i16 18, i16 -8959, i16 66, ptr @ddb_ci }, %struct.ddb_device_id { i16 -8959, i16 19, i16 -8959, i16 67, ptr @ddb_ci_s2_pro }, %struct.ddb_device_id { i16 -8959, i16 19, i16 -8959, i16 68, ptr @ddb_ci_s2_pro_a }], [68 x i8] zeroinitializer }, align 32
@ddb_none = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 0, ptr @.str.23, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_octopus = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 1, ptr @.str, i32 15, i32 0, i32 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_octopusv3 = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 1, ptr @.str.1, i32 15, i32 0, i32 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_octopus_le = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 1, ptr @.str.2, i32 3, i32 0, i32 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_octopus_oem = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 1, ptr @.str.3, i32 15, i32 0, i32 0, i8 4, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_octopus_mini = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 1, ptr @.str.4, i32 15, i32 0, i32 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_v6 = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 1, ptr @.str.5, i32 7, i32 0, i32 0, i8 3, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_v6_5 = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 1, ptr @.str.6, i32 15, i32 0, i32 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_v7 = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 1, ptr @.str.7, i32 15, i32 2, i32 4, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i32 0, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_v7a = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 1, ptr @.str.8, i32 15, i32 2, i32 4, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i32 0, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_dvbct = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 1, ptr @.str.9, i32 7, i32 0, i32 0, i8 3, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_satixs2v3 = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 1, ptr @.str.10, i32 7, i32 0, i32 0, i8 3, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_ctv7 = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 1, ptr @.str.11, i32 15, i32 3, i32 4, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_s2_48 = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 5, ptr @.str.12, i32 1, i32 1, i32 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 24, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_ct2_8 = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 6, ptr @.str.13, i32 15, i32 255, i32 3840, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i32 24, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_c2t2_8 = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 6, ptr @.str.14, i32 15, i32 255, i32 3840, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i32 24, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_isdbt_8 = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 6, ptr @.str.15, i32 15, i32 255, i32 3840, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i32 24, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_c2t2i_v0_8 = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 6, ptr @.str.16, i32 15, i32 255, i32 3840, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 9, i8 0, i8 0, i32 24, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_c2t2i_8 = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 6, ptr @.str.17, i32 15, i32 255, i32 3840, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i32 24, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_s2x_48 = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 9, ptr @.str.18, i32 0, i32 0, i32 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 0, i32 24, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_ci = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 2, ptr @.str.19, i32 3, i32 0, i32 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_cis = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 2, ptr @.str.20, i32 3, i32 0, i32 0, i8 3, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_ci_s2_pro = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 2, ptr @.str.21, i32 1, i32 2, i32 4, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@ddb_ci_s2_pro_a = internal constant { %struct.ddb_info, [56 x i8] } { %struct.ddb_info { i32 2, ptr @.str.22, i32 1, i32 2, i32 4, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, ptr @octopus_map }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Devices Octopus DVB adapter\00", [60 x i8] zeroinitializer }, align 32
@octopus_map = internal constant { %struct.ddb_regmap, [48 x i8] } { %struct.ddb_regmap { i32 0, i32 8, i32 16, ptr @octopus_i2c, ptr @octopus_i2c_buf, ptr @octopus_idma, ptr @octopus_idma_buf, ptr @octopus_odma, ptr @octopus_odma_buf, ptr @octopus_input, ptr @octopus_output, ptr null }, [48 x i8] zeroinitializer }, align 32
@octopus_i2c = internal constant { %struct.ddb_regset, [20 x i8] } { %struct.ddb_regset { i32 128, i32 4, i32 32 }, [20 x i8] zeroinitializer }, align 32
@octopus_i2c_buf = internal constant { %struct.ddb_regset, [20 x i8] } { %struct.ddb_regset { i32 4096, i32 4, i32 512 }, [20 x i8] zeroinitializer }, align 32
@octopus_idma = internal constant { %struct.ddb_regset, [20 x i8] } { %struct.ddb_regset { i32 768, i32 8, i32 16 }, [20 x i8] zeroinitializer }, align 32
@octopus_idma_buf = internal constant { %struct.ddb_regset, [20 x i8] } { %struct.ddb_regset { i32 8192, i32 8, i32 256 }, [20 x i8] zeroinitializer }, align 32
@octopus_odma = internal constant { %struct.ddb_regset, [20 x i8] } { %struct.ddb_regset { i32 896, i32 4, i32 16 }, [20 x i8] zeroinitializer }, align 32
@octopus_odma_buf = internal constant { %struct.ddb_regset, [20 x i8] } { %struct.ddb_regset { i32 10240, i32 4, i32 256 }, [20 x i8] zeroinitializer }, align 32
@octopus_input = internal constant { %struct.ddb_regset, [20 x i8] } { %struct.ddb_regset { i32 512, i32 8, i32 16 }, [20 x i8] zeroinitializer }, align 32
@octopus_output = internal constant { %struct.ddb_regset, [20 x i8] } { %struct.ddb_regset { i32 640, i32 8, i32 16 }, [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Digital Devices Octopus V3 DVB adapter\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Digital Devices Octopus LE DVB adapter\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Digital Devices Octopus OEM\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Digital Devices Octopus Mini\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Digital Devices Cine S2 V6 DVB adapter\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Digital Devices Cine S2 V6.5 DVB adapter\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Digital Devices Cine S2 V7 DVB adapter\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Digital Devices Cine S2 V7 Advanced DVB adapter\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Digital Devices DVBCT V6.1 DVB adapter\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Mystique SaTiX-S2 V3 DVB adapter\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Digital Devices Cine CT V7 DVB adapter\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Digital Devices MAX S8 4/8\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Digital Devices MAX A8 CT2\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Digital Devices MAX A8 C2T2\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Digital Devices MAX A8 ISDBT\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Digital Devices MAX A8 C2T2I V0\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Digital Devices MAX A8 C2T2I\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Devices MAX SX8\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Digital Devices Octopus CI\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Digital Devices Octopus CI single\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Digital Devices Octopus CI S2 Pro\00", [62 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Digital Devices Octopus CI S2 Pro Advanced\00", [53 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"unknown Digital Devices PCIe card, install newer driver\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"ddb_device_ids\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 336, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"ddb_none\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 90, i32 30 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"ddb_octopus\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 96, i32 30 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"ddb_octopusv3\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 104, i32 30 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"ddb_octopus_le\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 112, i32 30 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"ddb_octopus_oem\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 120, i32 30 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"ddb_octopus_mini\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 132, i32 30 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"ddb_v6\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 140, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant [9 x i8] c"ddb_v6_5\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 148, i32 30 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"ddb_v7\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 156, i32 30 }
@___asan_gen_.54 = private unnamed_addr constant [8 x i8] c"ddb_v7a\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 167, i32 30 }
@___asan_gen_.57 = private unnamed_addr constant [10 x i8] c"ddb_dvbct\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 232, i32 30 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"ddb_satixs2v3\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 188, i32 30 }
@___asan_gen_.63 = private unnamed_addr constant [9 x i8] c"ddb_ctv7\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 178, i32 30 }
@___asan_gen_.66 = private unnamed_addr constant [10 x i8] c"ddb_s2_48\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 304, i32 30 }
@___asan_gen_.69 = private unnamed_addr constant [10 x i8] c"ddb_ct2_8\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 242, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant [11 x i8] c"ddb_c2t2_8\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 254, i32 30 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"ddb_isdbt_8\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 266, i32 30 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"ddb_c2t2i_v0_8\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 278, i32 30 }
@___asan_gen_.81 = private unnamed_addr constant [12 x i8] c"ddb_c2t2i_8\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 290, i32 30 }
@___asan_gen_.84 = private unnamed_addr constant [11 x i8] c"ddb_s2x_48\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 314, i32 30 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"ddb_ci\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 196, i32 30 }
@___asan_gen_.90 = private unnamed_addr constant [8 x i8] c"ddb_cis\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 204, i32 30 }
@___asan_gen_.93 = private unnamed_addr constant [14 x i8] c"ddb_ci_s2_pro\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 212, i32 30 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"ddb_ci_s2_pro_a\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 222, i32 30 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 98, i32 14 }
@___asan_gen_.102 = private unnamed_addr constant [12 x i8] c"octopus_map\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 74, i32 32 }
@___asan_gen_.105 = private unnamed_addr constant [12 x i8] c"octopus_i2c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 60, i32 32 }
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"octopus_i2c_buf\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 66, i32 32 }
@___asan_gen_.111 = private unnamed_addr constant [13 x i8] c"octopus_idma\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 36, i32 32 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"octopus_idma_buf\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 42, i32 32 }
@___asan_gen_.117 = private unnamed_addr constant [13 x i8] c"octopus_odma\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 48, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"octopus_odma_buf\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 54, i32 32 }
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"octopus_input\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 24, i32 32 }
@___asan_gen_.126 = private unnamed_addr constant [15 x i8] c"octopus_output\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 30, i32 32 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 106, i32 14 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 114, i32 14 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 122, i32 14 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 134, i32 14 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 142, i32 14 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 150, i32 14 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 158, i32 14 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 169, i32 14 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 234, i32 14 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 190, i32 14 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 180, i32 14 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 306, i32 14 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 244, i32 14 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 256, i32 14 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 268, i32 14 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 280, i32 14 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 292, i32 14 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 316, i32 14 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 198, i32 14 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 206, i32 14 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 214, i32 14 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 224, i32 14 }
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.196 = private constant [44 x i8] c"../drivers/media/pci/ddbridge/ddbridge-hw.c\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 92, i32 14 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @ddb_device_ids, ptr @ddb_none, ptr @ddb_octopus, ptr @ddb_octopusv3, ptr @ddb_octopus_le, ptr @ddb_octopus_oem, ptr @ddb_octopus_mini, ptr @ddb_v6, ptr @ddb_v6_5, ptr @ddb_v7, ptr @ddb_v7a, ptr @ddb_dvbct, ptr @ddb_satixs2v3, ptr @ddb_ctv7, ptr @ddb_s2_48, ptr @ddb_ct2_8, ptr @ddb_c2t2_8, ptr @ddb_isdbt_8, ptr @ddb_c2t2i_v0_8, ptr @ddb_c2t2i_8, ptr @ddb_s2x_48, ptr @ddb_ci, ptr @ddb_cis, ptr @ddb_ci_s2_pro, ptr @ddb_ci_s2_pro_a, ptr @.str, ptr @octopus_map, ptr @octopus_i2c, ptr @octopus_i2c_buf, ptr @octopus_idma, ptr @octopus_idma_buf, ptr @octopus_odma, ptr @octopus_odma_buf, ptr @octopus_input, ptr @octopus_output, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_device_ids to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_none to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_octopus to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_octopusv3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_octopus_le to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_octopus_oem to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_octopus_mini to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_v6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_v6_5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_v7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_v7a to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_dvbct to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_satixs2v3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_ctv7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_s2_48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_ct2_8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_c2t2_8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_isdbt_8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_c2t2i_v0_8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_c2t2i_8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_s2x_48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_ci to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_cis to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_ci_s2_pro to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_ci_s2_pro_a to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @octopus_map to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @octopus_i2c to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @octopus_i2c_buf to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @octopus_idma to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @octopus_idma_buf to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @octopus_odma to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @octopus_odma_buf to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @octopus_input to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @octopus_output to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_ddb_info(i16 noundef zeroext %vendor, i16 noundef zeroext %device, i16 noundef zeroext %subvendor, i16 noundef zeroext %subdevice) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.038 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [29 x %struct.ddb_device_id], ptr @ddb_device_ids, i32 0, i32 %i.038
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %vendor)
  %cmp3 = icmp eq i16 %1, %vendor
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %device6 = getelementptr [29 x %struct.ddb_device_id], ptr @ddb_device_ids, i32 0, i32 %i.038, i32 1
  %2 = ptrtoint ptr %device6 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device6, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %device)
  %cmp8 = icmp eq i16 %3, %device
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.inc

land.lhs.true10:                                  ; preds = %land.lhs.true
  %subvendor12 = getelementptr [29 x %struct.ddb_device_id], ptr @ddb_device_ids, i32 0, i32 %i.038, i32 2
  %4 = ptrtoint ptr %subvendor12 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subvendor12, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %subvendor)
  %cmp14 = icmp eq i16 %5, %subvendor
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true10.for.inc_crit_edge

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.inc

land.lhs.true16:                                  ; preds = %land.lhs.true10
  %subdevice18 = getelementptr [29 x %struct.ddb_device_id], ptr @ddb_device_ids, i32 0, i32 %i.038, i32 3
  %6 = ptrtoint ptr %subdevice18 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subdevice18, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %subdevice)
  %cmp20 = icmp eq i16 %7, %subdevice
  br i1 %cmp20, label %cleanup, label %land.lhs.true16.for.inc_crit_edge

land.lhs.true16.for.inc_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.inc

cleanup:                                          ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #3
  %info = getelementptr [29 x %struct.ddb_device_id], ptr @ddb_device_ids, i32 0, i32 %i.038, i32 4
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 4
  br label %cleanup26

for.inc:                                          ; preds = %land.lhs.true16.for.inc_crit_edge, %land.lhs.true10.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, 29
  br i1 %exitcond.not, label %for.inc.cleanup26_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body

for.inc.cleanup26_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup26

cleanup26:                                        ; preds = %for.inc.cleanup26_crit_edge, %cleanup
  %retval.2 = phi ptr [ %9, %cleanup ], [ @ddb_none, %for.inc.cleanup26_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @ddb_device_ids, !1, !"ddb_device_ids", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 336, i32 35}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 98, i32 14}
!4 = !{ptr @ddb_octopus, !5, !"ddb_octopus", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 96, i32 30}
!6 = !{ptr @octopus_map, !7, !"octopus_map", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 74, i32 32}
!8 = !{ptr @octopus_i2c, !9, !"octopus_i2c", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 60, i32 32}
!10 = !{ptr @octopus_i2c_buf, !11, !"octopus_i2c_buf", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 66, i32 32}
!12 = !{ptr @octopus_idma, !13, !"octopus_idma", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 36, i32 32}
!14 = !{ptr @octopus_idma_buf, !15, !"octopus_idma_buf", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 42, i32 32}
!16 = !{ptr @octopus_odma, !17, !"octopus_odma", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 48, i32 32}
!18 = !{ptr @octopus_odma_buf, !19, !"octopus_odma_buf", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 54, i32 32}
!20 = !{ptr @octopus_input, !21, !"octopus_input", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 24, i32 32}
!22 = !{ptr @octopus_output, !23, !"octopus_output", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 30, i32 32}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 106, i32 14}
!26 = !{ptr @ddb_octopusv3, !27, !"ddb_octopusv3", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 104, i32 30}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 114, i32 14}
!30 = !{ptr @ddb_octopus_le, !31, !"ddb_octopus_le", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 112, i32 30}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 122, i32 14}
!34 = !{ptr @ddb_octopus_oem, !35, !"ddb_octopus_oem", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 120, i32 30}
!36 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 134, i32 14}
!38 = !{ptr @ddb_octopus_mini, !39, !"ddb_octopus_mini", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 132, i32 30}
!40 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 142, i32 14}
!42 = !{ptr @ddb_v6, !43, !"ddb_v6", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 140, i32 30}
!44 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 150, i32 14}
!46 = !{ptr @ddb_v6_5, !47, !"ddb_v6_5", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 148, i32 30}
!48 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 158, i32 14}
!50 = !{ptr @ddb_v7, !51, !"ddb_v7", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 156, i32 30}
!52 = !{ptr @.str.8, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 169, i32 14}
!54 = !{ptr @ddb_v7a, !55, !"ddb_v7a", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 167, i32 30}
!56 = !{ptr @.str.9, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 234, i32 14}
!58 = !{ptr @ddb_dvbct, !59, !"ddb_dvbct", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 232, i32 30}
!60 = !{ptr @.str.10, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 190, i32 14}
!62 = !{ptr @ddb_satixs2v3, !63, !"ddb_satixs2v3", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 188, i32 30}
!64 = !{ptr @.str.11, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 180, i32 14}
!66 = !{ptr @ddb_ctv7, !67, !"ddb_ctv7", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 178, i32 30}
!68 = !{ptr @.str.12, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 306, i32 14}
!70 = !{ptr @ddb_s2_48, !71, !"ddb_s2_48", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 304, i32 30}
!72 = !{ptr @.str.13, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 244, i32 14}
!74 = !{ptr @ddb_ct2_8, !75, !"ddb_ct2_8", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 242, i32 30}
!76 = !{ptr @.str.14, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 256, i32 14}
!78 = !{ptr @ddb_c2t2_8, !79, !"ddb_c2t2_8", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 254, i32 30}
!80 = !{ptr @.str.15, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 268, i32 14}
!82 = !{ptr @ddb_isdbt_8, !83, !"ddb_isdbt_8", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 266, i32 30}
!84 = !{ptr @.str.16, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 280, i32 14}
!86 = !{ptr @ddb_c2t2i_v0_8, !87, !"ddb_c2t2i_v0_8", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 278, i32 30}
!88 = !{ptr @.str.17, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 292, i32 14}
!90 = !{ptr @ddb_c2t2i_8, !91, !"ddb_c2t2i_8", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 290, i32 30}
!92 = !{ptr @.str.18, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 316, i32 14}
!94 = !{ptr @ddb_s2x_48, !95, !"ddb_s2x_48", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 314, i32 30}
!96 = !{ptr @.str.19, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 198, i32 14}
!98 = !{ptr @ddb_ci, !99, !"ddb_ci", i1 false, i1 false}
!99 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 196, i32 30}
!100 = !{ptr @.str.20, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 206, i32 14}
!102 = !{ptr @ddb_cis, !103, !"ddb_cis", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 204, i32 30}
!104 = !{ptr @.str.21, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 214, i32 14}
!106 = !{ptr @ddb_ci_s2_pro, !107, !"ddb_ci_s2_pro", i1 false, i1 false}
!107 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 212, i32 30}
!108 = !{ptr @.str.22, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 224, i32 14}
!110 = !{ptr @ddb_ci_s2_pro_a, !111, !"ddb_ci_s2_pro_a", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 222, i32 30}
!112 = !{ptr @.str.23, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 92, i32 14}
!114 = !{ptr @ddb_none, !115, !"ddb_none", i1 false, i1 false}
!115 = !{!"../drivers/media/pci/ddbridge/ddbridge-hw.c", i32 90, i32 30}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
