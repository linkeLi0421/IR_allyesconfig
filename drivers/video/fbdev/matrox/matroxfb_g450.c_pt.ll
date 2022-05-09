; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/matrox/matroxfb_g450.c_pt.bc'
source_filename = "../drivers/video/fbdev/matrox/matroxfb_g450.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+matroxfb_g450_connect\22, \22a\22\09"
module asm "\09.weak\09__crc_matroxfb_g450_connect\09\09\09\09"
module asm "\09.long\09__crc_matroxfb_g450_connect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_matroxfb_g450_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22matroxfb_g450_connect\22\09\09\09\09\09"
module asm "__kstrtabns_matroxfb_g450_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+matroxfb_g450_shutdown\22, \22a\22\09"
module asm "\09.weak\09__crc_matroxfb_g450_shutdown\09\09\09\09"
module asm "\09.long\09__crc_matroxfb_g450_shutdown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_matroxfb_g450_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22matroxfb_g450_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_matroxfb_g450_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.matrox_altout = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mctl = type { %struct.v4l2_queryctrl, i32 }
%struct.v4l2_queryctrl = type { i32, i32, [32 x i8], i32, i32, i32, i32, i32, [2 x i32] }
%struct.output_desc = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.matrox_fb_info = type { %struct.fb_info, %struct.list_head, i32, i32, i32, i32, i32, %struct.matroxfb_par, %struct.matrox_hw_state, %struct.matrox_accel_data, ptr, %struct.anon.81, %struct.anon.82, %struct.anon.83, [3 x %struct.anon.85], [5 x ptr], [5 x ptr], i32, %struct.anon.86, %struct.anon.87, i32, i32, ptr, %struct.anon.88, %struct.anon.89, i32, i32, i32, i32, %struct.anon.90, i32, %struct.anon.91, %struct.fb_ops, %struct.matrox_bios, %struct.anon.94, %struct.anon.95, %struct.anon.97, [16 x i32] }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.78, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.matroxfb_par = type { i32, i32, %struct.anon.79 }
%struct.anon.79 = type { i32, i32, i32 }
%struct.matrox_hw_state = type { i32, [6 x i8], [80 x i8], i8, [768 x i8], [25 x i8], [9 x i8], [5 x i8], [9 x i8], [21 x i8], %struct.mavenregs, %struct.matrox_crtc2 }
%struct.mavenregs = type { [256 x i8], i32, i32, i32, i32, i16, i16 }
%struct.matrox_crtc2 = type { i32 }
%struct.matrox_accel_data = type { i8, i32, i32, i32, i32 }
%struct.anon.81 = type { %struct.matrox_vsync, i32, i32, i32 }
%struct.matrox_vsync = type { %struct.wait_queue_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.anon.82 = type { %struct.matrox_vsync, i32, i32, ptr, %struct.rw_semaphore }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.83 = type { %struct.rw_semaphore, %struct.anon.84 }
%struct.anon.84 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.85 = type { i32, ptr, ptr, i32, i32 }
%struct.anon.86 = type { i32, %struct.vaddr_t, i32, i32, i32 }
%struct.vaddr_t = type { ptr }
%struct.anon.87 = type { i32, %struct.vaddr_t, i32 }
%struct.anon.88 = type { %struct.matrox_pll_features, %struct.matrox_DAC1064_features }
%struct.matrox_pll_features = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.matrox_DAC1064_features = type { i8, i8 }
%struct.anon.89 = type { %struct.spinlock, %struct.spinlock }
%struct.anon.90 = type { i32, ptr, i32, i32, i32, i32 }
%struct.anon.91 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.matrox_bios = type { i8, i32, [128 x i8], %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i8, i8, i8 }
%struct.anon.93 = type { i8, i8 }
%struct.anon.94 = type { %struct.matrox_pll_limits, %struct.matrox_pll_limits, %struct.matrox_pll_limits }
%struct.matrox_pll_limits = type { i32, i32 }
%struct.anon.95 = type { %struct.matrox_pll_cache, %struct.matrox_pll_cache, %struct.matrox_pll_cache }
%struct.matrox_pll_cache = type { i32, [4 x %struct.anon.96] }
%struct.anon.96 = type { i32, i32 }
%struct.anon.97 = type { %struct.anon.98, %struct.anon.99, %struct.anon.100 }
%struct.anon.98 = type { i32, i32 }
%struct.anon.99 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.100 = type { i8, [3 x i8] }
%struct.my_timming = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_control = type { i32, i32 }

@matroxfb_g450_altout = internal global { %struct.matrox_altout, [32 x i8] } { %struct.matrox_altout { ptr @.str, ptr @matroxfb_g450_compute, ptr @matroxfb_g450_program, ptr null, ptr @matroxfb_g450_verify_mode, ptr @g450_query_ctrl, ptr @g450_get_ctrl, ptr @g450_set_ctrl }, [32 x i8] zeroinitializer }, align 32
@matroxfb_g450_dvi = internal global { %struct.matrox_altout, [32 x i8] } { %struct.matrox_altout { ptr @.str.2, ptr @g450_dvi_compute, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_matroxfb_g450_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_matroxfb_g450_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_matroxfb_g450_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @matroxfb_g450_connect to i32), ptr @__kstrtab_matroxfb_g450_connect, ptr @__kstrtabns_matroxfb_g450_connect }, section "___ksymtab+matroxfb_g450_connect", align 4
@__kstrtab_matroxfb_g450_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_matroxfb_g450_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_matroxfb_g450_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @matroxfb_g450_shutdown to i32), ptr @__kstrtab_matroxfb_g450_shutdown, ptr @__kstrtabns_matroxfb_g450_shutdown }, section "___ksymtab+matroxfb_g450_shutdown", align 4
@__UNIQUE_ID_author309 = internal constant [72 x i8] c"matroxfb_g450.author=(c) 2000-2002 Petr Vandrovec <vandrove@vc.cvut.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [57 x i8] c"matroxfb_g450.description=Matrox G450/G550 output driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [60 x i8] c"matroxfb_g450.file=drivers/video/fbdev/matrox/matroxfb_g450\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [26 x i8] c"matroxfb_g450.license=GPL\00", section ".modinfo", align 1
@g450_controls = internal constant { [5 x %struct.mctl], [88 x i8] } { [5 x %struct.mctl] [%struct.mctl { %struct.v4l2_queryctrl { i32 9963776, i32 1, [32 x i8] c"brightness\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 780, i32 1, i32 127, i32 0, [2 x i32] zeroinitializer }, i32 2724 }, %struct.mctl { %struct.v4l2_queryctrl { i32 9963777, i32 1, [32 x i8] c"contrast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1023, i32 1, i32 127, i32 0, [2 x i32] zeroinitializer }, i32 2728 }, %struct.mctl { %struct.v4l2_queryctrl { i32 9963778, i32 1, [32 x i8] c"saturation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 255, i32 1, i32 165, i32 0, [2 x i32] zeroinitializer }, i32 2732 }, %struct.mctl { %struct.v4l2_queryctrl { i32 9963779, i32 1, [32 x i8] c"hue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 255, i32 1, i32 0, i32 0, [2 x i32] zeroinitializer }, i32 2736 }, %struct.mctl { %struct.v4l2_queryctrl { i32 134217728, i32 2, [32 x i8] c"test output\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1, i32 1, i32 0, i32 0, [2 x i32] zeroinitializer }, i32 2744 }], [88 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Secondary output\00", [47 x i8] zeroinitializer }, align 32
@cve2_init_TVdata.paloutd = internal constant { %struct.output_desc, [32 x i8] } { %struct.output_desc { i32 52148148, i32 1407407, i32 4666667, i32 5777778, i64 19042247534182, i32 2518518, i32 625 }, [32 x i8] zeroinitializer }, align 32
@cve2_init_TVdata.ntscoutd = internal constant { %struct.output_desc, [32 x i8] } { %struct.output_desc { i32 52888889, i32 1333333, i32 4666667, i32 4666667, i64 15374030659475, i32 2418418, i32 525 }, [32 x i8] zeroinitializer }, align 32
@cve2_init_TVdata.palregs = internal constant { { <{ [62 x i8], [194 x i8] }>, i32, i32, i32, i32, i16, i16 }, [76 x i8] } { { <{ [62 x i8], [194 x i8] }>, i32, i32, i32, i32, i16, i16 } { <{ [62 x i8], [194 x i8] }> <{ [62 x i8] c"*\09\8A\CB\00\00\F9\00~D\9C.!\00<\03<\03\1A*\1C=\14\9C\01\00\FE~`\05\AD\03\A5\07\A5\00\00\00\08\04\00\1AU\01&\07~\02T\B0\00\14I\00\00\A3\C8\22\02\22?\03", [194 x i8] zeroinitializer }>, i32 0, i32 0, i32 0, i32 0, i16 0, i16 0 }, [76 x i8] zeroinitializer }, align 32
@cve2_init_TVdata.ntscregs = internal constant { { <{ [61 x i8], [195 x i8] }>, i32, i32, i32, i32, i16, i16 }, [76 x i8] } { { <{ [61 x i8], [195 x i8] }>, i32, i32, i32, i32, i16, i16 } { <{ [61 x i8], [195 x i8] }> <{ [61 x i8] c"!\F0|\1F\00\00\F9\00~C~=\00\00A\00<\00\17!\1B\1B$\83\01\00\0F\0F`\05\C0\02\9C\04\9C\01\02\00\0A\05\00\10\FF\03$\0Fx\00\00\B2\04\14\02\00\00\A3\C8\15\05;<", [195 x i8] zeroinitializer }>, i32 0, i32 0, i32 0, i32 0, i16 0, i16 0 }, [76 x i8] zeroinitializer }, align 32
@g450_query_ctrl.disctrl = internal constant { %struct.v4l2_queryctrl, [60 x i8] } { %struct.v4l2_queryctrl { i32 0, i32 0, [32 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 1, [2 x i32] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ctrl #%08X\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DVI output\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 128]
@__sancov_gen_cov_switch_values.3 = internal global [7 x i64] [i64 5, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 134217728]
@__sancov_gen_cov_switch_values.4 = internal global [7 x i64] [i64 5, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 134217728]
@__sancov_gen_cov_switch_values.5 = internal global [7 x i64] [i64 5, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 134217728]
@__sancov_gen_cov_switch_values.6 = internal global [7 x i64] [i64 5, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 134217728]
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"matroxfb_g450_altout\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 588, i32 29 }
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"matroxfb_g450_dvi\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 598, i32 29 }
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"g450_controls\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 34, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 589, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [8 x i8] c"paloutd\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 362, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [9 x i8] c"ntscoutd\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 371, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [8 x i8] c"palregs\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 381, i32 32 }
@___asan_gen_.28 = private unnamed_addr constant [9 x i8] c"ntscregs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 437, i32 32 }
@___asan_gen_.31 = private unnamed_addr constant [8 x i8] c"disctrl\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 151, i32 38 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 157, i32 20 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [46 x i8] c"../drivers/video/fbdev/matrox/matroxfb_g450.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 599, i32 11 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__ksymtab_matroxfb_g450_connect, ptr @__ksymtab_matroxfb_g450_shutdown, ptr @matroxfb_g450_altout, ptr @matroxfb_g450_dvi, ptr @g450_controls, ptr @.str, ptr @cve2_init_TVdata.paloutd, ptr @cve2_init_TVdata.ntscoutd, ptr @cve2_init_TVdata.palregs, ptr @cve2_init_TVdata.ntscregs, ptr @g450_query_ctrl.disctrl, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_g450_altout to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_g450_dvi to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g450_controls to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cve2_init_TVdata.paloutd to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cve2_init_TVdata.ntscoutd to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cve2_init_TVdata.palregs to i32), i32 276, i32 352, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cve2_init_TVdata.ntscregs to i32), i32 276, i32 352, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g450_query_ctrl.disctrl to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @matroxfb_g450_connect(ptr noundef %minfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %g450dac = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 19
  %0 = ptrtoint ptr %g450dac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %g450dac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %altout = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 13
  tail call void @down_write(ptr noundef %altout) #7
  %add.ptr.i.i = getelementptr i8, ptr %minfo, i32 2724
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 127, ptr %add.ptr.i.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %minfo, i32 2728
  %3 = ptrtoint ptr %add.ptr.i.1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 127, ptr %add.ptr.i.1.i, align 4
  %add.ptr.i.2.i = getelementptr i8, ptr %minfo, i32 2732
  %4 = ptrtoint ptr %add.ptr.i.2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 165, ptr %add.ptr.i.2.i, align 4
  %add.ptr.i.3.i = getelementptr i8, ptr %minfo, i32 2736
  %5 = ptrtoint ptr %add.ptr.i.3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %add.ptr.i.3.i, align 4
  %add.ptr.i.4.i = getelementptr i8, ptr %minfo, i32 2744
  %6 = ptrtoint ptr %add.ptr.i.4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %add.ptr.i.4.i, align 4
  %arrayidx = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 1
  %default_src = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 1, i32 4
  %7 = ptrtoint ptr %default_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %default_src, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  %data = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 1, i32 2
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %minfo, ptr %data, align 4
  %output = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 1, i32 1
  %11 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @matroxfb_g450_altout, ptr %output, align 4
  %mode = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 1, i32 3
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 128, ptr %mode, align 4
  %arrayidx10 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 2
  %default_src11 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 2, i32 4
  %13 = ptrtoint ptr %default_src11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %default_src11, align 4
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx10, align 4
  %data17 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 2, i32 2
  %16 = ptrtoint ptr %data17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %minfo, ptr %data17, align 4
  %output20 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 2, i32 1
  %17 = ptrtoint ptr %output20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @matroxfb_g450_dvi, ptr %output20, align 4
  %mode23 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 2, i32 3
  %18 = ptrtoint ptr %mode23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 128, ptr %mode23, align 4
  tail call void @up_write(ptr noundef %altout) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @matroxfb_g450_shutdown(ptr noundef %minfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %g450dac = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 19
  %0 = ptrtoint ptr %g450dac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %g450dac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %altout = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 13
  tail call void @down_write(ptr noundef %altout) #7
  %arrayidx = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx, align 4
  %output = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 1, i32 1
  %3 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %output, align 4
  %data = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 1, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %data, align 4
  %mode = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 1, i32 3
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 128, ptr %mode, align 4
  %arrayidx8 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 2
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx8, align 4
  %output12 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 2, i32 1
  %7 = ptrtoint ptr %output12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %output12, align 4
  %data15 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 2, i32 2
  %8 = ptrtoint ptr %data15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %data15, align 4
  %mode18 = getelementptr %struct.matrox_fb_info, ptr %minfo, i32 0, i32 14, i32 2, i32 3
  %9 = ptrtoint ptr %mode18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 128, ptr %mode18, align 4
  tail call void @up_write(ptr noundef %altout) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matroxfb_g450_compute(ptr noundef %md, ptr nocapture noundef %mt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 2
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %mode = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 14, i32 1, i32 3
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %3)
  %cmp1.not = icmp eq i32 %3, 128
  br i1 %cmp1.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %maven = getelementptr inbounds %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = call ptr @memcpy(ptr %maven, ptr @cve2_init_TVdata.palregs, i32 276)
  br label %cve2_init_TVdata.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %5 = call ptr @memcpy(ptr %maven, ptr @cve2_init_TVdata.ntscregs, i32 276)
  br label %cve2_init_TVdata.exit

cve2_init_TVdata.exit:                            ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi ptr [ @cve2_init_TVdata.ntscoutd, %if.else.i ], [ @cve2_init_TVdata.paloutd, %if.then.i ]
  %tvo_params.i = getelementptr inbounds %struct.matrox_fb_info, ptr %md, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %tvo_params.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tvo_params.i, align 4
  %add.i = add i32 %7, 243
  %contrast.i = getelementptr inbounds %struct.matrox_fb_info, ptr %md, i32 0, i32 13, i32 1, i32 1
  %8 = ptrtoint ptr %contrast.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %contrast.i, align 4
  %sub.i = sub i32 %add.i, %9
  %10 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 243) #7
  %add3.i = add i32 %add.i, %9
  %11 = tail call i32 @llvm.smin.i32(i32 %add3.i, i32 1023) #7
  %12 = lshr i32 %10, 2
  %conv = trunc i32 %12 to i8
  %arrayidx7 = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 14
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %arrayidx7, align 2
  %14 = trunc i32 %10 to i8
  %conv8 = and i8 %14, 3
  %arrayidx12 = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 15
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv8, ptr %arrayidx12, align 1
  %16 = lshr i32 %11, 2
  %conv14 = trunc i32 %16 to i8
  %arrayidx18 = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 30
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv14, ptr %arrayidx18, align 2
  %18 = trunc i32 %11 to i8
  %conv20 = and i8 %18, 3
  %arrayidx24 = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 31
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv20, ptr %arrayidx24, align 1
  %saturation = getelementptr inbounds %struct.matrox_fb_info, ptr %md, i32 0, i32 13, i32 1, i32 2
  %20 = ptrtoint ptr %saturation to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %saturation, align 4
  %conv25 = trunc i32 %21 to i8
  %arrayidx29 = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 34
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv25, ptr %arrayidx29, align 2
  %arrayidx33 = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 32
  %23 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv25, ptr %arrayidx33, align 4
  %hue = getelementptr inbounds %struct.matrox_fb_info, ptr %md, i32 0, i32 13, i32 1, i32 3
  %24 = ptrtoint ptr %hue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hue, align 4
  %conv36 = trunc i32 %25 to i8
  %arrayidx40 = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 37
  %26 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv36, ptr %arrayidx40, align 1
  %testout = getelementptr inbounds %struct.matrox_fb_info, ptr %md, i32 0, i32 13, i32 1, i32 5
  %27 = ptrtoint ptr %testout to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %testout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %cve2_init_TVdata.exit.if.end_crit_edge, label %if.then43

cve2_init_TVdata.exit.if.end_crit_edge:           ; preds = %cve2_init_TVdata.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then43:                                        ; preds = %cve2_init_TVdata.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx47 = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 5
  %29 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx47, align 1
  %31 = or i8 %30, 2
  store i8 %31, ptr %arrayidx47, align 1
  br label %if.end

if.end:                                           ; preds = %if.then43, %cve2_init_TVdata.exit.if.end_crit_edge
  %arrayidx.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 128
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 3, ptr %arrayidx.i, align 4
  %HDisplay.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 3
  %33 = ptrtoint ptr %HDisplay.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %HDisplay.i, align 4
  %shl.i = shl i32 %34, 1
  %add.i90 = add i32 %shl.i, 3
  %and.i = and i32 %add.i90, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %and.i)
  %cmp.i91 = icmp ugt i32 %and.i, 2047
  %spec.store.select.i = select i1 %cmp.i91, i32 2044, i32 %and.i
  %conv.i = zext i32 %spec.store.select.i to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000000000
  %35 = ptrtoint ptr %storemerge.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %storemerge.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp173.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp173.i, label %if.then177.i, label %if.else183.i, !prof !42

if.then177.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv178.i = trunc i64 %mul.i to i32
  %div181.i = udiv i32 %conv178.i, %36
  br label %if.end187.i

if.else183.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %37 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %36, i64 %mul.i) #10, !srcloc !43
  %asmresult1.i.i = extractvalue { i64, i64 } %37, 1
  %extract.t888.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end187.i

if.end187.i:                                      ; preds = %if.else183.i, %if.then177.i
  %piic.0.off0.i = phi i32 [ %div181.i, %if.then177.i ], [ %extract.t888.i, %if.else183.i ]
  %call191.i = tail call i32 @matroxfb_g450_setclk(ptr noundef %md, i32 noundef %piic.0.off0.i, i32 noundef 4) #7
  %mnp192.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 1
  %38 = ptrtoint ptr %mnp192.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call191.i, ptr %mnp192.i, align 4
  %call193.i = tail call i32 @g450_mnp2f(ptr noundef %md, i32 noundef %call191.i) #7
  %39 = ptrtoint ptr %mt to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call193.i, ptr %mt, align 4
  %div197.i = udiv i32 1000000000, %call193.i
  %chromasc199.i = getelementptr inbounds %struct.output_desc, ptr %storemerge.i, i32 0, i32 4
  %40 = ptrtoint ptr %chromasc199.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %chromasc199.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %41)
  %cmp402.i = icmp ult i64 %41, 4294967296
  br i1 %cmp402.i, label %if.then410.i, label %if.else416.i, !prof !42

if.then410.i:                                     ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv411.i = trunc i64 %41 to i32
  %div414.i = udiv i32 %conv411.i, %call193.i
  %conv415.i = zext i32 %div414.i to i64
  %extract.t891.i = trunc i32 %div414.i to i8
  %extract120 = lshr i64 %conv415.i, 8
  %extract.t121 = trunc i64 %extract120 to i8
  %extract124 = lshr i64 %conv415.i, 16
  %extract.t125 = trunc i64 %extract124 to i8
  %extract128 = lshr i64 %conv415.i, 24
  %extract.t129 = trunc i64 %extract128 to i8
  br label %if.end420.i

if.else416.i:                                     ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call193.i, i64 %41) #10, !srcloc !43
  %asmresult1.i838.i = extractvalue { i64, i64 } %42, 1
  %extract.t892.i = trunc i64 %asmresult1.i838.i to i8
  %extract118 = lshr i64 %asmresult1.i838.i, 8
  %extract.t119 = trunc i64 %extract118 to i8
  %extract122 = lshr i64 %asmresult1.i838.i, 16
  %extract.t123 = trunc i64 %extract122 to i8
  %extract126 = lshr i64 %asmresult1.i838.i, 24
  %extract.t127 = trunc i64 %extract126 to i8
  br label %if.end420.i

