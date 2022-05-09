; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6656/baseband.c_pt.bc'
source_filename = "../drivers/staging/vt6656/baseband.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.vnt_threshold = type { i8, i8, i8 }
%struct.vnt_private = type { ptr, ptr, i8, ptr, ptr, i64, i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, i32, [128 x ptr], i32, [128 x ptr], %struct.usb_anchor, i32, %struct.vnt_interrupt_buffer, i16, i8, i8, i8, %struct.vnt_cmd_card_init, %struct.vnt_rsp_card_init, i8, [6 x i8], [6 x i8], i8, i64, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i8, i8, [256 x i8], i8, i8, i8, i8, i8, [14 x i8], [14 x i8], [42 x i8], i16, i16, i32, i32, i16, i16, i32, i32, [32 x i32], i32, i32, i32, i32, i32, i8, [4 x i8], i8, i8, %struct.delayed_work, %struct.ieee80211_low_level_stats }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vnt_interrupt_buffer = type { ptr }
%struct.vnt_cmd_card_init = type { i8, i8, [6 x i8], i8, i8 }
%struct.vnt_rsp_card_init = type { i8, [6 x i8], i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@vnt_vt3184_init.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vt6656_stage\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vnt_vt3184_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/staging/vt6656/baseband.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RF Type %d\0A\00", [20 x i8] zeroinitializer }, align 32
@vnt_vt3184_agc = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\00\00\02\02\04\04\06\06\08\08\0A\0A\0C\0C\0E\0E\10\10\12\12\14\14\16\16\18\18\1A\1A\1C\1C\1E\1E  \22\22$$&&((**,,..0022446688::<<>>", [32 x i8] zeroinitializer }, align 32
@al2230_vnt_threshold = internal constant { [21 x %struct.vnt_threshold], [33 x i8] } { [21 x %struct.vnt_threshold] [%struct.vnt_threshold { i8 0, i8 0, i8 48 }, %struct.vnt_threshold { i8 68, i8 0, i8 54 }, %struct.vnt_threshold { i8 67, i8 0, i8 67 }, %struct.vnt_threshold { i8 66, i8 0, i8 81 }, %struct.vnt_threshold { i8 65, i8 0, i8 98 }, %struct.vnt_threshold { i8 64, i8 0, i8 121 }, %struct.vnt_threshold { i8 63, i8 0, i8 -109 }, %struct.vnt_threshold { i8 62, i8 0, i8 -71 }, %struct.vnt_threshold { i8 61, i8 0, i8 -29 }, %struct.vnt_threshold { i8 60, i8 1, i8 24 }, %struct.vnt_threshold { i8 59, i8 1, i8 84 }, %struct.vnt_threshold { i8 58, i8 1, i8 -96 }, %struct.vnt_threshold { i8 57, i8 2, i8 32 }, %struct.vnt_threshold { i8 56, i8 2, i8 -96 }, %struct.vnt_threshold { i8 55, i8 3, i8 0 }, %struct.vnt_threshold { i8 53, i8 6, i8 0 }, %struct.vnt_threshold { i8 51, i8 9, i8 0 }, %struct.vnt_threshold { i8 49, i8 14, i8 0 }, %struct.vnt_threshold { i8 47, i8 21, i8 0 }, %struct.vnt_threshold { i8 46, i8 26, i8 0 }, %struct.vnt_threshold { i8 45, i8 -1, i8 0 }], [33 x i8] zeroinitializer }, align 32
@vt3226_vnt_threshold = internal constant { [23 x %struct.vnt_threshold], [59 x i8] } { [23 x %struct.vnt_threshold] [%struct.vnt_threshold { i8 0, i8 0, i8 36 }, %struct.vnt_threshold { i8 68, i8 0, i8 45 }, %struct.vnt_threshold { i8 67, i8 0, i8 54 }, %struct.vnt_threshold { i8 66, i8 0, i8 67 }, %struct.vnt_threshold { i8 65, i8 0, i8 82 }, %struct.vnt_threshold { i8 64, i8 0, i8 104 }, %struct.vnt_threshold { i8 63, i8 0, i8 -128 }, %struct.vnt_threshold { i8 62, i8 0, i8 -100 }, %struct.vnt_threshold { i8 61, i8 0, i8 -64 }, %struct.vnt_threshold { i8 60, i8 0, i8 -22 }, %struct.vnt_threshold { i8 59, i8 1, i8 48 }, %struct.vnt_threshold { i8 58, i8 1, i8 112 }, %struct.vnt_threshold { i8 57, i8 1, i8 -80 }, %struct.vnt_threshold { i8 56, i8 2, i8 48 }, %struct.vnt_threshold { i8 55, i8 2, i8 -64 }, %struct.vnt_threshold { i8 53, i8 4, i8 0 }, %struct.vnt_threshold { i8 51, i8 7, i8 0 }, %struct.vnt_threshold { i8 49, i8 10, i8 0 }, %struct.vnt_threshold { i8 47, i8 17, i8 0 }, %struct.vnt_threshold { i8 45, i8 24, i8 0 }, %struct.vnt_threshold { i8 43, i8 38, i8 0 }, %struct.vnt_threshold { i8 42, i8 54, i8 0 }, %struct.vnt_threshold { i8 41, i8 -1, i8 0 }], [59 x i8] zeroinitializer }, align 32
@vt3342_vnt_threshold = internal constant { [21 x %struct.vnt_threshold], [33 x i8] } { [21 x %struct.vnt_threshold] [%struct.vnt_threshold { i8 0, i8 0, i8 56 }, %struct.vnt_threshold { i8 66, i8 0, i8 67 }, %struct.vnt_threshold { i8 65, i8 0, i8 82 }, %struct.vnt_threshold { i8 64, i8 0, i8 104 }, %struct.vnt_threshold { i8 63, i8 0, i8 -128 }, %struct.vnt_threshold { i8 62, i8 0, i8 -100 }, %struct.vnt_threshold { i8 61, i8 0, i8 -64 }, %struct.vnt_threshold { i8 60, i8 0, i8 -22 }, %struct.vnt_threshold { i8 59, i8 1, i8 48 }, %struct.vnt_threshold { i8 58, i8 1, i8 112 }, %struct.vnt_threshold { i8 57, i8 1, i8 -80 }, %struct.vnt_threshold { i8 56, i8 2, i8 48 }, %struct.vnt_threshold { i8 55, i8 2, i8 -64 }, %struct.vnt_threshold { i8 53, i8 4, i8 0 }, %struct.vnt_threshold { i8 51, i8 7, i8 0 }, %struct.vnt_threshold { i8 49, i8 10, i8 0 }, %struct.vnt_threshold { i8 47, i8 17, i8 0 }, %struct.vnt_threshold { i8 45, i8 24, i8 0 }, %struct.vnt_threshold { i8 43, i8 38, i8 0 }, %struct.vnt_threshold { i8 42, i8 54, i8 0 }, %struct.vnt_threshold { i8 41, i8 -1, i8 0 }], [33 x i8] zeroinitializer }, align 32
@vnt_update_pre_ed_threshold.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vnt_update_pre_ed_threshold\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s bb_pre_ed_rssi %d\0A\00", [42 x i8] zeroinitializer }, align 32
@vnt_vt3184_al2230 = internal global { <{ [242 x i8], [14 x i8] }>, [64 x i8] } { <{ [242 x i8], [14 x i8] }> <{ [242 x i8] c"1\00\00\00\00\80\00\00pE*v\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\8E\0A\00\00\00\00\00\00\00\00J\00\00\00\00\00\00\00J\00\0C&[\00\00\00\00\AA\AA\FF\FFy\00\00\0BH\04\00\08\00\08\08\14\05\09\00\00\00\00\09s\00\C5\00\19\00\00\00\00\00\00\00\D0\00\00\00\00\00\00\E4\80\00\00\00\00\98\0A\00\00\00\00\00\03\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\8C\01\09\00\00\00\00\00\08\00\1F\B7\88G\AA\00 \00\00\00\00\00\00\EB\00\00\00\00\00\00\00\01\00\00\00\00\00\00\10\00\18\00\00\00\00\15\00\1880\00\00\FF\0F\E4\E2\00\00\00\03\01\00\00\00\18 \07\18\FF\FF\0E\0A\0E\00\82\A7<\100\05@\12\00\00\10(\80*\00\00\00\00\00\00\00\00\00\F3\00\00\00\10\00\12\00\F4\00\FFy 0\05\00>", [14 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@vnt_vt3184_vt3226d0 = internal constant { <{ [242 x i8], [14 x i8] }>, [64 x i8] } { <{ [242 x i8], [14 x i8] }> <{ [242 x i8] c"1\00\00\00\00\80\00\00pE*v\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\8E\0A\00\00\00\00\00\00\00\00J\00\00\00\00\00\00\00J\00\0C&[\00\00\00\00\AA\AA\FF\FFy\00\00\0BH\04\00\08\00\08\08\14\05\09\00\00\00\00\09s\00\C5\00\19\00\00\00\00\00\00\00\D0\00\00\00\00\00\00\E4\80\00\00\00\00\98\0A\00\00\00\00\00\03\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\8C\01\09\00\00\00\00\00\08\00\1F\B7\88G\AA\00 \00\00\00\00\00\00\EB\00\00\00\00\00\00\00\01\00\00\00\00\00\00\10\00\18\00\00\00\00\00\00\1880\00\00\FF\0F\E4\E2\00\00\00\03\01\00\00\00\18 \07\18\FF\FF\10\0A\0E\00\84\A7<\10$\05@\12\00\00\10(\80*\00\00\00\00\00\00\00\00\00\F3\00\00\00\10\00\10\00\F4\00\FFy 0\08\00>", [14 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@switch.table.vnt_update_pre_ed_threshold = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\14\14\14\14\14\14\16\14\14\16\14\14", [20 x i8] zeroinitializer }, align 32
@switch.table.vnt_update_pre_ed_threshold.8 = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @al2230_vnt_threshold, ptr @al2230_vnt_threshold, ptr @al2230_vnt_threshold, ptr @al2230_vnt_threshold, ptr @al2230_vnt_threshold, ptr @al2230_vnt_threshold, ptr @vt3226_vnt_threshold, ptr @al2230_vnt_threshold, ptr @al2230_vnt_threshold, ptr @vt3226_vnt_threshold, ptr @vt3342_vnt_threshold, ptr @al2230_vnt_threshold], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [8 x i64] [i64 6, i64 8, i64 3, i64 9, i64 10, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 12, i64 13]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 255, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"vnt_vt3184_agc\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 32, i32 17 }
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"al2230_vnt_threshold\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 120, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [21 x i8] c"vt3226_vnt_threshold\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 144, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"vt3342_vnt_threshold\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 170, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 482, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"vnt_vt3184_al2230\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 43, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c"vnt_vt3184_vt3226d0\00", align 1
@___asan_gen_.45 = private constant [37 x i8] c"../drivers/staging/vt6656/baseband.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 79, i32 17 }
@___asan_gen_.47 = private unnamed_addr constant [41 x i8] c"switch.table.vnt_update_pre_ed_threshold\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [43 x i8] c"switch.table.vnt_update_pre_ed_threshold.8\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vnt_vt3184_agc, ptr @al2230_vnt_threshold, ptr @vt3226_vnt_threshold, ptr @vt3342_vnt_threshold, ptr @.str.4, ptr @.str.5, ptr @vnt_vt3184_al2230, ptr @vnt_vt3184_vt3226d0, ptr @switch.table.vnt_update_pre_ed_threshold, ptr @switch.table.vnt_update_pre_ed_threshold.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_vt3184_agc to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al2230_vnt_threshold to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt3226_vnt_threshold to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt3342_vnt_threshold to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_vt3184_al2230 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_vt3184_vt3226d0 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vnt_update_pre_ed_threshold to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vnt_update_pre_ed_threshold.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_set_antenna_mode(ptr noundef %priv, i8 noundef zeroext %antenna_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %antenna_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %antenna_mode, label %entry.sw.epilog_crit_edge [
    i8 3, label %sw.bb4
    i8 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %bb_rx_conf = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 22
  %1 = ptrtoint ptr %bb_rx_conf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bb_rx_conf, align 4
  %3 = and i8 %2, -4
  store i8 %3, ptr %bb_rx_conf, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %bb_rx_conf5 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 22
  %4 = ptrtoint ptr %bb_rx_conf5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bb_rx_conf5, align 4
  %6 = and i8 %5, -4
  %7 = or i8 %6, 2
  store i8 %7, ptr %bb_rx_conf5, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %entry.sw.epilog_crit_edge
  %conv12 = zext i8 %antenna_mode to i16
  %call = tail call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 11, i16 noundef zeroext %conv12, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_control_out(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_vt3184_init(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !31
  %eeprom = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 45
  %call = tail call i32 @vnt_control_in(ptr noundef %priv, i8 noundef zeroext 1, i16 noundef zeroext 0, i16 noundef zeroext 4, i16 noundef zeroext 256, ptr noundef %eeprom) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 45, i32 27
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %rf_type = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 21
  %3 = ptrtoint ptr %rf_type to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %rf_type, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_vt3184_init.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_vt3184_init, %if.then6)) #3
          to label %do.end [label %if.then6], !srcloc !32

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %usb = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %4 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rf_type, align 1
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_vt3184_init.__UNIQUE_ID_ddebug383, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %conv) #3
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %8 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rf_type, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %9, label %do.end.end_crit_edge [
    i8 3, label %do.end.if.then21_crit_edge
    i8 14, label %do.end.if.then21_crit_edge179
    i8 10, label %do.end.if.then21_crit_edge180
    i8 9, label %do.end.if.then50_crit_edge
    i8 12, label %do.end.if.then50_crit_edge181
    i8 13, label %do.end.if.then50_crit_edge182
  ]

do.end.if.then50_crit_edge182:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then50

do.end.if.then50_crit_edge181:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then50

do.end.if.then50_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then50

do.end.if.then21_crit_edge180:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then21

do.end.if.then21_crit_edge179:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then21

do.end.if.then21_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then21

do.end.end_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.then21:                                        ; preds = %do.end.if.then21_crit_edge, %do.end.if.then21_crit_edge179, %do.end.if.then21_crit_edge180
  %11 = load i8, ptr getelementptr inbounds (<{ [242 x i8], [14 x i8] }>, ptr @vnt_vt3184_al2230, i32 0, i32 0, i32 10), align 1
  %bb_rx_conf = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 22
  %12 = ptrtoint ptr %bb_rx_conf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %bb_rx_conf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %9)
  %cmp24 = icmp eq i8 %9, 10
  br i1 %cmp24, label %if.then26, label %if.then21.if.end66_crit_edge

if.then21.if.end66_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end66

if.then26:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  store i8 6, ptr getelementptr inbounds (<{ [242 x i8], [14 x i8] }>, ptr @vnt_vt3184_al2230, i32 0, i32 0, i32 215), align 1
  br label %if.end66

if.then50:                                        ; preds = %do.end.if.then50_crit_edge, %do.end.if.then50_crit_edge181, %do.end.if.then50_crit_edge182
  %bb_rx_conf51 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 22
  %13 = ptrtoint ptr %bb_rx_conf51 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 42, ptr %bb_rx_conf51, align 4
  %bb_vga52 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 69
  %14 = ptrtoint ptr %bb_vga52 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 32, ptr %bb_vga52, align 1
  %arrayidx55 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 69, i32 1
  %15 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 16, ptr %arrayidx55, align 1
  %arrayidx57 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 69, i32 2
  %16 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx57, align 1
  %arrayidx59 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 69, i32 3
  %17 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx59, align 1
  %call60 = tail call i32 @vnt_mac_reg_bits_on(ptr noundef %priv, i8 noundef zeroext 121, i8 noundef zeroext 8) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then50._crit_edge, label %if.then50.end_crit_edge

if.then50.end_crit_edge:                          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.then50._crit_edge:                             ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #5
  br label %22

if.end66:                                         ; preds = %if.then26, %if.then21.if.end66_crit_edge
  %bb_vga = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 69
  %18 = ptrtoint ptr %bb_vga to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 28, ptr %bb_vga, align 1
  %arrayidx31 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 69, i32 1
  %19 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 16, ptr %arrayidx31, align 1
  %arrayidx33 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 69, i32 2
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx33, align 1
  %arrayidx35 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 69, i32 3
  %21 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx35, align 1
  br label %22

22:                                               ; preds = %if.end66, %if.then50._crit_edge
  %23 = phi ptr [ @vnt_vt3184_al2230, %if.end66 ], [ @vnt_vt3184_vt3226d0, %if.then50._crit_edge ]
  %call70 = tail call i32 @vnt_control_out_blocks(ptr noundef %priv, i16 noundef zeroext 64, i8 noundef zeroext 2, i16 noundef zeroext 256, ptr noundef nonnull %23) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %.end_crit_edge

.end_crit_edge:                                   ; preds = %22
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end73:                                         ; preds = %22
  %call74 = tail call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 7, i16 noundef zeroext 64, ptr noundef nonnull @vnt_vt3184_agc) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end73.end_crit_edge

if.end73.end_crit_edge:                           ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end77:                                         ; preds = %if.end73
  %24 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rf_type, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %25, label %if.end77.if.end106_crit_edge [
    i8 9, label %if.end77.if.then92_crit_edge
    i8 13, label %if.end77.if.then92_crit_edge183
    i8 12, label %if.end77.if.then92_crit_edge184
  ]

if.end77.if.then92_crit_edge184:                  ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then92

if.end77.if.then92_crit_edge183:                  ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then92

if.end77.if.then92_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then92

if.end77.if.end106_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end106

if.then92:                                        ; preds = %if.end77.if.then92_crit_edge, %if.end77.if.then92_crit_edge183, %if.end77.if.then92_crit_edge184
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %25)
  %cmp95 = icmp eq i8 %25, 12
  %conv97 = select i1 %cmp95, i8 17, i8 35
  %27 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv97, ptr %data, align 1
  %call98 = tail call i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext 3, i8 noundef zeroext 116, i8 noundef zeroext %conv97) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.then92.end_crit_edge

if.then92.end_crit_edge:                          ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end101:                                        ; preds = %if.then92
  %call102 = tail call i32 @vnt_mac_reg_bits_on(ptr noundef %priv, i8 noundef zeroext 119, i8 noundef zeroext 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end101.if.end106_crit_edge, label %if.end101.end_crit_edge

if.end101.end_crit_edge:                          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end101.if.end106_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end106

if.end106:                                        ; preds = %if.end101.if.end106_crit_edge, %if.end77.if.end106_crit_edge
  %call107 = tail call i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext 4, i8 noundef zeroext 127) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %if.end106.end_crit_edge

if.end106.end_crit_edge:                          ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end110:                                        ; preds = %if.end106
  %call111 = tail call i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext 13, i8 noundef zeroext 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %if.end110.end_crit_edge

if.end110.end_crit_edge:                          ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end114:                                        ; preds = %if.end110
  %call115 = tail call i32 @vnt_rf_table_download(ptr noundef %priv) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %if.end114.end_crit_edge

if.end114.end_crit_edge:                          ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end118:                                        ; preds = %if.end114
  %call119 = call i32 @vnt_control_in(ptr noundef %priv, i8 noundef zeroext 1, i16 noundef zeroext 1540, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %data) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end122, label %if.end118.end_crit_edge

if.end118.end_crit_edge:                          ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end122:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #5
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %data, align 1
  %30 = or i8 %29, 2
  store i8 %30, ptr %data, align 1
  %call125 = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 0, i16 noundef zeroext 1540, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %data) #3
  br label %end

end:                                              ; preds = %if.end122, %if.end118.end_crit_edge, %if.end114.end_crit_edge, %if.end110.end_crit_edge, %if.end106.end_crit_edge, %if.end101.end_crit_edge, %if.then92.end_crit_edge, %if.end73.end_crit_edge, %.end_crit_edge, %if.then50.end_crit_edge, %do.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.end_crit_edge ], [ %call70, %.end_crit_edge ], [ %call74, %if.end73.end_crit_edge ], [ %call98, %if.then92.end_crit_edge ], [ %call102, %if.end101.end_crit_edge ], [ %call107, %if.end106.end_crit_edge ], [ %call111, %if.end110.end_crit_edge ], [ %call115, %if.end114.end_crit_edge ], [ %call119, %if.end118.end_crit_edge ], [ %call125, %if.end122 ], [ %call60, %if.then50.end_crit_edge ], [ 0, %do.end.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #3
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_control_in(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_mac_reg_bits_on(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_control_out_blocks(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_control_out_u8(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_rf_table_download(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_set_short_slot_time(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %bb_vga = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bb_vga) #3
  %0 = ptrtoint ptr %bb_vga to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bb_vga, align 1
  %short_slot_time = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 57
  %1 = ptrtoint ptr %short_slot_time to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %short_slot_time, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %bb_rx_conf2 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 22
  %3 = ptrtoint ptr %bb_rx_conf2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bb_rx_conf2, align 4
  %5 = and i8 %4, -33
  %masksel = select i1 %tobool.not, i8 32, i8 0
  %.sink = or i8 %5, %masksel
  store i8 %.sink, ptr %bb_rx_conf2, align 4
  %call = call i32 @vnt_control_in_u8(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext -25, ptr noundef nonnull %bb_vga) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %entry
  %6 = ptrtoint ptr %bb_vga to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bb_vga, align 1
  %bb_vga9 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 69
  %8 = ptrtoint ptr %bb_vga9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bb_vga9, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp = icmp eq i8 %7, %9
  br i1 %cmp, label %if.then12, label %if.end7.if.end17_crit_edge

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %bb_rx_conf13 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 22
  %10 = ptrtoint ptr %bb_rx_conf13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bb_rx_conf13, align 4
  %12 = or i8 %11, 32
  store i8 %12, ptr %bb_rx_conf13, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end7.if.end17_crit_edge
  %bb_rx_conf18 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 22
  %13 = ptrtoint ptr %bb_rx_conf18 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bb_rx_conf18, align 4
  %call19 = call i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext 10, i8 noundef zeroext %14) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end17 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bb_vga) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_control_in_u8(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_set_vga_gain_offset(ptr noundef %priv, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext -25, i8 noundef zeroext %data) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %short_slot_time = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 57
  %0 = ptrtoint ptr %short_slot_time to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %short_slot_time, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  %bb_rx_conf4 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 22
  %2 = ptrtoint ptr %bb_rx_conf4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bb_rx_conf4, align 4
  %4 = and i8 %3, -33
  %masksel = select i1 %tobool1.not, i8 32, i8 0
  %.sink = or i8 %4, %masksel
  store i8 %.sink, ptr %bb_rx_conf4, align 4
  %call9 = tail call i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext 10, i8 noundef zeroext %.sink) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_set_deep_sleep(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext 12, i8 noundef zeroext 23) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext 13, i8 noundef zeroext -71) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_exit_deep_sleep(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext 12, i8 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext 13, i8 noundef zeroext 1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_update_pre_ed_threshold(ptr noundef %priv, i32 noundef %scanning) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_type = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rf_type, align 1
  %switch.tableidx = add i8 %1, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %switch.tableidx)
  %2 = icmp ult i8 %switch.tableidx, 12
  br i1 %2, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 3777, %switch.maskindex
  %3 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %switch.lobit.not = icmp eq i16 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %4 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [12 x i8], ptr @switch.table.vnt_update_pre_ed_threshold, i32 0, i32 %4
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %5)
  %switch.load = load i8, ptr %switch.gep, align 1
  %6 = sext i8 %switch.tableidx to i32
  %switch.gep78 = getelementptr inbounds [12 x ptr], ptr @switch.table.vnt_update_pre_ed_threshold.8, i32 0, i32 %6
  %7 = ptrtoint ptr %switch.gep78 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load79 = load ptr, ptr %switch.gep78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scanning)
  %tobool3.not = icmp eq i32 %scanning, 0
  %8 = zext i8 %switch.load to i32
  %conv671 = select i1 %tobool3.not, i32 %8, i32 0
  br i1 %tobool3.not, label %for.body.lr.ph, label %switch.lookup.for.end_crit_edge

switch.lookup.for.end_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %switch.lookup
  %bb_pre_ed_rssi = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 70
  %9 = ptrtoint ptr %bb_pre_ed_rssi to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bb_pre_ed_rssi, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv674 = phi i32 [ %conv671, %for.body.lr.ph ], [ %conv6, %for.inc.for.body_crit_edge ]
  %ed_inx.073 = phi i8 [ %switch.load, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.vnt_threshold, ptr %switch.load79, i32 %conv674
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp11.not = icmp ugt i8 %10, %12
  br i1 %cmp11.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc:                                          ; preds = %for.body
  %dec = add i8 %ed_inx.073, -1
  %conv6 = zext i8 %dec to i32
  %cmp.not = icmp eq i8 %dec, 0
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %switch.lookup.for.end_crit_edge
  %ed_inx.0.lcssa = phi i8 [ 0, %switch.lookup.for.end_crit_edge ], [ %ed_inx.073, %for.body.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %conv6.lcssa = phi i32 [ %conv671, %switch.lookup.for.end_crit_edge ], [ %conv674, %for.body.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %cr_20117 = getelementptr %struct.vnt_threshold, ptr %switch.load79, i32 %conv6.lcssa, i32 1
  %13 = ptrtoint ptr %cr_20117 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cr_20117, align 1
  %cr_20620 = getelementptr %struct.vnt_threshold, ptr %switch.load79, i32 %conv6.lcssa, i32 2
  %15 = ptrtoint ptr %cr_20620 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cr_20620, align 1
  %bb_pre_ed_index = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 71
  %17 = ptrtoint ptr %bb_pre_ed_index to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bb_pre_ed_index, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %ed_inx.0.lcssa, i8 %18)
  %cmp23 = icmp eq i8 %ed_inx.0.lcssa, %18
  %19 = and i1 %tobool3.not, %cmp23
  br i1 %19, label %for.end.cleanup_crit_edge, label %if.end27

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end27:                                         ; preds = %for.end
  %20 = ptrtoint ptr %bb_pre_ed_index to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %ed_inx.0.lcssa, ptr %bb_pre_ed_index, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_update_pre_ed_threshold.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_update_pre_ed_threshold, %if.then32)) #3
          to label %do.end [label %if.then32], !srcloc !32

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  %usb = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %21 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  %bb_pre_ed_rssi33 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 70
  %23 = ptrtoint ptr %bb_pre_ed_rssi33 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bb_pre_ed_rssi33, align 1
  %conv34 = zext i8 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_update_pre_ed_threshold.__UNIQUE_ID_ddebug384, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef %conv34) #3
  br label %do.end

do.end:                                           ; preds = %if.then32, %if.end27
  %call36 = tail call i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext -55, i8 noundef zeroext %14) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end39:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %call40 = tail call i32 @vnt_control_out_u8(ptr noundef %priv, i8 noundef zeroext 2, i8 noundef zeroext -50, i8 noundef zeroext %16) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end.cleanup_crit_edge, %for.end.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %if.end39 ], [ 0, %for.end.cleanup_crit_edge ], [ %call36, %do.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/vt6656/baseband.c", i32 255, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @vnt_vt3184_init.__UNIQUE_ID_ddebug383, !1, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/vt6656/baseband.c", i32 482, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @vnt_update_pre_ed_threshold.__UNIQUE_ID_ddebug384, !7, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!10 = !{ptr @vnt_vt3184_al2230, !11, !"vnt_vt3184_al2230", i1 false, i1 false}
!11 = !{!"../drivers/staging/vt6656/baseband.c", i32 43, i32 11}
!12 = !{ptr @vnt_vt3184_vt3226d0, !13, !"vnt_vt3184_vt3226d0", i1 false, i1 false}
!13 = !{!"../drivers/staging/vt6656/baseband.c", i32 79, i32 17}
!14 = !{ptr @vnt_vt3184_agc, !15, !"vnt_vt3184_agc", i1 false, i1 false}
!15 = !{!"../drivers/staging/vt6656/baseband.c", i32 32, i32 17}
!16 = !{ptr @al2230_vnt_threshold, !17, !"al2230_vnt_threshold", i1 false, i1 false}
!17 = !{!"../drivers/staging/vt6656/baseband.c", i32 120, i32 35}
!18 = !{ptr @vt3226_vnt_threshold, !19, !"vt3226_vnt_threshold", i1 false, i1 false}
!19 = !{!"../drivers/staging/vt6656/baseband.c", i32 144, i32 35}
!20 = !{ptr @vt3342_vnt_threshold, !21, !"vt3342_vnt_threshold", i1 false, i1 false}
!21 = !{!"../drivers/staging/vt6656/baseband.c", i32 170, i32 35}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
!32 = !{i64 2148703206, i64 2148703211, i64 2148703224, i64 2148703268, i64 2148703302, i64 2148703323}
