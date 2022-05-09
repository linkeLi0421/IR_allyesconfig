; ModuleID = '/llk/IR_all_yes/drivers/net/ipa/ipa_data-v4.9.c_pt.bc'
source_filename = "../drivers/net/ipa/ipa_data-v4.9.c"
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

@ipa_qsb_data = internal constant { [1 x %struct.ipa_qsb_data], [29 x i8] } { [1 x %struct.ipa_qsb_data] [%struct.ipa_qsb_data { i8 8, i8 0, i8 120 }], [29 x i8] zeroinitializer }, align 32
@ipa_resource_data = internal constant { %struct.ipa_resource_data, [40 x i8] } { %struct.ipa_resource_data { i32 3, i32 4, i32 5, ptr @ipa_resource_src, i32 2, ptr @ipa_resource_dst }, [40 x i8] zeroinitializer }, align 32
@ipa_mem_data = internal constant { %struct.ipa_mem_data, [40 x i8] } { %struct.ipa_mem_data { i32 23, ptr @ipa_mem_local_data, i32 342609920, i32 8192, i32 497, i32 36864 }, [40 x i8] zeroinitializer }, align 32
@ipa_power_data = internal constant { %struct.ipa_power_data, [20 x i8] } { %struct.ipa_power_data { i32 60000000, i32 2, ptr @ipa_interconnect_data }, [20 x i8] zeroinitializer }, align 32
@ipa_data_v4_9 = dso_local constant { %struct.ipa_data, [60 x i8] } { %struct.ipa_data { i32 9, i32 0, i32 1, ptr @ipa_qsb_data, i32 10, ptr @ipa_gsi_endpoint_data, ptr @ipa_resource_data, ptr @ipa_mem_data, ptr @ipa_power_data }, [60 x i8] zeroinitializer }, align 32
@ipa_gsi_endpoint_data = internal constant { <{ %struct.ipa_gsi_endpoint_data, { i8, i8, i8, i8, %struct.gsi_channel_data, { i8, { i32, i8, i8, i8, i8, i8, i32, { %struct.ipa_endpoint_rx_data, [4 x i8] } } } }, %struct.ipa_gsi_endpoint_data, { i8, i8, i8, i8, %struct.gsi_channel_data, { i8, { i32, i8, i8, i8, i8, i8, i32, { %struct.ipa_endpoint_rx_data, [4 x i8] } } } }, %struct.ipa_gsi_endpoint_data, %struct.ipa_gsi_endpoint_data, %struct.ipa_gsi_endpoint_data, %struct.ipa_gsi_endpoint_data, %struct.ipa_gsi_endpoint_data, %struct.ipa_gsi_endpoint_data }>, [104 x i8] } { <{ %struct.ipa_gsi_endpoint_data, { i8, i8, i8, i8, %struct.gsi_channel_data, { i8, { i32, i8, i8, i8, i8, i8, i32, { %struct.ipa_endpoint_rx_data, [4 x i8] } } } }, %struct.ipa_gsi_endpoint_data, { i8, i8, i8, i8, %struct.gsi_channel_data, { i8, { i32, i8, i8, i8, i8, i8, i32, { %struct.ipa_endpoint_rx_data, [4 x i8] } } } }, %struct.ipa_gsi_endpoint_data, %struct.ipa_gsi_endpoint_data, %struct.ipa_gsi_endpoint_data, %struct.ipa_gsi_endpoint_data, %struct.ipa_gsi_endpoint_data, %struct.ipa_gsi_endpoint_data }> <{ %struct.ipa_gsi_endpoint_data { i8 0, i8 6, i8 7, i8 1, %struct.gsi_channel_data { i16 256, i16 256, i8 20 }, %struct.ipa_endpoint_data { i8 0, %struct.ipa_endpoint_config_data { i32 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 1, %union.anon zeroinitializer } } }, { i8, i8, i8, i8, %struct.gsi_channel_data, { i8, { i32, i8, i8, i8, i8, i8, i32, { %struct.ipa_endpoint_rx_data, [4 x i8] } } } } { i8 0, i8 7, i8 11, i8 0, %struct.gsi_channel_data { i16 256, i16 256, i8 9 }, { i8, { i32, i8, i8, i8, i8, i8, i32, { %struct.ipa_endpoint_rx_data, [4 x i8] } } } { i8 0, { i32, i8, i8, i8, i8, i8, i32, { %struct.ipa_endpoint_rx_data, [4 x i8] } } { i32 0, i8 0, i8 0, i8 1, i8 1, i8 0, i32 0, { %struct.ipa_endpoint_rx_data, [4 x i8] } { %struct.ipa_endpoint_rx_data { i32 2, i8 0 }, [4 x i8] undef } } } }, %struct.ipa_gsi_endpoint_data { i8 0, i8 2, i8 2, i8 1, %struct.gsi_channel_data { i16 512, i16 512, i8 16 }, %struct.ipa_endpoint_data { i8 1, %struct.ipa_endpoint_config_data { i32 0, i8 1, i8 1, i8 0, i8 1, i8 0, i32 0, %union.anon { %struct.ipa_endpoint_tx_data { i32 4, i32 0, i32 8 } } } } }, { i8, i8, i8, i8, %struct.gsi_channel_data, { i8, { i32, i8, i8, i8, i8, i8, i32, { %struct.ipa_endpoint_rx_data, [4 x i8] } } } } { i8 0, i8 12, i8 20, i8 0, %struct.gsi_channel_data { i16 256, i16 256, i8 9 }, { i8, { i32, i8, i8, i8, i8, i8, i32, { %struct.ipa_endpoint_rx_data, [4 x i8] } } } { i8 0, { i32, i8, i8, i8, i8, i8, i32, { %struct.ipa_endpoint_rx_data, [4 x i8] } } { i32 0, i8 1, i8 1, i8 1, i8 0, i8 0, i32 0, { %struct.ipa_endpoint_rx_data, [4 x i8] } { %struct.ipa_endpoint_rx_data { i32 0, i8 1 }, [4 x i8] undef } } } }, %struct.ipa_gsi_endpoint_data zeroinitializer, %struct.ipa_gsi_endpoint_data zeroinitializer, %struct.ipa_gsi_endpoint_data zeroinitializer, %struct.ipa_gsi_endpoint_data { i8 1, i8 0, i8 5, i8 1, %struct.gsi_channel_data zeroinitializer, %struct.ipa_endpoint_data { i8 1, %struct.ipa_endpoint_config_data zeroinitializer } }, %struct.ipa_gsi_endpoint_data { i8 1, i8 7, i8 16, i8 0, %struct.gsi_channel_data zeroinitializer, %struct.ipa_endpoint_data zeroinitializer }, %struct.ipa_gsi_endpoint_data { i8 1, i8 2, i8 8, i8 1, %struct.gsi_channel_data zeroinitializer, %struct.ipa_endpoint_data { i8 1, %struct.ipa_endpoint_config_data zeroinitializer } } }>, [104 x i8] zeroinitializer }, align 32
@ipa_resource_src = internal constant { [5 x %struct.ipa_resource], [64 x i8] } { [5 x %struct.ipa_resource] [%struct.ipa_resource { [8 x %struct.ipa_resource_limits] [%struct.ipa_resource_limits { i32 1, i32 12 }, %struct.ipa_resource_limits { i32 1, i32 1 }, %struct.ipa_resource_limits { i32 1, i32 12 }, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer] }, %struct.ipa_resource { [8 x %struct.ipa_resource_limits] [%struct.ipa_resource_limits { i32 20, i32 20 }, %struct.ipa_resource_limits { i32 2, i32 2 }, %struct.ipa_resource_limits { i32 3, i32 3 }, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer] }, %struct.ipa_resource { [8 x %struct.ipa_resource_limits] [%struct.ipa_resource_limits { i32 38, i32 38 }, %struct.ipa_resource_limits { i32 4, i32 4 }, %struct.ipa_resource_limits { i32 8, i32 8 }, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer] }, %struct.ipa_resource { [8 x %struct.ipa_resource_limits] [%struct.ipa_resource_limits { i32 0, i32 4 }, %struct.ipa_resource_limits { i32 0, i32 4 }, %struct.ipa_resource_limits { i32 0, i32 4 }, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer] }, %struct.ipa_resource { [8 x %struct.ipa_resource_limits] [%struct.ipa_resource_limits { i32 30, i32 30 }, %struct.ipa_resource_limits { i32 8, i32 8 }, %struct.ipa_resource_limits { i32 8, i32 8 }, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer] }], [64 x i8] zeroinitializer }, align 32
@ipa_resource_dst = internal constant { [2 x %struct.ipa_resource], [32 x i8] } { [2 x %struct.ipa_resource] [%struct.ipa_resource { [8 x %struct.ipa_resource_limits] [%struct.ipa_resource_limits { i32 9, i32 9 }, %struct.ipa_resource_limits { i32 1, i32 1 }, %struct.ipa_resource_limits { i32 1, i32 1 }, %struct.ipa_resource_limits { i32 39, i32 39 }, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer] }, %struct.ipa_resource { [8 x %struct.ipa_resource_limits] [%struct.ipa_resource_limits { i32 2, i32 3 }, %struct.ipa_resource_limits { i32 1, i32 2 }, %struct.ipa_resource_limits { i32 0, i32 2 }, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer, %struct.ipa_resource_limits zeroinitializer] }], [32 x i8] zeroinitializer }, align 32
@ipa_mem_local_data = internal constant { [23 x %struct.ipa_mem], [76 x i8] } { [23 x %struct.ipa_mem] [%struct.ipa_mem { i32 0, i32 0, i16 128, i16 0 }, %struct.ipa_mem { i32 1, i32 128, i16 512, i16 0 }, %struct.ipa_mem { i32 2, i32 648, i16 120, i16 2 }, %struct.ipa_mem { i32 3, i32 776, i16 120, i16 2 }, %struct.ipa_mem { i32 4, i32 904, i16 120, i16 2 }, %struct.ipa_mem { i32 5, i32 1032, i16 120, i16 2 }, %struct.ipa_mem { i32 6, i32 1160, i16 120, i16 2 }, %struct.ipa_mem { i32 7, i32 1288, i16 120, i16 2 }, %struct.ipa_mem { i32 8, i32 1416, i16 120, i16 2 }, %struct.ipa_mem { i32 9, i32 1544, i16 120, i16 2 }, %struct.ipa_mem { i32 10, i32 1672, i16 576, i16 2 }, %struct.ipa_mem { i32 11, i32 2248, i16 512, i16 0 }, %struct.ipa_mem { i32 12, i32 2768, i16 2848, i16 2 }, %struct.ipa_mem { i32 13, i32 5616, i16 512, i16 0 }, %struct.ipa_mem { i32 26, i32 6144, i16 3328, i16 4 }, %struct.ipa_mem { i32 17, i32 9488, i16 48, i16 4 }, %struct.ipa_mem { i32 18, i32 9536, i16 72, i16 0 }, %struct.ipa_mem { i32 19, i32 9608, i16 568, i16 0 }, %struct.ipa_mem { i32 25, i32 10176, i16 2048, i16 0 }, %struct.ipa_mem { i32 20, i32 12224, i16 32, i16 0 }, %struct.ipa_mem { i32 14, i32 12264, i16 2048, i16 2 }, %struct.ipa_mem { i32 15, i32 14336, i16 4096, i16 1 }, %struct.ipa_mem { i32 16, i32 18432, i16 80, i16 0 }], [76 x i8] zeroinitializer }, align 32
@ipa_interconnect_data = internal constant { [2 x %struct.ipa_interconnect_data], [40 x i8] } { [2 x %struct.ipa_interconnect_data] [%struct.ipa_interconnect_data { ptr @.str, i32 600000, i32 150000 }, %struct.ipa_interconnect_data { ptr @.str.2, i32 74000, i32 0 }], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"config\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [13 x i8] c"ipa_qsb_data\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 43, i32 34 }
@___asan_gen_.6 = private unnamed_addr constant [18 x i8] c"ipa_resource_data\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 257, i32 39 }
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"ipa_mem_data\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 409, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"ipa_power_data\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 435, i32 36 }
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"ipa_data_v4_9\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 442, i32 23 }
@___asan_gen_.18 = private unnamed_addr constant [22 x i8] c"ipa_gsi_endpoint_data\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 52, i32 43 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"ipa_resource_src\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 169, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"ipa_resource_dst\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 228, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"ipa_mem_local_data\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 267, i32 29 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"ipa_interconnect_data\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 419, i32 43 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 421, i32 13 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [35 x i8] c"../drivers/net/ipa/ipa_data-v4.9.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 427, i32 13 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @ipa_qsb_data, ptr @ipa_resource_data, ptr @ipa_mem_data, ptr @ipa_power_data, ptr @ipa_data_v4_9, ptr @ipa_gsi_endpoint_data, ptr @ipa_resource_src, ptr @ipa_resource_dst, ptr @ipa_mem_local_data, ptr @ipa_interconnect_data, ptr @.str, ptr @.str.2], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_qsb_data to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_resource_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_power_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_data_v4_9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_gsi_endpoint_data to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_resource_src to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_resource_dst to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_local_data to i32), i32 276, i32 352, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_interconnect_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @ipa_data_v4_9, !1, !"ipa_data_v4_9", i1 false, i1 false}
!1 = !{!"../drivers/net/ipa/ipa_data-v4.9.c", i32 442, i32 23}
!2 = !{ptr @ipa_qsb_data, !3, !"ipa_qsb_data", i1 false, i1 false}
!3 = !{!"../drivers/net/ipa/ipa_data-v4.9.c", i32 43, i32 34}
!4 = !{ptr @ipa_gsi_endpoint_data, !5, !"ipa_gsi_endpoint_data", i1 false, i1 false}
!5 = !{!"../drivers/net/ipa/ipa_data-v4.9.c", i32 52, i32 43}
!6 = !{ptr @ipa_resource_data, !7, !"ipa_resource_data", i1 false, i1 false}
!7 = !{!"../drivers/net/ipa/ipa_data-v4.9.c", i32 257, i32 39}
!8 = !{ptr @ipa_resource_src, !9, !"ipa_resource_src", i1 false, i1 false}
!9 = !{!"../drivers/net/ipa/ipa_data-v4.9.c", i32 169, i32 34}
!10 = !{ptr @ipa_resource_dst, !11, !"ipa_resource_dst", i1 false, i1 false}
!11 = !{!"../drivers/net/ipa/ipa_data-v4.9.c", i32 228, i32 34}
!12 = !{ptr @ipa_mem_data, !13, !"ipa_mem_data", i1 false, i1 false}
!13 = !{!"../drivers/net/ipa/ipa_data-v4.9.c", i32 409, i32 34}
!14 = !{ptr @ipa_mem_local_data, !15, !"ipa_mem_local_data", i1 false, i1 false}
!15 = !{!"../drivers/net/ipa/ipa_data-v4.9.c", i32 267, i32 29}
!16 = !{ptr @ipa_power_data, !17, !"ipa_power_data", i1 false, i1 false}
!17 = !{!"../drivers/net/ipa/ipa_data-v4.9.c", i32 435, i32 36}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ipa/ipa_data-v4.9.c", i32 421, i32 13}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ipa/ipa_data-v4.9.c", i32 427, i32 13}
!22 = !{ptr @ipa_interconnect_data, !23, !"ipa_interconnect_data", i1 false, i1 false}
!23 = !{!"../drivers/net/ipa/ipa_data-v4.9.c", i32 419, i32 43}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