if.end420.i:                                      ; preds = %if.else416.i, %if.then410.i
  %asmresult1.i838.i.sink117.off8 = phi i8 [ %extract.t119, %if.else416.i ], [ %extract.t121, %if.then410.i ]
  %asmresult1.i838.i.sink117.off16 = phi i8 [ %extract.t123, %if.else416.i ], [ %extract.t125, %if.then410.i ]
  %asmresult1.i838.i.sink117.off24 = phi i8 [ %extract.t127, %if.else416.i ], [ %extract.t129, %if.then410.i ]
  %piic.1.off0.i = phi i8 [ %extract.t892.i, %if.else416.i ], [ %extract.t891.i, %if.then410.i ]
  %43 = ptrtoint ptr %maven to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %asmresult1.i838.i.sink117.off24, ptr %maven, align 4
  %arrayidx431.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx431.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %asmresult1.i838.i.sink117.off16, ptr %arrayidx431.i, align 1
  %arrayidx435.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx435.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %asmresult1.i838.i.sink117.off8, ptr %arrayidx435.i, align 2
  %arrayidx439.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 3
  %46 = ptrtoint ptr %arrayidx439.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %piic.1.off0.i, ptr %arrayidx439.i, align 1
  %h_b_porch.i = getelementptr inbounds %struct.output_desc, ptr %storemerge.i, i32 0, i32 3
  %47 = ptrtoint ptr %h_b_porch.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %h_b_porch.i, align 4
  %add440.i = add i32 %48, %div197.i
  %div441.i = udiv i32 %add440.i, %div197.i
  %and442.i = and i32 %div441.i, -2
  %h_f_porch.i = getelementptr inbounds %struct.output_desc, ptr %storemerge.i, i32 0, i32 1
  %49 = ptrtoint ptr %h_f_porch.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %h_f_porch.i, align 4
  %add443.i = add i32 %50, %div197.i
  %div444.i = udiv i32 %add443.i, %div197.i
  %and445.i = and i32 %div444.i, -2
  %h_sync.i = getelementptr inbounds %struct.output_desc, ptr %storemerge.i, i32 0, i32 2
  %51 = ptrtoint ptr %h_sync.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %h_sync.i, align 8
  %add446.i = add i32 %52, %div197.i
  %div447.i = udiv i32 %add446.i, %div197.i
  %and448.i = and i32 %div447.i, -2
  %add449.i = add i32 %and442.i, %spec.store.select.i
  %add450.i = add i32 %add449.i, %and445.i
  %add451.i = add i32 %add450.i, %and448.i
  %and452.i = and i32 %add451.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and452.i)
  %tobool454.not.i = icmp eq i32 %and452.i, 0
  br i1 %tobool454.not.i, label %if.end420.i.if.end472.i_crit_edge, label %if.then455.i

