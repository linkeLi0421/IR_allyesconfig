; ModuleID = '/llk/IR_all_yes/drivers/net/ipa/ipa_data-v3.5.1.c_pt.bc'
source_filename = "../drivers/net/ipa/ipa_data-v3.5.1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ipa_qsb_data = type { i8, i8, i8 }
%struct.ipa_resource_data = type { i32, i32, i32, ptr, i32, ptr }
%struct.ipa_mem_data = type { i32, ptr, i32, i32, i32, i32 }
%struct.ipa_power_data = type { i32, i32, ptr }
%struct.ipa_data = type { i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.gsi_channel_data = type { i16, i16, i8 }
%struct.ipa_endpoint_rx_data = type { i32, i8 }
%struct.ipa_gsi_endpoint_data = type { i8, i8, i8, i8, %struct.gsi_channel_data, %struct.ipa_endpoint_data }
%struct.ipa_endpoint_data = type { i8, %struct.ipa_endpoint_config_data }
%struct.ipa_endpoint_config_data = type { i32, i8, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { %struct.ipa_endpoint_tx_data }
%struct.ipa_endpoint_tx_data = type { i32, i32, i32 }
%struct.ipa_resource = type { [8 x %struct.ipa_resource_limits] }
%struct.ipa_resource_limits = type { i32, i32 }
%struct.ipa_mem = type { i32, i32, i16, i16 }
%struct.ipa_interconnect_data = type { ptr, i32, i32 }

@ipa_qsb_data = internal constant { [2 x %struct.ipa_qsb_data], [26 x i8] } { [2 x %struct.ipa_qsb_data] [%struct.ipa_qsb_data { i8 8, i8 8, i8 0 }, %struct.ipa_qsb_data { i8 4, i8 12, i8 0 }], [26 x i8] zeroinitializer }, align 32
@ipa_resource_data = internal constant { %struct.ipa_resource_data, [40 x i8] } { %struct.ipa_resource_data { i32 4, i32 3, i32 5, ptr @ipa_resource_src, i32 2, ptr @ipa_resource_dst }, [40 x i8] zeroinitializer }, align 32
@ipa_mem_data = internal constant { %struct.ipa_mem_data, [40 x i8] } { %struct.ipa_mem_data { i32 15, ptr @ipa_mem_local_data, i32 342609920, i32 8192, i32 497, i32 8192 }, [40 x i8] zeroinitializer }, align 32
@ipa_power_data = internal constant { %struct.ipa_power_data, [20 x i8] } { %struct.ipa_power_data { i32 75000000, i32 3, ptr @ipa_interconnect_data }, [20 x i8] zeroinitializer }, align 32
@ipa_data_v3_5_1 = dso_local constant { %struct.ipa_data, [60 x i8] } { %struct.ipa_data { i32 3, i32 59, i32 2, ptr @ipa_qsb_data, i32 9, ptr @ipa_gsi_endpoint_data, ptr @ipa_resource_data, ptr @ipa_mem_data, ptr @ipa_power_data }, [60 x i8] zeroinitializer }, align 32
@ipa_gsi_endpoint_data = internal constant { <{ %struct.ipa_gsi_endpoint_data, { i8, i8, i8, i8, %struct.gsi_channel_data, { i8, { i32, i8, i8, i8, i8, i8, i32, { %struct.ipa_endpoint_rx_data, [4 x i8] } } } }, %struct.ipa_gsi_endpoint_data, { i8, i8, i8, i8, %struct.gsi_channel_data, { i8, { i32, i8, i8, i8, i8, i8, i32, { %struct.ipa_endpoint_rx_data, [4 x i8] } } } }, %struct.ipa_gsi_endpoint_data, %struct.ipa_gsi_endpoint_data, %struct.ipa_gsi_endpoint_data, %struct.ipa_gsi_endpoint_data, %struct.ipa_gsi_endpoint_data }>, [116 x i8] } { <{ %struct.ipa_gsi_endpoint_data, { i8, i8, i8, i8, %struct.gsi_channel_data, { i8, { i32, i8, i8, i8, i8, i8, i32, { %struct.ipa_endpoint_rx_data, [4 x i8] } } } }, %struct.ipa_gsi_endpoint_data, { i8, i8, i8, i8, %struct.gsi_channel_data, { i8, { i32, i8, i8, i8, i8, i8, i32, { %struct.ipa_endpoint_rx_data, [4 x i8] } } } }, %struct.ipa_gsi_endpoint_data, %struct.ipa_gsi_endpoint_data, %struct.ipa_gsi_endpoint_data, %struct.ipa_gsi_endpoint_data, %struct.ipa_gsi_endpoint_data }> <{ %struct.ipa_gsi_endpoint_data { i8 0, i8 4, i8 5, i8 1, %struct.gsi_channel_data { i16 512, i16 256, i8 20 }, %struct.ipa_endpoint_data { i8 0, %struct.ipa_endpoint_config_data { i32 1, i8 0, i8 0, i8 0, i8 0, i8 1, i32 1, %union.anon zeroinitializer } } }, { i8, i8, i8, i8, %struct.gsi_channel_data, { i8, { i32, i8, i8, i8, i8, i8, i32, { %struct.ipa_endpoint_rx_data, [4 x i8] } } } } { i8 0, i8 5, i8 9, i8 0, %struct.gsi_channel_data { i16 256, i16 256, i8 8 }, { i8, { i32, i8, i8, i8, i8, i8, i32, { %struct.ipa_endpoint_rx_data, [4 x i8] } } } { i8 0, { i32, i8, i8, i8, i8, i8, i32, { %struct.ipa_endpoint_rx_data, [4 x i8] } } { i32 1, i8 0, i8 0, i8 1, i8 1, i8 0, i32 0, { %struct.ipa_endpoint_rx_data, [4 x i8] } { %struct.ipa_endpoint_rx_data { i32 2, i8 0 }, [4 x i8] undef } } } }, %struct.ipa_gsi_endpoint_data { i8 0, i8 3, i8 2, i8 1, %struct.gsi_channel_data { i16 512, i16 512, i8 16 }, %struct.ipa_endpoint_data { i8 1, %struct.ipa_endpoint_config_data { i32 1, i8 1, i8 1, i8 0, i8 1, i8 0, i32 0, %union.anon { %struct.ipa_endpoint_tx_data { i32 4, i32 8, i32 8 } } } } }, { i8, i8, i8, i8, %struct.gsi_channel_data, { i8, { i32, i8, i8, i8, i8, i8, i32, { %struct.ipa_endpoint_rx_data, [4 x i8] } } } } { i8 0, i8 6, i8 10, i8 0, %struct.gsi_channel_data { i16 256, i16 256, i8 8 }, { i8, { i32, i8, i8, i8, i8, i8, i32, { %struct.ipa_endpoint_rx_data, [4 x i8] } } } { i8 0, { i32, i8, i8, i8, i8, i8, i32, { %struct.ipa_endpoint_rx_data, [4 x i8] } } { i32 1, i8 1, i8 1, i8 1, i8 0, i8 0, i32 0, { %struct.ipa_endpoint_rx_data, [4 x i8] } { %struct.ipa_endpoint_rx_data { i32 0, i8 1 }, [4 x i8] undef } } } }, %struct.ipa_gsi_endpoint_data zeroinitializer, %struct.ipa_gsi_endpoint_data { i8 1, i8 0, i8 3, i8 1, %struct.gsi_channel_data zeroinitializer, %struct.ipa_endpoint_data { i8 1, %struct.ipa_endpoint_config_data zeroinitializer } }, %struct.ipa_gsi_endpoint_data zeroinitializer, %struct.ipa_gsi_endpoint_data { i8 1, i8 4, i8 6, i8 1, %struct.gsi_channel_data zeroinitializer, %struct.ipa_endpoint_data { i8 1, %struct.ipa_endpoint_config_data zeroinitializer } }, %struct.ipa_gsi_endpoint_data { i8 1, i8 2, i8 12, i8 0, %struct.gsi_channel_data zeroinitializer, %struct.ipa_endpoint_data zeroinitializer } }>, [116 x i8] zeroinitializer }, align 32
@ipa_resource_src = internal constant { [5 x %struct.ipa_resource], [64 x i8] } { [5 x %struct.ipa_resource] [%struct.ipa_resource { [8 x %struct.ipa_resource_limits] [%struct.ipa_resource_limits { i32 1, i32 255 }, %struct.ipa_resource_limits { i32 1, i32 255 }, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits { i32 1, i32 63 }, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer] }, %struct.ipa_resource { [8 x %struct.ipa_resource_limits] [%struct.ipa_resource_limits { i32 10, i32 10 }, %struct.ipa_resource_limits { i32 10, i32 10 }, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits { i32 8, i32 8 }, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer] }, %struct.ipa_resource { [8 x %struct.ipa_resource_limits] [%struct.ipa_resource_limits { i32 12, i32 12 }, %struct.ipa_resource_limits { i32 14, i32 14 }, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits { i32 8, i32 8 }, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer] }, %struct.ipa_resource { [8 x %struct.ipa_resource_limits] [%struct.ipa_resource_limits { i32 0, i32 63 }, %struct.ipa_resource_limits { i32 0, i32 63 }, %struct.ipa_resource_limits { i32 0, i32 63 }, %struct.ipa_resource_limits { i32 0, i32 63 }, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer] }, %struct.ipa_resource { [8 x %struct.ipa_resource_limits] [%struct.ipa_resource_limits { i32 14, i32 14 }, %struct.ipa_resource_limits { i32 20, i32 20 }, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits { i32 14, i32 14 }, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer] }], [64 x i8] zeroinitializer }, align 32
@ipa_resource_dst = internal constant { [2 x %struct.ipa_resource], [32 x i8] } { [2 x %struct.ipa_resource] [%struct.ipa_resource { [8 x %struct.ipa_resource_limits] [%struct.ipa_resource_limits { i32 4, i32 4 }, %struct.ipa_resource_limits { i32 4, i32 4 }, %struct.ipa_resource_limits { i32 3, i32 3 }, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer] }, %struct.ipa_resource { [8 x %struct.ipa_resource_limits] [%struct.ipa_resource_limits { i32 2, i32 63 }, %struct.ipa_resource_limits { i32 1, i32 63 }, %struct.ipa_resource_limits { i32 1, i32 2 }, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer] }], [32 x i8] zeroinitializer }, align 32
@ipa_mem_local_data = internal constant { [15 x %struct.ipa_mem], [44 x i8] } { [15 x %struct.ipa_mem] [%struct.ipa_mem { i32 0, i32 0, i16 128, i16 0 }, %struct.ipa_mem { i32 1, i32 128, i16 512, i16 0 }, %struct.ipa_mem { i32 2, i32 648, i16 120, i16 2 }, %struct.ipa_mem { i32 3, i32 776, i16 120, i16 2 }, %struct.ipa_mem { i32 4, i32 904, i16 120, i16 2 }, %struct.ipa_mem { i32 5, i32 1032, i16 120, i16 2 }, %struct.ipa_mem { i32 6, i32 1160, i16 120, i16 2 }, %struct.ipa_mem { i32 7, i32 1288, i16 120, i16 2 }, %struct.ipa_mem { i32 8, i32 1416, i16 120, i16 2 }, %struct.ipa_mem { i32 9, i32 1544, i16 120, i16 2 }, %struct.ipa_mem { i32 10, i32 1672, i16 320, i16 2 }, %struct.ipa_mem { i32 12, i32 2000, i16 512, i16 2 }, %struct.ipa_mem { i32 13, i32 2512, i16 512, i16 0 }, %struct.ipa_mem { i32 14, i32 3032, i16 4132, i16 0 }, %struct.ipa_mem { i32 15, i32 7168, i16 1024, i16 1 }], [44 x i8] zeroinitializer }, align 32
@ipa_interconnect_data = internal constant { [3 x %struct.ipa_interconnect_data], [60 x i8] } { [3 x %struct.ipa_interconnect_data] [%struct.ipa_interconnect_data { ptr @.str, i32 600000, i32 80000 }, %struct.ipa_interconnect_data { ptr @.str.2, i32 350000, i32 0 }, %struct.ipa_interconnect_data { ptr @.str.3, i32 40000, i32 0 }], [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"imem\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"config\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"ipa_qsb_data\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 45, i32 34 }
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"ipa_resource_data\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 263, i32 39 }
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"ipa_mem_data\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 367, i32 34 }
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"ipa_power_data\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 397, i32 36 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"ipa_data_v3_5_1\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 404, i32 23 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"ipa_gsi_endpoint_data\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 57, i32 43 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"ipa_resource_src\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 175, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"ipa_resource_dst\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 237, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"ipa_mem_local_data\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 273, i32 29 }
@___asan_gen_.31 = private unnamed_addr constant [22 x i8] c"ipa_interconnect_data\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 377, i32 43 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 379, i32 13 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 385, i32 13 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [37 x i8] c"../drivers/net/ipa/ipa_data-v3.5.1.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 390, i32 13 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @ipa_qsb_data, ptr @ipa_resource_data, ptr @ipa_mem_data, ptr @ipa_power_data, ptr @ipa_data_v3_5_1, ptr @ipa_gsi_endpoint_data, ptr @ipa_resource_src, ptr @ipa_resource_dst, ptr @ipa_mem_local_data, ptr @ipa_interconnect_data, ptr @.str, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_qsb_data to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_resource_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_power_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_data_v3_5_1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_gsi_endpoint_data to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_resource_src to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_resource_dst to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_local_data to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_interconnect_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @ipa_data_v3_5_1, !1, !"ipa_data_v3_5_1", i1 false, i1 false}
!1 = !{!"../drivers/net/ipa/ipa_data-v3.5.1.c", i32 404, i32 23}
!2 = !{ptr @ipa_qsb_data, !3, !"ipa_qsb_data", i1 false, i1 false}
!3 = !{!"../drivers/net/ipa/ipa_data-v3.5.1.c", i32 45, i32 34}
!4 = !{ptr @ipa_gsi_endpoint_data, !5, !"ipa_gsi_endpoint_data", i1 false, i1 false}
!5 = !{!"../drivers/net/ipa/ipa_data-v3.5.1.c", i32 57, i32 43}
!6 = !{ptr @ipa_resource_data, !7, !"ipa_resource_data", i1 false, i1 false}
!7 = !{!"../drivers/net/ipa/ipa_data-v3.5.1.c", i32 263, i32 39}
!8 = !{ptr @ipa_resource_src, !9, !"ipa_resource_src", i1 false, i1 false}
!9 = !{!"../drivers/net/ipa/ipa_data-v3.5.1.c", i32 175, i32 34}
!10 = !{ptr @ipa_resource_dst, !11, !"ipa_resource_dst", i1 false, i1 false}
!11 = !{!"../drivers/net/ipa/ipa_data-v3.5.1.c", i32 237, i32 34}
!12 = !{ptr @ipa_mem_data, !13, !"ipa_mem_data", i1 false, i1 false}
!13 = !{!"../drivers/net/ipa/ipa_data-v3.5.1.c", i32 367, i32 34}
!14 = !{ptr @ipa_mem_local_data, !15, !"ipa_mem_local_data", i1 false, i1 false}
!15 = !{!"../drivers/net/ipa/ipa_data-v3.5.1.c", i32 273, i32 29}
!16 = !{ptr @ipa_power_data, !17, !"ipa_power_data", i1 false, i1 false}
!17 = !{!"../drivers/net/ipa/ipa_data-v3.5.1.c", i32 397, i32 36}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ipa/ipa_data-v3.5.1.c", i32 379, i32 13}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ipa/ipa_data-v3.5.1.c", i32 385, i32 13}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ipa/ipa_data-v3.5.1.c", i32 390, i32 13}
!24 = !{ptr @ipa_interconnect_data, !25, !"ipa_interconnect_data", i1 false, i1 false}
!25 = !{!"../drivers/net/ipa/ipa_data-v3.5.1.c", i32 377, i32 43}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
