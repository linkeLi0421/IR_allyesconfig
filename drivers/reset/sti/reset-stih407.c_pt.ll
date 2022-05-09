; ModuleID = '/llk/IR_all_yes/drivers/reset/sti/reset-stih407.c_pt.bc'
source_filename = "../drivers/reset/sti/reset-stih407.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.syscfg_reset_controller_data = type { i8, i8, i32, ptr }
%struct.syscfg_reset_channel_data = type { ptr, %struct.reg_field, %struct.reg_field }
%struct.reg_field = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_reset_stih407__170_159_stih407_reset_init3 = internal global ptr @stih407_reset_init, section ".initcall3.init", align 4
@stih407_reset_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @syscfg_reset_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stih407_reset_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reset-stih407\00", [18 x i8] zeroinitializer }, align 32
@stih407_reset_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-powerdown\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih407_powerdown_controller }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-softreset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih407_softreset_controller }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-picophyreset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih407_picophyreset_controller }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@stih407_powerdown_controller = internal constant { %struct.syscfg_reset_controller_data, [20 x i8] } { %struct.syscfg_reset_controller_data { i8 1, i8 0, i32 10, ptr @stih407_powerdowns }, [20 x i8] zeroinitializer }, align 32
@stih407_softreset_controller = internal constant { %struct.syscfg_reset_controller_data, [20 x i8] } { %struct.syscfg_reset_controller_data { i8 0, i8 1, i32 33, ptr @stih407_softresets }, [20 x i8] zeroinitializer }, align 32
@stih407_picophyreset_controller = internal constant { %struct.syscfg_reset_controller_data, [20 x i8] } { %struct.syscfg_reset_controller_data { i8 0, i8 0, i32 3, ptr @stih407_picophyresets }, [20 x i8] zeroinitializer }, align 32
@stih407_powerdowns = internal constant { [10 x %struct.syscfg_reset_channel_data], [104 x i8] } { [10 x %struct.syscfg_reset_channel_data] [%struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 0, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 2000, i32 1, i32 1, i32 0, i32 0 } }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field zeroinitializer, %struct.reg_field { i32 2000, i32 0, i32 0, i32 0, i32 0 } }, %struct.syscfg_reset_channel_data { ptr @stih407_sbc_reg, %struct.reg_field { i32 128, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 2080, i32 2, i32 2, i32 0, i32 0 } }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 4, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 2004, i32 6, i32 6, i32 0, i32 0 } }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 4, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 2004, i32 5, i32 5, i32 0, i32 0 } }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 4, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 2004, i32 4, i32 4, i32 0, i32 0 } }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 4, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 2004, i32 3, i32 3, i32 0, i32 0 } }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 4, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 2004, i32 2, i32 2, i32 0, i32 0 } }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 4, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 2004, i32 1, i32 1, i32 0, i32 0 } }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 4, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 2004, i32 0, i32 0, i32 0, i32 0 } }], [104 x i8] zeroinitializer }, align 32
@stih407_core = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"st,stih407-core-syscfg\00", [41 x i8] zeroinitializer }, align 32
@stih407_sbc_reg = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"st,stih407-sbc-reg-syscfg\00", [38 x i8] zeroinitializer }, align 32
@stih407_softresets = internal constant { [33 x %struct.syscfg_reset_channel_data], [372 x i8] } { [33 x %struct.syscfg_reset_channel_data] [%struct.syscfg_reset_channel_data { ptr @stih407_sbc_reg, %struct.reg_field { i32 8, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 528, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 528, i32 30, i32 30, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_lpm, %struct.reg_field { i32 4, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 528, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 528, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 528, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 528, i32 16, i32 16, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 528, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 528, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 528, i32 22, i32 22, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 528, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 528, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 524, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 524, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 524, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 524, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 524, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 524, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 524, i32 21, i32 21, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 524, i32 23, i32 23, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 524, i32 24, i32 24, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 524, i32 30, i32 30, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 528, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 528, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_sbc_reg, %struct.reg_field { i32 8, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_lpm, %struct.reg_field { i32 4, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 528, i32 28, i32 28, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 528, i32 29, i32 29, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 524, i32 26, i32 26, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 524, i32 27, i32 27, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 524, i32 28, i32 28, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 512, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer }], [372 x i8] zeroinitializer }, align 32
@stih407_lpm = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,stih407-lpm-syscfg\00", [42 x i8] zeroinitializer }, align 32
@stih407_picophyresets = internal constant { [3 x %struct.syscfg_reset_channel_data], [60 x i8] } { [3 x %struct.syscfg_reset_channel_data] [%struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 244, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 244, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field zeroinitializer }, %struct.syscfg_reset_channel_data { ptr @stih407_core, %struct.reg_field { i32 244, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field zeroinitializer }], [60 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"stih407_reset_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 146, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 149, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"stih407_reset_match\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 130, i32 34 }
@___asan_gen_.10 = private unnamed_addr constant [29 x i8] c"stih407_powerdown_controller\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 111, i32 50 }
@___asan_gen_.13 = private unnamed_addr constant [29 x i8] c"stih407_softreset_controller\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 117, i32 50 }
@___asan_gen_.16 = private unnamed_addr constant [32 x i8] c"stih407_picophyreset_controller\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 124, i32 50 }
@___asan_gen_.19 = private unnamed_addr constant [19 x i8] c"stih407_powerdowns\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 37, i32 47 }
@___asan_gen_.22 = private unnamed_addr constant [13 x i8] c"stih407_core\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 14, i32 19 }
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"stih407_sbc_reg\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 15, i32 19 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"stih407_softresets\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 66, i32 47 }
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"stih407_lpm\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 16, i32 19 }
@___asan_gen_.34 = private unnamed_addr constant [22 x i8] c"stih407_picophyresets\00", align 1
@___asan_gen_.35 = private constant [37 x i8] c"../drivers/reset/sti/reset-stih407.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 105, i32 47 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__initcall__kmod_reset_stih407__170_159_stih407_reset_init3, ptr @stih407_reset_driver, ptr @.str, ptr @stih407_reset_match, ptr @stih407_powerdown_controller, ptr @stih407_softreset_controller, ptr @stih407_picophyreset_controller, ptr @stih407_powerdowns, ptr @stih407_core, ptr @stih407_sbc_reg, ptr @stih407_softresets, ptr @stih407_lpm, ptr @stih407_picophyresets], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stih407_reset_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stih407_reset_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stih407_powerdown_controller to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stih407_softreset_controller to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stih407_picophyreset_controller to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stih407_powerdowns to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stih407_core to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stih407_sbc_reg to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stih407_softresets to i32), i32 1452, i32 1824, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stih407_lpm to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stih407_picophyresets to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stih407_reset_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stih407_reset_driver, ptr noundef null) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @syscfg_reset_probe(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_reset_stih407__170_159_stih407_reset_init3, !1, !"__initcall__kmod_reset_stih407__170_159_stih407_reset_init3", i1 false, i1 false}
!1 = !{!"../drivers/reset/sti/reset-stih407.c", i32 159, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/reset/sti/reset-stih407.c", i32 149, i32 11}
!4 = !{ptr @stih407_reset_driver, !5, !"stih407_reset_driver", i1 false, i1 false}
!5 = !{!"../drivers/reset/sti/reset-stih407.c", i32 146, i32 31}
!6 = !{ptr @stih407_reset_match, !7, !"stih407_reset_match", i1 false, i1 false}
!7 = !{!"../drivers/reset/sti/reset-stih407.c", i32 130, i32 34}
!8 = !{ptr @stih407_powerdown_controller, !9, !"stih407_powerdown_controller", i1 false, i1 false}
!9 = !{!"../drivers/reset/sti/reset-stih407.c", i32 111, i32 50}
!10 = !{ptr @stih407_powerdowns, !11, !"stih407_powerdowns", i1 false, i1 false}
!11 = !{!"../drivers/reset/sti/reset-stih407.c", i32 37, i32 47}
!12 = !{ptr @stih407_core, !13, !"stih407_core", i1 false, i1 false}
!13 = !{!"../drivers/reset/sti/reset-stih407.c", i32 14, i32 19}
!14 = !{ptr @stih407_sbc_reg, !15, !"stih407_sbc_reg", i1 false, i1 false}
!15 = !{!"../drivers/reset/sti/reset-stih407.c", i32 15, i32 19}
!16 = !{ptr @stih407_softreset_controller, !17, !"stih407_softreset_controller", i1 false, i1 false}
!17 = !{!"../drivers/reset/sti/reset-stih407.c", i32 117, i32 50}
!18 = !{ptr @stih407_softresets, !19, !"stih407_softresets", i1 false, i1 false}
!19 = !{!"../drivers/reset/sti/reset-stih407.c", i32 66, i32 47}
!20 = !{ptr @stih407_lpm, !21, !"stih407_lpm", i1 false, i1 false}
!21 = !{!"../drivers/reset/sti/reset-stih407.c", i32 16, i32 19}
!22 = !{ptr @stih407_picophyreset_controller, !23, !"stih407_picophyreset_controller", i1 false, i1 false}
!23 = !{!"../drivers/reset/sti/reset-stih407.c", i32 124, i32 50}
!24 = !{ptr @stih407_picophyresets, !25, !"stih407_picophyresets", i1 false, i1 false}
!25 = !{!"../drivers/reset/sti/reset-stih407.c", i32 105, i32 47}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