if.end420.i.if.end472.i_crit_edge:                ; preds = %if.end420.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end472.i

if.then455.i:                                     ; preds = %if.end420.i
  %sub456.i = sub i32 %and445.i, %and452.i
  %sub457.i = and i32 %add451.i, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and452.i)
  %cmp458.i = icmp ult i32 %and452.i, 3
  br i1 %cmp458.i, label %if.then455.i.if.end472.i_crit_edge, label %if.else461.i

if.then455.i.if.end472.i_crit_edge:               ; preds = %if.then455.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end472.i

if.else461.i:                                     ; preds = %if.then455.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and452.i)
  %cmp462.i = icmp ult i32 %and452.i, 10
  br i1 %cmp462.i, label %if.then464.i, label %if.else467.i

if.then464.i:                                     ; preds = %if.else461.i
  call void @__sanitizer_cov_trace_pc() #9
  %add465.i = add i32 %sub456.i, 4
  %add466.i = or i32 %sub457.i, 4
  br label %if.end472.i

if.else467.i:                                     ; preds = %if.else461.i
  call void @__sanitizer_cov_trace_pc() #9
  %add468.i = add i32 %sub456.i, 16
  %add469.i = add i32 %sub457.i, 16
  br label %if.end472.i

if.end472.i:                                      ; preds = %if.else467.i, %if.then464.i, %if.then455.i.if.end472.i_crit_edge, %if.end420.i.if.end472.i_crit_edge
  %hfp.0.i = phi i32 [ %sub456.i, %if.then455.i.if.end472.i_crit_edge ], [ %add465.i, %if.then464.i ], [ %add468.i, %if.else467.i ], [ %and445.i, %if.end420.i.if.end472.i_crit_edge ]
  %hlen.0.i = phi i32 [ %sub457.i, %if.then455.i.if.end472.i_crit_edge ], [ %add466.i, %if.then464.i ], [ %add469.i, %if.else467.i ], [ %add451.i, %if.end420.i.if.end472.i_crit_edge ]
  %conv473.i = trunc i32 %and448.i to i8
  %arrayidx475.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 8
  %53 = ptrtoint ptr %arrayidx475.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv473.i, ptr %arrayidx475.i, align 4
  %burst.i = getelementptr inbounds %struct.output_desc, ptr %storemerge.i, i32 0, i32 5
  %54 = ptrtoint ptr %burst.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %burst.i, align 8
  %add476.i = add nsw i32 %div197.i, -1
  %sub477.i = add i32 %add476.i, %55
  %div478.i = udiv i32 %sub477.i, %div197.i
  %conv479.i = trunc i32 %div478.i to i8
  %arrayidx481.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 9
  %56 = ptrtoint ptr %arrayidx481.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv479.i, ptr %arrayidx481.i, align 1
  %conv482.i = trunc i32 %and442.i to i8
  %arrayidx484.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 10
  %57 = ptrtoint ptr %arrayidx484.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv482.i, ptr %arrayidx484.i, align 2
  %conv485.i = trunc i32 %hfp.0.i to i8
  %arrayidx487.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 44
  %58 = ptrtoint ptr %arrayidx487.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv485.i, ptr %arrayidx487.i, align 4
  %div488808.i = lshr i32 %spec.store.select.i, 3
  %conv489.i = trunc i32 %div488808.i to i8
  %arrayidx491.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 49
  %59 = ptrtoint ptr %arrayidx491.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv489.i, ptr %arrayidx491.i, align 1
  %60 = trunc i32 %spec.store.select.i to i8
  %conv493.i = and i8 %60, 4
  %arrayidx495.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 50
  %61 = ptrtoint ptr %arrayidx495.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv493.i, ptr %arrayidx495.i, align 2
  %arrayidx498.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 132
  %62 = ptrtoint ptr %arrayidx498.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %arrayidx498.i, align 4
  %arrayidx500.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 133
  %63 = ptrtoint ptr %arrayidx500.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %arrayidx500.i, align 1
  %shr501.i = lshr exact i32 %spec.store.select.i, 1
  %shr502.i = lshr i32 %hlen.0.i, 1
  %interlaced.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 13
  %64 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %interlaced.i, align 4
  %and504.i = and i32 %shr501.i, 2147483640
  %65 = ptrtoint ptr %HDisplay.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and504.i, ptr %HDisplay.i, align 4
  %add507.i = add nuw nsw i32 %and504.i, 8
  %HSyncStart.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 4
  %66 = ptrtoint ptr %HSyncStart.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add507.i, ptr %HSyncStart.i, align 4
  %and508.i = and i32 %shr502.i, 2147483640
  %sub509.i = add nsw i32 %and508.i, -8
  %HSyncEnd.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 5
  %67 = ptrtoint ptr %HSyncEnd.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub509.i, ptr %HSyncEnd.i, align 4
  %HTotal.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 6
  %68 = ptrtoint ptr %HTotal.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %shr502.i, ptr %HTotal.i, align 4
  %VTotal.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 10
  %69 = ptrtoint ptr %VTotal.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %VTotal.i, align 4
  %VSyncEnd.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 9
  %71 = ptrtoint ptr %VSyncEnd.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %VSyncEnd.i, align 4
  %VDisplay.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 7
  %73 = ptrtoint ptr %VDisplay.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %VDisplay.i, align 4
  %v_total.i = getelementptr inbounds %struct.output_desc, ptr %storemerge.i, i32 0, i32 6
  %75 = ptrtoint ptr %v_total.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %v_total.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %70)
  %cmp510.i = icmp ugt i32 %76, %70
  br i1 %cmp510.i, label %if.then512.i, label %if.else517.i

if.then512.i:                                     ; preds = %if.end472.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub514.i = sub i32 %76, %70
  %shr515.i = lshr i32 %sub514.i, 1
  %add516.i = add i32 %shr515.i, %72
  br label %computeRegs.exit

if.else517.i:                                     ; preds = %if.end472.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %70)
  %cmp519.i = icmp ult i32 %76, %70
  %sub523.i = add i32 %76, -4
  %spec.select.i = select i1 %cmp519.i, i32 %76, i32 %72
  %spec.select812.i = select i1 %cmp519.i, i32 %sub523.i, i32 %74
  br label %computeRegs.exit

computeRegs.exit:                                 ; preds = %if.else517.i, %if.then512.i
  %vsyncend.0.i = phi i32 [ %add516.i, %if.then512.i ], [ %spec.select.i, %if.else517.i ]
  %vdisplay.0.i = phi i32 [ %74, %if.then512.i ], [ %spec.select812.i, %if.else517.i ]
  %sub528.i = sub i32 %76, %vsyncend.0.i
  %shr529.i = lshr i32 %sub528.i, 1
  %div531809.i = lshr i32 %76, 2
  %conv532.i = trunc i32 %div531809.i to i8
  %arrayidx534.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 23
  %77 = ptrtoint ptr %arrayidx534.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv532.i, ptr %arrayidx534.i, align 1
  %78 = trunc i32 %76 to i8
  %conv537.i = and i8 %78, 3
  %arrayidx539.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 24
  %79 = ptrtoint ptr %arrayidx539.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv537.i, ptr %arrayidx539.i, align 4
  %80 = trunc i32 %shr529.i to i8
  %conv541.i = add i8 %80, -1
  %arrayidx543.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 51
  %81 = ptrtoint ptr %arrayidx543.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv541.i, ptr %arrayidx543.i, align 1
  %arrayidx546.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 130
  %82 = ptrtoint ptr %arrayidx546.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %80, ptr %arrayidx546.i, align 2
  %83 = lshr i32 %sub528.i, 9
  %conv548.i = trunc i32 %83 to i8
  %arrayidx550.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 131
  %84 = ptrtoint ptr %arrayidx550.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv548.i, ptr %arrayidx550.i, align 1
  %85 = ptrtoint ptr %VDisplay.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %vdisplay.0.i, ptr %VDisplay.i, align 4
  %sub553.i = add i32 %76, -2
  %VSyncStart.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 8
  %86 = ptrtoint ptr %VSyncStart.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub553.i, ptr %VSyncStart.i, align 4
  %87 = ptrtoint ptr %VSyncEnd.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %76, ptr %VSyncEnd.i, align 4
  %88 = ptrtoint ptr %VTotal.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %76, ptr %VTotal.i, align 4
  br label %if.end63

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %mnp = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 1
  %89 = ptrtoint ptr %mnp to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %mnp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp52 = icmp slt i32 %90, 0
  br i1 %cmp52, label %if.then54, label %if.else.if.end63_crit_edge

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %mt to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp56 = icmp eq i32 %1, 1
  %cond = select i1 %cmp56, i32 3, i32 4
  %call = tail call i32 @matroxfb_g450_setclk(ptr noundef %md, i32 noundef %92, i32 noundef %cond) #7
  %93 = ptrtoint ptr %mnp to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %call, ptr %mnp, align 4
  %call60 = tail call i32 @g450_mnp2f(ptr noundef %md, i32 noundef %call) #7
  %94 = ptrtoint ptr %mt to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %call60, ptr %mt, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then54, %if.else.if.end63_crit_edge, %computeRegs.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matroxfb_g450_program(ptr noundef %md) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 14, i32 1, i32 3
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %1)
  %cmp.not = icmp eq i32 %1, 128
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %maven = getelementptr inbounds %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10
  %arrayidx.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 128
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 4
  %conv.i = zext i8 %3 to i32
  %lock.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %md, i32 0, i32 24
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 135, i32 noundef 128) #7
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 136, i32 noundef %conv.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #7
  %arrayidx2.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 130
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2.i, align 2
  %conv3.i = zext i8 %5 to i32
  %call2.i33.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 135, i32 noundef 130) #7
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 136, i32 noundef %conv3.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i33.i) #7
  %arrayidx5.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 131
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %7 to i32
  %call2.i35.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 135, i32 noundef 131) #7
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 136, i32 noundef %conv6.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i35.i) #7
  %arrayidx8.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 132
  %8 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8.i, align 4
  %conv9.i = zext i8 %9 to i32
  %call2.i37.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 135, i32 noundef 132) #7
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 136, i32 noundef %conv9.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i37.i) #7
  %arrayidx11.i = getelementptr %struct.matrox_fb_info, ptr %md, i32 0, i32 8, i32 10, i32 0, i32 133
  %10 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %11 to i32
  %call2.i39.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 135, i32 noundef 133) #7
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 136, i32 noundef %conv12.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i39.i) #7
  %call2.i41.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 135, i32 noundef 62) #7
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 136, i32 noundef 1) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i41.i) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %i.046.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx15.i = getelementptr [256 x i8], ptr %maven, i32 0, i32 %i.046.i
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %13 to i32
  %call2.i43.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 135, i32 noundef %i.046.i) #7
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 136, i32 noundef %conv16.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i43.i) #7
  %inc.i = add nuw nsw i32 %i.046.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 62
  br i1 %exitcond.not.i, label %cve2_init_TV.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cve2_init_TV.exit:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i45.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 135, i32 noundef 62) #7
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 136, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i45.i) #7
  br label %if.end

if.end:                                           ; preds = %cve2_init_TV.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @matroxfb_g450_verify_mode(ptr nocapture noundef readnone %md, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %arg, label %sw.epilog [
    i32 1, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge1
    i32 128, label %entry.return_crit_edge2
  ]

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2
  %retval.0 = phi i32 [ -22, %sw.epilog ], [ 0, %entry.return_crit_edge ], [ 0, %entry.return_crit_edge1 ], [ 0, %entry.return_crit_edge2 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g450_query_ctrl(ptr nocapture noundef readnone %md, ptr nocapture noundef %p) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963776, i32 %1)
  %cmp1.i = icmp ult i32 %1, 9963776
  br i1 %cmp1.i, label %if.then2, label %if.end7.i

if.end7.i:                                        ; preds = %entry
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %1, label %if.end7.i.cleanup_crit_edge [
    i32 9963776, label %if.end7.i.if.then_crit_edge
    i32 9963777, label %cleanup.fold.split.i
    i32 9963778, label %cleanup.fold.split22.i
    i32 9963779, label %cleanup.fold.split23.i
    i32 134217728, label %if.then.fold.split
  ]

if.end7.i.if.then_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.fold.split.i:                             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

cleanup.fold.split22.i:                           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

cleanup.fold.split23.i:                           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split:                               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split, %cleanup.fold.split23.i, %cleanup.fold.split22.i, %cleanup.fold.split.i, %if.end7.i.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ 3, %cleanup.fold.split23.i ], [ 2, %cleanup.fold.split22.i ], [ 1, %cleanup.fold.split.i ], [ 0, %if.end7.i.if.then_crit_edge ], [ 4, %if.then.fold.split ]
  %arrayidx = getelementptr [5 x %struct.mctl], ptr @g450_controls, i32 0, i32 %retval.0.i.ph
  %3 = call ptr @memcpy(ptr %p, ptr %arrayidx, i32 68)
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = call ptr @memcpy(ptr %p, ptr @g450_query_ctrl.disctrl, i32 68)
  %5 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %p, align 4
  %name = getelementptr inbounds %struct.v4l2_queryctrl, ptr %p, i32 0, i32 2
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.then, %if.end7.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ -22, %if.end7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @g450_get_ctrl(ptr nocapture noundef readonly %md, ptr nocapture noundef %p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963776, i32 %1)
  %cmp1.i = icmp ult i32 %1, 9963776
  br i1 %cmp1.i, label %entry.cleanup_crit_edge, label %if.end7.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %1, label %if.end7.i.cleanup_crit_edge [
    i32 9963776, label %if.end7.i.if.end_crit_edge
    i32 9963777, label %cleanup.fold.split.i
    i32 9963778, label %cleanup.fold.split22.i
    i32 9963779, label %cleanup.fold.split23.i
    i32 134217728, label %if.end.fold.split
  ]

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.fold.split.i:                             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split22.i:                           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split23.i:                           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.fold.split:                                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %if.end.fold.split, %cleanup.fold.split23.i, %cleanup.fold.split22.i, %cleanup.fold.split.i, %if.end7.i.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 3, %cleanup.fold.split23.i ], [ 2, %cleanup.fold.split22.i ], [ 1, %cleanup.fold.split.i ], [ 0, %if.end7.i.if.end_crit_edge ], [ 4, %if.end.fold.split ]
  %control.i = getelementptr [5 x %struct.mctl], ptr @g450_controls, i32 0, i32 %retval.0.i.ph, i32 1
  %3 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %control.i, align 4
  %add.ptr.i = getelementptr i8, ptr %md, i32 %4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %value = getelementptr inbounds %struct.v4l2_control, ptr %p, i32 0, i32 1
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end7.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g450_set_ctrl(ptr noundef %md, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963776, i32 %1)
  %cmp1.i = icmp ult i32 %1, 9963776
  br i1 %cmp1.i, label %entry.cleanup_crit_edge, label %if.end7.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %1, label %if.end7.i.cleanup_crit_edge [
    i32 9963776, label %if.end7.i.if.end_crit_edge
    i32 9963777, label %cleanup.fold.split.i
    i32 9963778, label %cleanup.fold.split22.i
    i32 9963779, label %cleanup.fold.split23.i
    i32 134217728, label %if.end.fold.split
  ]

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.fold.split.i:                             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split22.i:                           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split23.i:                           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.fold.split:                                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %if.end.fold.split, %cleanup.fold.split23.i, %cleanup.fold.split22.i, %cleanup.fold.split.i, %if.end7.i.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 3, %cleanup.fold.split23.i ], [ 2, %cleanup.fold.split22.i ], [ 1, %cleanup.fold.split.i ], [ 0, %if.end7.i.if.end_crit_edge ], [ 4, %if.end.fold.split ]
  %value = getelementptr inbounds %struct.v4l2_control, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %control.i = getelementptr [5 x %struct.mctl], ptr @g450_controls, i32 0, i32 %retval.0.i.ph, i32 1
  %5 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %control.i, align 4
  %add.ptr.i = getelementptr i8, ptr %md, i32 %6
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %8)
  %cmp2 = icmp eq i32 %4, %8
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr [5 x %struct.mctl], ptr @g450_controls, i32 0, i32 %retval.0.i.ph
  %maximum = getelementptr inbounds %struct.v4l2_queryctrl, ptr %arrayidx, i32 0, i32 4
  %9 = ptrtoint ptr %maximum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %maximum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %10)
  %cmp6 = icmp sgt i32 %4, %10
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %minimum = getelementptr inbounds %struct.v4l2_queryctrl, ptr %arrayidx, i32 0, i32 3
  %11 = ptrtoint ptr %minimum to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %minimum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %12)
  %cmp12 = icmp slt i32 %4, %12
  br i1 %cmp12, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %4, ptr %add.ptr.i, align 4
  %14 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %p, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %15, label %if.end14.cleanup_crit_edge [
    i32 9963776, label %if.end14.sw.bb_crit_edge
    i32 9963777, label %if.end14.sw.bb_crit_edge68
    i32 9963778, label %sw.bb18
    i32 9963779, label %sw.bb21
    i32 134217728, label %sw.bb23
  ]

if.end14.sw.bb_crit_edge68:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end14.sw.bb_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end14.sw.bb_crit_edge, %if.end14.sw.bb_crit_edge68
  %tvo_params.i = getelementptr inbounds %struct.matrox_fb_info, ptr %md, i32 0, i32 13, i32 1
  %17 = ptrtoint ptr %tvo_params.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tvo_params.i, align 4
  %add.i = add i32 %18, 243
  %contrast.i = getelementptr inbounds %struct.matrox_fb_info, ptr %md, i32 0, i32 13, i32 1, i32 1
  %19 = ptrtoint ptr %contrast.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %contrast.i, align 4
  %sub.i = sub i32 %add.i, %20
  %21 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 243) #7
  %add3.i = add i32 %add.i, %20
  %22 = tail call i32 @llvm.smin.i32(i32 %add3.i, i32 1023) #7
  %lock.i = getelementptr inbounds %struct.matrox_fb_info, ptr %md, i32 0, i32 24
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 135, i32 noundef 14) #7
  %shr.i67 = lshr i32 %21, 2
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 136, i32 noundef %shr.i67) #7
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 135, i32 noundef 15) #7
  %and.i = and i32 %21, 3
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 136, i32 noundef %and.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  %call2.i61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 135, i32 noundef 30) #7
  %shr.i62 = ashr i32 %22, 2
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 136, i32 noundef %shr.i62) #7
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 135, i32 noundef 31) #7
  %and.i63 = and i32 %22, 3
  tail call void @matroxfb_DAC_out(ptr noundef %md, i32 noundef 136, i32 noundef %and.i63) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i61) #7
  br label %cleanup

sw.bb18:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %value, align 4
  tail call fastcc void @cve2_set_reg(ptr noundef %md, i32 noundef 32, i32 noundef %24)
  %25 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %value, align 4
  tail call fastcc void @cve2_set_reg(ptr noundef %md, i32 noundef 34, i32 noundef %26)
  br label %cleanup

sw.bb21:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %value, align 4
  tail call fastcc void @cve2_set_reg(ptr noundef %md, i32 noundef 37, i32 noundef %28)
  br label %cleanup

sw.bb23:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call fastcc i32 @cve2_get_reg(ptr noundef %md)
  %29 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  %conv27 = and i32 %call24, 253
  %or = or i32 %conv27, 2
  %val.0 = select i1 %tobool.not, i32 %conv27, i32 %or
  tail call fastcc void @cve2_set_reg(ptr noundef %md, i32 noundef 5, i32 noundef %val.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb23, %sw.bb21, %sw.bb18, %sw.bb, %if.end14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %sw.bb23 ], [ 0, %sw.bb21 ], [ 0, %sw.bb18 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matroxfb_g450_setclk(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g450_mnp2f(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cve2_set_reg(ptr noundef %minfo, i32 noundef %reg, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 24
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 135, i32 noundef %reg) #7
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 136, i32 noundef %val) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @matroxfb_DAC_out(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cve2_get_reg(ptr noundef %minfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 24
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 135, i32 noundef 5) #7
  %call5 = tail call i32 @matroxfb_DAC_in(ptr noundef %minfo, i32 noundef 136) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matroxfb_DAC_in(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @g450_dvi_compute(ptr noundef %md, ptr nocapture noundef %mt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mnp = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 1
  %0 = ptrtoint ptr %mnp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mnp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %mt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mt, align 4
  %crtc = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 2
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp eq i32 %5, 1
  %cond = select i1 %cmp1, i32 3, i32 4
  %call = tail call i32 @matroxfb_g450_setclk(ptr noundef %md, i32 noundef %3, i32 noundef %cond) #7
  %6 = ptrtoint ptr %mnp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %mnp, align 4
  %call4 = tail call i32 @g450_mnp2f(ptr noundef %md, i32 noundef %call) #7
  %7 = ptrtoint ptr %mt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call4, ptr %mt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__ksymtab_matroxfb_g450_connect, !1, !"__ksymtab_matroxfb_g450_connect", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/matrox/matroxfb_g450.c", i32 636, i32 1}
!2 = !{ptr @__ksymtab_matroxfb_g450_shutdown, !3, !"__ksymtab_matroxfb_g450_shutdown", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/matrox/matroxfb_g450.c", i32 637, i32 1}
!4 = !{ptr @__UNIQUE_ID_author309, !5, !"__UNIQUE_ID_author309", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/matrox/matroxfb_g450.c", i32 639, i32 1}
!6 = !{ptr @__UNIQUE_ID_description310, !7, !"__UNIQUE_ID_description310", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/matrox/matroxfb_g450.c", i32 640, i32 1}
!8 = !{ptr @__UNIQUE_ID_file311, !9, !"__UNIQUE_ID_file311", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/matrox/matroxfb_g450.c", i32 641, i32 1}
!10 = !{ptr @__UNIQUE_ID_license312, !9, !"__UNIQUE_ID_license312", i1 false, i1 false}
!11 = !{ptr @g450_controls, !12, !"g450_controls", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/matrox/matroxfb_g450.c", i32 34, i32 26}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/matrox/matroxfb_g450.c", i32 589, i32 11}
!15 = !{ptr @matroxfb_g450_altout, !16, !"matroxfb_g450_altout", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/matrox/matroxfb_g450.c", i32 588, i32 29}
!17 = !{ptr @cve2_init_TVdata.paloutd, !18, !"paloutd", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/matrox/matroxfb_g450.c", i32 362, i32 34}
!19 = !{ptr @cve2_init_TVdata.ntscoutd, !20, !"ntscoutd", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/matrox/matroxfb_g450.c", i32 371, i32 34}
!21 = !{ptr @cve2_init_TVdata.palregs, !22, !"palregs", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/matrox/matroxfb_g450.c", i32 381, i32 32}
!23 = !{ptr @cve2_init_TVdata.ntscregs, !24, !"ntscregs", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/matrox/matroxfb_g450.c", i32 437, i32 32}
!25 = !{ptr @g450_query_ctrl.disctrl, !26, !"disctrl", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/matrox/matroxfb_g450.c", i32 151, i32 38}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/matrox/matroxfb_g450.c", i32 157, i32 20}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/matrox/matroxfb_g450.c", i32 599, i32 11}
!31 = !{ptr @matroxfb_g450_dvi, !32, !"matroxfb_g450_dvi", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/matrox/matroxfb_g450.c", i32 598, i32 29}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 2148217862, i64 2148218142, i64 2148218476, i64 2148218810}
