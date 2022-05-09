; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/matrox/matroxfb_maven.c_pt.bc'
source_filename = "../drivers/video/fbdev/matrox/matroxfb_maven.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.matrox_altout = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mctl = type { %struct.v4l2_queryctrl, i32 }
%struct.v4l2_queryctrl = type { i32, i32, [32 x i8], i32, i32, i32, i32, i32, [2 x i32] }
%struct.maven_gamma = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.matrox_pll_features = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_bit_adapter = type { %struct.i2c_adapter, i32, %struct.i2c_algo_bit_data, ptr, %struct.anon.109 }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.anon.109 = type { i32, i32 }
%struct.maven_data = type { ptr, ptr, i32 }
%struct.matrox_fb_info = type { %struct.fb_info, %struct.list_head, i32, i32, i32, i32, i32, %struct.matroxfb_par, %struct.matrox_hw_state, %struct.matrox_accel_data, ptr, %struct.anon.89, %struct.anon.90, %struct.anon.91, [3 x %struct.anon.93], [5 x ptr], [5 x ptr], i32, %struct.anon.94, %struct.anon.95, i32, i32, ptr, %struct.anon.96, %struct.anon.97, i32, i32, i32, i32, %struct.anon.98, i32, %struct.anon.99, %struct.fb_ops, %struct.matrox_bios, %struct.anon.102, %struct.anon.103, %struct.anon.105, [16 x i32] }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.86, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.matroxfb_par = type { i32, i32, %struct.anon.87 }
%struct.anon.87 = type { i32, i32, i32 }
%struct.matrox_hw_state = type { i32, [6 x i8], [80 x i8], i8, [768 x i8], [25 x i8], [9 x i8], [5 x i8], [9 x i8], [21 x i8], %struct.mavenregs, %struct.matrox_crtc2 }
%struct.mavenregs = type { [256 x i8], i32, i32, i32, i32, i16, i16 }
%struct.matrox_crtc2 = type { i32 }
%struct.matrox_accel_data = type { i8, i32, i32, i32, i32 }
%struct.anon.89 = type { %struct.matrox_vsync, i32, i32, i32 }
%struct.matrox_vsync = type { %struct.wait_queue_head, i32 }
%struct.anon.90 = type { %struct.matrox_vsync, i32, i32, ptr, %struct.rw_semaphore }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.91 = type { %struct.rw_semaphore, %struct.anon.92 }
%struct.anon.92 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.93 = type { i32, ptr, ptr, i32, i32 }
%struct.anon.94 = type { i32, %struct.vaddr_t, i32, i32, i32 }
%struct.vaddr_t = type { ptr }
%struct.anon.95 = type { i32, %struct.vaddr_t, i32 }
%struct.anon.96 = type { %struct.matrox_pll_features, %struct.matrox_DAC1064_features }
%struct.matrox_DAC1064_features = type { i8, i8 }
%struct.anon.97 = type { %struct.spinlock, %struct.spinlock }
%struct.anon.98 = type { i32, ptr, i32, i32, i32, i32 }
%struct.anon.99 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.matrox_bios = type { i8, i32, [128 x i8], %struct.anon.100, %struct.anon.101 }
%struct.anon.100 = type { i8, i8, i8 }
%struct.anon.101 = type { i8, i8 }
%struct.anon.102 = type { %struct.matrox_pll_limits, %struct.matrox_pll_limits, %struct.matrox_pll_limits }
%struct.matrox_pll_limits = type { i32, i32 }
%struct.anon.103 = type { %struct.matrox_pll_cache, %struct.matrox_pll_cache, %struct.matrox_pll_cache }
%struct.matrox_pll_cache = type { i32, [4 x %struct.anon.104] }
%struct.anon.104 = type { i32, i32 }
%struct.anon.105 = type { %struct.anon.106, %struct.anon.107, %struct.anon.108 }
%struct.anon.106 = type { i32, i32 }
%struct.anon.107 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.108 = type { i8, [3 x i8] }
%struct.my_timming = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_control = type { i32, i32 }

@__initcall__kmod_matroxfb_maven__309_1301_maven_driver_init6 = internal global ptr @maven_driver_init, section ".initcall6.init", align 4
@maven_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @maven_probe, ptr @maven_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @maven_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_maven_driver_exit = internal global ptr @maven_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author310 = internal constant [73 x i8] c"matroxfb_maven.author=(c) 1999-2002 Petr Vandrovec <vandrove@vc.cvut.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description311 = internal constant [66 x i8] c"matroxfb_maven.description=Matrox G200/G400 Matrox MGA-TVO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [62 x i8] c"matroxfb_maven.file=drivers/video/fbdev/matrox/matroxfb_maven\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [27 x i8] c"matroxfb_maven.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"maven\00", [26 x i8] zeroinitializer }, align 32
@maven_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"maven\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@maven_altout = internal global { %struct.matrox_altout, [32 x i8] } { %struct.matrox_altout { ptr @.str.1, ptr @maven_out_compute, ptr @maven_out_program, ptr @maven_out_start, ptr @maven_out_verify_mode, ptr @maven_out_get_queryctrl, ptr @maven_out_get_ctrl, ptr @maven_out_set_ctrl }, [32 x i8] zeroinitializer }, align 32
@maven_controls = internal constant { [7 x %struct.mctl], [104 x i8] } { [7 x %struct.mctl] [%struct.mctl { %struct.v4l2_queryctrl { i32 9963776, i32 1, [32 x i8] c"brightness\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 768, i32 1, i32 124, i32 0, [2 x i32] zeroinitializer }, i32 2724 }, %struct.mctl { %struct.v4l2_queryctrl { i32 9963777, i32 1, [32 x i8] c"contrast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1023, i32 1, i32 127, i32 0, [2 x i32] zeroinitializer }, i32 2728 }, %struct.mctl { %struct.v4l2_queryctrl { i32 9963778, i32 1, [32 x i8] c"saturation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 255, i32 1, i32 155, i32 0, [2 x i32] zeroinitializer }, i32 2732 }, %struct.mctl { %struct.v4l2_queryctrl { i32 9963779, i32 1, [32 x i8] c"hue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 255, i32 1, i32 0, i32 0, [2 x i32] zeroinitializer }, i32 2736 }, %struct.mctl { %struct.v4l2_queryctrl { i32 9963792, i32 1, [32 x i8] c"gamma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 18, i32 1, i32 3, i32 0, [2 x i32] zeroinitializer }, i32 2740 }, %struct.mctl { %struct.v4l2_queryctrl { i32 134217728, i32 2, [32 x i8] c"test output\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 1, i32 1, i32 0, i32 0, [2 x i32] zeroinitializer }, i32 2744 }, %struct.mctl { %struct.v4l2_queryctrl { i32 134217729, i32 1, [32 x i8] c"deflicker mode\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 1, i32 0, i32 0, [2 x i32] zeroinitializer }, i32 2748 }], [104 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Secondary output\00", [47 x i8] zeroinitializer }, align 32
@maven_init_TVdata.palregs = internal constant { { <{ [62 x i8], [194 x i8] }>, i32, i32, i32, i32, i16, i16 }, [76 x i8] } { { <{ [62 x i8], [194 x i8] }>, i32, i32, i32, i32, i16, i16 } { <{ [62 x i8], [194 x i8] }> <{ [62 x i8] c"*\09\8A\CB\00\00\00\00~D\9C.!\00?\03?\03\1A*\1C=\14\9C\01\00\FE~`\05\89\03r\07r\00\00\00\08\04\00\1AU\01&\07~\02T\B0\00\14I\00\00\A3\C8\22\02\22?\03", [194 x i8] zeroinitializer }>, i32 1, i32 625, i32 50, i32 0, i16 0, i16 0 }, [76 x i8] zeroinitializer }, align 32
@maven_init_TVdata.ntscregs = internal constant { { <{ [61 x i8], [195 x i8] }>, i32, i32, i32, i32, i16, i16 }, [76 x i8] } { { <{ [61 x i8], [195 x i8] }>, i32, i32, i32, i32, i16, i16 } { <{ [61 x i8], [195 x i8] }> <{ [61 x i8] c"!\F0|\1F\00\00\00\00~C~=\00\00A\00<\00\17!\1B\1B$\83\01\00\0F\0F`\05\89\02_\04_\01\02\00\0A\05\00\10\FF\03$\0Fx\00\00\B2\04\14\02\00\00\A3\C8\15\05;<", [195 x i8] zeroinitializer }>, i32 2, i32 525, i32 60, i32 0, i16 0, i16 0 }, [76 x i8] zeroinitializer }, align 32
@maven_gamma = internal constant { [19 x %struct.maven_gamma], [53 x i8] } { [19 x %struct.maven_gamma] [%struct.maven_gamma { i8 -125, i8 57, i8 -33, i8 15, i8 117, i8 -44, i8 -5, i8 91, i8 -100 }, %struct.maven_gamma { i8 -123, i8 61, i8 -128, i8 63, i8 -76, i8 -109, i8 -61, i8 100, i8 -76 }, %struct.maven_gamma { i8 -125, i8 19, i8 63, i8 31, i8 50, i8 66, i8 -85, i8 64, i8 -80 }, %struct.maven_gamma { i8 0, i8 0, i8 0, i8 31, i8 16, i8 16, i8 16, i8 100, i8 -56 }, %struct.maven_gamma { i8 8, i8 23, i8 47, i8 73, i8 -109, i8 -12, i8 -36, i8 80, i8 -61 }, %struct.maven_gamma { i8 22, i8 43, i8 64, i8 80, i8 -109, i8 115, i8 58, i8 85, i8 -88 }, %struct.maven_gamma { i8 34, i8 60, i8 80, i8 -42, i8 -109, i8 -44, i8 -68, i8 85, i8 -89 }, %struct.maven_gamma { i8 45, i8 77, i8 96, i8 -40, i8 -109, i8 99, i8 91, i8 85, i8 -97 }, %struct.maven_gamma { i8 56, i8 76, i8 112, i8 107, i8 -109, i8 -44, i8 -108, i8 64, i8 -112 }, %struct.maven_gamma { i8 65, i8 91, i8 -128, i8 -119, i8 -109, i8 -60, i8 17, i8 69, i8 -108 }, %struct.maven_gamma { i8 72, i8 104, i8 -120, i8 -118, i8 -109, i8 -76, i8 -11, i8 73, i8 -109 }, %struct.maven_gamma { i8 87, i8 116, i8 -113, i8 126, i8 16, i8 83, i8 -27, i8 77, i8 -112 }, %struct.maven_gamma { i8 95, i8 119, i8 -104, i8 -2, i8 -12, i8 83, i8 -35, i8 77, i8 -105 }, %struct.maven_gamma { i8 100, i8 -127, i8 -97, i8 -100, i8 -12, i8 -108, i8 -59, i8 77, i8 -96 }, %struct.maven_gamma { i8 105, i8 -115, i8 -89, i8 -9, i8 -12, i8 -124, i8 -75, i8 84, i8 -90 }, %struct.maven_gamma { i8 105, i8 -109, i8 -88, i8 -9, i8 -12, i8 -11, i8 -75, i8 90, i8 -86 }, %struct.maven_gamma { i8 120, i8 -103, i8 -81, i8 -8, i8 -44, i8 -27, i8 -91, i8 90, i8 -76 }, %struct.maven_gamma { i8 119, i8 -100, i8 -80, i8 -8, i8 -12, i8 -27, i8 84, i8 74, i8 -96 }, %struct.maven_gamma { i8 119, i8 -98, i8 -73, i8 -8, i8 -12, i8 -27, i8 -107, i8 78, i8 -91 }], [53 x i8] zeroinitializer }, align 32
@maven_pll = internal constant { %struct.matrox_pll_features, [36 x i8] } { %struct.matrox_pll_features { i32 50000, i32 27000, i32 4, i32 127, i32 2, i32 31, i32 3 }, [36 x i8] zeroinitializer }, align 32
@maven_set_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016WriteReg(%d) failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"maven_set_reg\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/video/fbdev/matrox/matroxfb_maven.c\00", [52 x i8] zeroinitializer }, align 32
@maven_set_reg._entry_ptr = internal global ptr @maven_set_reg._entry, section ".printk_index", align 4
@maven_set_reg_pair._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016WriteRegPair(%d) failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"maven_set_reg_pair\00", [45 x i8] zeroinitializer }, align 32
@maven_set_reg_pair._entry_ptr = internal global ptr @maven_set_reg_pair._entry, section ".printk_index", align 4
@maven_get_queryctrl.disctrl = internal constant { %struct.v4l2_queryctrl, [60 x i8] } { %struct.v4l2_queryctrl { i32 0, i32 0, [32 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 1, [2 x i32] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ctrl #%08X\00", [21 x i8] zeroinitializer }, align 32
@maven_get_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016ReadReg(%d) failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"maven_get_reg\00", [18 x i8] zeroinitializer }, align 32
@maven_get_reg._entry_ptr = internal global ptr @maven_get_reg._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 128]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 134217728, i64 134217729]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 134217728, i64 134217729]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 134217728, i64 134217729]
@__sancov_gen_cov_switch_values.14 = internal global [9 x i64] [i64 7, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9963792, i64 134217728, i64 134217729]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"maven_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1292, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1294, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [9 x i8] c"maven_id\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1286, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"maven_altout\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1190, i32 29 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"maven_controls\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 68, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1191, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [8 x i8] c"palregs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 373, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"ntscregs\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 425, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"maven_gamma\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 37, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"maven_pll\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 181, i32 41 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 168, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 177, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [8 x i8] c"disctrl\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1043, i32 38 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1049, i32 20 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [47 x i8] c"../drivers/video/fbdev/matrox/matroxfb_maven.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 159, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_maven_driver_exit, ptr @__initcall__kmod_matroxfb_maven__309_1301_maven_driver_init6, ptr @maven_driver_exit, ptr @maven_get_reg._entry, ptr @maven_get_reg._entry_ptr, ptr @maven_set_reg._entry, ptr @maven_set_reg._entry_ptr, ptr @maven_set_reg_pair._entry, ptr @maven_set_reg_pair._entry_ptr, ptr @maven_driver, ptr @.str, ptr @maven_id, ptr @maven_altout, ptr @maven_controls, ptr @.str.1, ptr @maven_init_TVdata.palregs, ptr @maven_init_TVdata.ntscregs, ptr @maven_gamma, ptr @maven_pll, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @maven_get_queryctrl.disctrl, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maven_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maven_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maven_altout to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maven_controls to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maven_init_TVdata.palregs to i32), i32 276, i32 352, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maven_init_TVdata.ntscregs to i32), i32 276, i32 352, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maven_gamma to i32), i32 171, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maven_pll to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maven_set_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maven_set_reg_pair._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maven_get_queryctrl.disctrl to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maven_get_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @maven_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @maven_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @maven_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @i2c_del_driver(ptr noundef nonnull @maven_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maven_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reg.addr.i.i = alloca i8, align 1
  %dst.i.i = alloca i8, align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #11
  %and.i = and i32 %call.i.i, 5767188
  call void @__sanitizer_cov_trace_const_cmp4(i32 5767188, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 5767188
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 12) #14
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter1, align 8
  %minfo1.i = getelementptr inbounds %struct.i2c_bit_adapter, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %minfo1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %minfo1.i, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %call7.i.i, align 8
  %client.i = getelementptr inbounds %struct.maven_data, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %client.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %client, ptr %client.i, align 4
  %altout.i = getelementptr inbounds %struct.matrox_fb_info, ptr %11, i32 0, i32 13
  tail call void @down_write(ptr noundef %altout.i) #11
  %arrayidx.i = getelementptr %struct.matrox_fb_info, ptr %11, i32 0, i32 14, i32 1
  %output.i = getelementptr %struct.matrox_fb_info, ptr %11, i32 0, i32 14, i32 1, i32 1
  %14 = ptrtoint ptr %output.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @maven_altout, ptr %output.i, align 4
  %default_src.i = getelementptr %struct.matrox_fb_info, ptr %11, i32 0, i32 14, i32 1, i32 4
  %15 = ptrtoint ptr %default_src.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %default_src.i, align 4
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx.i, align 4
  %data.i = getelementptr %struct.matrox_fb_info, ptr %11, i32 0, i32 14, i32 1, i32 2
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %data.i, align 4
  %mode.i = getelementptr %struct.matrox_fb_info, ptr %11, i32 0, i32 14, i32 1, i32 3
  %19 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 128, ptr %mode.i, align 4
  tail call void @up_write(ptr noundef %altout.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #11
  %20 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -78, ptr %reg.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dst.i.i) #11
  %21 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %dst.i.i, align 1, !annotation !65
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #11
  %22 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %23 = call ptr @memset(ptr %22, i32 255, i32 16)
  %addr1.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %24 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addr1.i.i, align 2
  %26 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 8192, ptr %flags.i.i, align 2
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %22, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %reg.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %30 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %25, ptr %arrayinit.element.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %31 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 16385, ptr %flags4.i.i, align 2
  %len5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %32 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %len5.i.i, align 4
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %33 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dst.i.i, ptr %buf6.i.i, align 4
  %34 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter1, align 8
  %call.i.i16 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i16)
  %cmp.i.i = icmp slt i32 %call.i.i16, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end5.maven_init_client.exit_crit_edge

if.end5.maven_init_client.exit_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_init_client.exit

do.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %reg.addr.i.i, align 1
  %conv.i.i = zext i8 %37 to i32
  %call7.i.i17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv.i.i) #15
  br label %maven_init_client.exit

maven_init_client.exit:                           ; preds = %do.end.i.i, %if.end5.maven_init_client.exit_crit_edge
  %38 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %dst.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dst.i.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %39)
  %cmp.i18 = icmp ult i8 %39, 20
  %spec.select.i = select i1 %cmp.i18, i32 1, i32 2
  %40 = getelementptr inbounds %struct.maven_data, ptr %call7.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %spec.select.i, ptr %40, align 8
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 2724
  %44 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 124, ptr %add.ptr.i.i, align 4
  %45 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i.1.i = getelementptr i8, ptr %45, i32 2728
  %46 = ptrtoint ptr %add.ptr.i.1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 127, ptr %add.ptr.i.1.i, align 4
  %47 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i.2.i = getelementptr i8, ptr %47, i32 2732
  %48 = ptrtoint ptr %add.ptr.i.2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 155, ptr %add.ptr.i.2.i, align 4
  %49 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i.3.i = getelementptr i8, ptr %49, i32 2736
  %50 = ptrtoint ptr %add.ptr.i.3.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %add.ptr.i.3.i, align 4
  %51 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i.4.i = getelementptr i8, ptr %51, i32 2740
  %52 = ptrtoint ptr %add.ptr.i.4.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %add.ptr.i.4.i, align 4
  %53 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i.5.i = getelementptr i8, ptr %53, i32 2744
  %54 = ptrtoint ptr %add.ptr.i.5.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %add.ptr.i.5.i, align 4
  %55 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i.6.i = getelementptr i8, ptr %55, i32 2748
  %56 = ptrtoint ptr %add.ptr.i.6.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %add.ptr.i.6.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %maven_init_client.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %maven_init_client.exit ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maven_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.maven_shutdown_client.exit_crit_edge, label %if.then.i

entry.maven_shutdown_client.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_shutdown_client.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %altout.i = getelementptr inbounds %struct.matrox_fb_info, ptr %3, i32 0, i32 13
  tail call void @down_write(ptr noundef %altout.i) #11
  %arrayidx.i = getelementptr %struct.matrox_fb_info, ptr %3, i32 0, i32 14, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx.i, align 4
  %output.i = getelementptr %struct.matrox_fb_info, ptr %3, i32 0, i32 14, i32 1, i32 1
  %5 = ptrtoint ptr %output.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %output.i, align 4
  %data.i = getelementptr %struct.matrox_fb_info, ptr %3, i32 0, i32 14, i32 1, i32 2
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %data.i, align 4
  %mode.i = getelementptr %struct.matrox_fb_info, ptr %3, i32 0, i32 14, i32 1, i32 3
  %7 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 128, ptr %mode.i, align 4
  tail call void @up_write(ptr noundef %altout.i) #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %1, align 4
  br label %maven_shutdown_client.exit

maven_shutdown_client.exit:                       ; preds = %if.then.i, %entry.maven_shutdown_client.exit_crit_edge
  %9 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void @kfree(ptr noundef %10) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maven_out_compute(ptr nocapture noundef readonly %md, ptr nocapture noundef readonly %mt) #2 align 64 {
entry:
  %p.i.i = alloca i32, align 4
  %a.i = alloca i32, align 4
  %bv.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %md, align 4
  %maven = getelementptr inbounds %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a.i) #11
  %2 = ptrtoint ptr %a.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %a.i, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bv.i) #11
  %3 = ptrtoint ptr %bv.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %bv.i, align 4, !annotation !65
  %mode.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 14, i32 1, i32 3
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode.i, align 4
  %mode1.i = getelementptr inbounds %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 1
  %6 = ptrtoint ptr %mode1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mode1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 128
  br i1 %cmp.not.i, label %if.end435.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %7 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %md, align 4
  %mode.i.i = getelementptr %struct.matrox_fb_info, ptr %8, i32 0, i32 14, i32 1, i32 3
  %9 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i.i = icmp eq i32 %10, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = call ptr @memcpy(ptr %maven, ptr @maven_init_TVdata.palregs, i32 276)
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = call ptr @memcpy(ptr %maven, ptr @maven_init_TVdata.ntscregs, i32 276)
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %version.i.i.i = getelementptr inbounds %struct.maven_data, ptr %md, i32 0, i32 2
  %13 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %version.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i.i.i = icmp eq i32 %14, 1
  %conv.i.i.i = select i1 %cmp.i.i.i, i8 64, i8 0
  %15 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %md, align 4
  %deflicker.i.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %16, i32 0, i32 13, i32 1, i32 6
  %17 = ptrtoint ptr %deflicker.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %deflicker.i.i.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %if.end.i.i.maven_init_TVdata.exit.i_crit_edge [
    i32 2, label %sw.bb3.i.i.i
    i32 1, label %sw.bb.i.i.i
  ]

if.end.i.i.maven_init_TVdata.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_init_TVdata.exit.i

sw.bb.i.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = or i8 %conv.i.i.i, -79
  br label %maven_init_TVdata.exit.i

sw.bb3.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %21 = or i8 %conv.i.i.i, -94
  br label %maven_init_TVdata.exit.i

maven_init_TVdata.exit.i:                         ; preds = %sw.bb3.i.i.i, %sw.bb.i.i.i, %if.end.i.i.maven_init_TVdata.exit.i_crit_edge
  %df.0.i.i.i = phi i8 [ %conv.i.i.i, %if.end.i.i.maven_init_TVdata.exit.i_crit_edge ], [ %20, %sw.bb.i.i.i ], [ %21, %sw.bb3.i.i.i ]
  %arrayidx1.i.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 147
  %22 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %df.0.i.i.i, ptr %arrayidx1.i.i, align 1
  %23 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %md, align 4
  %gamma.i.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %24, i32 0, i32 13, i32 1, i32 4
  %25 = ptrtoint ptr %gamma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gamma.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.maven_gamma, ptr @maven_gamma, i32 %26
  %27 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr.i.i.i, align 1
  %arrayidx4.i.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 131
  %29 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx4.i.i, align 1
  %reg84.i.i = getelementptr %struct.maven_gamma, ptr @maven_gamma, i32 %26, i32 1
  %30 = ptrtoint ptr %reg84.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %reg84.i.i, align 1
  %arrayidx6.i.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 132
  %32 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx6.i.i, align 4
  %reg85.i.i = getelementptr %struct.maven_gamma, ptr @maven_gamma, i32 %26, i32 2
  %33 = ptrtoint ptr %reg85.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %reg85.i.i, align 1
  %arrayidx8.i.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 133
  %35 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx8.i.i, align 1
  %reg86.i.i = getelementptr %struct.maven_gamma, ptr @maven_gamma, i32 %26, i32 3
  %36 = ptrtoint ptr %reg86.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %reg86.i.i, align 1
  %arrayidx10.i.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 134
  %38 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx10.i.i, align 2
  %reg87.i.i = getelementptr %struct.maven_gamma, ptr @maven_gamma, i32 %26, i32 4
  %39 = ptrtoint ptr %reg87.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %reg87.i.i, align 1
  %arrayidx12.i.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 135
  %41 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx12.i.i, align 1
  %reg88.i.i = getelementptr %struct.maven_gamma, ptr @maven_gamma, i32 %26, i32 5
  %42 = ptrtoint ptr %reg88.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %reg88.i.i, align 1
  %arrayidx14.i.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 136
  %44 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx14.i.i, align 4
  %reg89.i.i = getelementptr %struct.maven_gamma, ptr @maven_gamma, i32 %26, i32 6
  %45 = ptrtoint ptr %reg89.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %reg89.i.i, align 1
  %arrayidx16.i.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 137
  %47 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx16.i.i, align 1
  %reg8a.i.i = getelementptr %struct.maven_gamma, ptr @maven_gamma, i32 %26, i32 7
  %48 = ptrtoint ptr %reg8a.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %reg8a.i.i, align 1
  %arrayidx18.i.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 138
  %50 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx18.i.i, align 2
  %reg8b.i.i = getelementptr %struct.maven_gamma, ptr @maven_gamma, i32 %26, i32 8
  %51 = ptrtoint ptr %reg8b.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %reg8b.i.i, align 1
  %arrayidx20.i.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 139
  %53 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx20.i.i, align 1
  %54 = load ptr, ptr %md, align 4
  %tvo_params.i.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %54, i32 0, i32 13, i32 1
  %55 = ptrtoint ptr %tvo_params.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tvo_params.i.i.i, align 4
  %add.i.i.i = add i32 %56, 255
  %contrast.i.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %54, i32 0, i32 13, i32 1, i32 1
  %57 = ptrtoint ptr %contrast.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %contrast.i.i.i, align 4
  %sub.i.i.i = sub i32 %add.i.i.i, %58
  %59 = tail call i32 @llvm.smax.i32(i32 %sub.i.i.i, i32 255) #11
  %add4.i.i.i = add i32 %add.i.i.i, %58
  %60 = tail call i32 @llvm.smin.i32(i32 %add4.i.i.i, i32 1023) #11
  %61 = lshr i32 %59, 2
  %conv.i.i = trunc i32 %61 to i8
  %arrayidx22.i.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 14
  %62 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv.i.i, ptr %arrayidx22.i.i, align 2
  %63 = trunc i32 %59 to i8
  %conv23.i.i = and i8 %63, 3
  %arrayidx25.i.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 15
  %64 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv23.i.i, ptr %arrayidx25.i.i, align 1
  %65 = lshr i32 %60, 2
  %conv27.i.i = trunc i32 %65 to i8
  %arrayidx29.i.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 30
  %66 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv27.i.i, ptr %arrayidx29.i.i, align 2
  %67 = trunc i32 %60 to i8
  %conv31.i.i = and i8 %67, 3
  %arrayidx33.i.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 31
  %68 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv31.i.i, ptr %arrayidx33.i.i, align 1
  %saturation.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %8, i32 0, i32 13, i32 1, i32 2
  %69 = ptrtoint ptr %saturation.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %saturation.i.i, align 4
  %conv34.i.i = trunc i32 %70 to i8
  %arrayidx36.i.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 34
  %71 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv34.i.i, ptr %arrayidx36.i.i, align 2
  %arrayidx38.i.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 32
  %72 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv34.i.i, ptr %arrayidx38.i.i, align 4
  %hue.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %8, i32 0, i32 13, i32 1, i32 3
  %73 = ptrtoint ptr %hue.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hue.i.i, align 4
  %conv41.i.i = trunc i32 %74 to i8
  %arrayidx43.i.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 37
  %75 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv41.i.i, ptr %arrayidx43.i.i, align 1
  %HTotal.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 6
  %76 = ptrtoint ptr %HTotal.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %HTotal.i, align 4
  %VTotal.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 10
  %78 = ptrtoint ptr %VTotal.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %VTotal.i, align 4
  %arrayidx.i.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 128
  %80 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 15, ptr %arrayidx.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 129
  %81 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 7, ptr %arrayidx2.i.i, align 1
  %arrayidx4.i849.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 130
  %82 = ptrtoint ptr %arrayidx4.i849.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -127, ptr %arrayidx4.i849.i, align 2
  %83 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mode1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp6.i.i = icmp eq i32 %84, 1
  %85 = select i1 %cmp6.i.i, i32 540000, i32 450450
  %86 = select i1 %cmp6.i.i, i32 50, i32 60
  %div.i.i.i.i = select i1 %cmp6.i.i, i32 1000000, i32 833333
  %sub.i.i.i.i = add i32 %79, -1
  %div3.i.i.i.i = select i1 %cmp6.i.i, i32 6000000, i32 5000000
  %hcorr.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 6
  %htotal.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end23.i.i.for.body.i.i_crit_edge, %maven_init_TVdata.exit.i
  %err.056.i.i = phi i32 [ -1, %maven_init_TVdata.exit.i ], [ %err.2.i.i, %if.end23.i.i.for.body.i.i_crit_edge ]
  %x.054.i.i = phi i32 [ 0, %maven_init_TVdata.exit.i ], [ %inc.i.i, %if.end23.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add i32 %x.054.i.i, %77
  %add5.i.i = add i32 %add.i.i, 2
  %mul.i.i.i.i = mul i32 %add5.i.i, %sub.i.i.i.i
  %mul1.i.i.i.i = mul i32 %add5.i.i, %79
  %mul4.i.i.i.i = shl i32 %mul1.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul4.i.i.i.i, i32 %div3.i.i.i.i)
  %cmp5.i.i.i.i = icmp ugt i32 %mul4.i.i.i.i, %div3.i.i.i.i
  br i1 %cmp5.i.i.i.i, label %for.body.i.i.for.end.i.i.i.i_crit_edge, label %if.end.i.i.i.i

for.body.i.i.for.end.i.i.i.i_crit_edge:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  %mul4.1.i.i.i.i = shl i32 %mul1.i.i.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul4.1.i.i.i.i, i32 %div3.i.i.i.i)
  %cmp5.1.i.i.i.i = icmp ugt i32 %mul4.1.i.i.i.i, %div3.i.i.i.i
  br i1 %cmp5.1.i.i.i.i, label %if.end.i.i.i.i.for.end.i.i.i.i_crit_edge, label %if.end.1.i.i.i.i

if.end.i.i.i.i.for.end.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i.i

if.end.1.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul4.2.i.i.i.i = shl i32 %mul1.i.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul4.2.i.i.i.i, i32 %div3.i.i.i.i)
  %cmp5.2.i.i.i.i = icmp ugt i32 %mul4.2.i.i.i.i, %div3.i.i.i.i
  %spec.select.i.i.i.i = select i1 %cmp5.2.i.i.i.i, i32 %mul4.1.i.i.i.i, i32 %mul4.2.i.i.i.i
  %spec.select24.i.i.i.i = select i1 %cmp5.2.i.i.i.i, i32 3, i32 4
  br label %for.end.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %if.end.1.i.i.i.i, %if.end.i.i.i.i.for.end.i.i.i.i_crit_edge, %for.body.i.i.for.end.i.i.i.i_crit_edge
  %fwant.0.lcssa.i.i.i.i = phi i32 [ %mul1.i.i.i.i, %for.body.i.i.for.end.i.i.i.i_crit_edge ], [ %mul4.i.i.i.i, %if.end.i.i.i.i.for.end.i.i.i.i_crit_edge ], [ %spec.select.i.i.i.i, %if.end.1.i.i.i.i ]
  %p.0.lcssa.i.i.i.i = phi i32 [ 1, %for.body.i.i.for.end.i.i.i.i_crit_edge ], [ 2, %if.end.i.i.i.i.for.end.i.i.i.i_crit_edge ], [ %spec.select24.i.i.i.i, %if.end.1.i.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %fwant.0.lcssa.i.i.i.i, i32 %div3.i.i.i.i)
  %cmp7.i.i.i.i = icmp ugt i32 %fwant.0.lcssa.i.i.i.i, %div3.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %fwant.0.lcssa.i.i.i.i, i32 %div.i.i.i.i)
  %cmp1317.i.i.i.i = icmp ult i32 %fwant.0.lcssa.i.i.i.i, %div.i.i.i.i
  %or.cond25.i.i.i.i = or i1 %cmp7.i.i.i.i, %cmp1317.i.i.i.i
  br i1 %or.cond25.i.i.i.i, label %for.end.i.i.i.i.if.end23.i.i_crit_edge, label %for.cond16.preheader.lr.ph.i.i.i.i

for.end.i.i.i.i.if.end23.i.i_crit_edge:           ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i.i

for.cond16.preheader.lr.ph.i.i.i.i:               ; preds = %for.end.i.i.i.i
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 2
  br label %for.cond16.preheader.i.i.i.i

for.cond16.preheader.i.i.i.i:                     ; preds = %for.inc51.i.i.i.i.for.cond16.preheader.i.i.i.i_crit_edge, %for.cond16.preheader.lr.ph.i.i.i.i
  %a.0.i.i = phi i32 [ -1, %for.cond16.preheader.lr.ph.i.i.i.i ], [ %a.3.i.i, %for.inc51.i.i.i.i.for.cond16.preheader.i.i.i.i_crit_edge ]
  %b.0.i.i = phi i32 [ -1, %for.cond16.preheader.lr.ph.i.i.i.i ], [ %b.3.i.i, %for.inc51.i.i.i.i.for.cond16.preheader.i.i.i.i_crit_edge ]
  %h2.0.i.i = phi i32 [ -1, %for.cond16.preheader.lr.ph.i.i.i.i ], [ %h2.3.i.i, %for.inc51.i.i.i.i.for.cond16.preheader.i.i.i.i_crit_edge ]
  %p.0.i.i.i = phi i32 [ -1, %for.cond16.preheader.lr.ph.i.i.i.i ], [ %p.3.i.i.i, %for.inc51.i.i.i.i.for.cond16.preheader.i.i.i.i_crit_edge ]
  %dec21.in.i.i.i.i = phi i32 [ %p.0.lcssa.i.i.i.i, %for.cond16.preheader.lr.ph.i.i.i.i ], [ %dec21.i.i.i.i, %for.inc51.i.i.i.i.for.cond16.preheader.i.i.i.i_crit_edge ]
  %besth2.020.i.i.i.i = phi i32 [ 0, %for.cond16.preheader.lr.ph.i.i.i.i ], [ %besth2.1.lcssa.i.i.i.i, %for.inc51.i.i.i.i.for.cond16.preheader.i.i.i.i_crit_edge ]
  %fwant.118.i.i.i.i = phi i32 [ %fwant.0.lcssa.i.i.i.i, %for.cond16.preheader.lr.ph.i.i.i.i ], [ %shr.i.i.i.i, %for.inc51.i.i.i.i.for.cond16.preheader.i.i.i.i_crit_edge ]
  %dec21.i.i.i.i = add nsw i32 %dec21.in.i.i.i.i, -1
  br label %for.body18.i.i.i.i

for.body18.i.i.i.i:                               ; preds = %for.inc45.i.i.i.i.for.body18.i.i.i.i_crit_edge, %for.cond16.preheader.i.i.i.i
  %a.1.i.i = phi i32 [ %a.0.i.i, %for.cond16.preheader.i.i.i.i ], [ %a.2.i.i, %for.inc45.i.i.i.i.for.body18.i.i.i.i_crit_edge ]
  %b.1.i.i = phi i32 [ %b.0.i.i, %for.cond16.preheader.i.i.i.i ], [ %b.2.i.i, %for.inc45.i.i.i.i.for.body18.i.i.i.i_crit_edge ]
  %h2.1.i.i = phi i32 [ %h2.0.i.i, %for.cond16.preheader.i.i.i.i ], [ %h2.2.i.i, %for.inc45.i.i.i.i.for.body18.i.i.i.i_crit_edge ]
  %p.1.i.i.i = phi i32 [ %p.0.i.i.i, %for.cond16.preheader.i.i.i.i ], [ %p.2.i.i.i, %for.inc45.i.i.i.i.for.body18.i.i.i.i_crit_edge ]
  %besth2.115.i.i.i.i = phi i32 [ %besth2.020.i.i.i.i, %for.cond16.preheader.i.i.i.i ], [ %besth2.3.ph.i.i.i.i, %for.inc45.i.i.i.i.for.body18.i.i.i.i_crit_edge ]
  %m.014.i.i.i.i = phi i32 [ 3, %for.cond16.preheader.i.i.i.i ], [ %inc46.i.i.i.i, %for.inc45.i.i.i.i.for.body18.i.i.i.i_crit_edge ]
  %mul19.i.i.i.i = mul i32 %m.014.i.i.i.i, %fwant.118.i.i.i.i
  %div20.i.i.i.i = udiv i32 %mul19.i.i.i.i, %85
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div20.i.i.i.i)
  %cmp21.i.i.i.i = icmp ult i32 %div20.i.i.i.i, 5
  br i1 %cmp21.i.i.i.i, label %for.body18.i.i.i.i.for.inc45.i.i.i.i_crit_edge, label %if.end23.i.i.i.i

for.body18.i.i.i.i.for.inc45.i.i.i.i_crit_edge:   ; preds = %for.body18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc45.i.i.i.i

if.end23.i.i.i.i:                                 ; preds = %for.body18.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %div20.i.i.i.i)
  %cmp24.i.i.i.i = icmp ugt i32 %div20.i.i.i.i, 128
  br i1 %cmp24.i.i.i.i, label %if.end23.i.i.i.i.for.inc51.i.i.i.i_crit_edge, label %if.end26.i.i.i.i

if.end23.i.i.i.i.for.inc51.i.i.i.i_crit_edge:     ; preds = %if.end23.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc51.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.end23.i.i.i.i
  %mul27.i.i.i.i = mul i32 %div20.i.i.i.i, %85
  %shl.i.i.i.i = shl i32 %m.014.i.i.i.i, %dec21.i.i.i.i
  %mul27.i.i.i.i.frozen = freeze i32 %mul27.i.i.i.i
  %shl.i.i.i.i.frozen = freeze i32 %shl.i.i.i.i
  %div30.i.i.i.i = udiv i32 %mul27.i.i.i.i.frozen, %shl.i.i.i.i.frozen
  %87 = mul i32 %div30.i.i.i.i, %shl.i.i.i.i.frozen
  %rem.i.i.i.i.decomposed = sub i32 %mul27.i.i.i.i.frozen, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i.i.decomposed)
  %tobool.not.i.i.i.i = icmp ne i32 %rem.i.i.i.i.decomposed, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %div30.i.i.i.i, i32 %add.i.i.i.i)
  %cmp31.i.i.i.i = icmp ult i32 %div30.i.i.i.i, %add.i.i.i.i
  %or.cond = select i1 %tobool.not.i.i.i.i, i1 true, i1 %cmp31.i.i.i.i
  br i1 %or.cond, label %if.end26.i.i.i.i.for.inc45.i.i.i.i_crit_edge, label %if.end33.i.i.i.i

if.end26.i.i.i.i.for.inc45.i.i.i.i_crit_edge:     ; preds = %if.end26.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc45.i.i.i.i

if.end33.i.i.i.i:                                 ; preds = %if.end26.i.i.i.i
  %sub34.i.i.i.i = sub i32 %div30.i.i.i.i, %mul.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub34.i.i.i.i, i32 %add5.i.i)
  %cmp35.i.i.i.i = icmp ule i32 %sub34.i.i.i.i, %add5.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub34.i.i.i.i, i32 %besth2.115.i.i.i.i)
  %cmp39.i.i.i.i = icmp ugt i32 %sub34.i.i.i.i, %besth2.115.i.i.i.i
  %or.cond11.i.i.i.i = select i1 %cmp35.i.i.i.i, i1 %cmp39.i.i.i.i, i1 false
  br i1 %or.cond11.i.i.i.i, label %if.then40.i.i.i.i, label %if.end33.i.i.i.i.for.inc45.i.i.i.i_crit_edge

if.end33.i.i.i.i.for.inc45.i.i.i.i_crit_edge:     ; preds = %if.end33.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc45.i.i.i.i

if.then40.i.i.i.i:                                ; preds = %if.end33.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc45.i.i.i.i

for.inc45.i.i.i.i:                                ; preds = %if.then40.i.i.i.i, %if.end33.i.i.i.i.for.inc45.i.i.i.i_crit_edge, %if.end26.i.i.i.i.for.inc45.i.i.i.i_crit_edge, %for.body18.i.i.i.i.for.inc45.i.i.i.i_crit_edge
  %a.2.i.i = phi i32 [ %a.1.i.i, %for.body18.i.i.i.i.for.inc45.i.i.i.i_crit_edge ], [ %m.014.i.i.i.i, %if.then40.i.i.i.i ], [ %a.1.i.i, %if.end33.i.i.i.i.for.inc45.i.i.i.i_crit_edge ], [ %a.1.i.i, %if.end26.i.i.i.i.for.inc45.i.i.i.i_crit_edge ]
  %b.2.i.i = phi i32 [ %b.1.i.i, %for.body18.i.i.i.i.for.inc45.i.i.i.i_crit_edge ], [ %div20.i.i.i.i, %if.then40.i.i.i.i ], [ %b.1.i.i, %if.end33.i.i.i.i.for.inc45.i.i.i.i_crit_edge ], [ %b.1.i.i, %if.end26.i.i.i.i.for.inc45.i.i.i.i_crit_edge ]
  %h2.2.i.i = phi i32 [ %h2.1.i.i, %for.body18.i.i.i.i.for.inc45.i.i.i.i_crit_edge ], [ %sub34.i.i.i.i, %if.then40.i.i.i.i ], [ %h2.1.i.i, %if.end33.i.i.i.i.for.inc45.i.i.i.i_crit_edge ], [ %h2.1.i.i, %if.end26.i.i.i.i.for.inc45.i.i.i.i_crit_edge ]
  %p.2.i.i.i = phi i32 [ %p.1.i.i.i, %for.body18.i.i.i.i.for.inc45.i.i.i.i_crit_edge ], [ %dec21.i.i.i.i, %if.then40.i.i.i.i ], [ %p.1.i.i.i, %if.end33.i.i.i.i.for.inc45.i.i.i.i_crit_edge ], [ %p.1.i.i.i, %if.end26.i.i.i.i.for.inc45.i.i.i.i_crit_edge ]
  %besth2.3.ph.i.i.i.i = phi i32 [ %besth2.115.i.i.i.i, %for.body18.i.i.i.i.for.inc45.i.i.i.i_crit_edge ], [ %sub34.i.i.i.i, %if.then40.i.i.i.i ], [ %besth2.115.i.i.i.i, %if.end33.i.i.i.i.for.inc45.i.i.i.i_crit_edge ], [ %besth2.115.i.i.i.i, %if.end26.i.i.i.i.for.inc45.i.i.i.i_crit_edge ]
  %inc46.i.i.i.i = add nuw nsw i32 %m.014.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc46.i.i.i.i, 33
  br i1 %exitcond.not.i.i.i.i, label %for.inc45.i.i.i.i.for.inc51.i.i.i.i_crit_edge, label %for.inc45.i.i.i.i.for.body18.i.i.i.i_crit_edge

for.inc45.i.i.i.i.for.body18.i.i.i.i_crit_edge:   ; preds = %for.inc45.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body18.i.i.i.i

for.inc45.i.i.i.i.for.inc51.i.i.i.i_crit_edge:    ; preds = %for.inc45.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc51.i.i.i.i

for.inc51.i.i.i.i:                                ; preds = %for.inc45.i.i.i.i.for.inc51.i.i.i.i_crit_edge, %if.end23.i.i.i.i.for.inc51.i.i.i.i_crit_edge
  %a.3.i.i = phi i32 [ %a.2.i.i, %for.inc45.i.i.i.i.for.inc51.i.i.i.i_crit_edge ], [ %a.1.i.i, %if.end23.i.i.i.i.for.inc51.i.i.i.i_crit_edge ]
  %b.3.i.i = phi i32 [ %b.2.i.i, %for.inc45.i.i.i.i.for.inc51.i.i.i.i_crit_edge ], [ %b.1.i.i, %if.end23.i.i.i.i.for.inc51.i.i.i.i_crit_edge ]
  %h2.3.i.i = phi i32 [ %h2.2.i.i, %for.inc45.i.i.i.i.for.inc51.i.i.i.i_crit_edge ], [ %h2.1.i.i, %if.end23.i.i.i.i.for.inc51.i.i.i.i_crit_edge ]
  %p.3.i.i.i = phi i32 [ %p.2.i.i.i, %for.inc45.i.i.i.i.for.inc51.i.i.i.i_crit_edge ], [ %p.1.i.i.i, %if.end23.i.i.i.i.for.inc51.i.i.i.i_crit_edge ]
  %besth2.1.lcssa.i.i.i.i = phi i32 [ %besth2.3.ph.i.i.i.i, %for.inc45.i.i.i.i.for.inc51.i.i.i.i_crit_edge ], [ %besth2.115.i.i.i.i, %if.end23.i.i.i.i.for.inc51.i.i.i.i_crit_edge ]
  %shr.i.i.i.i = lshr i32 %fwant.118.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec21.i.i.i.i)
  %cmp11.not.i.i.i.i = icmp eq i32 %dec21.i.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i.i.i, i32 %div.i.i.i.i)
  %cmp13.i.i.i.i = icmp ult i32 %shr.i.i.i.i, %div.i.i.i.i
  %or.cond.i.i.i.i = select i1 %cmp11.not.i.i.i.i, i1 true, i1 %cmp13.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %for.end52.i.i.i.i, label %for.inc51.i.i.i.i.for.cond16.preheader.i.i.i.i_crit_edge

for.inc51.i.i.i.i.for.cond16.preheader.i.i.i.i_crit_edge: ; preds = %for.inc51.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond16.preheader.i.i.i.i

for.end52.i.i.i.i:                                ; preds = %for.inc51.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %besth2.1.lcssa.i.i.i.i)
  %cmp53.i.i.i.i = icmp ult i32 %besth2.1.lcssa.i.i.i.i, 2
  br i1 %cmp53.i.i.i.i, label %for.end52.i.i.i.i.if.end23.i.i_crit_edge, label %matroxfb_PLL_mavenclock.exit.i.i.i

for.end52.i.i.i.i.if.end23.i.i_crit_edge:         ; preds = %for.end52.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i.i

matroxfb_PLL_mavenclock.exit.i.i.i:               ; preds = %for.end52.i.i.i.i
  %mul57.i.i.i.i = mul i32 %b.3.i.i, %85
  %div58.i.i.i.i = udiv i32 %mul57.i.i.i.i, %a.3.i.i
  %mul60.i.i.i.i = mul i32 %div58.i.i.i.i, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul60.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %mul60.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %matroxfb_PLL_mavenclock.exit.i.i.i.if.end23.i.i_crit_edge, label %if.end.i.i.i

matroxfb_PLL_mavenclock.exit.i.i.i.if.end23.i.i_crit_edge: ; preds = %matroxfb_PLL_mavenclock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i.i

if.end.i.i.i:                                     ; preds = %matroxfb_PLL_mavenclock.exit.i.i.i
  %notmask.i.i.i = shl nsw i32 -1, %p.3.i.i.i
  %sub.i.i851.i = xor i32 %notmask.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000001, i32 %mul60.i.i.i.i)
  %cmp.i.i852.i = icmp ult i32 %mul60.i.i.i.i, 100000001
  br i1 %cmp.i.i852.i, label %if.end.i.i.i.if.then.i853.i_crit_edge, label %if.else.i.i.i

if.end.i.i.i.if.then.i853.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i853.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 140000001, i32 %mul60.i.i.i.i)
  %cmp2.i.i.i = icmp ult i32 %mul60.i.i.i.i, 140000001
  br i1 %cmp2.i.i.i, label %if.then3.i.i.i, label %if.else4.i.i.i

if.then3.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %or.i.i.i = or i32 %sub.i.i851.i, 8
  br label %if.then.i853.i

if.else4.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 180000001, i32 %mul60.i.i.i.i)
  %cmp5.i.i.i = icmp ult i32 %mul60.i.i.i.i, 180000001
  br i1 %cmp5.i.i.i, label %if.then6.i.i.i, label %if.else8.i.i.i

if.then6.i.i.i:                                   ; preds = %if.else4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %or7.i.i.i = or i32 %sub.i.i851.i, 16
  br label %if.then.i853.i

if.else8.i.i.i:                                   ; preds = %if.else4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %or9.i.i.i = or i32 %sub.i.i851.i, 24
  br label %if.then.i853.i

if.then.i853.i:                                   ; preds = %if.else8.i.i.i, %if.then6.i.i.i, %if.then3.i.i.i, %if.end.i.i.i.if.then.i853.i_crit_edge
  %c.0.ph.i.i = phi i32 [ %or9.i.i.i, %if.else8.i.i.i ], [ %or7.i.i.i, %if.then6.i.i.i ], [ %or.i.i.i, %if.then3.i.i.i ], [ %sub.i.i851.i, %if.end.i.i.i.if.then.i853.i_crit_edge ]
  %sub.i.i = sub i32 %add5.i.i, %h2.3.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %err.056.i.i)
  %cmp7.i.i = icmp ult i32 %sub.i.i, %err.056.i.i
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.then.i853.i.if.end23.i.i_crit_edge

if.then.i853.i.if.end23.i.i_crit_edge:            ; preds = %if.then.i853.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i.i

if.then8.i.i:                                     ; preds = %if.then.i853.i
  call void @__sanitizer_cov_trace_pc() #13
  %88 = trunc i32 %a.3.i.i to i8
  %conv.i854.i = add i8 %88, -1
  %89 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv.i854.i, ptr %arrayidx.i.i, align 4
  %90 = trunc i32 %b.3.i.i to i8
  %conv13.i.i = add i8 %90, -1
  %91 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv13.i.i, ptr %arrayidx2.i.i, align 1
  %92 = trunc i32 %c.0.ph.i.i to i8
  %conv16.i.i = or i8 %92, -128
  %93 = ptrtoint ptr %arrayidx4.i849.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv16.i.i, ptr %arrayidx4.i849.i, align 2
  %94 = trunc i32 %h2.3.i.i to i16
  %conv20.i.i = add i16 %94, -2
  %95 = ptrtoint ptr %hcorr.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv20.i.i, ptr %hcorr.i.i, align 2
  %conv22.i.i = trunc i32 %add.i.i to i16
  %96 = ptrtoint ptr %htotal.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv22.i.i, ptr %htotal.i.i, align 4
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then8.i.i, %if.then.i853.i.if.end23.i.i_crit_edge, %matroxfb_PLL_mavenclock.exit.i.i.i.if.end23.i.i_crit_edge, %for.end52.i.i.i.i.if.end23.i.i_crit_edge, %for.end.i.i.i.i.if.end23.i.i_crit_edge
  %err.2.i.i = phi i32 [ %sub.i.i, %if.then8.i.i ], [ %err.056.i.i, %if.then.i853.i.if.end23.i.i_crit_edge ], [ %err.056.i.i, %for.end.i.i.i.i.if.end23.i.i_crit_edge ], [ %err.056.i.i, %for.end52.i.i.i.i.if.end23.i.i_crit_edge ], [ %err.056.i.i, %matroxfb_PLL_mavenclock.exit.i.i.i.if.end23.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %x.054.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %maven_find_exact_clocks.exit.i, label %if.end23.i.i.for.body.i.i_crit_edge

if.end23.i.i.for.body.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

maven_find_exact_clocks.exit.i:                   ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %err.2.i.i)
  %cmp24.i.not.i = icmp eq i32 %err.2.i.i, -1
  br i1 %cmp24.i.not.i, label %maven_find_exact_clocks.exit.i.maven_compute_timming.exit_crit_edge, label %if.end.i

maven_find_exact_clocks.exit.i.maven_compute_timming.exit_crit_edge: ; preds = %maven_find_exact_clocks.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_compute_timming.exit

if.end.i:                                         ; preds = %maven_find_exact_clocks.exit.i
  %97 = ptrtoint ptr %HTotal.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %HTotal.i, align 4
  %HSyncEnd.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 5
  %99 = ptrtoint ptr %HSyncEnd.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %HSyncEnd.i, align 4
  %sub.i = sub i32 %98, %100
  %HSyncStart.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 4
  %101 = ptrtoint ptr %HSyncStart.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %HSyncStart.i, align 4
  %delay.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 14
  %103 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %delay.i, align 4
  %105 = ptrtoint ptr %VTotal.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %VTotal.i, align 4
  %VSyncStart.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 8
  %107 = ptrtoint ptr %VSyncStart.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %VSyncStart.i, align 4
  %109 = ptrtoint ptr %hcorr.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %hcorr.i.i, align 2
  %conv.i = zext i16 %110 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %conv.i)
  %cmp16.i = icmp ugt i32 %98, %conv.i
  %add.i = select i1 %cmp16.i, i32 %conv.i, i32 0
  %111 = add i32 %98, %102
  %112 = add i32 %100, %104
  %sub10.i = sub i32 %111, %112
  %spec.select.i = add i32 %sub10.i, %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %98)
  %cmp23.i = icmp ugt i32 %spec.select.i, %98
  %sub27.i = select i1 %cmp23.i, i32 %98, i32 0
  %hcrt.1.i = sub i32 %spec.select.i, %sub27.i
  %add29.i = add i32 %hcrt.1.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add29.i, i32 %98)
  %cmp31.i = icmp ugt i32 %add29.i, %98
  %spec.store.select.i = select i1 %cmp31.i, i32 0, i32 %hcrt.1.i
  %conv36.i = trunc i16 %110 to i8
  %arrayidx37.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 150
  %113 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv36.i, ptr %arrayidx37.i, align 2
  %114 = lshr i16 %110, 8
  %conv40.i = trunc i16 %114 to i8
  %arrayidx42.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 151
  %115 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv40.i, ptr %arrayidx42.i, align 1
  %arrayidx44.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 152
  %116 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %arrayidx44.i, align 4
  %arrayidx46.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 153
  %117 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %arrayidx46.i, align 1
  %conv47.i = trunc i32 %sub.i to i8
  %arrayidx49.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 154
  %118 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv47.i, ptr %arrayidx49.i, align 2
  %shr50.i = lshr i32 %sub.i, 8
  %conv51.i = trunc i32 %shr50.i to i8
  %arrayidx53.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 155
  %119 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv51.i, ptr %arrayidx53.i, align 1
  %arrayidx55.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 156
  %120 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 4, ptr %arrayidx55.i, align 4
  %arrayidx57.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 157
  %121 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %arrayidx57.i, align 1
  %122 = ptrtoint ptr %htotal.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %htotal.i.i, align 4
  %conv58.i = trunc i16 %123 to i8
  %arrayidx60.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 160
  %124 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv58.i, ptr %arrayidx60.i, align 4
  %125 = lshr i16 %123, 8
  %conv64.i = trunc i16 %125 to i8
  %arrayidx66.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 161
  %126 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv64.i, ptr %arrayidx66.i, align 1
  %127 = ptrtoint ptr %VTotal.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %VTotal.i, align 4
  %129 = ptrtoint ptr %VSyncStart.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %VSyncStart.i, align 4
  %131 = xor i32 %130, -1
  %sub70.i = add i32 %128, %131
  %conv71.i = trunc i32 %sub70.i to i8
  %arrayidx73.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 162
  %132 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv71.i, ptr %arrayidx73.i, align 2
  %133 = load i32, ptr %VTotal.i, align 4
  %134 = load i32, ptr %VSyncStart.i, align 4
  %135 = xor i32 %134, -1
  %sub77.i = add i32 %133, %135
  %shr78.i = lshr i32 %sub77.i, 8
  %conv79.i = trunc i32 %shr78.i to i8
  %arrayidx81.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 163
  %136 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv79.i, ptr %arrayidx81.i, align 1
  %137 = ptrtoint ptr %version.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %version.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %138)
  %cmp82.i = icmp eq i32 %138, 1
  %spec.select892.i = select i1 %cmp82.i, i8 4, i8 1
  %139 = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 164
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %spec.select892.i, ptr %139, align 4
  %141 = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 165
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %141, align 1
  %arrayidx95.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 166
  %143 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %arrayidx95.i, align 2
  %arrayidx97.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 167
  %144 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %arrayidx97.i, align 1
  %145 = ptrtoint ptr %VTotal.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %VTotal.i, align 4
  %147 = trunc i32 %146 to i8
  %conv100.i = add i8 %147, -1
  %arrayidx102.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 168
  %148 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv100.i, ptr %arrayidx102.i, align 4
  %149 = load i32, ptr %VTotal.i, align 4
  %sub104.i = add i32 %149, 65535
  %shr105.i = lshr i32 %sub104.i, 8
  %conv106.i = trunc i32 %shr105.i to i8
  %arrayidx108.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 169
  %150 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv106.i, ptr %arrayidx108.i, align 1
  %conv109.i = trunc i32 %spec.store.select.i to i8
  %arrayidx111.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 170
  %151 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv109.i, ptr %arrayidx111.i, align 2
  %shr112.i = lshr i32 %spec.store.select.i, 8
  %conv113.i = trunc i32 %shr112.i to i8
  %arrayidx115.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 171
  %152 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv113.i, ptr %arrayidx115.i, align 1
  %153 = load i32, ptr %VTotal.i, align 4
  %154 = trunc i32 %153 to i8
  %conv118.i = add i8 %154, -2
  %arrayidx120.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 172
  %155 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv118.i, ptr %arrayidx120.i, align 4
  %156 = load i32, ptr %VTotal.i, align 4
  %sub122.i = add i32 %156, 65534
  %shr123.i = lshr i32 %sub122.i, 8
  %conv124.i = trunc i32 %shr123.i to i8
  %arrayidx126.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 173
  %157 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv124.i, ptr %arrayidx126.i, align 1
  %arrayidx128.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 174
  %158 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %arrayidx128.i, align 2
  %arrayidx130.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 175
  %159 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %arrayidx130.i, align 1
  %HDisplay.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 3
  %160 = ptrtoint ptr %HDisplay.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %HDisplay.i, align 4
  %add131.i = add i32 %161, %sub.i
  %add132.i = add i32 %add131.i, 4
  %162 = ptrtoint ptr %HTotal.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %HTotal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool.not.i = icmp eq i32 %163, 0
  br i1 %tobool.not.i, label %if.end.i.if.end137.i_crit_edge, label %if.then134.i

if.end.i.if.end137.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137.i

if.then134.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %div.i = udiv i32 94208, %163
  br label %if.end137.i

if.end137.i:                                      ; preds = %if.then134.i, %if.end.i.if.end137.i_crit_edge
  %hdec.0.i = phi i32 [ %div.i, %if.then134.i ], [ 129, %if.end.i.if.end137.i_crit_edge ]
  %164 = tail call i32 @llvm.umin.i32(i32 %hdec.0.i, i32 129) #11
  %165 = tail call i32 @llvm.umax.i32(i32 %164, i32 65) #11
  %dec.i = add nsw i32 %165, -1
  %sub148.i = add i32 %add131.i, -8
  %mul.i = mul i32 %dec.i, %sub148.i
  %sub149.i = sub i32 98176, %mul.i
  %166 = tail call i32 @llvm.smax.i32(i32 %sub149.i, i32 0) #11
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end137.i
  %i.0.i = phi i32 [ 1, %if.end137.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %mul159.i = mul i32 %i.0.i, 3932160
  %sub160.i = add i32 %mul159.i, -32768
  %div161.i = sdiv i32 %sub160.i, %dec.i
  %add162.i = add i32 %div161.i, 1511
  %shr163.i = ashr i32 %add162.i, 8
  %inc.i = add i32 %i.0.i, 1
  %cmp164.i = icmp ult i32 %shr163.i, %add132.i
  br i1 %cmp164.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %167 = lshr i32 %166, 8
  %168 = tail call i32 @llvm.umin.i32(i32 %167, i32 255) #11
  %conv167.i = zext i16 %123 to i32
  %add168.i = add nuw nsw i32 %conv167.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr163.i, i32 %add168.i)
  %cmp169.not.i = icmp ult i32 %shr163.i, %add168.i
  %spec.select848.i = select i1 %cmp169.not.i, i32 %shr163.i, i32 %add132.i
  %conv173.i = trunc i32 %dec.i to i8
  %arrayidx175.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 144
  %169 = ptrtoint ptr %arrayidx175.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv173.i, ptr %arrayidx175.i, align 4
  %conv176.i = trunc i32 %168 to i8
  %arrayidx178.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 194
  %170 = ptrtoint ptr %arrayidx178.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv176.i, ptr %arrayidx178.i, align 2
  %conv179.i = trunc i32 %spec.select848.i to i8
  %arrayidx181.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 158
  %171 = ptrtoint ptr %arrayidx181.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %conv179.i, ptr %arrayidx181.i, align 2
  %shr182.i = lshr i32 %spec.select848.i, 8
  %conv183.i = trunc i32 %shr182.i to i8
  %arrayidx185.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 159
  %172 = ptrtoint ptr %arrayidx185.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %conv183.i, ptr %arrayidx185.i, align 1
  %173 = ptrtoint ptr %VTotal.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %VTotal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool187.not.i = icmp eq i32 %174, 0
  br i1 %tobool187.not.i, label %do.end.i.if.end400.i_crit_edge, label %if.then188.i

do.end.i.if.end400.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end400.i

if.then188.i:                                     ; preds = %do.end.i
  %vlines.i = getelementptr inbounds %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 2
  %175 = ptrtoint ptr %vlines.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %vlines.i, align 4
  %mul193.i = mul i32 %176, %add168.i
  %sub195.i = add i32 %174, -1
  %mul199.i = mul i32 %sub195.i, %add168.i
  %add202.i = add i32 %mul199.i, %conv.i
  %add203.i = add i32 %add202.i, 2
  %conv204.i = zext i32 %mul193.i to i64
  %shl.i = shl nuw nsw i64 %conv204.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %mul193.i)
  %cmp382.i = icmp ult i32 %mul193.i, 131072
  br i1 %cmp382.i, label %if.then386.i, label %if.else392.i, !prof !66

if.then386.i:                                     ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv387.i = trunc i64 %shl.i to i32
  %div390.i = udiv i32 %conv387.i, %add203.i
  br label %if.end400.i

if.else392.i:                                     ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #13
  %177 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add203.i, i64 %shl.i) #16, !srcloc !67
  %asmresult1.i.i = extractvalue { i64, i64 } %177, 1
  %extract.t886.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end400.i

if.end400.i:                                      ; preds = %if.else392.i, %if.then386.i, %do.end.i.if.end400.i_crit_edge
  %vdec.0.i = phi i32 [ 32768, %do.end.i.if.end400.i_crit_edge ], [ %div390.i, %if.then386.i ], [ %extract.t886.i, %if.else392.i ]
  %178 = tail call i32 @llvm.smin.i32(i32 %vdec.0.i, i32 32768) #11
  %VDisplay.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 7
  %179 = ptrtoint ptr %VDisplay.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %VDisplay.i, align 4
  %add405.i = sub i32 %106, %108
  %add406.i = add i32 %add405.i, %180
  %mul407.i = mul i32 %add406.i, %178
  %shr408.i = ashr i32 %mul407.i, 16
  %181 = tail call i32 @llvm.smax.i32(i32 %shr408.i, i32 146) #11
  %182 = tail call i32 @llvm.smin.i32(i32 %181, i32 401) #11
  %dec418.i = add i32 %178, -1
  %conv419.i = trunc i32 %dec418.i to i8
  %arrayidx421.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 145
  %183 = ptrtoint ptr %arrayidx421.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %conv419.i, ptr %arrayidx421.i, align 1
  %184 = lshr i32 %dec418.i, 8
  %conv423.i = trunc i32 %184 to i8
  %arrayidx425.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 146
  %185 = ptrtoint ptr %arrayidx425.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %conv423.i, ptr %arrayidx425.i, align 2
  %186 = trunc i32 %182 to i8
  %conv426.i = add i8 %186, 110
  %arrayidx428.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 190
  %187 = ptrtoint ptr %arrayidx428.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %conv426.i, ptr %arrayidx428.i, align 2
  %arrayidx430.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 176
  %188 = ptrtoint ptr %arrayidx430.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 8, ptr %arrayidx430.i, align 4
  br label %maven_compute_timming.exit

if.end435.i:                                      ; preds = %entry
  %189 = ptrtoint ptr %mt to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %mt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i.i) #11
  %191 = ptrtoint ptr %p.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 -1, ptr %p.i.i, align 4, !annotation !65
  %call.i.i = call i32 @matroxfb_PLL_calcclock(ptr noundef nonnull @maven_pll, i32 noundef %190, i32 noundef 450000, ptr noundef nonnull %a.i, ptr noundef nonnull %bv.i, ptr noundef nonnull %p.i.i) #11
  %192 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %p.i.i, align 4
  %notmask.i.i = shl nsw i32 -1, %193
  %sub.i859.i = xor i32 %notmask.i.i, -1
  store i32 %sub.i859.i, ptr %p.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %call.i.i)
  %cmp.i860.i = icmp ult i32 %call.i.i, 100001
  br i1 %cmp.i860.i, label %if.end435.i.DAC1064_calcclock.exit.i_crit_edge, label %if.else.i862.i

if.end435.i.DAC1064_calcclock.exit.i_crit_edge:   ; preds = %if.end435.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %DAC1064_calcclock.exit.i

if.else.i862.i:                                   ; preds = %if.end435.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 140001, i32 %call.i.i)
  %cmp1.i861.i = icmp ult i32 %call.i.i, 140001
  br i1 %cmp1.i861.i, label %if.then2.i.i, label %if.else3.i.i

if.then2.i.i:                                     ; preds = %if.else.i862.i
  call void @__sanitizer_cov_trace_pc() #13
  %or.i.i = or i32 %sub.i859.i, 8
  %194 = ptrtoint ptr %p.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %or.i.i, ptr %p.i.i, align 4
  br label %DAC1064_calcclock.exit.i

if.else3.i.i:                                     ; preds = %if.else.i862.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 180001, i32 %call.i.i)
  %cmp4.i.i = icmp ult i32 %call.i.i, 180001
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.else7.i.i

if.then5.i.i:                                     ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %or6.i.i = or i32 %sub.i859.i, 16
  %195 = ptrtoint ptr %p.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %or6.i.i, ptr %p.i.i, align 4
  br label %DAC1064_calcclock.exit.i

if.else7.i.i:                                     ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %or8.i.i = or i32 %sub.i859.i, 24
  %196 = ptrtoint ptr %p.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %or8.i.i, ptr %p.i.i, align 4
  br label %DAC1064_calcclock.exit.i

DAC1064_calcclock.exit.i:                         ; preds = %if.else7.i.i, %if.then5.i.i, %if.then2.i.i, %if.end435.i.DAC1064_calcclock.exit.i_crit_edge
  %197 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %p.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i.i) #11
  %199 = ptrtoint ptr %a.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %a.i, align 4
  %conv436.i = trunc i32 %200 to i8
  %arrayidx438.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 128
  %201 = ptrtoint ptr %arrayidx438.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %conv436.i, ptr %arrayidx438.i, align 4
  %202 = ptrtoint ptr %bv.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %bv.i, align 4
  %conv439.i = trunc i32 %203 to i8
  %arrayidx441.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 129
  %204 = ptrtoint ptr %arrayidx441.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %conv439.i, ptr %arrayidx441.i, align 1
  %205 = trunc i32 %198 to i8
  %conv443.i = or i8 %205, -128
  %arrayidx445.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 130
  %206 = ptrtoint ptr %arrayidx445.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %conv443.i, ptr %arrayidx445.i, align 2
  %arrayidx447.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 179
  %207 = ptrtoint ptr %arrayidx447.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 1, ptr %arrayidx447.i, align 1
  %arrayidx449.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 148
  %208 = ptrtoint ptr %arrayidx449.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 -78, ptr %arrayidx449.i, align 4
  %HTotal450.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 6
  %209 = ptrtoint ptr %HTotal450.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %HTotal450.i, align 4
  %conv451.i = trunc i32 %210 to i8
  %arrayidx453.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 150
  %211 = ptrtoint ptr %arrayidx453.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %conv451.i, ptr %arrayidx453.i, align 2
  %212 = load i32, ptr %HTotal450.i, align 4
  %shr455.i = lshr i32 %212, 8
  %conv456.i = trunc i32 %shr455.i to i8
  %arrayidx458.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 151
  %213 = ptrtoint ptr %arrayidx458.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %conv456.i, ptr %arrayidx458.i, align 1
  %arrayidx460.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 152
  %214 = ptrtoint ptr %arrayidx460.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 0, ptr %arrayidx460.i, align 4
  %arrayidx462.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 153
  %215 = ptrtoint ptr %arrayidx462.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %arrayidx462.i, align 1
  %HSyncEnd463.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 5
  %216 = ptrtoint ptr %HSyncEnd463.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %HSyncEnd463.i, align 4
  %HSyncStart464.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 4
  %218 = ptrtoint ptr %HSyncStart464.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %HSyncStart464.i, align 4
  %sub465.i = sub i32 %217, %219
  %conv466.i = trunc i32 %sub465.i to i8
  %arrayidx468.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 154
  %220 = ptrtoint ptr %arrayidx468.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %conv466.i, ptr %arrayidx468.i, align 2
  %shr469.i = lshr i32 %sub465.i, 8
  %conv470.i = trunc i32 %shr469.i to i8
  %arrayidx472.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 155
  %221 = ptrtoint ptr %arrayidx472.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %conv470.i, ptr %arrayidx472.i, align 1
  %222 = load i32, ptr %HTotal450.i, align 4
  %223 = load i32, ptr %HSyncStart464.i, align 4
  %sub475.i = sub i32 %222, %223
  %conv476.i = trunc i32 %sub475.i to i8
  %arrayidx478.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 156
  %224 = ptrtoint ptr %arrayidx478.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %conv476.i, ptr %arrayidx478.i, align 4
  %shr479.i = lshr i32 %sub475.i, 8
  %conv480.i = trunc i32 %shr479.i to i8
  %arrayidx482.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 157
  %225 = ptrtoint ptr %arrayidx482.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %conv480.i, ptr %arrayidx482.i, align 1
  %HDisplay483.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 3
  %226 = ptrtoint ptr %HDisplay483.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %HDisplay483.i, align 4
  %add484.i = add i32 %227, %sub475.i
  %conv485.i = trunc i32 %add484.i to i8
  %arrayidx487.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 158
  %228 = ptrtoint ptr %arrayidx487.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %conv485.i, ptr %arrayidx487.i, align 2
  %shr488.i = lshr i32 %add484.i, 8
  %conv489.i = trunc i32 %shr488.i to i8
  %arrayidx491.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 159
  %229 = ptrtoint ptr %arrayidx491.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %conv489.i, ptr %arrayidx491.i, align 1
  %230 = load i32, ptr %HTotal450.i, align 4
  %add493.i = add i32 %230, 1
  %conv494.i = trunc i32 %add493.i to i8
  %arrayidx496.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 160
  %231 = ptrtoint ptr %arrayidx496.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %conv494.i, ptr %arrayidx496.i, align 4
  %shr497.i = lshr i32 %add493.i, 8
  %conv498.i = trunc i32 %shr497.i to i8
  %arrayidx500.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 161
  %232 = ptrtoint ptr %arrayidx500.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %conv498.i, ptr %arrayidx500.i, align 1
  %VSyncEnd501.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 9
  %233 = ptrtoint ptr %VSyncEnd501.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %VSyncEnd501.i, align 4
  %VSyncStart502.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 8
  %235 = ptrtoint ptr %VSyncStart502.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %VSyncStart502.i, align 4
  %237 = xor i32 %236, -1
  %sub504.i = add i32 %234, %237
  %conv505.i = trunc i32 %sub504.i to i8
  %arrayidx507.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 162
  %238 = ptrtoint ptr %arrayidx507.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %conv505.i, ptr %arrayidx507.i, align 2
  %shr508.i = lshr i32 %sub504.i, 8
  %conv509.i = trunc i32 %shr508.i to i8
  %arrayidx511.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 163
  %239 = ptrtoint ptr %arrayidx511.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %conv509.i, ptr %arrayidx511.i, align 1
  %VTotal512.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 10
  %240 = ptrtoint ptr %VTotal512.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %VTotal512.i, align 4
  %242 = load i32, ptr %VSyncStart502.i, align 4
  %sub514.i = sub i32 %241, %242
  %conv515.i = trunc i32 %sub514.i to i8
  %arrayidx517.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 164
  %243 = ptrtoint ptr %arrayidx517.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %conv515.i, ptr %arrayidx517.i, align 4
  %shr518.i = lshr i32 %sub514.i, 8
  %conv519.i = trunc i32 %shr518.i to i8
  %arrayidx521.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 165
  %244 = ptrtoint ptr %arrayidx521.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %conv519.i, ptr %arrayidx521.i, align 1
  %245 = load i32, ptr %VTotal512.i, align 4
  %sub523.i = add i32 %245, -1
  %conv524.i = trunc i32 %sub523.i to i8
  %arrayidx526.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 166
  %246 = ptrtoint ptr %arrayidx526.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %conv524.i, ptr %arrayidx526.i, align 2
  %shr527.i = lshr i32 %sub523.i, 8
  %conv528.i = trunc i32 %shr527.i to i8
  %arrayidx530.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 167
  %247 = ptrtoint ptr %arrayidx530.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %conv528.i, ptr %arrayidx530.i, align 1
  %arrayidx533.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 168
  %248 = ptrtoint ptr %arrayidx533.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %conv524.i, ptr %arrayidx533.i, align 4
  %arrayidx537.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 169
  %249 = ptrtoint ptr %arrayidx537.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %conv528.i, ptr %arrayidx537.i, align 1
  %250 = load i32, ptr %HTotal450.i, align 4
  %delay539.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 14
  %251 = ptrtoint ptr %delay539.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %delay539.i, align 4
  %sub540.i = sub i32 %250, %252
  %conv541.i = trunc i32 %sub540.i to i8
  %arrayidx543.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 170
  %253 = ptrtoint ptr %arrayidx543.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %conv541.i, ptr %arrayidx543.i, align 2
  %shr544.i = lshr i32 %sub540.i, 8
  %conv545.i = trunc i32 %shr544.i to i8
  %arrayidx547.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 171
  %254 = ptrtoint ptr %arrayidx547.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %conv545.i, ptr %arrayidx547.i, align 1
  %255 = load i32, ptr %VTotal512.i, align 4
  %sub549.i = add i32 %255, -2
  %conv550.i = trunc i32 %sub549.i to i8
  %arrayidx552.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 172
  %256 = ptrtoint ptr %arrayidx552.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %conv550.i, ptr %arrayidx552.i, align 4
  %shr553.i = lshr i32 %sub549.i, 8
  %conv554.i = trunc i32 %shr553.i to i8
  %arrayidx556.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 173
  %257 = ptrtoint ptr %arrayidx556.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %conv554.i, ptr %arrayidx556.i, align 1
  %arrayidx558.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 174
  %258 = ptrtoint ptr %arrayidx558.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 0, ptr %arrayidx558.i, align 2
  %arrayidx560.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 175
  %259 = ptrtoint ptr %arrayidx560.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 0, ptr %arrayidx560.i, align 1
  %arrayidx562.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 176
  %260 = ptrtoint ptr %arrayidx562.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 3, ptr %arrayidx562.i, align 4
  %arrayidx564.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 177
  %261 = ptrtoint ptr %arrayidx564.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 -96, ptr %arrayidx564.i, align 1
  %arrayidx566.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 140
  %262 = ptrtoint ptr %arrayidx566.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 32, ptr %arrayidx566.i, align 4
  %arrayidx568.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 141
  %263 = ptrtoint ptr %arrayidx568.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 4, ptr %arrayidx568.i, align 1
  %arrayidx570.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 185
  %264 = ptrtoint ptr %arrayidx570.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 26, ptr %arrayidx570.i, align 1
  %arrayidx572.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 191
  %265 = ptrtoint ptr %arrayidx572.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 34, ptr %arrayidx572.i, align 1
  br label %maven_compute_timming.exit

maven_compute_timming.exit:                       ; preds = %DAC1064_calcclock.exit.i, %if.end400.i, %maven_find_exact_clocks.exit.i.maven_compute_timming.exit_crit_edge
  %retval.1.i = phi i32 [ 0, %DAC1064_calcclock.exit.i ], [ 0, %if.end400.i ], [ -22, %maven_find_exact_clocks.exit.i.maven_compute_timming.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bv.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a.i) #11
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maven_out_program(ptr nocapture noundef readonly %md) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %md, align 4
  %client.i = getelementptr inbounds %struct.maven_data, ptr %md, i32 0, i32 1
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 4
  %mode.i = getelementptr inbounds %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 1
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %5)
  %cmp.i = icmp eq i32 %5, 128
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %arrayidx.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 128
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -128, i8 noundef zeroext %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.maven_set_reg.exit.i_crit_edge, label %do.end.i.i

if.then.i.maven_set_reg.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 128) #15
  br label %maven_set_reg.exit.i

maven_set_reg.exit.i:                             ; preds = %do.end.i.i, %if.then.i.maven_set_reg.exit.i_crit_edge
  %arrayidx2.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 129
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2.i, align 1
  %call.i1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -127, i8 noundef zeroext %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i2.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i2.i, label %maven_set_reg.exit.i.maven_set_reg.exit5.i_crit_edge, label %do.end.i4.i

maven_set_reg.exit.i.maven_set_reg.exit5.i_crit_edge: ; preds = %maven_set_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit5.i

do.end.i4.i:                                      ; preds = %maven_set_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 129) #15
  br label %maven_set_reg.exit5.i

maven_set_reg.exit5.i:                            ; preds = %do.end.i4.i, %maven_set_reg.exit.i.maven_set_reg.exit5.i_crit_edge
  %arrayidx6.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 130
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx6.i, align 2
  %call.i6.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -126, i8 noundef zeroext %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i)
  %tobool.not.i7.i = icmp eq i32 %call.i6.i, 0
  br i1 %tobool.not.i7.i, label %maven_set_reg.exit5.i.maven_set_reg.exit10.i_crit_edge, label %do.end.i9.i

maven_set_reg.exit5.i.maven_set_reg.exit10.i_crit_edge: ; preds = %maven_set_reg.exit5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit10.i

do.end.i9.i:                                      ; preds = %maven_set_reg.exit5.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 130) #15
  br label %maven_set_reg.exit10.i

maven_set_reg.exit10.i:                           ; preds = %do.end.i9.i, %maven_set_reg.exit5.i.maven_set_reg.exit10.i_crit_edge
  %arrayidx10.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 179
  %12 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx10.i, align 1
  %call.i11.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -77, i8 noundef zeroext %13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call.i11.i, 0
  br i1 %tobool.not.i12.i, label %maven_set_reg.exit10.i.maven_set_reg.exit15.i_crit_edge, label %do.end.i14.i

maven_set_reg.exit10.i.maven_set_reg.exit15.i_crit_edge: ; preds = %maven_set_reg.exit10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit15.i

do.end.i14.i:                                     ; preds = %maven_set_reg.exit10.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 179) #15
  br label %maven_set_reg.exit15.i

maven_set_reg.exit15.i:                           ; preds = %do.end.i14.i, %maven_set_reg.exit10.i.maven_set_reg.exit15.i_crit_edge
  %arrayidx14.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 148
  %14 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx14.i, align 4
  %call.i16.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -108, i8 noundef zeroext %15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i)
  %tobool.not.i17.i = icmp eq i32 %call.i16.i, 0
  br i1 %tobool.not.i17.i, label %maven_set_reg.exit15.i.maven_set_reg.exit20.i_crit_edge, label %do.end.i19.i

maven_set_reg.exit15.i.maven_set_reg.exit20.i_crit_edge: ; preds = %maven_set_reg.exit15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit20.i

do.end.i19.i:                                     ; preds = %maven_set_reg.exit15.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 148) #15
  br label %maven_set_reg.exit20.i

maven_set_reg.exit20.i:                           ; preds = %do.end.i19.i, %maven_set_reg.exit15.i.maven_set_reg.exit20.i_crit_edge
  %arrayidx18.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 150
  %16 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx18.i, align 2
  %conv19.i = zext i8 %17 to i16
  %arrayidx21.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 151
  %18 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %19 to i16
  %shl.i = shl nuw i16 %conv22.i, 8
  %or.i = or i16 %shl.i, %conv19.i
  %call.i21.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext -106, i16 noundef zeroext %or.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i)
  %tobool.not.i22.i = icmp eq i32 %call.i21.i, 0
  br i1 %tobool.not.i22.i, label %maven_set_reg.exit20.i.maven_set_reg_pair.exit.i_crit_edge, label %do.end.i24.i

maven_set_reg.exit20.i.maven_set_reg_pair.exit.i_crit_edge: ; preds = %maven_set_reg.exit20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit.i

do.end.i24.i:                                     ; preds = %maven_set_reg.exit20.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 150) #15
  br label %maven_set_reg_pair.exit.i

maven_set_reg_pair.exit.i:                        ; preds = %do.end.i24.i, %maven_set_reg.exit20.i.maven_set_reg_pair.exit.i_crit_edge
  %arrayidx25.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 152
  %20 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx25.i, align 4
  %conv26.i = zext i8 %21 to i16
  %arrayidx28.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 153
  %22 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx28.i, align 1
  %conv29.i = zext i8 %23 to i16
  %shl30.i = shl nuw i16 %conv29.i, 8
  %or31.i = or i16 %shl30.i, %conv26.i
  %call.i26.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext -104, i16 noundef zeroext %or31.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %tobool.not.i27.i = icmp eq i32 %call.i26.i, 0
  br i1 %tobool.not.i27.i, label %maven_set_reg_pair.exit.i.maven_set_reg_pair.exit30.i_crit_edge, label %do.end.i29.i

maven_set_reg_pair.exit.i.maven_set_reg_pair.exit30.i_crit_edge: ; preds = %maven_set_reg_pair.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit30.i

do.end.i29.i:                                     ; preds = %maven_set_reg_pair.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 152) #15
  br label %maven_set_reg_pair.exit30.i

maven_set_reg_pair.exit30.i:                      ; preds = %do.end.i29.i, %maven_set_reg_pair.exit.i.maven_set_reg_pair.exit30.i_crit_edge
  %arrayidx34.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 154
  %24 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx34.i, align 2
  %conv35.i = zext i8 %25 to i16
  %arrayidx37.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 155
  %26 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx37.i, align 1
  %conv38.i = zext i8 %27 to i16
  %shl39.i = shl nuw i16 %conv38.i, 8
  %or40.i = or i16 %shl39.i, %conv35.i
  %call.i32.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext -102, i16 noundef zeroext %or40.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %tobool.not.i33.i = icmp eq i32 %call.i32.i, 0
  br i1 %tobool.not.i33.i, label %maven_set_reg_pair.exit30.i.maven_set_reg_pair.exit36.i_crit_edge, label %do.end.i35.i

maven_set_reg_pair.exit30.i.maven_set_reg_pair.exit36.i_crit_edge: ; preds = %maven_set_reg_pair.exit30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit36.i

do.end.i35.i:                                     ; preds = %maven_set_reg_pair.exit30.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 154) #15
  br label %maven_set_reg_pair.exit36.i

maven_set_reg_pair.exit36.i:                      ; preds = %do.end.i35.i, %maven_set_reg_pair.exit30.i.maven_set_reg_pair.exit36.i_crit_edge
  %arrayidx43.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 156
  %28 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx43.i, align 4
  %conv44.i = zext i8 %29 to i16
  %arrayidx46.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 157
  %30 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx46.i, align 1
  %conv47.i = zext i8 %31 to i16
  %shl48.i = shl nuw i16 %conv47.i, 8
  %or49.i = or i16 %shl48.i, %conv44.i
  %call.i38.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext -100, i16 noundef zeroext %or49.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i)
  %tobool.not.i39.i = icmp eq i32 %call.i38.i, 0
  br i1 %tobool.not.i39.i, label %maven_set_reg_pair.exit36.i.maven_set_reg_pair.exit42.i_crit_edge, label %do.end.i41.i

maven_set_reg_pair.exit36.i.maven_set_reg_pair.exit42.i_crit_edge: ; preds = %maven_set_reg_pair.exit36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit42.i

do.end.i41.i:                                     ; preds = %maven_set_reg_pair.exit36.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 156) #15
  br label %maven_set_reg_pair.exit42.i

maven_set_reg_pair.exit42.i:                      ; preds = %do.end.i41.i, %maven_set_reg_pair.exit36.i.maven_set_reg_pair.exit42.i_crit_edge
  %arrayidx52.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 158
  %32 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx52.i, align 2
  %conv53.i = zext i8 %33 to i16
  %arrayidx55.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 159
  %34 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx55.i, align 1
  %conv56.i = zext i8 %35 to i16
  %shl57.i = shl nuw i16 %conv56.i, 8
  %or58.i = or i16 %shl57.i, %conv53.i
  %call.i44.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext -98, i16 noundef zeroext %or58.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %tobool.not.i45.i = icmp eq i32 %call.i44.i, 0
  br i1 %tobool.not.i45.i, label %maven_set_reg_pair.exit42.i.maven_set_reg_pair.exit48.i_crit_edge, label %do.end.i47.i

maven_set_reg_pair.exit42.i.maven_set_reg_pair.exit48.i_crit_edge: ; preds = %maven_set_reg_pair.exit42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit48.i

do.end.i47.i:                                     ; preds = %maven_set_reg_pair.exit42.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 158) #15
  br label %maven_set_reg_pair.exit48.i

maven_set_reg_pair.exit48.i:                      ; preds = %do.end.i47.i, %maven_set_reg_pair.exit42.i.maven_set_reg_pair.exit48.i_crit_edge
  %arrayidx61.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 160
  %36 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx61.i, align 4
  %conv62.i = zext i8 %37 to i16
  %arrayidx64.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 161
  %38 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx64.i, align 1
  %conv65.i = zext i8 %39 to i16
  %shl66.i = shl nuw i16 %conv65.i, 8
  %or67.i = or i16 %shl66.i, %conv62.i
  %call.i50.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext -96, i16 noundef zeroext %or67.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i)
  %tobool.not.i51.i = icmp eq i32 %call.i50.i, 0
  br i1 %tobool.not.i51.i, label %maven_set_reg_pair.exit48.i.maven_set_reg_pair.exit54.i_crit_edge, label %do.end.i53.i

maven_set_reg_pair.exit48.i.maven_set_reg_pair.exit54.i_crit_edge: ; preds = %maven_set_reg_pair.exit48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit54.i

do.end.i53.i:                                     ; preds = %maven_set_reg_pair.exit48.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 160) #15
  br label %maven_set_reg_pair.exit54.i

maven_set_reg_pair.exit54.i:                      ; preds = %do.end.i53.i, %maven_set_reg_pair.exit48.i.maven_set_reg_pair.exit54.i_crit_edge
  %arrayidx70.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 162
  %40 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx70.i, align 2
  %conv71.i = zext i8 %41 to i16
  %arrayidx73.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 163
  %42 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx73.i, align 1
  %conv74.i = zext i8 %43 to i16
  %shl75.i = shl nuw i16 %conv74.i, 8
  %or76.i = or i16 %shl75.i, %conv71.i
  %call.i56.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext -94, i16 noundef zeroext %or76.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i)
  %tobool.not.i57.i = icmp eq i32 %call.i56.i, 0
  br i1 %tobool.not.i57.i, label %maven_set_reg_pair.exit54.i.maven_set_reg_pair.exit60.i_crit_edge, label %do.end.i59.i

maven_set_reg_pair.exit54.i.maven_set_reg_pair.exit60.i_crit_edge: ; preds = %maven_set_reg_pair.exit54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit60.i

do.end.i59.i:                                     ; preds = %maven_set_reg_pair.exit54.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i58.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 162) #15
  br label %maven_set_reg_pair.exit60.i

maven_set_reg_pair.exit60.i:                      ; preds = %do.end.i59.i, %maven_set_reg_pair.exit54.i.maven_set_reg_pair.exit60.i_crit_edge
  %arrayidx79.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 164
  %44 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx79.i, align 4
  %conv80.i = zext i8 %45 to i16
  %arrayidx82.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 165
  %46 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx82.i, align 1
  %conv83.i = zext i8 %47 to i16
  %shl84.i = shl nuw i16 %conv83.i, 8
  %or85.i = or i16 %shl84.i, %conv80.i
  %call.i62.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext -92, i16 noundef zeroext %or85.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i)
  %tobool.not.i63.i = icmp eq i32 %call.i62.i, 0
  br i1 %tobool.not.i63.i, label %maven_set_reg_pair.exit60.i.maven_set_reg_pair.exit66.i_crit_edge, label %do.end.i65.i

maven_set_reg_pair.exit60.i.maven_set_reg_pair.exit66.i_crit_edge: ; preds = %maven_set_reg_pair.exit60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit66.i

do.end.i65.i:                                     ; preds = %maven_set_reg_pair.exit60.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 164) #15
  br label %maven_set_reg_pair.exit66.i

maven_set_reg_pair.exit66.i:                      ; preds = %do.end.i65.i, %maven_set_reg_pair.exit60.i.maven_set_reg_pair.exit66.i_crit_edge
  %arrayidx88.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 166
  %48 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx88.i, align 2
  %conv89.i = zext i8 %49 to i16
  %arrayidx91.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 167
  %50 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx91.i, align 1
  %conv92.i = zext i8 %51 to i16
  %shl93.i = shl nuw i16 %conv92.i, 8
  %or94.i = or i16 %shl93.i, %conv89.i
  %call.i68.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext -90, i16 noundef zeroext %or94.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i)
  %tobool.not.i69.i = icmp eq i32 %call.i68.i, 0
  br i1 %tobool.not.i69.i, label %maven_set_reg_pair.exit66.i.maven_set_reg_pair.exit72.i_crit_edge, label %do.end.i71.i

maven_set_reg_pair.exit66.i.maven_set_reg_pair.exit72.i_crit_edge: ; preds = %maven_set_reg_pair.exit66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit72.i

do.end.i71.i:                                     ; preds = %maven_set_reg_pair.exit66.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 166) #15
  br label %maven_set_reg_pair.exit72.i

maven_set_reg_pair.exit72.i:                      ; preds = %do.end.i71.i, %maven_set_reg_pair.exit66.i.maven_set_reg_pair.exit72.i_crit_edge
  %arrayidx97.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 168
  %52 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx97.i, align 4
  %conv98.i = zext i8 %53 to i16
  %arrayidx100.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 169
  %54 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx100.i, align 1
  %conv101.i = zext i8 %55 to i16
  %shl102.i = shl nuw i16 %conv101.i, 8
  %or103.i = or i16 %shl102.i, %conv98.i
  %call.i74.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext -88, i16 noundef zeroext %or103.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i)
  %tobool.not.i75.i = icmp eq i32 %call.i74.i, 0
  br i1 %tobool.not.i75.i, label %maven_set_reg_pair.exit72.i.maven_set_reg_pair.exit78.i_crit_edge, label %do.end.i77.i

maven_set_reg_pair.exit72.i.maven_set_reg_pair.exit78.i_crit_edge: ; preds = %maven_set_reg_pair.exit72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit78.i

do.end.i77.i:                                     ; preds = %maven_set_reg_pair.exit72.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i76.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 168) #15
  br label %maven_set_reg_pair.exit78.i

maven_set_reg_pair.exit78.i:                      ; preds = %do.end.i77.i, %maven_set_reg_pair.exit72.i.maven_set_reg_pair.exit78.i_crit_edge
  %arrayidx106.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 170
  %56 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx106.i, align 2
  %conv107.i = zext i8 %57 to i16
  %arrayidx109.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 171
  %58 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx109.i, align 1
  %conv110.i = zext i8 %59 to i16
  %shl111.i = shl nuw i16 %conv110.i, 8
  %or112.i = or i16 %shl111.i, %conv107.i
  %call.i80.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext -86, i16 noundef zeroext %or112.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80.i)
  %tobool.not.i81.i = icmp eq i32 %call.i80.i, 0
  br i1 %tobool.not.i81.i, label %maven_set_reg_pair.exit78.i.maven_set_reg_pair.exit84.i_crit_edge, label %do.end.i83.i

maven_set_reg_pair.exit78.i.maven_set_reg_pair.exit84.i_crit_edge: ; preds = %maven_set_reg_pair.exit78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit84.i

do.end.i83.i:                                     ; preds = %maven_set_reg_pair.exit78.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i82.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 170) #15
  br label %maven_set_reg_pair.exit84.i

maven_set_reg_pair.exit84.i:                      ; preds = %do.end.i83.i, %maven_set_reg_pair.exit78.i.maven_set_reg_pair.exit84.i_crit_edge
  %arrayidx115.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 172
  %60 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx115.i, align 4
  %conv116.i = zext i8 %61 to i16
  %arrayidx118.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 173
  %62 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx118.i, align 1
  %conv119.i = zext i8 %63 to i16
  %shl120.i = shl nuw i16 %conv119.i, 8
  %or121.i = or i16 %shl120.i, %conv116.i
  %call.i86.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext -84, i16 noundef zeroext %or121.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86.i)
  %tobool.not.i87.i = icmp eq i32 %call.i86.i, 0
  br i1 %tobool.not.i87.i, label %maven_set_reg_pair.exit84.i.maven_set_reg_pair.exit90.i_crit_edge, label %do.end.i89.i

maven_set_reg_pair.exit84.i.maven_set_reg_pair.exit90.i_crit_edge: ; preds = %maven_set_reg_pair.exit84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit90.i

do.end.i89.i:                                     ; preds = %maven_set_reg_pair.exit84.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i88.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 172) #15
  br label %maven_set_reg_pair.exit90.i

maven_set_reg_pair.exit90.i:                      ; preds = %do.end.i89.i, %maven_set_reg_pair.exit84.i.maven_set_reg_pair.exit90.i_crit_edge
  %arrayidx124.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 174
  %64 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx124.i, align 2
  %conv125.i = zext i8 %65 to i16
  %arrayidx127.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 175
  %66 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx127.i, align 1
  %conv128.i = zext i8 %67 to i16
  %shl129.i = shl nuw i16 %conv128.i, 8
  %or130.i = or i16 %shl129.i, %conv125.i
  %call.i92.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext -82, i16 noundef zeroext %or130.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i)
  %tobool.not.i93.i = icmp eq i32 %call.i92.i, 0
  br i1 %tobool.not.i93.i, label %maven_set_reg_pair.exit90.i.maven_set_reg_pair.exit96.i_crit_edge, label %do.end.i95.i

maven_set_reg_pair.exit90.i.maven_set_reg_pair.exit96.i_crit_edge: ; preds = %maven_set_reg_pair.exit90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit96.i

do.end.i95.i:                                     ; preds = %maven_set_reg_pair.exit90.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i94.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 174) #15
  br label %maven_set_reg_pair.exit96.i

maven_set_reg_pair.exit96.i:                      ; preds = %do.end.i95.i, %maven_set_reg_pair.exit90.i.maven_set_reg_pair.exit96.i_crit_edge
  %arrayidx133.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 176
  %68 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx133.i, align 4
  %call.i97.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -80, i8 noundef zeroext %69) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i)
  %tobool.not.i98.i = icmp eq i32 %call.i97.i, 0
  br i1 %tobool.not.i98.i, label %maven_set_reg_pair.exit96.i.maven_set_reg.exit101.i_crit_edge, label %do.end.i100.i

maven_set_reg_pair.exit96.i.maven_set_reg.exit101.i_crit_edge: ; preds = %maven_set_reg_pair.exit96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit101.i

do.end.i100.i:                                    ; preds = %maven_set_reg_pair.exit96.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i99.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 176) #15
  br label %maven_set_reg.exit101.i

maven_set_reg.exit101.i:                          ; preds = %do.end.i100.i, %maven_set_reg_pair.exit96.i.maven_set_reg.exit101.i_crit_edge
  %arrayidx137.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 177
  %70 = ptrtoint ptr %arrayidx137.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx137.i, align 1
  %call.i102.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -79, i8 noundef zeroext %71) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102.i)
  %tobool.not.i103.i = icmp eq i32 %call.i102.i, 0
  br i1 %tobool.not.i103.i, label %maven_set_reg.exit101.i.maven_set_reg.exit106.i_crit_edge, label %do.end.i105.i

maven_set_reg.exit101.i.maven_set_reg.exit106.i_crit_edge: ; preds = %maven_set_reg.exit101.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit106.i

do.end.i105.i:                                    ; preds = %maven_set_reg.exit101.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i104.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 177) #15
  br label %maven_set_reg.exit106.i

maven_set_reg.exit106.i:                          ; preds = %do.end.i105.i, %maven_set_reg.exit101.i.maven_set_reg.exit106.i_crit_edge
  %arrayidx141.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 140
  %72 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx141.i, align 4
  %call.i107.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -116, i8 noundef zeroext %73) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107.i)
  %tobool.not.i108.i = icmp eq i32 %call.i107.i, 0
  br i1 %tobool.not.i108.i, label %maven_set_reg.exit106.i.maven_set_reg.exit111.i_crit_edge, label %do.end.i110.i

maven_set_reg.exit106.i.maven_set_reg.exit111.i_crit_edge: ; preds = %maven_set_reg.exit106.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit111.i

do.end.i110.i:                                    ; preds = %maven_set_reg.exit106.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i109.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 140) #15
  br label %maven_set_reg.exit111.i

maven_set_reg.exit111.i:                          ; preds = %do.end.i110.i, %maven_set_reg.exit106.i.maven_set_reg.exit111.i_crit_edge
  %arrayidx145.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 141
  %74 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx145.i, align 1
  %call.i112.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -115, i8 noundef zeroext %75) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112.i)
  %tobool.not.i113.i = icmp eq i32 %call.i112.i, 0
  br i1 %tobool.not.i113.i, label %maven_set_reg.exit111.i.maven_set_reg.exit116.i_crit_edge, label %do.end.i115.i

maven_set_reg.exit111.i.maven_set_reg.exit116.i_crit_edge: ; preds = %maven_set_reg.exit111.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit116.i

do.end.i115.i:                                    ; preds = %maven_set_reg.exit111.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i114.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 141) #15
  br label %maven_set_reg.exit116.i

maven_set_reg.exit116.i:                          ; preds = %do.end.i115.i, %maven_set_reg.exit111.i.maven_set_reg.exit116.i_crit_edge
  %arrayidx149.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 185
  %76 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx149.i, align 1
  %call.i117.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -71, i8 noundef zeroext %77) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117.i)
  %tobool.not.i118.i = icmp eq i32 %call.i117.i, 0
  br i1 %tobool.not.i118.i, label %maven_set_reg.exit116.i.maven_set_reg.exit121.i_crit_edge, label %do.end.i120.i

maven_set_reg.exit116.i.maven_set_reg.exit121.i_crit_edge: ; preds = %maven_set_reg.exit116.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit121.i

do.end.i120.i:                                    ; preds = %maven_set_reg.exit116.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i119.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 185) #15
  br label %maven_set_reg.exit121.i

maven_set_reg.exit121.i:                          ; preds = %do.end.i120.i, %maven_set_reg.exit116.i.maven_set_reg.exit121.i_crit_edge
  %arrayidx153.i = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10, i32 0, i32 191
  %78 = ptrtoint ptr %arrayidx153.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx153.i, align 1
  %call.i122.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -65, i8 noundef zeroext %79) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122.i)
  %tobool.not.i123.i = icmp eq i32 %call.i122.i, 0
  br i1 %tobool.not.i123.i, label %maven_set_reg.exit121.i.maven_program_timming.exit_crit_edge, label %do.end.i125.i

maven_set_reg.exit121.i.maven_program_timming.exit_crit_edge: ; preds = %maven_set_reg.exit121.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_program_timming.exit

do.end.i125.i:                                    ; preds = %maven_set_reg.exit121.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i124.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 191) #15
  br label %maven_program_timming.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %maven = getelementptr inbounds %struct.matrox_fb_info, ptr %1, i32 0, i32 8, i32 10
  tail call fastcc void @maven_init_TV(ptr noundef %3, ptr noundef %maven) #11
  br label %maven_program_timming.exit

maven_program_timming.exit:                       ; preds = %if.else.i, %do.end.i125.i, %maven_set_reg.exit121.i.maven_program_timming.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maven_out_start(ptr nocapture noundef readonly %md) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %client.i = getelementptr inbounds %struct.maven_data, ptr %md, i32 0, i32 1
  %0 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext -107, i8 noundef zeroext 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %entry.maven_resync.exit_crit_edge, label %do.end.i.i

entry.maven_resync.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_resync.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 149) #15
  br label %maven_resync.exit

maven_resync.exit:                                ; preds = %do.end.i.i, %entry.maven_resync.exit_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @maven_out_verify_mode(ptr nocapture noundef readnone %md, i32 noundef %arg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %arg, label %sw.epilog [
    i32 1, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge1
    i32 128, label %entry.return_crit_edge2
  ]

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2
  %retval.0 = phi i32 [ -22, %sw.epilog ], [ 0, %entry.return_crit_edge ], [ 0, %entry.return_crit_edge1 ], [ 0, %entry.return_crit_edge2 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maven_out_get_queryctrl(ptr nocapture noundef readnone %md, ptr nocapture noundef %p) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963776, i32 %1)
  %cmp1.i.i = icmp ult i32 %1, 9963776
  br i1 %cmp1.i.i, label %entry.if.then2.i_crit_edge, label %if.end7.i.i

entry.if.then2.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2.i

if.end7.i.i:                                      ; preds = %entry
  %switch.tableidx = add i32 %1, -9963776
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 4
  br i1 %2, label %if.end7.i.i.if.then.i_crit_edge, label %for.inc.3.i.i

if.end7.i.i.if.then.i_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.3.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963792, i32 %1)
  %cmp1.4.i.i = icmp ult i32 %1, 9963792
  br i1 %cmp1.4.i.i, label %for.inc.3.i.i.if.then2.i_crit_edge, label %if.end7.4.i.i

for.inc.3.i.i.if.then2.i_crit_edge:               ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2.i

if.end7.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963792, i32 %1)
  %cmp11.4.i.i = icmp eq i32 %1, 9963792
  br i1 %cmp11.4.i.i, label %if.end7.4.i.i.if.then.i_crit_edge, label %for.inc.4.i.i

if.end7.4.i.i.if.then.i_crit_edge:                ; preds = %if.end7.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

for.inc.4.i.i:                                    ; preds = %if.end7.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %1)
  %cmp1.5.i.i = icmp ult i32 %1, 134217728
  br i1 %cmp1.5.i.i, label %for.inc.4.i.i.maven_get_queryctrl.exit_crit_edge, label %if.end7.5.i.i

for.inc.4.i.i.maven_get_queryctrl.exit_crit_edge: ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_get_queryctrl.exit

if.end7.5.i.i:                                    ; preds = %for.inc.4.i.i
  %3 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %1, label %if.end7.5.i.i.maven_get_queryctrl.exit_crit_edge [
    i32 134217728, label %if.end7.5.i.i.if.then.i_crit_edge
    i32 134217729, label %if.then.fold.split.i
  ]

if.end7.5.i.i.if.then.i_crit_edge:                ; preds = %if.end7.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end7.5.i.i.maven_get_queryctrl.exit_crit_edge: ; preds = %if.end7.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_get_queryctrl.exit

if.then.fold.split.i:                             ; preds = %if.end7.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split.i, %if.end7.5.i.i.if.then.i_crit_edge, %if.end7.4.i.i.if.then.i_crit_edge, %if.end7.i.i.if.then.i_crit_edge
  %retval.0.i3.i = phi i32 [ 4, %if.end7.4.i.i.if.then.i_crit_edge ], [ 5, %if.end7.5.i.i.if.then.i_crit_edge ], [ 6, %if.then.fold.split.i ], [ %switch.tableidx, %if.end7.i.i.if.then.i_crit_edge ]
  %arrayidx.i = getelementptr [7 x %struct.mctl], ptr @maven_controls, i32 0, i32 %retval.0.i3.i
  %4 = call ptr @memcpy(ptr %p, ptr %arrayidx.i, i32 68)
  br label %maven_get_queryctrl.exit

if.then2.i:                                       ; preds = %for.inc.3.i.i.if.then2.i_crit_edge, %entry.if.then2.i_crit_edge
  %5 = call ptr @memcpy(ptr %p, ptr @maven_get_queryctrl.disctrl, i32 68)
  %6 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %p, align 4
  %name.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %p, i32 0, i32 2
  %call5.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i, ptr noundef nonnull @.str.7, i32 noundef %1) #11
  br label %maven_get_queryctrl.exit

maven_get_queryctrl.exit:                         ; preds = %if.then2.i, %if.then.i, %if.end7.5.i.i.maven_get_queryctrl.exit_crit_edge, %for.inc.4.i.i.maven_get_queryctrl.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then.i ], [ 0, %if.then2.i ], [ -22, %for.inc.4.i.i.maven_get_queryctrl.exit_crit_edge ], [ -22, %if.end7.5.i.i.maven_get_queryctrl.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @maven_out_get_ctrl(ptr nocapture noundef readonly %md, ptr nocapture noundef %p) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963776, i32 %1)
  %cmp1.i.i = icmp ult i32 %1, 9963776
  br i1 %cmp1.i.i, label %entry.maven_get_control.exit_crit_edge, label %if.end7.i.i

entry.maven_get_control.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_get_control.exit

if.end7.i.i:                                      ; preds = %entry
  %switch.tableidx = add i32 %1, -9963776
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 4
  br i1 %2, label %if.end7.i.i.if.end.i_crit_edge, label %for.inc.3.i.i

if.end7.i.i.if.end.i_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.inc.3.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963792, i32 %1)
  %cmp1.4.i.i = icmp ult i32 %1, 9963792
  br i1 %cmp1.4.i.i, label %for.inc.3.i.i.maven_get_control.exit_crit_edge, label %if.end7.4.i.i

for.inc.3.i.i.maven_get_control.exit_crit_edge:   ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_get_control.exit

if.end7.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963792, i32 %1)
  %cmp11.4.i.i = icmp eq i32 %1, 9963792
  br i1 %cmp11.4.i.i, label %if.end7.4.i.i.if.end.i_crit_edge, label %for.inc.4.i.i

if.end7.4.i.i.if.end.i_crit_edge:                 ; preds = %if.end7.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.inc.4.i.i:                                    ; preds = %if.end7.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %1)
  %cmp1.5.i.i = icmp ult i32 %1, 134217728
  br i1 %cmp1.5.i.i, label %for.inc.4.i.i.maven_get_control.exit_crit_edge, label %if.end7.5.i.i

for.inc.4.i.i.maven_get_control.exit_crit_edge:   ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_get_control.exit

if.end7.5.i.i:                                    ; preds = %for.inc.4.i.i
  %3 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %1, label %if.end7.5.i.i.maven_get_control.exit_crit_edge [
    i32 134217728, label %if.end7.5.i.i.if.end.i_crit_edge
    i32 134217729, label %if.end.fold.split.i
  ]

if.end7.5.i.i.if.end.i_crit_edge:                 ; preds = %if.end7.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end7.5.i.i.maven_get_control.exit_crit_edge:   ; preds = %if.end7.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_get_control.exit

if.end.fold.split.i:                              ; preds = %if.end7.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.fold.split.i, %if.end7.5.i.i.if.end.i_crit_edge, %if.end7.4.i.i.if.end.i_crit_edge, %if.end7.i.i.if.end.i_crit_edge
  %retval.0.i6.i = phi i32 [ 4, %if.end7.4.i.i.if.end.i_crit_edge ], [ 5, %if.end7.5.i.i.if.end.i_crit_edge ], [ 6, %if.end.fold.split.i ], [ %switch.tableidx, %if.end7.i.i.if.end.i_crit_edge ]
  %4 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %md, align 4
  %control.i.i = getelementptr [7 x %struct.mctl], ptr @maven_controls, i32 0, i32 %retval.0.i6.i, i32 1
  %6 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %control.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %7
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %value.i = getelementptr inbounds %struct.v4l2_control, ptr %p, i32 0, i32 1
  %10 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value.i, align 4
  br label %maven_get_control.exit

maven_get_control.exit:                           ; preds = %if.end.i, %if.end7.5.i.i.maven_get_control.exit_crit_edge, %for.inc.4.i.i.maven_get_control.exit_crit_edge, %for.inc.3.i.i.maven_get_control.exit_crit_edge, %entry.maven_get_control.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %for.inc.4.i.i.maven_get_control.exit_crit_edge ], [ -22, %for.inc.3.i.i.maven_get_control.exit_crit_edge ], [ -22, %entry.maven_get_control.exit_crit_edge ], [ -22, %if.end7.5.i.i.maven_get_control.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maven_out_set_ctrl(ptr nocapture noundef readonly %md, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %dst.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963776, i32 %1)
  %cmp1.i.i = icmp ult i32 %1, 9963776
  br i1 %cmp1.i.i, label %entry.maven_set_control.exit_crit_edge, label %if.end7.i.i

entry.maven_set_control.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_control.exit

if.end7.i.i:                                      ; preds = %entry
  %switch.tableidx = add i32 %1, -9963776
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 4
  br i1 %2, label %if.end7.i.i.if.end.i_crit_edge, label %for.inc.3.i.i

if.end7.i.i.if.end.i_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.inc.3.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963792, i32 %1)
  %cmp1.4.i.i = icmp ult i32 %1, 9963792
  br i1 %cmp1.4.i.i, label %for.inc.3.i.i.maven_set_control.exit_crit_edge, label %if.end7.4.i.i

for.inc.3.i.i.maven_set_control.exit_crit_edge:   ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_control.exit

if.end7.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963792, i32 %1)
  %cmp11.4.i.i = icmp eq i32 %1, 9963792
  br i1 %cmp11.4.i.i, label %if.end7.4.i.i.if.end.i_crit_edge, label %for.inc.4.i.i

if.end7.4.i.i.if.end.i_crit_edge:                 ; preds = %if.end7.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.inc.4.i.i:                                    ; preds = %if.end7.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %1)
  %cmp1.5.i.i = icmp ult i32 %1, 134217728
  br i1 %cmp1.5.i.i, label %for.inc.4.i.i.maven_set_control.exit_crit_edge, label %if.end7.5.i.i

for.inc.4.i.i.maven_set_control.exit_crit_edge:   ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_control.exit

if.end7.5.i.i:                                    ; preds = %for.inc.4.i.i
  %3 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %1, label %if.end7.5.i.i.maven_set_control.exit_crit_edge [
    i32 134217728, label %if.end7.5.i.i.if.end.i_crit_edge
    i32 134217729, label %if.end.fold.split.i
  ]

if.end7.5.i.i.if.end.i_crit_edge:                 ; preds = %if.end7.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end7.5.i.i.maven_set_control.exit_crit_edge:   ; preds = %if.end7.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_control.exit

if.end.fold.split.i:                              ; preds = %if.end7.5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.fold.split.i, %if.end7.5.i.i.if.end.i_crit_edge, %if.end7.4.i.i.if.end.i_crit_edge, %if.end7.i.i.if.end.i_crit_edge
  %retval.0.i142.i = phi i32 [ 4, %if.end7.4.i.i.if.end.i_crit_edge ], [ 5, %if.end7.5.i.i.if.end.i_crit_edge ], [ 6, %if.end.fold.split.i ], [ %switch.tableidx, %if.end7.i.i.if.end.i_crit_edge ]
  %value.i = getelementptr inbounds %struct.v4l2_control, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value.i, align 4
  %6 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %md, align 4
  %control.i.i = getelementptr [7 x %struct.mctl], ptr @maven_controls, i32 0, i32 %retval.0.i142.i, i32 1
  %8 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %control.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %9
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %11)
  %cmp2.i = icmp eq i32 %5, %11
  br i1 %cmp2.i, label %if.end.i.maven_set_control.exit_crit_edge, label %if.end4.i

if.end.i.maven_set_control.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_control.exit

if.end4.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr [7 x %struct.mctl], ptr @maven_controls, i32 0, i32 %retval.0.i142.i
  %maximum.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %arrayidx.i, i32 0, i32 4
  %12 = ptrtoint ptr %maximum.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maximum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %13)
  %cmp6.i = icmp sgt i32 %5, %13
  br i1 %cmp6.i, label %if.end4.i.maven_set_control.exit_crit_edge, label %if.end8.i

if.end4.i.maven_set_control.exit_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_control.exit

if.end8.i:                                        ; preds = %if.end4.i
  %minimum.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %arrayidx.i, i32 0, i32 3
  %14 = ptrtoint ptr %minimum.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %minimum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %15)
  %cmp12.i = icmp slt i32 %5, %15
  br i1 %cmp12.i, label %if.end8.i.maven_set_control.exit_crit_edge, label %if.end14.i

if.end8.i.maven_set_control.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_control.exit

if.end14.i:                                       ; preds = %if.end8.i
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %5, ptr %add.ptr.i.i, align 4
  %17 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %p, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %18, label %if.end14.i.maven_set_control.exit_crit_edge [
    i32 9963776, label %if.end14.i.sw.bb.i_crit_edge
    i32 9963777, label %if.end14.i.sw.bb.i_crit_edge88
    i32 9963778, label %sw.bb25.i
    i32 9963779, label %sw.bb32.i
    i32 9963792, label %sw.bb36.i
    i32 134217728, label %sw.bb64.i
    i32 134217729, label %sw.bb80.i
  ]

if.end14.i.sw.bb.i_crit_edge88:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end14.i.sw.bb.i_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end14.i.maven_set_control.exit_crit_edge:      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_control.exit

sw.bb.i:                                          ; preds = %if.end14.i.sw.bb.i_crit_edge, %if.end14.i.sw.bb.i_crit_edge88
  %20 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %md, align 4
  %tvo_params.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %21, i32 0, i32 13, i32 1
  %22 = ptrtoint ptr %tvo_params.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tvo_params.i.i, align 4
  %add.i.i = add i32 %23, 255
  %contrast.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %21, i32 0, i32 13, i32 1, i32 1
  %24 = ptrtoint ptr %contrast.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %contrast.i.i, align 4
  %sub.i.i = sub i32 %add.i.i, %25
  %26 = tail call i32 @llvm.smax.i32(i32 %sub.i.i, i32 255) #11
  %add4.i.i = add i32 %add.i.i, %25
  %27 = tail call i32 @llvm.smin.i32(i32 %add4.i.i, i32 1023) #11
  %shr148.i = lshr i32 %26, 2
  %and.i = shl i32 %26, 8
  %shl.i = and i32 %and.i, 768
  %or.i = or i32 %shl.i, %shr148.i
  %28 = lshr i32 %27, 2
  %and19.i = shl i32 %27, 8
  %shl20.i = and i32 %and19.i, 768
  %or21.i = or i32 %shl20.i, %28
  %client.i = getelementptr inbounds %struct.maven_data, ptr %md, i32 0, i32 1
  %29 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client.i, align 4
  %conv1.i.i = trunc i32 %or.i to i16
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %30, i8 noundef zeroext 14, i16 noundef zeroext %conv1.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.maven_set_reg_pair.exit.i_crit_edge, label %do.end.i.i

sw.bb.i.maven_set_reg_pair.exit.i_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 14) #15
  br label %maven_set_reg_pair.exit.i

maven_set_reg_pair.exit.i:                        ; preds = %do.end.i.i, %sw.bb.i.maven_set_reg_pair.exit.i_crit_edge
  %31 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client.i, align 4
  %conv1.i131.i = trunc i32 %or21.i to i16
  %call.i132.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %32, i8 noundef zeroext 30, i16 noundef zeroext %conv1.i131.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132.i)
  %tobool.not.i133.i = icmp eq i32 %call.i132.i, 0
  br i1 %tobool.not.i133.i, label %maven_set_reg_pair.exit.i.maven_set_control.exit_crit_edge, label %do.end.i135.i

maven_set_reg_pair.exit.i.maven_set_control.exit_crit_edge: ; preds = %maven_set_reg_pair.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_control.exit

do.end.i135.i:                                    ; preds = %maven_set_reg_pair.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i134.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 30) #15
  br label %maven_set_control.exit

sw.bb25.i:                                        ; preds = %if.end14.i
  %client26.i = getelementptr inbounds %struct.maven_data, ptr %md, i32 0, i32 1
  %33 = ptrtoint ptr %client26.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %client26.i, align 4
  %35 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %value.i, align 4
  %conv1.i81 = trunc i32 %36 to i8
  %call.i82 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 32, i8 noundef zeroext %conv1.i81) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool.not.i83 = icmp eq i32 %call.i82, 0
  br i1 %tobool.not.i83, label %sw.bb25.i.maven_set_reg.exit87_crit_edge, label %do.end.i85

sw.bb25.i.maven_set_reg.exit87_crit_edge:         ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit87

do.end.i85:                                       ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 32) #15
  br label %maven_set_reg.exit87

maven_set_reg.exit87:                             ; preds = %do.end.i85, %sw.bb25.i.maven_set_reg.exit87_crit_edge
  %37 = ptrtoint ptr %client26.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client26.i, align 4
  %39 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %value.i, align 4
  %conv1.i74 = trunc i32 %40 to i8
  %call.i75 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %38, i8 noundef zeroext 34, i8 noundef zeroext %conv1.i74) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool.not.i76 = icmp eq i32 %call.i75, 0
  br i1 %tobool.not.i76, label %maven_set_reg.exit87.maven_set_control.exit_crit_edge, label %do.end.i78

maven_set_reg.exit87.maven_set_control.exit_crit_edge: ; preds = %maven_set_reg.exit87
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_control.exit

do.end.i78:                                       ; preds = %maven_set_reg.exit87
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 34) #15
  br label %maven_set_control.exit

sw.bb32.i:                                        ; preds = %if.end14.i
  %client33.i = getelementptr inbounds %struct.maven_data, ptr %md, i32 0, i32 1
  %41 = ptrtoint ptr %client33.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %client33.i, align 4
  %43 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %value.i, align 4
  %conv1.i67 = trunc i32 %44 to i8
  %call.i68 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext 37, i8 noundef zeroext %conv1.i67) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool.not.i69 = icmp eq i32 %call.i68, 0
  br i1 %tobool.not.i69, label %sw.bb32.i.maven_set_control.exit_crit_edge, label %do.end.i71

sw.bb32.i.maven_set_control.exit_crit_edge:       ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_control.exit

do.end.i71:                                       ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 37) #15
  br label %maven_set_control.exit

sw.bb36.i:                                        ; preds = %if.end14.i
  %45 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %md, align 4
  %gamma.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %46, i32 0, i32 13, i32 1, i32 4
  %47 = ptrtoint ptr %gamma.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %gamma.i.i, align 4
  %add.ptr.i137.i = getelementptr %struct.maven_gamma, ptr @maven_gamma, i32 %48
  %client38.i = getelementptr inbounds %struct.maven_data, ptr %md, i32 0, i32 1
  %49 = ptrtoint ptr %client38.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %client38.i, align 4
  %51 = ptrtoint ptr %add.ptr.i137.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %add.ptr.i137.i, align 1
  %call.i61 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %50, i8 noundef zeroext -125, i8 noundef zeroext %52) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool.not.i62 = icmp eq i32 %call.i61, 0
  br i1 %tobool.not.i62, label %sw.bb36.i.maven_set_reg.exit66_crit_edge, label %do.end.i64

sw.bb36.i.maven_set_reg.exit66_crit_edge:         ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit66

do.end.i64:                                       ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 131) #15
  br label %maven_set_reg.exit66

maven_set_reg.exit66:                             ; preds = %do.end.i64, %sw.bb36.i.maven_set_reg.exit66_crit_edge
  %53 = ptrtoint ptr %client38.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client38.i, align 4
  %reg84.i = getelementptr %struct.maven_gamma, ptr @maven_gamma, i32 %48, i32 1
  %55 = ptrtoint ptr %reg84.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %reg84.i, align 1
  %call.i55 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %54, i8 noundef zeroext -124, i8 noundef zeroext %56) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i56 = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i56, label %maven_set_reg.exit66.maven_set_reg.exit60_crit_edge, label %do.end.i58

maven_set_reg.exit66.maven_set_reg.exit60_crit_edge: ; preds = %maven_set_reg.exit66
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit60

do.end.i58:                                       ; preds = %maven_set_reg.exit66
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 132) #15
  br label %maven_set_reg.exit60

maven_set_reg.exit60:                             ; preds = %do.end.i58, %maven_set_reg.exit66.maven_set_reg.exit60_crit_edge
  %57 = ptrtoint ptr %client38.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %client38.i, align 4
  %reg85.i = getelementptr %struct.maven_gamma, ptr @maven_gamma, i32 %48, i32 2
  %59 = ptrtoint ptr %reg85.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %reg85.i, align 1
  %call.i49 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %58, i8 noundef zeroext -123, i8 noundef zeroext %60) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool.not.i50 = icmp eq i32 %call.i49, 0
  br i1 %tobool.not.i50, label %maven_set_reg.exit60.maven_set_reg.exit54_crit_edge, label %do.end.i52

maven_set_reg.exit60.maven_set_reg.exit54_crit_edge: ; preds = %maven_set_reg.exit60
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit54

do.end.i52:                                       ; preds = %maven_set_reg.exit60
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 133) #15
  br label %maven_set_reg.exit54

maven_set_reg.exit54:                             ; preds = %do.end.i52, %maven_set_reg.exit60.maven_set_reg.exit54_crit_edge
  %61 = ptrtoint ptr %client38.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %client38.i, align 4
  %reg86.i = getelementptr %struct.maven_gamma, ptr @maven_gamma, i32 %48, i32 3
  %63 = ptrtoint ptr %reg86.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %reg86.i, align 1
  %call.i43 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %62, i8 noundef zeroext -122, i8 noundef zeroext %64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool.not.i44 = icmp eq i32 %call.i43, 0
  br i1 %tobool.not.i44, label %maven_set_reg.exit54.maven_set_reg.exit48_crit_edge, label %do.end.i46

maven_set_reg.exit54.maven_set_reg.exit48_crit_edge: ; preds = %maven_set_reg.exit54
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit48

do.end.i46:                                       ; preds = %maven_set_reg.exit54
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 134) #15
  br label %maven_set_reg.exit48

maven_set_reg.exit48:                             ; preds = %do.end.i46, %maven_set_reg.exit54.maven_set_reg.exit48_crit_edge
  %65 = ptrtoint ptr %client38.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %client38.i, align 4
  %reg87.i = getelementptr %struct.maven_gamma, ptr @maven_gamma, i32 %48, i32 4
  %67 = ptrtoint ptr %reg87.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %reg87.i, align 1
  %call.i37 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %66, i8 noundef zeroext -121, i8 noundef zeroext %68) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool.not.i38 = icmp eq i32 %call.i37, 0
  br i1 %tobool.not.i38, label %maven_set_reg.exit48.maven_set_reg.exit42_crit_edge, label %do.end.i40

maven_set_reg.exit48.maven_set_reg.exit42_crit_edge: ; preds = %maven_set_reg.exit48
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit42

do.end.i40:                                       ; preds = %maven_set_reg.exit48
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 135) #15
  br label %maven_set_reg.exit42

maven_set_reg.exit42:                             ; preds = %do.end.i40, %maven_set_reg.exit48.maven_set_reg.exit42_crit_edge
  %69 = ptrtoint ptr %client38.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %client38.i, align 4
  %reg88.i = getelementptr %struct.maven_gamma, ptr @maven_gamma, i32 %48, i32 5
  %71 = ptrtoint ptr %reg88.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %reg88.i, align 1
  %call.i31 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %70, i8 noundef zeroext -120, i8 noundef zeroext %72) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool.not.i32 = icmp eq i32 %call.i31, 0
  br i1 %tobool.not.i32, label %maven_set_reg.exit42.maven_set_reg.exit36_crit_edge, label %do.end.i34

maven_set_reg.exit42.maven_set_reg.exit36_crit_edge: ; preds = %maven_set_reg.exit42
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit36

do.end.i34:                                       ; preds = %maven_set_reg.exit42
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 136) #15
  br label %maven_set_reg.exit36

maven_set_reg.exit36:                             ; preds = %do.end.i34, %maven_set_reg.exit42.maven_set_reg.exit36_crit_edge
  %73 = ptrtoint ptr %client38.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %client38.i, align 4
  %reg89.i = getelementptr %struct.maven_gamma, ptr @maven_gamma, i32 %48, i32 6
  %75 = ptrtoint ptr %reg89.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %reg89.i, align 1
  %call.i25 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %74, i8 noundef zeroext -119, i8 noundef zeroext %76) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.not.i26 = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i26, label %maven_set_reg.exit36.maven_set_reg.exit30_crit_edge, label %do.end.i28

maven_set_reg.exit36.maven_set_reg.exit30_crit_edge: ; preds = %maven_set_reg.exit36
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit30

do.end.i28:                                       ; preds = %maven_set_reg.exit36
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 137) #15
  br label %maven_set_reg.exit30

maven_set_reg.exit30:                             ; preds = %do.end.i28, %maven_set_reg.exit36.maven_set_reg.exit30_crit_edge
  %77 = ptrtoint ptr %client38.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %client38.i, align 4
  %reg8a.i = getelementptr %struct.maven_gamma, ptr @maven_gamma, i32 %48, i32 7
  %79 = ptrtoint ptr %reg8a.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %reg8a.i, align 1
  %call.i19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %78, i8 noundef zeroext -118, i8 noundef zeroext %80) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not.i20 = icmp eq i32 %call.i19, 0
  br i1 %tobool.not.i20, label %maven_set_reg.exit30.maven_set_reg.exit24_crit_edge, label %do.end.i22

maven_set_reg.exit30.maven_set_reg.exit24_crit_edge: ; preds = %maven_set_reg.exit30
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit24

do.end.i22:                                       ; preds = %maven_set_reg.exit30
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 138) #15
  br label %maven_set_reg.exit24

maven_set_reg.exit24:                             ; preds = %do.end.i22, %maven_set_reg.exit30.maven_set_reg.exit24_crit_edge
  %81 = ptrtoint ptr %client38.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %client38.i, align 4
  %reg8b.i = getelementptr %struct.maven_gamma, ptr @maven_gamma, i32 %48, i32 8
  %83 = ptrtoint ptr %reg8b.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %reg8b.i, align 1
  %call.i13 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %82, i8 noundef zeroext -117, i8 noundef zeroext %84) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool.not.i14 = icmp eq i32 %call.i13, 0
  br i1 %tobool.not.i14, label %maven_set_reg.exit24.maven_set_control.exit_crit_edge, label %do.end.i16

maven_set_reg.exit24.maven_set_control.exit_crit_edge: ; preds = %maven_set_reg.exit24
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_control.exit

do.end.i16:                                       ; preds = %maven_set_reg.exit24
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 139) #15
  br label %maven_set_control.exit

sw.bb64.i:                                        ; preds = %if.end14.i
  %client65.i = getelementptr inbounds %struct.maven_data, ptr %md, i32 0, i32 1
  %85 = ptrtoint ptr %client65.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %client65.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %87 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -115, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dst.i) #11
  %88 = ptrtoint ptr %dst.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -1, ptr %dst.i, align 1, !annotation !65
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #11
  %89 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %90 = call ptr @memset(ptr %89, i32 255, i32 16)
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %86, i32 0, i32 1
  %91 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %addr1.i, align 2
  %93 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %94 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 8192, ptr %flags.i, align 2
  %95 = ptrtoint ptr %89 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 1, ptr %89, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %96 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %97 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %92, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %98 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 16385, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %99 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 1, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %100 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %dst.i, ptr %buf6.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %86, i32 0, i32 3
  %101 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %adapter.i, align 8
  %call.i9 = call i32 @i2c_transfer(ptr noundef %102, ptr noundef nonnull %msgs.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %cmp.i = icmp slt i32 %call.i9, 0
  br i1 %cmp.i, label %do.end.i11, label %sw.bb64.i.maven_get_reg.exit_crit_edge

sw.bb64.i.maven_get_reg.exit_crit_edge:           ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_get_reg.exit

do.end.i11:                                       ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %reg.addr.i, align 1
  %conv.i10 = zext i8 %104 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv.i10) #15
  br label %maven_get_reg.exit

maven_get_reg.exit:                               ; preds = %do.end.i11, %sw.bb64.i.maven_get_reg.exit_crit_edge
  %105 = ptrtoint ptr %dst.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %dst.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dst.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %107 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not.i = icmp eq i32 %108, 0
  %109 = and i8 %106, -17
  %masksel = select i1 %tobool.not.i, i8 0, i8 16
  %val.0.i = or i8 %masksel, %109
  %110 = ptrtoint ptr %client65.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %client65.i, align 4
  %call.i3 = call i32 @i2c_smbus_write_byte_data(ptr noundef %111, i8 noundef zeroext -115, i8 noundef zeroext %val.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool.not.i4 = icmp eq i32 %call.i3, 0
  br i1 %tobool.not.i4, label %maven_get_reg.exit.maven_set_control.exit_crit_edge, label %do.end.i6

maven_get_reg.exit.maven_set_control.exit_crit_edge: ; preds = %maven_get_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_control.exit

do.end.i6:                                        ; preds = %maven_get_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 141) #15
  br label %maven_set_control.exit

sw.bb80.i:                                        ; preds = %if.end14.i
  %client81.i = getelementptr inbounds %struct.maven_data, ptr %md, i32 0, i32 1
  %112 = ptrtoint ptr %client81.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %client81.i, align 4
  %version.i.i = getelementptr inbounds %struct.maven_data, ptr %md, i32 0, i32 2
  %114 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %115)
  %cmp.i.i = icmp eq i32 %115, 1
  %conv.i.i = select i1 %cmp.i.i, i8 64, i8 0
  %116 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %md, align 4
  %deflicker.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %117, i32 0, i32 13, i32 1, i32 6
  %118 = ptrtoint ptr %deflicker.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %deflicker.i.i, align 4
  %120 = zext i32 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %119, label %sw.bb80.i.maven_compute_deflicker.exit.i_crit_edge [
    i32 2, label %sw.bb3.i.i
    i32 1, label %sw.bb.i.i
  ]

sw.bb80.i.maven_compute_deflicker.exit.i_crit_edge: ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_compute_deflicker.exit.i

sw.bb.i.i:                                        ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #13
  %121 = or i8 %conv.i.i, -79
  br label %maven_compute_deflicker.exit.i

sw.bb3.i.i:                                       ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #13
  %122 = or i8 %conv.i.i, -94
  br label %maven_compute_deflicker.exit.i

maven_compute_deflicker.exit.i:                   ; preds = %sw.bb3.i.i, %sw.bb.i.i, %sw.bb80.i.maven_compute_deflicker.exit.i_crit_edge
  %df.0.i.i = phi i8 [ %conv.i.i, %sw.bb80.i.maven_compute_deflicker.exit.i_crit_edge ], [ %121, %sw.bb.i.i ], [ %122, %sw.bb3.i.i ]
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %113, i8 noundef zeroext -109, i8 noundef zeroext %df.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i1 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i1, label %maven_compute_deflicker.exit.i.maven_set_control.exit_crit_edge, label %do.end.i

maven_compute_deflicker.exit.i.maven_set_control.exit_crit_edge: ; preds = %maven_compute_deflicker.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_control.exit

do.end.i:                                         ; preds = %maven_compute_deflicker.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 147) #15
  br label %maven_set_control.exit

maven_set_control.exit:                           ; preds = %do.end.i, %maven_compute_deflicker.exit.i.maven_set_control.exit_crit_edge, %do.end.i6, %maven_get_reg.exit.maven_set_control.exit_crit_edge, %do.end.i16, %maven_set_reg.exit24.maven_set_control.exit_crit_edge, %do.end.i71, %sw.bb32.i.maven_set_control.exit_crit_edge, %do.end.i78, %maven_set_reg.exit87.maven_set_control.exit_crit_edge, %do.end.i135.i, %maven_set_reg_pair.exit.i.maven_set_control.exit_crit_edge, %if.end14.i.maven_set_control.exit_crit_edge, %if.end8.i.maven_set_control.exit_crit_edge, %if.end4.i.maven_set_control.exit_crit_edge, %if.end.i.maven_set_control.exit_crit_edge, %if.end7.5.i.i.maven_set_control.exit_crit_edge, %for.inc.4.i.i.maven_set_control.exit_crit_edge, %for.inc.3.i.i.maven_set_control.exit_crit_edge, %entry.maven_set_control.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i.maven_set_control.exit_crit_edge ], [ -22, %if.end4.i.maven_set_control.exit_crit_edge ], [ -22, %if.end8.i.maven_set_control.exit_crit_edge ], [ 0, %if.end14.i.maven_set_control.exit_crit_edge ], [ 0, %maven_set_reg_pair.exit.i.maven_set_control.exit_crit_edge ], [ 0, %do.end.i135.i ], [ -22, %for.inc.4.i.i.maven_set_control.exit_crit_edge ], [ -22, %for.inc.3.i.i.maven_set_control.exit_crit_edge ], [ -22, %entry.maven_set_control.exit_crit_edge ], [ -22, %if.end7.5.i.i.maven_set_control.exit_crit_edge ], [ 0, %maven_set_reg.exit87.maven_set_control.exit_crit_edge ], [ 0, %do.end.i78 ], [ 0, %sw.bb32.i.maven_set_control.exit_crit_edge ], [ 0, %do.end.i71 ], [ 0, %maven_set_reg.exit24.maven_set_control.exit_crit_edge ], [ 0, %do.end.i16 ], [ 0, %maven_get_reg.exit.maven_set_control.exit_crit_edge ], [ 0, %do.end.i6 ], [ 0, %maven_compute_deflicker.exit.i.maven_set_control.exit_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matroxfb_PLL_calcclock(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @maven_init_TV(ptr noundef %c, ptr noundef readonly %m) unnamed_addr #2 align 64 {
entry:
  %reg.addr.i1899 = alloca i8, align 1
  %dst.i1900 = alloca i8, align 1
  %msgs.i1901 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i1730 = alloca i8, align 1
  %dst.i1731 = alloca i8, align 1
  %msgs.i1732 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i1607 = alloca i8, align 1
  %dst.i1608 = alloca i8, align 1
  %msgs.i1609 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i1480 = alloca i8, align 1
  %dst.i1481 = alloca i8, align 1
  %msgs.i1482 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i1436 = alloca i8, align 1
  %dst.i1437 = alloca i8, align 1
  %msgs.i1438 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i1412 = alloca i8, align 1
  %dst.i1413 = alloca i8, align 1
  %msgs.i1414 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i1388 = alloca i8, align 1
  %dst.i1389 = alloca i8, align 1
  %msgs.i1390 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i1364 = alloca i8, align 1
  %dst.i1365 = alloca i8, align 1
  %msgs.i1366 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i1072 = alloca i8, align 1
  %dst.i1073 = alloca i8, align 1
  %msgs.i1074 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i1039 = alloca i8, align 1
  %dst.i1040 = alloca i8, align 1
  %msgs.i1041 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %dst.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 62, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.maven_set_reg.exit_crit_edge, label %do.end.i

entry.maven_set_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 62) #15
  br label %maven_set_reg.exit

maven_set_reg.exit:                               ; preds = %do.end.i, %entry.maven_set_reg.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %0 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -126, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dst.i) #11
  %1 = ptrtoint ptr %dst.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %dst.i, align 1, !annotation !65
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #11
  %2 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 1
  %4 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr1.i, align 2
  %6 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 8192, ptr %flags.i, align 2
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %2, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %10 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %5, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %11 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 16385, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %12 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %13 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dst.i, ptr %buf6.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 3
  %14 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i, align 8
  %call.i1032 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msgs.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1032)
  %cmp.i = icmp slt i32 %call.i1032, 0
  br i1 %cmp.i, label %do.end.i1033, label %maven_set_reg.exit.maven_get_reg.exit_crit_edge

maven_set_reg.exit.maven_get_reg.exit_crit_edge:  ; preds = %maven_set_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_get_reg.exit

do.end.i1033:                                     ; preds = %maven_set_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg.addr.i, align 1
  %conv.i = zext i8 %17 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv.i) #15
  br label %maven_get_reg.exit

maven_get_reg.exit:                               ; preds = %do.end.i1033, %maven_set_reg.exit.maven_get_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dst.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %call.i1034 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -116, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1034)
  %tobool.not.i1035 = icmp eq i32 %call.i1034, 0
  br i1 %tobool.not.i1035, label %maven_get_reg.exit.maven_set_reg.exit1038_crit_edge, label %do.end.i1037

maven_get_reg.exit.maven_set_reg.exit1038_crit_edge: ; preds = %maven_get_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1038

do.end.i1037:                                     ; preds = %maven_get_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1036 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 140) #15
  br label %maven_set_reg.exit1038

maven_set_reg.exit1038:                           ; preds = %do.end.i1037, %maven_get_reg.exit.maven_set_reg.exit1038_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i1039)
  %18 = ptrtoint ptr %reg.addr.i1039 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -108, ptr %reg.addr.i1039, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dst.i1040) #11
  %19 = ptrtoint ptr %dst.i1040 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %dst.i1040, align 1, !annotation !65
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i1041) #11
  %20 = getelementptr inbounds i8, ptr %msgs.i1041, i32 4
  %21 = call ptr @memset(ptr %20, i32 255, i32 16)
  %22 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addr1.i, align 2
  %24 = ptrtoint ptr %msgs.i1041 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %msgs.i1041, align 4
  %flags.i1043 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1041, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i1043 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 8192, ptr %flags.i1043, align 2
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %20, align 4
  %buf.i1045 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1041, i32 0, i32 3
  %27 = ptrtoint ptr %buf.i1045 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %reg.addr.i1039, ptr %buf.i1045, align 4
  %arrayinit.element.i1046 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1041, i32 1
  %28 = ptrtoint ptr %arrayinit.element.i1046 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %23, ptr %arrayinit.element.i1046, align 4
  %flags4.i1047 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1041, i32 1, i32 1
  %29 = ptrtoint ptr %flags4.i1047 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 16385, ptr %flags4.i1047, align 2
  %len5.i1048 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1041, i32 1, i32 2
  %30 = ptrtoint ptr %len5.i1048 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %len5.i1048, align 4
  %buf6.i1049 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1041, i32 1, i32 3
  %31 = ptrtoint ptr %buf6.i1049 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dst.i1040, ptr %buf6.i1049, align 4
  %32 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter.i, align 8
  %call.i1051 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %msgs.i1041, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1051)
  %cmp.i1052 = icmp slt i32 %call.i1051, 0
  br i1 %cmp.i1052, label %do.end.i1055, label %maven_set_reg.exit1038.maven_get_reg.exit1057_crit_edge

maven_set_reg.exit1038.maven_get_reg.exit1057_crit_edge: ; preds = %maven_set_reg.exit1038
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_get_reg.exit1057

do.end.i1055:                                     ; preds = %maven_set_reg.exit1038
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %reg.addr.i1039 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %reg.addr.i1039, align 1
  %conv.i1053 = zext i8 %35 to i32
  %call7.i1054 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv.i1053) #15
  br label %maven_get_reg.exit1057

maven_get_reg.exit1057:                           ; preds = %do.end.i1055, %maven_set_reg.exit1038.maven_get_reg.exit1057_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i1041) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dst.i1040) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i1039)
  %call.i1058 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -108, i8 noundef zeroext -94) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1058)
  %tobool.not.i1059 = icmp eq i32 %call.i1058, 0
  br i1 %tobool.not.i1059, label %maven_get_reg.exit1057.maven_set_reg.exit1062_crit_edge, label %do.end.i1061

maven_get_reg.exit1057.maven_set_reg.exit1062_crit_edge: ; preds = %maven_get_reg.exit1057
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1062

do.end.i1061:                                     ; preds = %maven_get_reg.exit1057
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1060 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 148) #15
  br label %maven_set_reg.exit1062

maven_set_reg.exit1062:                           ; preds = %do.end.i1061, %maven_get_reg.exit1057.maven_set_reg.exit1062_crit_edge
  %call.i1063 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext -114, i16 noundef zeroext 7935) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1063)
  %tobool.not.i1064 = icmp eq i32 %call.i1063, 0
  br i1 %tobool.not.i1064, label %maven_set_reg.exit1062.maven_set_reg_pair.exit_crit_edge, label %do.end.i1066

maven_set_reg.exit1062.maven_set_reg_pair.exit_crit_edge: ; preds = %maven_set_reg.exit1062
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit

do.end.i1066:                                     ; preds = %maven_set_reg.exit1062
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1065 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 142) #15
  br label %maven_set_reg_pair.exit

maven_set_reg_pair.exit:                          ; preds = %do.end.i1066, %maven_set_reg.exit1062.maven_set_reg_pair.exit_crit_edge
  %call.i1067 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -58, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1067)
  %tobool.not.i1068 = icmp eq i32 %call.i1067, 0
  br i1 %tobool.not.i1068, label %maven_set_reg_pair.exit.maven_set_reg.exit1071_crit_edge, label %do.end.i1070

maven_set_reg_pair.exit.maven_set_reg.exit1071_crit_edge: ; preds = %maven_set_reg_pair.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1071

do.end.i1070:                                     ; preds = %maven_set_reg_pair.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1069 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 198) #15
  br label %maven_set_reg.exit1071

maven_set_reg.exit1071:                           ; preds = %do.end.i1070, %maven_set_reg_pair.exit.maven_set_reg.exit1071_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i1072)
  %36 = ptrtoint ptr %reg.addr.i1072 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 6, ptr %reg.addr.i1072, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dst.i1073) #11
  %37 = ptrtoint ptr %dst.i1073 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %dst.i1073, align 1, !annotation !65
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i1074) #11
  %38 = getelementptr inbounds i8, ptr %msgs.i1074, i32 4
  %39 = call ptr @memset(ptr %38, i32 255, i32 16)
  %40 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %addr1.i, align 2
  %42 = ptrtoint ptr %msgs.i1074 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %msgs.i1074, align 4
  %flags.i1076 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1074, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i1076 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 8192, ptr %flags.i1076, align 2
  %44 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %38, align 4
  %buf.i1078 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1074, i32 0, i32 3
  %45 = ptrtoint ptr %buf.i1078 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %reg.addr.i1072, ptr %buf.i1078, align 4
  %arrayinit.element.i1079 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1074, i32 1
  %46 = ptrtoint ptr %arrayinit.element.i1079 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %41, ptr %arrayinit.element.i1079, align 4
  %flags4.i1080 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1074, i32 1, i32 1
  %47 = ptrtoint ptr %flags4.i1080 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 16385, ptr %flags4.i1080, align 2
  %len5.i1081 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1074, i32 1, i32 2
  %48 = ptrtoint ptr %len5.i1081 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 1, ptr %len5.i1081, align 4
  %buf6.i1082 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1074, i32 1, i32 3
  %49 = ptrtoint ptr %buf6.i1082 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %dst.i1073, ptr %buf6.i1082, align 4
  %50 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adapter.i, align 8
  %call.i1084 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msgs.i1074, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1084)
  %cmp.i1085 = icmp slt i32 %call.i1084, 0
  br i1 %cmp.i1085, label %do.end.i1088, label %maven_set_reg.exit1071.maven_get_reg.exit1090_crit_edge

maven_set_reg.exit1071.maven_get_reg.exit1090_crit_edge: ; preds = %maven_set_reg.exit1071
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_get_reg.exit1090

do.end.i1088:                                     ; preds = %maven_set_reg.exit1071
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %reg.addr.i1072 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %reg.addr.i1072, align 1
  %conv.i1086 = zext i8 %53 to i32
  %call7.i1087 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv.i1086) #15
  br label %maven_get_reg.exit1090

maven_get_reg.exit1090:                           ; preds = %do.end.i1088, %maven_set_reg.exit1071.maven_get_reg.exit1090_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i1074) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dst.i1073) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i1072)
  %call.i1091 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 6, i8 noundef zeroext -7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1091)
  %tobool.not.i1092 = icmp eq i32 %call.i1091, 0
  br i1 %tobool.not.i1092, label %maven_get_reg.exit1090.maven_set_reg.exit1095_crit_edge, label %do.end.i1094

maven_get_reg.exit1090.maven_set_reg.exit1095_crit_edge: ; preds = %maven_get_reg.exit1090
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1095

do.end.i1094:                                     ; preds = %maven_get_reg.exit1090
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1093 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 6) #15
  br label %maven_set_reg.exit1095

maven_set_reg.exit1095:                           ; preds = %do.end.i1094, %maven_get_reg.exit1090.maven_set_reg.exit1095_crit_edge
  %54 = ptrtoint ptr %m to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %m, align 4
  %call.i1096 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 0, i8 noundef zeroext %55) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1096)
  %tobool.not.i1097 = icmp eq i32 %call.i1096, 0
  br i1 %tobool.not.i1097, label %maven_set_reg.exit1095.maven_set_reg.exit1100_crit_edge, label %do.end.i1099

maven_set_reg.exit1095.maven_set_reg.exit1100_crit_edge: ; preds = %maven_set_reg.exit1095
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1100

do.end.i1099:                                     ; preds = %maven_set_reg.exit1095
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1098 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 0) #15
  br label %maven_set_reg.exit1100

maven_set_reg.exit1100:                           ; preds = %do.end.i1099, %maven_set_reg.exit1095.maven_set_reg.exit1100_crit_edge
  %arrayidx11 = getelementptr [256 x i8], ptr %m, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx11, align 1
  %call.i1101 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 1, i8 noundef zeroext %57) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1101)
  %tobool.not.i1102 = icmp eq i32 %call.i1101, 0
  br i1 %tobool.not.i1102, label %maven_set_reg.exit1100.maven_set_reg.exit1105_crit_edge, label %do.end.i1104

maven_set_reg.exit1100.maven_set_reg.exit1105_crit_edge: ; preds = %maven_set_reg.exit1100
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1105

do.end.i1104:                                     ; preds = %maven_set_reg.exit1100
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 1) #15
  br label %maven_set_reg.exit1105

maven_set_reg.exit1105:                           ; preds = %do.end.i1104, %maven_set_reg.exit1100.maven_set_reg.exit1105_crit_edge
  %arrayidx15 = getelementptr [256 x i8], ptr %m, i32 0, i32 2
  %58 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx15, align 2
  %call.i1106 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 2, i8 noundef zeroext %59) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1106)
  %tobool.not.i1107 = icmp eq i32 %call.i1106, 0
  br i1 %tobool.not.i1107, label %maven_set_reg.exit1105.maven_set_reg.exit1110_crit_edge, label %do.end.i1109

maven_set_reg.exit1105.maven_set_reg.exit1110_crit_edge: ; preds = %maven_set_reg.exit1105
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1110

do.end.i1109:                                     ; preds = %maven_set_reg.exit1105
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 2) #15
  br label %maven_set_reg.exit1110

maven_set_reg.exit1110:                           ; preds = %do.end.i1109, %maven_set_reg.exit1105.maven_set_reg.exit1110_crit_edge
  %arrayidx19 = getelementptr [256 x i8], ptr %m, i32 0, i32 3
  %60 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx19, align 1
  %call.i1111 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 3, i8 noundef zeroext %61) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1111)
  %tobool.not.i1112 = icmp eq i32 %call.i1111, 0
  br i1 %tobool.not.i1112, label %maven_set_reg.exit1110.maven_set_reg.exit1115_crit_edge, label %do.end.i1114

maven_set_reg.exit1110.maven_set_reg.exit1115_crit_edge: ; preds = %maven_set_reg.exit1110
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1115

do.end.i1114:                                     ; preds = %maven_set_reg.exit1110
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 3) #15
  br label %maven_set_reg.exit1115

maven_set_reg.exit1115:                           ; preds = %do.end.i1114, %maven_set_reg.exit1110.maven_set_reg.exit1115_crit_edge
  %arrayidx23 = getelementptr [256 x i8], ptr %m, i32 0, i32 4
  %62 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx23, align 4
  %call.i1116 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 4, i8 noundef zeroext %63) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1116)
  %tobool.not.i1117 = icmp eq i32 %call.i1116, 0
  br i1 %tobool.not.i1117, label %maven_set_reg.exit1115.maven_set_reg.exit1120_crit_edge, label %do.end.i1119

maven_set_reg.exit1115.maven_set_reg.exit1120_crit_edge: ; preds = %maven_set_reg.exit1115
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1120

do.end.i1119:                                     ; preds = %maven_set_reg.exit1115
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 4) #15
  br label %maven_set_reg.exit1120

maven_set_reg.exit1120:                           ; preds = %do.end.i1119, %maven_set_reg.exit1115.maven_set_reg.exit1120_crit_edge
  %arrayidx27 = getelementptr [256 x i8], ptr %m, i32 0, i32 44
  %64 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx27, align 4
  %call.i1121 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 44, i8 noundef zeroext %65) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1121)
  %tobool.not.i1122 = icmp eq i32 %call.i1121, 0
  br i1 %tobool.not.i1122, label %maven_set_reg.exit1120.maven_set_reg.exit1125_crit_edge, label %do.end.i1124

maven_set_reg.exit1120.maven_set_reg.exit1125_crit_edge: ; preds = %maven_set_reg.exit1120
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1125

do.end.i1124:                                     ; preds = %maven_set_reg.exit1120
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 44) #15
  br label %maven_set_reg.exit1125

maven_set_reg.exit1125:                           ; preds = %do.end.i1124, %maven_set_reg.exit1120.maven_set_reg.exit1125_crit_edge
  %arrayidx31 = getelementptr [256 x i8], ptr %m, i32 0, i32 8
  %66 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx31, align 4
  %call.i1126 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 8, i8 noundef zeroext %67) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1126)
  %tobool.not.i1127 = icmp eq i32 %call.i1126, 0
  br i1 %tobool.not.i1127, label %maven_set_reg.exit1125.maven_set_reg.exit1130_crit_edge, label %do.end.i1129

maven_set_reg.exit1125.maven_set_reg.exit1130_crit_edge: ; preds = %maven_set_reg.exit1125
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1130

do.end.i1129:                                     ; preds = %maven_set_reg.exit1125
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 8) #15
  br label %maven_set_reg.exit1130

maven_set_reg.exit1130:                           ; preds = %do.end.i1129, %maven_set_reg.exit1125.maven_set_reg.exit1130_crit_edge
  %arrayidx35 = getelementptr [256 x i8], ptr %m, i32 0, i32 10
  %68 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx35, align 2
  %call.i1131 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 10, i8 noundef zeroext %69) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1131)
  %tobool.not.i1132 = icmp eq i32 %call.i1131, 0
  br i1 %tobool.not.i1132, label %maven_set_reg.exit1130.maven_set_reg.exit1135_crit_edge, label %do.end.i1134

maven_set_reg.exit1130.maven_set_reg.exit1135_crit_edge: ; preds = %maven_set_reg.exit1130
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1135

do.end.i1134:                                     ; preds = %maven_set_reg.exit1130
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 10) #15
  br label %maven_set_reg.exit1135

maven_set_reg.exit1135:                           ; preds = %do.end.i1134, %maven_set_reg.exit1130.maven_set_reg.exit1135_crit_edge
  %arrayidx39 = getelementptr [256 x i8], ptr %m, i32 0, i32 9
  %70 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx39, align 1
  %call.i1136 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 9, i8 noundef zeroext %71) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1136)
  %tobool.not.i1137 = icmp eq i32 %call.i1136, 0
  br i1 %tobool.not.i1137, label %maven_set_reg.exit1135.maven_set_reg.exit1140_crit_edge, label %do.end.i1139

maven_set_reg.exit1135.maven_set_reg.exit1140_crit_edge: ; preds = %maven_set_reg.exit1135
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1140

do.end.i1139:                                     ; preds = %maven_set_reg.exit1135
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 9) #15
  br label %maven_set_reg.exit1140

maven_set_reg.exit1140:                           ; preds = %do.end.i1139, %maven_set_reg.exit1135.maven_set_reg.exit1140_crit_edge
  %arrayidx43 = getelementptr [256 x i8], ptr %m, i32 0, i32 41
  %72 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx43, align 1
  %call.i1141 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 41, i8 noundef zeroext %73) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1141)
  %tobool.not.i1142 = icmp eq i32 %call.i1141, 0
  br i1 %tobool.not.i1142, label %maven_set_reg.exit1140.maven_set_reg.exit1145_crit_edge, label %do.end.i1144

maven_set_reg.exit1140.maven_set_reg.exit1145_crit_edge: ; preds = %maven_set_reg.exit1140
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1145

do.end.i1144:                                     ; preds = %maven_set_reg.exit1140
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 41) #15
  br label %maven_set_reg.exit1145

maven_set_reg.exit1145:                           ; preds = %do.end.i1144, %maven_set_reg.exit1140.maven_set_reg.exit1145_crit_edge
  %arrayidx47 = getelementptr [256 x i8], ptr %m, i32 0, i32 49
  %74 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %75 to i16
  %arrayidx50 = getelementptr [256 x i8], ptr %m, i32 0, i32 50
  %76 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx50, align 2
  %conv51 = zext i8 %77 to i16
  %shl = shl nuw i16 %conv51, 8
  %or = or i16 %shl, %conv48
  %call.i1146 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext 49, i16 noundef zeroext %or) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1146)
  %tobool.not.i1147 = icmp eq i32 %call.i1146, 0
  br i1 %tobool.not.i1147, label %maven_set_reg.exit1145.maven_set_reg_pair.exit1150_crit_edge, label %do.end.i1149

maven_set_reg.exit1145.maven_set_reg_pair.exit1150_crit_edge: ; preds = %maven_set_reg.exit1145
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1150

do.end.i1149:                                     ; preds = %maven_set_reg.exit1145
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 49) #15
  br label %maven_set_reg_pair.exit1150

maven_set_reg_pair.exit1150:                      ; preds = %do.end.i1149, %maven_set_reg.exit1145.maven_set_reg_pair.exit1150_crit_edge
  %arrayidx54 = getelementptr [256 x i8], ptr %m, i32 0, i32 23
  %78 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %79 to i16
  %arrayidx57 = getelementptr [256 x i8], ptr %m, i32 0, i32 24
  %80 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx57, align 4
  %conv58 = zext i8 %81 to i16
  %shl59 = shl nuw i16 %conv58, 8
  %or60 = or i16 %shl59, %conv55
  %call.i1152 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext 23, i16 noundef zeroext %or60) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1152)
  %tobool.not.i1153 = icmp eq i32 %call.i1152, 0
  br i1 %tobool.not.i1153, label %maven_set_reg_pair.exit1150.maven_set_reg_pair.exit1156_crit_edge, label %do.end.i1155

maven_set_reg_pair.exit1150.maven_set_reg_pair.exit1156_crit_edge: ; preds = %maven_set_reg_pair.exit1150
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1156

do.end.i1155:                                     ; preds = %maven_set_reg_pair.exit1150
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 23) #15
  br label %maven_set_reg_pair.exit1156

maven_set_reg_pair.exit1156:                      ; preds = %do.end.i1155, %maven_set_reg_pair.exit1150.maven_set_reg_pair.exit1156_crit_edge
  %arrayidx63 = getelementptr [256 x i8], ptr %m, i32 0, i32 11
  %82 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx63, align 1
  %call.i1157 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 11, i8 noundef zeroext %83) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1157)
  %tobool.not.i1158 = icmp eq i32 %call.i1157, 0
  br i1 %tobool.not.i1158, label %maven_set_reg_pair.exit1156.maven_set_reg.exit1161_crit_edge, label %do.end.i1160

maven_set_reg_pair.exit1156.maven_set_reg.exit1161_crit_edge: ; preds = %maven_set_reg_pair.exit1156
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1161

do.end.i1160:                                     ; preds = %maven_set_reg_pair.exit1156
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 11) #15
  br label %maven_set_reg.exit1161

maven_set_reg.exit1161:                           ; preds = %do.end.i1160, %maven_set_reg_pair.exit1156.maven_set_reg.exit1161_crit_edge
  %arrayidx67 = getelementptr [256 x i8], ptr %m, i32 0, i32 12
  %84 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx67, align 4
  %call.i1162 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 12, i8 noundef zeroext %85) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1162)
  %tobool.not.i1163 = icmp eq i32 %call.i1162, 0
  br i1 %tobool.not.i1163, label %maven_set_reg.exit1161.maven_set_reg.exit1166_crit_edge, label %do.end.i1165

maven_set_reg.exit1161.maven_set_reg.exit1166_crit_edge: ; preds = %maven_set_reg.exit1161
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1166

do.end.i1165:                                     ; preds = %maven_set_reg.exit1161
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 12) #15
  br label %maven_set_reg.exit1166

maven_set_reg.exit1166:                           ; preds = %do.end.i1165, %maven_set_reg.exit1161.maven_set_reg.exit1166_crit_edge
  %mode = getelementptr inbounds %struct.mavenregs, ptr %m, i32 0, i32 1
  %86 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp = icmp eq i32 %87, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %maven_set_reg.exit1166
  %call.i1167 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 53, i8 noundef zeroext 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1167)
  %tobool.not.i1168 = icmp eq i32 %call.i1167, 0
  br i1 %tobool.not.i1168, label %if.then.if.end_crit_edge, label %if.then.if.end.sink.split_crit_edge

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.sink.split

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %maven_set_reg.exit1166
  %call.i1172 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 53, i8 noundef zeroext 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1172)
  %tobool.not.i1173 = icmp eq i32 %call.i1172, 0
  br i1 %tobool.not.i1173, label %if.else.if.end_crit_edge, label %if.else.if.end.sink.split_crit_edge

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.sink.split

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %if.then.if.end.sink.split_crit_edge
  %call2.i1174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 53) #15
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %arrayidx74 = getelementptr [256 x i8], ptr %m, i32 0, i32 16
  %88 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx74, align 4
  %conv75 = zext i8 %89 to i16
  %arrayidx77 = getelementptr [256 x i8], ptr %m, i32 0, i32 17
  %90 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %91 to i16
  %shl79 = shl nuw i16 %conv78, 8
  %or80 = or i16 %shl79, %conv75
  %call.i1178 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext 16, i16 noundef zeroext %or80) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1178)
  %tobool.not.i1179 = icmp eq i32 %call.i1178, 0
  br i1 %tobool.not.i1179, label %if.end.maven_set_reg_pair.exit1182_crit_edge, label %do.end.i1181

if.end.maven_set_reg_pair.exit1182_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1182

do.end.i1181:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1180 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 16) #15
  br label %maven_set_reg_pair.exit1182

maven_set_reg_pair.exit1182:                      ; preds = %do.end.i1181, %if.end.maven_set_reg_pair.exit1182_crit_edge
  %arrayidx83 = getelementptr [256 x i8], ptr %m, i32 0, i32 14
  %92 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx83, align 2
  %conv84 = zext i8 %93 to i16
  %arrayidx86 = getelementptr [256 x i8], ptr %m, i32 0, i32 15
  %94 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx86, align 1
  %conv87 = zext i8 %95 to i16
  %shl88 = shl nuw i16 %conv87, 8
  %or89 = or i16 %shl88, %conv84
  %call.i1184 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext 14, i16 noundef zeroext %or89) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1184)
  %tobool.not.i1185 = icmp eq i32 %call.i1184, 0
  br i1 %tobool.not.i1185, label %maven_set_reg_pair.exit1182.maven_set_reg_pair.exit1188_crit_edge, label %do.end.i1187

maven_set_reg_pair.exit1182.maven_set_reg_pair.exit1188_crit_edge: ; preds = %maven_set_reg_pair.exit1182
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1188

do.end.i1187:                                     ; preds = %maven_set_reg_pair.exit1182
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 14) #15
  br label %maven_set_reg_pair.exit1188

maven_set_reg_pair.exit1188:                      ; preds = %do.end.i1187, %maven_set_reg_pair.exit1182.maven_set_reg_pair.exit1188_crit_edge
  %arrayidx92 = getelementptr [256 x i8], ptr %m, i32 0, i32 30
  %96 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx92, align 2
  %conv93 = zext i8 %97 to i16
  %arrayidx95 = getelementptr [256 x i8], ptr %m, i32 0, i32 31
  %98 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %99 to i16
  %shl97 = shl nuw i16 %conv96, 8
  %or98 = or i16 %shl97, %conv93
  %call.i1190 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext 30, i16 noundef zeroext %or98) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1190)
  %tobool.not.i1191 = icmp eq i32 %call.i1190, 0
  br i1 %tobool.not.i1191, label %maven_set_reg_pair.exit1188.maven_set_reg_pair.exit1194_crit_edge, label %do.end.i1193

maven_set_reg_pair.exit1188.maven_set_reg_pair.exit1194_crit_edge: ; preds = %maven_set_reg_pair.exit1188
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1194

do.end.i1193:                                     ; preds = %maven_set_reg_pair.exit1188
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 30) #15
  br label %maven_set_reg_pair.exit1194

maven_set_reg_pair.exit1194:                      ; preds = %do.end.i1193, %maven_set_reg_pair.exit1188.maven_set_reg_pair.exit1194_crit_edge
  %arrayidx101 = getelementptr [256 x i8], ptr %m, i32 0, i32 32
  %100 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx101, align 4
  %call.i1195 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 32, i8 noundef zeroext %101) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1195)
  %tobool.not.i1196 = icmp eq i32 %call.i1195, 0
  br i1 %tobool.not.i1196, label %maven_set_reg_pair.exit1194.maven_set_reg.exit1199_crit_edge, label %do.end.i1198

maven_set_reg_pair.exit1194.maven_set_reg.exit1199_crit_edge: ; preds = %maven_set_reg_pair.exit1194
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1199

do.end.i1198:                                     ; preds = %maven_set_reg_pair.exit1194
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 32) #15
  br label %maven_set_reg.exit1199

maven_set_reg.exit1199:                           ; preds = %do.end.i1198, %maven_set_reg_pair.exit1194.maven_set_reg.exit1199_crit_edge
  %arrayidx105 = getelementptr [256 x i8], ptr %m, i32 0, i32 34
  %102 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx105, align 2
  %call.i1200 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 34, i8 noundef zeroext %103) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1200)
  %tobool.not.i1201 = icmp eq i32 %call.i1200, 0
  br i1 %tobool.not.i1201, label %maven_set_reg.exit1199.maven_set_reg.exit1204_crit_edge, label %do.end.i1203

maven_set_reg.exit1199.maven_set_reg.exit1204_crit_edge: ; preds = %maven_set_reg.exit1199
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1204

do.end.i1203:                                     ; preds = %maven_set_reg.exit1199
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 34) #15
  br label %maven_set_reg.exit1204

maven_set_reg.exit1204:                           ; preds = %do.end.i1203, %maven_set_reg.exit1199.maven_set_reg.exit1204_crit_edge
  %arrayidx109 = getelementptr [256 x i8], ptr %m, i32 0, i32 37
  %104 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx109, align 1
  %call.i1205 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 37, i8 noundef zeroext %105) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1205)
  %tobool.not.i1206 = icmp eq i32 %call.i1205, 0
  br i1 %tobool.not.i1206, label %maven_set_reg.exit1204.maven_set_reg.exit1209_crit_edge, label %do.end.i1208

maven_set_reg.exit1204.maven_set_reg.exit1209_crit_edge: ; preds = %maven_set_reg.exit1204
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1209

do.end.i1208:                                     ; preds = %maven_set_reg.exit1204
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 37) #15
  br label %maven_set_reg.exit1209

maven_set_reg.exit1209:                           ; preds = %do.end.i1208, %maven_set_reg.exit1204.maven_set_reg.exit1209_crit_edge
  %arrayidx113 = getelementptr [256 x i8], ptr %m, i32 0, i32 52
  %106 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx113, align 4
  %call.i1210 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 52, i8 noundef zeroext %107) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1210)
  %tobool.not.i1211 = icmp eq i32 %call.i1210, 0
  br i1 %tobool.not.i1211, label %maven_set_reg.exit1209.maven_set_reg.exit1214_crit_edge, label %do.end.i1213

maven_set_reg.exit1209.maven_set_reg.exit1214_crit_edge: ; preds = %maven_set_reg.exit1209
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1214

do.end.i1213:                                     ; preds = %maven_set_reg.exit1209
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 52) #15
  br label %maven_set_reg.exit1214

maven_set_reg.exit1214:                           ; preds = %do.end.i1213, %maven_set_reg.exit1209.maven_set_reg.exit1214_crit_edge
  %arrayidx117 = getelementptr [256 x i8], ptr %m, i32 0, i32 51
  %108 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx117, align 1
  %call.i1215 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 51, i8 noundef zeroext %109) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1215)
  %tobool.not.i1216 = icmp eq i32 %call.i1215, 0
  br i1 %tobool.not.i1216, label %maven_set_reg.exit1214.maven_set_reg.exit1219_crit_edge, label %do.end.i1218

maven_set_reg.exit1214.maven_set_reg.exit1219_crit_edge: ; preds = %maven_set_reg.exit1214
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1219

do.end.i1218:                                     ; preds = %maven_set_reg.exit1214
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 51) #15
  br label %maven_set_reg.exit1219

maven_set_reg.exit1219:                           ; preds = %do.end.i1218, %maven_set_reg.exit1214.maven_set_reg.exit1219_crit_edge
  %arrayidx121 = getelementptr [256 x i8], ptr %m, i32 0, i32 25
  %110 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx121, align 1
  %call.i1220 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 25, i8 noundef zeroext %111) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1220)
  %tobool.not.i1221 = icmp eq i32 %call.i1220, 0
  br i1 %tobool.not.i1221, label %maven_set_reg.exit1219.maven_set_reg.exit1224_crit_edge, label %do.end.i1223

maven_set_reg.exit1219.maven_set_reg.exit1224_crit_edge: ; preds = %maven_set_reg.exit1219
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1224

do.end.i1223:                                     ; preds = %maven_set_reg.exit1219
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 25) #15
  br label %maven_set_reg.exit1224

maven_set_reg.exit1224:                           ; preds = %do.end.i1223, %maven_set_reg.exit1219.maven_set_reg.exit1224_crit_edge
  %arrayidx125 = getelementptr [256 x i8], ptr %m, i32 0, i32 18
  %112 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx125, align 2
  %call.i1225 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 18, i8 noundef zeroext %113) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1225)
  %tobool.not.i1226 = icmp eq i32 %call.i1225, 0
  br i1 %tobool.not.i1226, label %maven_set_reg.exit1224.maven_set_reg.exit1229_crit_edge, label %do.end.i1228

maven_set_reg.exit1224.maven_set_reg.exit1229_crit_edge: ; preds = %maven_set_reg.exit1224
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1229

do.end.i1228:                                     ; preds = %maven_set_reg.exit1224
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1227 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 18) #15
  br label %maven_set_reg.exit1229

maven_set_reg.exit1229:                           ; preds = %do.end.i1228, %maven_set_reg.exit1224.maven_set_reg.exit1229_crit_edge
  %arrayidx129 = getelementptr [256 x i8], ptr %m, i32 0, i32 59
  %114 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx129, align 1
  %call.i1230 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 59, i8 noundef zeroext %115) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1230)
  %tobool.not.i1231 = icmp eq i32 %call.i1230, 0
  br i1 %tobool.not.i1231, label %maven_set_reg.exit1229.maven_set_reg.exit1234_crit_edge, label %do.end.i1233

maven_set_reg.exit1229.maven_set_reg.exit1234_crit_edge: ; preds = %maven_set_reg.exit1229
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1234

do.end.i1233:                                     ; preds = %maven_set_reg.exit1229
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 59) #15
  br label %maven_set_reg.exit1234

maven_set_reg.exit1234:                           ; preds = %do.end.i1233, %maven_set_reg.exit1229.maven_set_reg.exit1234_crit_edge
  %arrayidx133 = getelementptr [256 x i8], ptr %m, i32 0, i32 19
  %116 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx133, align 1
  %call.i1235 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 19, i8 noundef zeroext %117) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1235)
  %tobool.not.i1236 = icmp eq i32 %call.i1235, 0
  br i1 %tobool.not.i1236, label %maven_set_reg.exit1234.maven_set_reg.exit1239_crit_edge, label %do.end.i1238

maven_set_reg.exit1234.maven_set_reg.exit1239_crit_edge: ; preds = %maven_set_reg.exit1234
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1239

do.end.i1238:                                     ; preds = %maven_set_reg.exit1234
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 19) #15
  br label %maven_set_reg.exit1239

maven_set_reg.exit1239:                           ; preds = %do.end.i1238, %maven_set_reg.exit1234.maven_set_reg.exit1239_crit_edge
  %arrayidx137 = getelementptr [256 x i8], ptr %m, i32 0, i32 57
  %118 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx137, align 1
  %call.i1240 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 57, i8 noundef zeroext %119) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1240)
  %tobool.not.i1241 = icmp eq i32 %call.i1240, 0
  br i1 %tobool.not.i1241, label %maven_set_reg.exit1239.maven_set_reg.exit1244_crit_edge, label %do.end.i1243

maven_set_reg.exit1239.maven_set_reg.exit1244_crit_edge: ; preds = %maven_set_reg.exit1239
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1244

do.end.i1243:                                     ; preds = %maven_set_reg.exit1239
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1242 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 57) #15
  br label %maven_set_reg.exit1244

maven_set_reg.exit1244:                           ; preds = %do.end.i1243, %maven_set_reg.exit1239.maven_set_reg.exit1244_crit_edge
  %arrayidx141 = getelementptr [256 x i8], ptr %m, i32 0, i32 29
  %120 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx141, align 1
  %call.i1245 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 29, i8 noundef zeroext %121) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1245)
  %tobool.not.i1246 = icmp eq i32 %call.i1245, 0
  br i1 %tobool.not.i1246, label %maven_set_reg.exit1244.maven_set_reg.exit1249_crit_edge, label %do.end.i1248

maven_set_reg.exit1244.maven_set_reg.exit1249_crit_edge: ; preds = %maven_set_reg.exit1244
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1249

do.end.i1248:                                     ; preds = %maven_set_reg.exit1244
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1247 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 29) #15
  br label %maven_set_reg.exit1249

maven_set_reg.exit1249:                           ; preds = %do.end.i1248, %maven_set_reg.exit1244.maven_set_reg.exit1249_crit_edge
  %arrayidx145 = getelementptr [256 x i8], ptr %m, i32 0, i32 58
  %122 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx145, align 2
  %call.i1250 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 58, i8 noundef zeroext %123) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1250)
  %tobool.not.i1251 = icmp eq i32 %call.i1250, 0
  br i1 %tobool.not.i1251, label %maven_set_reg.exit1249.maven_set_reg.exit1254_crit_edge, label %do.end.i1253

maven_set_reg.exit1249.maven_set_reg.exit1254_crit_edge: ; preds = %maven_set_reg.exit1249
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1254

do.end.i1253:                                     ; preds = %maven_set_reg.exit1249
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 58) #15
  br label %maven_set_reg.exit1254

maven_set_reg.exit1254:                           ; preds = %do.end.i1253, %maven_set_reg.exit1249.maven_set_reg.exit1254_crit_edge
  %arrayidx149 = getelementptr [256 x i8], ptr %m, i32 0, i32 36
  %124 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx149, align 4
  %call.i1255 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 36, i8 noundef zeroext %125) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1255)
  %tobool.not.i1256 = icmp eq i32 %call.i1255, 0
  br i1 %tobool.not.i1256, label %maven_set_reg.exit1254.maven_set_reg.exit1259_crit_edge, label %do.end.i1258

maven_set_reg.exit1254.maven_set_reg.exit1259_crit_edge: ; preds = %maven_set_reg.exit1254
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1259

do.end.i1258:                                     ; preds = %maven_set_reg.exit1254
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1257 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 36) #15
  br label %maven_set_reg.exit1259

maven_set_reg.exit1259:                           ; preds = %do.end.i1258, %maven_set_reg.exit1254.maven_set_reg.exit1259_crit_edge
  %arrayidx153 = getelementptr [256 x i8], ptr %m, i32 0, i32 20
  %126 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx153, align 4
  %call.i1260 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 20, i8 noundef zeroext %127) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1260)
  %tobool.not.i1261 = icmp eq i32 %call.i1260, 0
  br i1 %tobool.not.i1261, label %maven_set_reg.exit1259.maven_set_reg.exit1264_crit_edge, label %do.end.i1263

maven_set_reg.exit1259.maven_set_reg.exit1264_crit_edge: ; preds = %maven_set_reg.exit1259
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1264

do.end.i1263:                                     ; preds = %maven_set_reg.exit1259
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1262 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 20) #15
  br label %maven_set_reg.exit1264

maven_set_reg.exit1264:                           ; preds = %do.end.i1263, %maven_set_reg.exit1259.maven_set_reg.exit1264_crit_edge
  %arrayidx157 = getelementptr [256 x i8], ptr %m, i32 0, i32 21
  %128 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx157, align 1
  %call.i1265 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 21, i8 noundef zeroext %129) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1265)
  %tobool.not.i1266 = icmp eq i32 %call.i1265, 0
  br i1 %tobool.not.i1266, label %maven_set_reg.exit1264.maven_set_reg.exit1269_crit_edge, label %do.end.i1268

maven_set_reg.exit1264.maven_set_reg.exit1269_crit_edge: ; preds = %maven_set_reg.exit1264
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1269

do.end.i1268:                                     ; preds = %maven_set_reg.exit1264
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 21) #15
  br label %maven_set_reg.exit1269

maven_set_reg.exit1269:                           ; preds = %do.end.i1268, %maven_set_reg.exit1264.maven_set_reg.exit1269_crit_edge
  %arrayidx161 = getelementptr [256 x i8], ptr %m, i32 0, i32 22
  %130 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx161, align 2
  %call.i1270 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 22, i8 noundef zeroext %131) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1270)
  %tobool.not.i1271 = icmp eq i32 %call.i1270, 0
  br i1 %tobool.not.i1271, label %maven_set_reg.exit1269.maven_set_reg.exit1274_crit_edge, label %do.end.i1273

maven_set_reg.exit1269.maven_set_reg.exit1274_crit_edge: ; preds = %maven_set_reg.exit1269
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1274

do.end.i1273:                                     ; preds = %maven_set_reg.exit1269
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 22) #15
  br label %maven_set_reg.exit1274

maven_set_reg.exit1274:                           ; preds = %do.end.i1273, %maven_set_reg.exit1269.maven_set_reg.exit1274_crit_edge
  %arrayidx165 = getelementptr [256 x i8], ptr %m, i32 0, i32 45
  %132 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %133 to i16
  %arrayidx168 = getelementptr [256 x i8], ptr %m, i32 0, i32 46
  %134 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx168, align 2
  %conv169 = zext i8 %135 to i16
  %shl170 = shl nuw i16 %conv169, 8
  %or171 = or i16 %shl170, %conv166
  %call.i1276 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext 45, i16 noundef zeroext %or171) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1276)
  %tobool.not.i1277 = icmp eq i32 %call.i1276, 0
  br i1 %tobool.not.i1277, label %maven_set_reg.exit1274.maven_set_reg_pair.exit1280_crit_edge, label %do.end.i1279

maven_set_reg.exit1274.maven_set_reg_pair.exit1280_crit_edge: ; preds = %maven_set_reg.exit1274
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1280

do.end.i1279:                                     ; preds = %maven_set_reg.exit1274
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1278 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 45) #15
  br label %maven_set_reg_pair.exit1280

maven_set_reg_pair.exit1280:                      ; preds = %do.end.i1279, %maven_set_reg.exit1274.maven_set_reg_pair.exit1280_crit_edge
  %arrayidx174 = getelementptr [256 x i8], ptr %m, i32 0, i32 47
  %136 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %137 to i16
  %arrayidx177 = getelementptr [256 x i8], ptr %m, i32 0, i32 48
  %138 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx177, align 4
  %conv178 = zext i8 %139 to i16
  %shl179 = shl nuw i16 %conv178, 8
  %or180 = or i16 %shl179, %conv175
  %call.i1282 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext 47, i16 noundef zeroext %or180) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1282)
  %tobool.not.i1283 = icmp eq i32 %call.i1282, 0
  br i1 %tobool.not.i1283, label %maven_set_reg_pair.exit1280.maven_set_reg_pair.exit1286_crit_edge, label %do.end.i1285

maven_set_reg_pair.exit1280.maven_set_reg_pair.exit1286_crit_edge: ; preds = %maven_set_reg_pair.exit1280
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1286

do.end.i1285:                                     ; preds = %maven_set_reg_pair.exit1280
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1284 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 47) #15
  br label %maven_set_reg_pair.exit1286

maven_set_reg_pair.exit1286:                      ; preds = %do.end.i1285, %maven_set_reg_pair.exit1280.maven_set_reg_pair.exit1286_crit_edge
  %arrayidx183 = getelementptr [256 x i8], ptr %m, i32 0, i32 26
  %140 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx183, align 2
  %call.i1287 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 26, i8 noundef zeroext %141) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1287)
  %tobool.not.i1288 = icmp eq i32 %call.i1287, 0
  br i1 %tobool.not.i1288, label %maven_set_reg_pair.exit1286.maven_set_reg.exit1291_crit_edge, label %do.end.i1290

maven_set_reg_pair.exit1286.maven_set_reg.exit1291_crit_edge: ; preds = %maven_set_reg_pair.exit1286
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1291

do.end.i1290:                                     ; preds = %maven_set_reg_pair.exit1286
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1289 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 26) #15
  br label %maven_set_reg.exit1291

maven_set_reg.exit1291:                           ; preds = %do.end.i1290, %maven_set_reg_pair.exit1286.maven_set_reg.exit1291_crit_edge
  %arrayidx187 = getelementptr [256 x i8], ptr %m, i32 0, i32 27
  %142 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx187, align 1
  %call.i1292 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 27, i8 noundef zeroext %143) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1292)
  %tobool.not.i1293 = icmp eq i32 %call.i1292, 0
  br i1 %tobool.not.i1293, label %maven_set_reg.exit1291.maven_set_reg.exit1296_crit_edge, label %do.end.i1295

maven_set_reg.exit1291.maven_set_reg.exit1296_crit_edge: ; preds = %maven_set_reg.exit1291
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1296

do.end.i1295:                                     ; preds = %maven_set_reg.exit1291
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1294 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 27) #15
  br label %maven_set_reg.exit1296

maven_set_reg.exit1296:                           ; preds = %do.end.i1295, %maven_set_reg.exit1291.maven_set_reg.exit1296_crit_edge
  %arrayidx191 = getelementptr [256 x i8], ptr %m, i32 0, i32 28
  %144 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx191, align 4
  %call.i1297 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 28, i8 noundef zeroext %145) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1297)
  %tobool.not.i1298 = icmp eq i32 %call.i1297, 0
  br i1 %tobool.not.i1298, label %maven_set_reg.exit1296.maven_set_reg.exit1301_crit_edge, label %do.end.i1300

maven_set_reg.exit1296.maven_set_reg.exit1301_crit_edge: ; preds = %maven_set_reg.exit1296
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1301

do.end.i1300:                                     ; preds = %maven_set_reg.exit1296
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1299 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 28) #15
  br label %maven_set_reg.exit1301

maven_set_reg.exit1301:                           ; preds = %do.end.i1300, %maven_set_reg.exit1296.maven_set_reg.exit1301_crit_edge
  %arrayidx195 = getelementptr [256 x i8], ptr %m, i32 0, i32 35
  %146 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx195, align 1
  %call.i1302 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 35, i8 noundef zeroext %147) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1302)
  %tobool.not.i1303 = icmp eq i32 %call.i1302, 0
  br i1 %tobool.not.i1303, label %maven_set_reg.exit1301.maven_set_reg.exit1306_crit_edge, label %do.end.i1305

maven_set_reg.exit1301.maven_set_reg.exit1306_crit_edge: ; preds = %maven_set_reg.exit1301
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1306

do.end.i1305:                                     ; preds = %maven_set_reg.exit1301
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1304 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 35) #15
  br label %maven_set_reg.exit1306

maven_set_reg.exit1306:                           ; preds = %do.end.i1305, %maven_set_reg.exit1301.maven_set_reg.exit1306_crit_edge
  %arrayidx199 = getelementptr [256 x i8], ptr %m, i32 0, i32 38
  %148 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx199, align 2
  %call.i1307 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 38, i8 noundef zeroext %149) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1307)
  %tobool.not.i1308 = icmp eq i32 %call.i1307, 0
  br i1 %tobool.not.i1308, label %maven_set_reg.exit1306.maven_set_reg.exit1311_crit_edge, label %do.end.i1310

maven_set_reg.exit1306.maven_set_reg.exit1311_crit_edge: ; preds = %maven_set_reg.exit1306
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1311

do.end.i1310:                                     ; preds = %maven_set_reg.exit1306
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1309 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 38) #15
  br label %maven_set_reg.exit1311

maven_set_reg.exit1311:                           ; preds = %do.end.i1310, %maven_set_reg.exit1306.maven_set_reg.exit1311_crit_edge
  %arrayidx203 = getelementptr [256 x i8], ptr %m, i32 0, i32 40
  %150 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx203, align 4
  %call.i1312 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 40, i8 noundef zeroext %151) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1312)
  %tobool.not.i1313 = icmp eq i32 %call.i1312, 0
  br i1 %tobool.not.i1313, label %maven_set_reg.exit1311.maven_set_reg.exit1316_crit_edge, label %do.end.i1315

maven_set_reg.exit1311.maven_set_reg.exit1316_crit_edge: ; preds = %maven_set_reg.exit1311
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1316

do.end.i1315:                                     ; preds = %maven_set_reg.exit1311
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1314 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 40) #15
  br label %maven_set_reg.exit1316

maven_set_reg.exit1316:                           ; preds = %do.end.i1315, %maven_set_reg.exit1311.maven_set_reg.exit1316_crit_edge
  %arrayidx207 = getelementptr [256 x i8], ptr %m, i32 0, i32 39
  %152 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx207, align 1
  %call.i1317 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 39, i8 noundef zeroext %153) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1317)
  %tobool.not.i1318 = icmp eq i32 %call.i1317, 0
  br i1 %tobool.not.i1318, label %maven_set_reg.exit1316.maven_set_reg.exit1321_crit_edge, label %do.end.i1320

maven_set_reg.exit1316.maven_set_reg.exit1321_crit_edge: ; preds = %maven_set_reg.exit1316
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1321

do.end.i1320:                                     ; preds = %maven_set_reg.exit1316
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1319 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 39) #15
  br label %maven_set_reg.exit1321

maven_set_reg.exit1321:                           ; preds = %do.end.i1320, %maven_set_reg.exit1316.maven_set_reg.exit1321_crit_edge
  %arrayidx211 = getelementptr [256 x i8], ptr %m, i32 0, i32 33
  %154 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx211, align 1
  %call.i1322 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 33, i8 noundef zeroext %155) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1322)
  %tobool.not.i1323 = icmp eq i32 %call.i1322, 0
  br i1 %tobool.not.i1323, label %maven_set_reg.exit1321.maven_set_reg.exit1326_crit_edge, label %do.end.i1325

maven_set_reg.exit1321.maven_set_reg.exit1326_crit_edge: ; preds = %maven_set_reg.exit1321
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1326

do.end.i1325:                                     ; preds = %maven_set_reg.exit1321
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1324 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 33) #15
  br label %maven_set_reg.exit1326

maven_set_reg.exit1326:                           ; preds = %do.end.i1325, %maven_set_reg.exit1321.maven_set_reg.exit1326_crit_edge
  %arrayidx215 = getelementptr [256 x i8], ptr %m, i32 0, i32 42
  %156 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx215, align 2
  %conv216 = zext i8 %157 to i16
  %arrayidx218 = getelementptr [256 x i8], ptr %m, i32 0, i32 43
  %158 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx218, align 1
  %conv219 = zext i8 %159 to i16
  %shl220 = shl nuw i16 %conv219, 8
  %or221 = or i16 %shl220, %conv216
  %call.i1328 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext 42, i16 noundef zeroext %or221) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1328)
  %tobool.not.i1329 = icmp eq i32 %call.i1328, 0
  br i1 %tobool.not.i1329, label %maven_set_reg.exit1326.maven_set_reg_pair.exit1332_crit_edge, label %do.end.i1331

maven_set_reg.exit1326.maven_set_reg_pair.exit1332_crit_edge: ; preds = %maven_set_reg.exit1326
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1332

do.end.i1331:                                     ; preds = %maven_set_reg.exit1326
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1330 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 42) #15
  br label %maven_set_reg_pair.exit1332

maven_set_reg_pair.exit1332:                      ; preds = %do.end.i1331, %maven_set_reg.exit1326.maven_set_reg_pair.exit1332_crit_edge
  %160 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %161)
  %cmp224 = icmp eq i32 %161, 1
  br i1 %cmp224, label %if.then226, label %if.else228

if.then226:                                       ; preds = %maven_set_reg_pair.exit1332
  %call.i1333 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 53, i8 noundef zeroext 29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1333)
  %tobool.not.i1334 = icmp eq i32 %call.i1333, 0
  br i1 %tobool.not.i1334, label %if.then226.if.end230_crit_edge, label %if.then226.if.end230.sink.split_crit_edge

if.then226.if.end230.sink.split_crit_edge:        ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end230.sink.split

if.then226.if.end230_crit_edge:                   ; preds = %if.then226
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end230

if.else228:                                       ; preds = %maven_set_reg_pair.exit1332
  %call.i1338 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 53, i8 noundef zeroext 28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1338)
  %tobool.not.i1339 = icmp eq i32 %call.i1338, 0
  br i1 %tobool.not.i1339, label %if.else228.if.end230_crit_edge, label %if.else228.if.end230.sink.split_crit_edge

if.else228.if.end230.sink.split_crit_edge:        ; preds = %if.else228
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end230.sink.split

if.else228.if.end230_crit_edge:                   ; preds = %if.else228
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end230

if.end230.sink.split:                             ; preds = %if.else228.if.end230.sink.split_crit_edge, %if.then226.if.end230.sink.split_crit_edge
  %call2.i1340 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 53) #15
  br label %if.end230

if.end230:                                        ; preds = %if.end230.sink.split, %if.else228.if.end230_crit_edge, %if.then226.if.end230_crit_edge
  %arrayidx232 = getelementptr [256 x i8], ptr %m, i32 0, i32 60
  %162 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx232, align 4
  %conv233 = zext i8 %163 to i16
  %arrayidx235 = getelementptr [256 x i8], ptr %m, i32 0, i32 61
  %164 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx235, align 1
  %conv236 = zext i8 %165 to i16
  %shl237 = shl nuw i16 %conv236, 8
  %or238 = or i16 %shl237, %conv233
  %call.i1344 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext 60, i16 noundef zeroext %or238) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1344)
  %tobool.not.i1345 = icmp eq i32 %call.i1344, 0
  br i1 %tobool.not.i1345, label %if.end230.maven_set_reg_pair.exit1348_crit_edge, label %do.end.i1347

if.end230.maven_set_reg_pair.exit1348_crit_edge:  ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1348

do.end.i1347:                                     ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1346 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 60) #15
  br label %maven_set_reg_pair.exit1348

maven_set_reg_pair.exit1348:                      ; preds = %do.end.i1347, %if.end230.maven_set_reg_pair.exit1348_crit_edge
  %arrayidx241 = getelementptr [256 x i8], ptr %m, i32 0, i32 55
  %166 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx241, align 1
  %call.i1349 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 55, i8 noundef zeroext %167) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1349)
  %tobool.not.i1350 = icmp eq i32 %call.i1349, 0
  br i1 %tobool.not.i1350, label %maven_set_reg_pair.exit1348.maven_set_reg.exit1353_crit_edge, label %do.end.i1352

maven_set_reg_pair.exit1348.maven_set_reg.exit1353_crit_edge: ; preds = %maven_set_reg_pair.exit1348
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1353

do.end.i1352:                                     ; preds = %maven_set_reg_pair.exit1348
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1351 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 55) #15
  br label %maven_set_reg.exit1353

maven_set_reg.exit1353:                           ; preds = %do.end.i1352, %maven_set_reg_pair.exit1348.maven_set_reg.exit1353_crit_edge
  %arrayidx245 = getelementptr [256 x i8], ptr %m, i32 0, i32 56
  %168 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx245, align 4
  %call.i1354 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 56, i8 noundef zeroext %169) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1354)
  %tobool.not.i1355 = icmp eq i32 %call.i1354, 0
  br i1 %tobool.not.i1355, label %maven_set_reg.exit1353.maven_set_reg.exit1358_crit_edge, label %do.end.i1357

maven_set_reg.exit1353.maven_set_reg.exit1358_crit_edge: ; preds = %maven_set_reg.exit1353
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1358

do.end.i1357:                                     ; preds = %maven_set_reg.exit1353
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1356 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 56) #15
  br label %maven_set_reg.exit1358

maven_set_reg.exit1358:                           ; preds = %do.end.i1357, %maven_set_reg.exit1353.maven_set_reg.exit1358_crit_edge
  %call.i1359 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -77, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1359)
  %tobool.not.i1360 = icmp eq i32 %call.i1359, 0
  br i1 %tobool.not.i1360, label %maven_set_reg.exit1358.maven_set_reg.exit1363_crit_edge, label %do.end.i1362

maven_set_reg.exit1358.maven_set_reg.exit1363_crit_edge: ; preds = %maven_set_reg.exit1358
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1363

do.end.i1362:                                     ; preds = %maven_set_reg.exit1358
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1361 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 179) #15
  br label %maven_set_reg.exit1363

maven_set_reg.exit1363:                           ; preds = %do.end.i1362, %maven_set_reg.exit1358.maven_set_reg.exit1363_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i1364)
  %170 = ptrtoint ptr %reg.addr.i1364 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 -80, ptr %reg.addr.i1364, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dst.i1365) #11
  %171 = ptrtoint ptr %dst.i1365 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 -1, ptr %dst.i1365, align 1, !annotation !65
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i1366) #11
  %172 = getelementptr inbounds i8, ptr %msgs.i1366, i32 4
  %173 = call ptr @memset(ptr %172, i32 255, i32 16)
  %174 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %addr1.i, align 2
  %176 = ptrtoint ptr %msgs.i1366 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %175, ptr %msgs.i1366, align 4
  %flags.i1368 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1366, i32 0, i32 1
  %177 = ptrtoint ptr %flags.i1368 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 8192, ptr %flags.i1368, align 2
  %178 = ptrtoint ptr %172 to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 1, ptr %172, align 4
  %buf.i1370 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1366, i32 0, i32 3
  %179 = ptrtoint ptr %buf.i1370 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %reg.addr.i1364, ptr %buf.i1370, align 4
  %arrayinit.element.i1371 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1366, i32 1
  %180 = ptrtoint ptr %arrayinit.element.i1371 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %175, ptr %arrayinit.element.i1371, align 4
  %flags4.i1372 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1366, i32 1, i32 1
  %181 = ptrtoint ptr %flags4.i1372 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 16385, ptr %flags4.i1372, align 2
  %len5.i1373 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1366, i32 1, i32 2
  %182 = ptrtoint ptr %len5.i1373 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 1, ptr %len5.i1373, align 4
  %buf6.i1374 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1366, i32 1, i32 3
  %183 = ptrtoint ptr %buf6.i1374 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %dst.i1365, ptr %buf6.i1374, align 4
  %184 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %adapter.i, align 8
  %call.i1376 = call i32 @i2c_transfer(ptr noundef %185, ptr noundef nonnull %msgs.i1366, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1376)
  %cmp.i1377 = icmp slt i32 %call.i1376, 0
  br i1 %cmp.i1377, label %do.end.i1380, label %maven_set_reg.exit1363.maven_get_reg.exit1382_crit_edge

maven_set_reg.exit1363.maven_get_reg.exit1382_crit_edge: ; preds = %maven_set_reg.exit1363
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_get_reg.exit1382

do.end.i1380:                                     ; preds = %maven_set_reg.exit1363
  call void @__sanitizer_cov_trace_pc() #13
  %186 = ptrtoint ptr %reg.addr.i1364 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %reg.addr.i1364, align 1
  %conv.i1378 = zext i8 %187 to i32
  %call7.i1379 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv.i1378) #15
  br label %maven_get_reg.exit1382

maven_get_reg.exit1382:                           ; preds = %do.end.i1380, %maven_set_reg.exit1363.maven_get_reg.exit1382_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i1366) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dst.i1365) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i1364)
  %call.i1383 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -80, i8 noundef zeroext 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1383)
  %tobool.not.i1384 = icmp eq i32 %call.i1383, 0
  br i1 %tobool.not.i1384, label %maven_get_reg.exit1382.maven_set_reg.exit1387_crit_edge, label %do.end.i1386

maven_get_reg.exit1382.maven_set_reg.exit1387_crit_edge: ; preds = %maven_get_reg.exit1382
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1387

do.end.i1386:                                     ; preds = %maven_get_reg.exit1382
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1385 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 176) #15
  br label %maven_set_reg.exit1387

maven_set_reg.exit1387:                           ; preds = %do.end.i1386, %maven_get_reg.exit1382.maven_set_reg.exit1387_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i1388)
  %188 = ptrtoint ptr %reg.addr.i1388 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 -71, ptr %reg.addr.i1388, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dst.i1389) #11
  %189 = ptrtoint ptr %dst.i1389 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 -1, ptr %dst.i1389, align 1, !annotation !65
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i1390) #11
  %190 = getelementptr inbounds i8, ptr %msgs.i1390, i32 4
  %191 = call ptr @memset(ptr %190, i32 255, i32 16)
  %192 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %addr1.i, align 2
  %194 = ptrtoint ptr %msgs.i1390 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %193, ptr %msgs.i1390, align 4
  %flags.i1392 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1390, i32 0, i32 1
  %195 = ptrtoint ptr %flags.i1392 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 8192, ptr %flags.i1392, align 2
  %196 = ptrtoint ptr %190 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 1, ptr %190, align 4
  %buf.i1394 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1390, i32 0, i32 3
  %197 = ptrtoint ptr %buf.i1394 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %reg.addr.i1388, ptr %buf.i1394, align 4
  %arrayinit.element.i1395 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1390, i32 1
  %198 = ptrtoint ptr %arrayinit.element.i1395 to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %193, ptr %arrayinit.element.i1395, align 4
  %flags4.i1396 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1390, i32 1, i32 1
  %199 = ptrtoint ptr %flags4.i1396 to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 16385, ptr %flags4.i1396, align 2
  %len5.i1397 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1390, i32 1, i32 2
  %200 = ptrtoint ptr %len5.i1397 to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 1, ptr %len5.i1397, align 4
  %buf6.i1398 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1390, i32 1, i32 3
  %201 = ptrtoint ptr %buf6.i1398 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %dst.i1389, ptr %buf6.i1398, align 4
  %202 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %adapter.i, align 8
  %call.i1400 = call i32 @i2c_transfer(ptr noundef %203, ptr noundef nonnull %msgs.i1390, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1400)
  %cmp.i1401 = icmp slt i32 %call.i1400, 0
  br i1 %cmp.i1401, label %do.end.i1404, label %maven_set_reg.exit1387.maven_get_reg.exit1406_crit_edge

maven_set_reg.exit1387.maven_get_reg.exit1406_crit_edge: ; preds = %maven_set_reg.exit1387
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_get_reg.exit1406

do.end.i1404:                                     ; preds = %maven_set_reg.exit1387
  call void @__sanitizer_cov_trace_pc() #13
  %204 = ptrtoint ptr %reg.addr.i1388 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %reg.addr.i1388, align 1
  %conv.i1402 = zext i8 %205 to i32
  %call7.i1403 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv.i1402) #15
  br label %maven_get_reg.exit1406

maven_get_reg.exit1406:                           ; preds = %do.end.i1404, %maven_set_reg.exit1387.maven_get_reg.exit1406_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i1390) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dst.i1389) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i1388)
  %call.i1407 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -71, i8 noundef zeroext 120) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1407)
  %tobool.not.i1408 = icmp eq i32 %call.i1407, 0
  br i1 %tobool.not.i1408, label %maven_get_reg.exit1406.maven_set_reg.exit1411_crit_edge, label %do.end.i1410

maven_get_reg.exit1406.maven_set_reg.exit1411_crit_edge: ; preds = %maven_get_reg.exit1406
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1411

do.end.i1410:                                     ; preds = %maven_get_reg.exit1406
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1409 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 185) #15
  br label %maven_set_reg.exit1411

maven_set_reg.exit1411:                           ; preds = %do.end.i1410, %maven_get_reg.exit1406.maven_set_reg.exit1411_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i1412)
  %206 = ptrtoint ptr %reg.addr.i1412 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 -65, ptr %reg.addr.i1412, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dst.i1413) #11
  %207 = ptrtoint ptr %dst.i1413 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 -1, ptr %dst.i1413, align 1, !annotation !65
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i1414) #11
  %208 = getelementptr inbounds i8, ptr %msgs.i1414, i32 4
  %209 = call ptr @memset(ptr %208, i32 255, i32 16)
  %210 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %addr1.i, align 2
  %212 = ptrtoint ptr %msgs.i1414 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %211, ptr %msgs.i1414, align 4
  %flags.i1416 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1414, i32 0, i32 1
  %213 = ptrtoint ptr %flags.i1416 to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 8192, ptr %flags.i1416, align 2
  %214 = ptrtoint ptr %208 to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 1, ptr %208, align 4
  %buf.i1418 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1414, i32 0, i32 3
  %215 = ptrtoint ptr %buf.i1418 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %reg.addr.i1412, ptr %buf.i1418, align 4
  %arrayinit.element.i1419 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1414, i32 1
  %216 = ptrtoint ptr %arrayinit.element.i1419 to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %211, ptr %arrayinit.element.i1419, align 4
  %flags4.i1420 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1414, i32 1, i32 1
  %217 = ptrtoint ptr %flags4.i1420 to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 16385, ptr %flags4.i1420, align 2
  %len5.i1421 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1414, i32 1, i32 2
  %218 = ptrtoint ptr %len5.i1421 to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 1, ptr %len5.i1421, align 4
  %buf6.i1422 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1414, i32 1, i32 3
  %219 = ptrtoint ptr %buf6.i1422 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %dst.i1413, ptr %buf6.i1422, align 4
  %220 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %adapter.i, align 8
  %call.i1424 = call i32 @i2c_transfer(ptr noundef %221, ptr noundef nonnull %msgs.i1414, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1424)
  %cmp.i1425 = icmp slt i32 %call.i1424, 0
  br i1 %cmp.i1425, label %do.end.i1428, label %maven_set_reg.exit1411.maven_get_reg.exit1430_crit_edge

maven_set_reg.exit1411.maven_get_reg.exit1430_crit_edge: ; preds = %maven_set_reg.exit1411
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_get_reg.exit1430

do.end.i1428:                                     ; preds = %maven_set_reg.exit1411
  call void @__sanitizer_cov_trace_pc() #13
  %222 = ptrtoint ptr %reg.addr.i1412 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %reg.addr.i1412, align 1
  %conv.i1426 = zext i8 %223 to i32
  %call7.i1427 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv.i1426) #15
  br label %maven_get_reg.exit1430

maven_get_reg.exit1430:                           ; preds = %do.end.i1428, %maven_set_reg.exit1411.maven_get_reg.exit1430_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i1414) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dst.i1413) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i1412)
  %call.i1431 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -65, i8 noundef zeroext 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1431)
  %tobool.not.i1432 = icmp eq i32 %call.i1431, 0
  br i1 %tobool.not.i1432, label %maven_get_reg.exit1430.maven_set_reg.exit1435_crit_edge, label %do.end.i1434

maven_get_reg.exit1430.maven_set_reg.exit1435_crit_edge: ; preds = %maven_get_reg.exit1430
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1435

do.end.i1434:                                     ; preds = %maven_get_reg.exit1430
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1433 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 191) #15
  br label %maven_set_reg.exit1435

maven_set_reg.exit1435:                           ; preds = %do.end.i1434, %maven_get_reg.exit1430.maven_set_reg.exit1435_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i1436)
  %224 = ptrtoint ptr %reg.addr.i1436 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 -108, ptr %reg.addr.i1436, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dst.i1437) #11
  %225 = ptrtoint ptr %dst.i1437 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 -1, ptr %dst.i1437, align 1, !annotation !65
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i1438) #11
  %226 = getelementptr inbounds i8, ptr %msgs.i1438, i32 4
  %227 = call ptr @memset(ptr %226, i32 255, i32 16)
  %228 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %addr1.i, align 2
  %230 = ptrtoint ptr %msgs.i1438 to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %229, ptr %msgs.i1438, align 4
  %flags.i1440 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1438, i32 0, i32 1
  %231 = ptrtoint ptr %flags.i1440 to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 8192, ptr %flags.i1440, align 2
  %232 = ptrtoint ptr %226 to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 1, ptr %226, align 4
  %buf.i1442 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1438, i32 0, i32 3
  %233 = ptrtoint ptr %buf.i1442 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %reg.addr.i1436, ptr %buf.i1442, align 4
  %arrayinit.element.i1443 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1438, i32 1
  %234 = ptrtoint ptr %arrayinit.element.i1443 to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 %229, ptr %arrayinit.element.i1443, align 4
  %flags4.i1444 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1438, i32 1, i32 1
  %235 = ptrtoint ptr %flags4.i1444 to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 16385, ptr %flags4.i1444, align 2
  %len5.i1445 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1438, i32 1, i32 2
  %236 = ptrtoint ptr %len5.i1445 to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 1, ptr %len5.i1445, align 4
  %buf6.i1446 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1438, i32 1, i32 3
  %237 = ptrtoint ptr %buf6.i1446 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %dst.i1437, ptr %buf6.i1446, align 4
  %238 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %adapter.i, align 8
  %call.i1448 = call i32 @i2c_transfer(ptr noundef %239, ptr noundef nonnull %msgs.i1438, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1448)
  %cmp.i1449 = icmp slt i32 %call.i1448, 0
  br i1 %cmp.i1449, label %do.end.i1452, label %maven_set_reg.exit1435.maven_get_reg.exit1454_crit_edge

maven_set_reg.exit1435.maven_get_reg.exit1454_crit_edge: ; preds = %maven_set_reg.exit1435
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_get_reg.exit1454

do.end.i1452:                                     ; preds = %maven_set_reg.exit1435
  call void @__sanitizer_cov_trace_pc() #13
  %240 = ptrtoint ptr %reg.addr.i1436 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %reg.addr.i1436, align 1
  %conv.i1450 = zext i8 %241 to i32
  %call7.i1451 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv.i1450) #15
  br label %maven_get_reg.exit1454

maven_get_reg.exit1454:                           ; preds = %do.end.i1452, %maven_set_reg.exit1435.maven_get_reg.exit1454_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i1438) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dst.i1437) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i1436)
  %call.i1455 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -108, i8 noundef zeroext -77) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1455)
  %tobool.not.i1456 = icmp eq i32 %call.i1455, 0
  br i1 %tobool.not.i1456, label %maven_get_reg.exit1454.maven_set_reg.exit1459_crit_edge, label %do.end.i1458

maven_get_reg.exit1454.maven_set_reg.exit1459_crit_edge: ; preds = %maven_get_reg.exit1454
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1459

do.end.i1458:                                     ; preds = %maven_get_reg.exit1454
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1457 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 148) #15
  br label %maven_set_reg.exit1459

maven_set_reg.exit1459:                           ; preds = %do.end.i1458, %maven_get_reg.exit1454.maven_set_reg.exit1459_crit_edge
  %arrayidx258 = getelementptr [256 x i8], ptr %m, i32 0, i32 128
  %242 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx258, align 4
  %call.i1460 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -128, i8 noundef zeroext %243) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1460)
  %tobool.not.i1461 = icmp eq i32 %call.i1460, 0
  br i1 %tobool.not.i1461, label %maven_set_reg.exit1459.maven_set_reg.exit1464_crit_edge, label %do.end.i1463

maven_set_reg.exit1459.maven_set_reg.exit1464_crit_edge: ; preds = %maven_set_reg.exit1459
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1464

do.end.i1463:                                     ; preds = %maven_set_reg.exit1459
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1462 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 128) #15
  br label %maven_set_reg.exit1464

maven_set_reg.exit1464:                           ; preds = %do.end.i1463, %maven_set_reg.exit1459.maven_set_reg.exit1464_crit_edge
  %arrayidx262 = getelementptr [256 x i8], ptr %m, i32 0, i32 129
  %244 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %arrayidx262, align 1
  %call.i1465 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -127, i8 noundef zeroext %245) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1465)
  %tobool.not.i1466 = icmp eq i32 %call.i1465, 0
  br i1 %tobool.not.i1466, label %maven_set_reg.exit1464.maven_set_reg.exit1469_crit_edge, label %do.end.i1468

maven_set_reg.exit1464.maven_set_reg.exit1469_crit_edge: ; preds = %maven_set_reg.exit1464
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1469

do.end.i1468:                                     ; preds = %maven_set_reg.exit1464
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1467 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 129) #15
  br label %maven_set_reg.exit1469

maven_set_reg.exit1469:                           ; preds = %do.end.i1468, %maven_set_reg.exit1464.maven_set_reg.exit1469_crit_edge
  %arrayidx266 = getelementptr [256 x i8], ptr %m, i32 0, i32 130
  %246 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %arrayidx266, align 2
  %call.i1470 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -126, i8 noundef zeroext %247) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1470)
  %tobool.not.i1471 = icmp eq i32 %call.i1470, 0
  br i1 %tobool.not.i1471, label %maven_set_reg.exit1469.maven_set_reg.exit1474_crit_edge, label %do.end.i1473

maven_set_reg.exit1469.maven_set_reg.exit1474_crit_edge: ; preds = %maven_set_reg.exit1469
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1474

do.end.i1473:                                     ; preds = %maven_set_reg.exit1469
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1472 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 130) #15
  br label %maven_set_reg.exit1474

maven_set_reg.exit1474:                           ; preds = %do.end.i1473, %maven_set_reg.exit1469.maven_set_reg.exit1474_crit_edge
  %call.i1475 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -116, i8 noundef zeroext 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1475)
  %tobool.not.i1476 = icmp eq i32 %call.i1475, 0
  br i1 %tobool.not.i1476, label %maven_set_reg.exit1474.maven_set_reg.exit1479_crit_edge, label %do.end.i1478

maven_set_reg.exit1474.maven_set_reg.exit1479_crit_edge: ; preds = %maven_set_reg.exit1474
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1479

do.end.i1478:                                     ; preds = %maven_set_reg.exit1474
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1477 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 140) #15
  br label %maven_set_reg.exit1479

maven_set_reg.exit1479:                           ; preds = %do.end.i1478, %maven_set_reg.exit1474.maven_set_reg.exit1479_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i1480)
  %248 = ptrtoint ptr %reg.addr.i1480 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 -115, ptr %reg.addr.i1480, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dst.i1481) #11
  %249 = ptrtoint ptr %dst.i1481 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 -1, ptr %dst.i1481, align 1, !annotation !65
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i1482) #11
  %250 = getelementptr inbounds i8, ptr %msgs.i1482, i32 4
  %251 = call ptr @memset(ptr %250, i32 255, i32 16)
  %252 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %addr1.i, align 2
  %254 = ptrtoint ptr %msgs.i1482 to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %253, ptr %msgs.i1482, align 4
  %flags.i1484 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1482, i32 0, i32 1
  %255 = ptrtoint ptr %flags.i1484 to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 8192, ptr %flags.i1484, align 2
  %256 = ptrtoint ptr %250 to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 1, ptr %250, align 4
  %buf.i1486 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1482, i32 0, i32 3
  %257 = ptrtoint ptr %buf.i1486 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %reg.addr.i1480, ptr %buf.i1486, align 4
  %arrayinit.element.i1487 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1482, i32 1
  %258 = ptrtoint ptr %arrayinit.element.i1487 to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 %253, ptr %arrayinit.element.i1487, align 4
  %flags4.i1488 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1482, i32 1, i32 1
  %259 = ptrtoint ptr %flags4.i1488 to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 16385, ptr %flags4.i1488, align 2
  %len5.i1489 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1482, i32 1, i32 2
  %260 = ptrtoint ptr %len5.i1489 to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 1, ptr %len5.i1489, align 4
  %buf6.i1490 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1482, i32 1, i32 3
  %261 = ptrtoint ptr %buf6.i1490 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %dst.i1481, ptr %buf6.i1490, align 4
  %262 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %adapter.i, align 8
  %call.i1492 = call i32 @i2c_transfer(ptr noundef %263, ptr noundef nonnull %msgs.i1482, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1492)
  %cmp.i1493 = icmp slt i32 %call.i1492, 0
  br i1 %cmp.i1493, label %do.end.i1496, label %maven_set_reg.exit1479.maven_get_reg.exit1498_crit_edge

maven_set_reg.exit1479.maven_get_reg.exit1498_crit_edge: ; preds = %maven_set_reg.exit1479
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_get_reg.exit1498

do.end.i1496:                                     ; preds = %maven_set_reg.exit1479
  call void @__sanitizer_cov_trace_pc() #13
  %264 = ptrtoint ptr %reg.addr.i1480 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %reg.addr.i1480, align 1
  %conv.i1494 = zext i8 %265 to i32
  %call7.i1495 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv.i1494) #15
  br label %maven_get_reg.exit1498

maven_get_reg.exit1498:                           ; preds = %do.end.i1496, %maven_set_reg.exit1479.maven_get_reg.exit1498_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i1482) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dst.i1481) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i1480)
  %call.i1499 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -115, i8 noundef zeroext 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1499)
  %tobool.not.i1500 = icmp eq i32 %call.i1499, 0
  br i1 %tobool.not.i1500, label %maven_get_reg.exit1498.maven_set_reg.exit1503_crit_edge, label %do.end.i1502

maven_get_reg.exit1498.maven_set_reg.exit1503_crit_edge: ; preds = %maven_get_reg.exit1498
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1503

do.end.i1502:                                     ; preds = %maven_get_reg.exit1498
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1501 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 141) #15
  br label %maven_set_reg.exit1503

maven_set_reg.exit1503:                           ; preds = %do.end.i1502, %maven_get_reg.exit1498.maven_set_reg.exit1503_crit_edge
  %arrayidx273 = getelementptr [256 x i8], ptr %m, i32 0, i32 144
  %266 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx273, align 4
  %call.i1504 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -112, i8 noundef zeroext %267) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1504)
  %tobool.not.i1505 = icmp eq i32 %call.i1504, 0
  br i1 %tobool.not.i1505, label %maven_set_reg.exit1503.maven_set_reg.exit1508_crit_edge, label %do.end.i1507

maven_set_reg.exit1503.maven_set_reg.exit1508_crit_edge: ; preds = %maven_set_reg.exit1503
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1508

do.end.i1507:                                     ; preds = %maven_set_reg.exit1503
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1506 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 144) #15
  br label %maven_set_reg.exit1508

maven_set_reg.exit1508:                           ; preds = %do.end.i1507, %maven_set_reg.exit1503.maven_set_reg.exit1508_crit_edge
  %arrayidx277 = getelementptr [256 x i8], ptr %m, i32 0, i32 145
  %268 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx277, align 1
  %call.i1509 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -111, i8 noundef zeroext %269) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1509)
  %tobool.not.i1510 = icmp eq i32 %call.i1509, 0
  br i1 %tobool.not.i1510, label %maven_set_reg.exit1508.maven_set_reg.exit1513_crit_edge, label %do.end.i1512

maven_set_reg.exit1508.maven_set_reg.exit1513_crit_edge: ; preds = %maven_set_reg.exit1508
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1513

do.end.i1512:                                     ; preds = %maven_set_reg.exit1508
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1511 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 145) #15
  br label %maven_set_reg.exit1513

maven_set_reg.exit1513:                           ; preds = %do.end.i1512, %maven_set_reg.exit1508.maven_set_reg.exit1513_crit_edge
  %arrayidx281 = getelementptr [256 x i8], ptr %m, i32 0, i32 146
  %270 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %arrayidx281, align 2
  %call.i1514 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -110, i8 noundef zeroext %271) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1514)
  %tobool.not.i1515 = icmp eq i32 %call.i1514, 0
  br i1 %tobool.not.i1515, label %maven_set_reg.exit1513.maven_set_reg.exit1518_crit_edge, label %do.end.i1517

maven_set_reg.exit1513.maven_set_reg.exit1518_crit_edge: ; preds = %maven_set_reg.exit1513
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1518

do.end.i1517:                                     ; preds = %maven_set_reg.exit1513
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1516 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 146) #15
  br label %maven_set_reg.exit1518

maven_set_reg.exit1518:                           ; preds = %do.end.i1517, %maven_set_reg.exit1513.maven_set_reg.exit1518_crit_edge
  %arrayidx285 = getelementptr [256 x i8], ptr %m, i32 0, i32 154
  %272 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %arrayidx285, align 2
  %conv286 = zext i8 %273 to i16
  %arrayidx288 = getelementptr [256 x i8], ptr %m, i32 0, i32 155
  %274 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx288, align 1
  %conv289 = zext i8 %275 to i16
  %shl290 = shl nuw i16 %conv289, 8
  %or291 = or i16 %shl290, %conv286
  %call.i1520 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext -102, i16 noundef zeroext %or291) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1520)
  %tobool.not.i1521 = icmp eq i32 %call.i1520, 0
  br i1 %tobool.not.i1521, label %maven_set_reg.exit1518.maven_set_reg_pair.exit1524_crit_edge, label %do.end.i1523

maven_set_reg.exit1518.maven_set_reg_pair.exit1524_crit_edge: ; preds = %maven_set_reg.exit1518
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1524

do.end.i1523:                                     ; preds = %maven_set_reg.exit1518
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1522 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 154) #15
  br label %maven_set_reg_pair.exit1524

maven_set_reg_pair.exit1524:                      ; preds = %do.end.i1523, %maven_set_reg.exit1518.maven_set_reg_pair.exit1524_crit_edge
  %arrayidx294 = getelementptr [256 x i8], ptr %m, i32 0, i32 156
  %276 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %arrayidx294, align 4
  %conv295 = zext i8 %277 to i16
  %arrayidx297 = getelementptr [256 x i8], ptr %m, i32 0, i32 157
  %278 = ptrtoint ptr %arrayidx297 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %arrayidx297, align 1
  %conv298 = zext i8 %279 to i16
  %shl299 = shl nuw i16 %conv298, 8
  %or300 = or i16 %shl299, %conv295
  %call.i1526 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext -100, i16 noundef zeroext %or300) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1526)
  %tobool.not.i1527 = icmp eq i32 %call.i1526, 0
  br i1 %tobool.not.i1527, label %maven_set_reg_pair.exit1524.maven_set_reg_pair.exit1530_crit_edge, label %do.end.i1529

maven_set_reg_pair.exit1524.maven_set_reg_pair.exit1530_crit_edge: ; preds = %maven_set_reg_pair.exit1524
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1530

do.end.i1529:                                     ; preds = %maven_set_reg_pair.exit1524
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1528 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 156) #15
  br label %maven_set_reg_pair.exit1530

maven_set_reg_pair.exit1530:                      ; preds = %do.end.i1529, %maven_set_reg_pair.exit1524.maven_set_reg_pair.exit1530_crit_edge
  %arrayidx303 = getelementptr [256 x i8], ptr %m, i32 0, i32 158
  %280 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %arrayidx303, align 2
  %conv304 = zext i8 %281 to i16
  %arrayidx306 = getelementptr [256 x i8], ptr %m, i32 0, i32 159
  %282 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx306, align 1
  %conv307 = zext i8 %283 to i16
  %shl308 = shl nuw i16 %conv307, 8
  %or309 = or i16 %shl308, %conv304
  %call.i1532 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext -98, i16 noundef zeroext %or309) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1532)
  %tobool.not.i1533 = icmp eq i32 %call.i1532, 0
  br i1 %tobool.not.i1533, label %maven_set_reg_pair.exit1530.maven_set_reg_pair.exit1536_crit_edge, label %do.end.i1535

maven_set_reg_pair.exit1530.maven_set_reg_pair.exit1536_crit_edge: ; preds = %maven_set_reg_pair.exit1530
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1536

do.end.i1535:                                     ; preds = %maven_set_reg_pair.exit1530
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1534 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 158) #15
  br label %maven_set_reg_pair.exit1536

maven_set_reg_pair.exit1536:                      ; preds = %do.end.i1535, %maven_set_reg_pair.exit1530.maven_set_reg_pair.exit1536_crit_edge
  %arrayidx312 = getelementptr [256 x i8], ptr %m, i32 0, i32 160
  %284 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %arrayidx312, align 4
  %conv313 = zext i8 %285 to i16
  %arrayidx315 = getelementptr [256 x i8], ptr %m, i32 0, i32 161
  %286 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx315, align 1
  %conv316 = zext i8 %287 to i16
  %shl317 = shl nuw i16 %conv316, 8
  %or318 = or i16 %shl317, %conv313
  %call.i1538 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext -96, i16 noundef zeroext %or318) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1538)
  %tobool.not.i1539 = icmp eq i32 %call.i1538, 0
  br i1 %tobool.not.i1539, label %maven_set_reg_pair.exit1536.maven_set_reg_pair.exit1542_crit_edge, label %do.end.i1541

maven_set_reg_pair.exit1536.maven_set_reg_pair.exit1542_crit_edge: ; preds = %maven_set_reg_pair.exit1536
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1542

do.end.i1541:                                     ; preds = %maven_set_reg_pair.exit1536
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1540 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 160) #15
  br label %maven_set_reg_pair.exit1542

maven_set_reg_pair.exit1542:                      ; preds = %do.end.i1541, %maven_set_reg_pair.exit1536.maven_set_reg_pair.exit1542_crit_edge
  %arrayidx321 = getelementptr [256 x i8], ptr %m, i32 0, i32 162
  %288 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %arrayidx321, align 2
  %conv322 = zext i8 %289 to i16
  %arrayidx324 = getelementptr [256 x i8], ptr %m, i32 0, i32 163
  %290 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %arrayidx324, align 1
  %conv325 = zext i8 %291 to i16
  %shl326 = shl nuw i16 %conv325, 8
  %or327 = or i16 %shl326, %conv322
  %call.i1544 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext -94, i16 noundef zeroext %or327) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1544)
  %tobool.not.i1545 = icmp eq i32 %call.i1544, 0
  br i1 %tobool.not.i1545, label %maven_set_reg_pair.exit1542.maven_set_reg_pair.exit1548_crit_edge, label %do.end.i1547

maven_set_reg_pair.exit1542.maven_set_reg_pair.exit1548_crit_edge: ; preds = %maven_set_reg_pair.exit1542
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1548

do.end.i1547:                                     ; preds = %maven_set_reg_pair.exit1542
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1546 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 162) #15
  br label %maven_set_reg_pair.exit1548

maven_set_reg_pair.exit1548:                      ; preds = %do.end.i1547, %maven_set_reg_pair.exit1542.maven_set_reg_pair.exit1548_crit_edge
  %arrayidx330 = getelementptr [256 x i8], ptr %m, i32 0, i32 164
  %292 = ptrtoint ptr %arrayidx330 to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %arrayidx330, align 4
  %conv331 = zext i8 %293 to i16
  %arrayidx333 = getelementptr [256 x i8], ptr %m, i32 0, i32 165
  %294 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %arrayidx333, align 1
  %conv334 = zext i8 %295 to i16
  %shl335 = shl nuw i16 %conv334, 8
  %or336 = or i16 %shl335, %conv331
  %call.i1550 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext -92, i16 noundef zeroext %or336) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1550)
  %tobool.not.i1551 = icmp eq i32 %call.i1550, 0
  br i1 %tobool.not.i1551, label %maven_set_reg_pair.exit1548.maven_set_reg_pair.exit1554_crit_edge, label %do.end.i1553

maven_set_reg_pair.exit1548.maven_set_reg_pair.exit1554_crit_edge: ; preds = %maven_set_reg_pair.exit1548
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1554

do.end.i1553:                                     ; preds = %maven_set_reg_pair.exit1548
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1552 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 164) #15
  br label %maven_set_reg_pair.exit1554

maven_set_reg_pair.exit1554:                      ; preds = %do.end.i1553, %maven_set_reg_pair.exit1548.maven_set_reg_pair.exit1554_crit_edge
  %arrayidx339 = getelementptr [256 x i8], ptr %m, i32 0, i32 166
  %296 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %arrayidx339, align 2
  %conv340 = zext i8 %297 to i16
  %arrayidx342 = getelementptr [256 x i8], ptr %m, i32 0, i32 167
  %298 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %arrayidx342, align 1
  %conv343 = zext i8 %299 to i16
  %shl344 = shl nuw i16 %conv343, 8
  %or345 = or i16 %shl344, %conv340
  %call.i1556 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext -90, i16 noundef zeroext %or345) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1556)
  %tobool.not.i1557 = icmp eq i32 %call.i1556, 0
  br i1 %tobool.not.i1557, label %maven_set_reg_pair.exit1554.maven_set_reg_pair.exit1560_crit_edge, label %do.end.i1559

maven_set_reg_pair.exit1554.maven_set_reg_pair.exit1560_crit_edge: ; preds = %maven_set_reg_pair.exit1554
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1560

do.end.i1559:                                     ; preds = %maven_set_reg_pair.exit1554
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1558 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 166) #15
  br label %maven_set_reg_pair.exit1560

maven_set_reg_pair.exit1560:                      ; preds = %do.end.i1559, %maven_set_reg_pair.exit1554.maven_set_reg_pair.exit1560_crit_edge
  %arrayidx348 = getelementptr [256 x i8], ptr %m, i32 0, i32 168
  %300 = ptrtoint ptr %arrayidx348 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %arrayidx348, align 4
  %conv349 = zext i8 %301 to i16
  %arrayidx351 = getelementptr [256 x i8], ptr %m, i32 0, i32 169
  %302 = ptrtoint ptr %arrayidx351 to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %arrayidx351, align 1
  %conv352 = zext i8 %303 to i16
  %shl353 = shl nuw i16 %conv352, 8
  %or354 = or i16 %shl353, %conv349
  %call.i1562 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext -88, i16 noundef zeroext %or354) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1562)
  %tobool.not.i1563 = icmp eq i32 %call.i1562, 0
  br i1 %tobool.not.i1563, label %maven_set_reg_pair.exit1560.maven_set_reg_pair.exit1566_crit_edge, label %do.end.i1565

maven_set_reg_pair.exit1560.maven_set_reg_pair.exit1566_crit_edge: ; preds = %maven_set_reg_pair.exit1560
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1566

do.end.i1565:                                     ; preds = %maven_set_reg_pair.exit1560
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1564 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 168) #15
  br label %maven_set_reg_pair.exit1566

maven_set_reg_pair.exit1566:                      ; preds = %do.end.i1565, %maven_set_reg_pair.exit1560.maven_set_reg_pair.exit1566_crit_edge
  %arrayidx357 = getelementptr [256 x i8], ptr %m, i32 0, i32 152
  %304 = ptrtoint ptr %arrayidx357 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %arrayidx357, align 4
  %conv358 = zext i8 %305 to i16
  %arrayidx360 = getelementptr [256 x i8], ptr %m, i32 0, i32 153
  %306 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %arrayidx360, align 1
  %conv361 = zext i8 %307 to i16
  %shl362 = shl nuw i16 %conv361, 8
  %or363 = or i16 %shl362, %conv358
  %call.i1568 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext -104, i16 noundef zeroext %or363) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1568)
  %tobool.not.i1569 = icmp eq i32 %call.i1568, 0
  br i1 %tobool.not.i1569, label %maven_set_reg_pair.exit1566.maven_set_reg_pair.exit1572_crit_edge, label %do.end.i1571

maven_set_reg_pair.exit1566.maven_set_reg_pair.exit1572_crit_edge: ; preds = %maven_set_reg_pair.exit1566
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1572

do.end.i1571:                                     ; preds = %maven_set_reg_pair.exit1566
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1570 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 152) #15
  br label %maven_set_reg_pair.exit1572

maven_set_reg_pair.exit1572:                      ; preds = %do.end.i1571, %maven_set_reg_pair.exit1566.maven_set_reg_pair.exit1572_crit_edge
  %arrayidx366 = getelementptr [256 x i8], ptr %m, i32 0, i32 174
  %308 = ptrtoint ptr %arrayidx366 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %arrayidx366, align 2
  %conv367 = zext i8 %309 to i16
  %arrayidx369 = getelementptr [256 x i8], ptr %m, i32 0, i32 175
  %310 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx369, align 1
  %conv370 = zext i8 %311 to i16
  %shl371 = shl nuw i16 %conv370, 8
  %or372 = or i16 %shl371, %conv367
  %call.i1574 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext -82, i16 noundef zeroext %or372) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1574)
  %tobool.not.i1575 = icmp eq i32 %call.i1574, 0
  br i1 %tobool.not.i1575, label %maven_set_reg_pair.exit1572.maven_set_reg_pair.exit1578_crit_edge, label %do.end.i1577

maven_set_reg_pair.exit1572.maven_set_reg_pair.exit1578_crit_edge: ; preds = %maven_set_reg_pair.exit1572
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1578

do.end.i1577:                                     ; preds = %maven_set_reg_pair.exit1572
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1576 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 174) #15
  br label %maven_set_reg_pair.exit1578

maven_set_reg_pair.exit1578:                      ; preds = %do.end.i1577, %maven_set_reg_pair.exit1572.maven_set_reg_pair.exit1578_crit_edge
  %arrayidx375 = getelementptr [256 x i8], ptr %m, i32 0, i32 150
  %312 = ptrtoint ptr %arrayidx375 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %arrayidx375, align 2
  %conv376 = zext i8 %313 to i16
  %arrayidx378 = getelementptr [256 x i8], ptr %m, i32 0, i32 151
  %314 = ptrtoint ptr %arrayidx378 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %arrayidx378, align 1
  %conv379 = zext i8 %315 to i16
  %shl380 = shl nuw i16 %conv379, 8
  %or381 = or i16 %shl380, %conv376
  %call.i1580 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext -106, i16 noundef zeroext %or381) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1580)
  %tobool.not.i1581 = icmp eq i32 %call.i1580, 0
  br i1 %tobool.not.i1581, label %maven_set_reg_pair.exit1578.maven_set_reg_pair.exit1584_crit_edge, label %do.end.i1583

maven_set_reg_pair.exit1578.maven_set_reg_pair.exit1584_crit_edge: ; preds = %maven_set_reg_pair.exit1578
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1584

do.end.i1583:                                     ; preds = %maven_set_reg_pair.exit1578
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1582 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 150) #15
  br label %maven_set_reg_pair.exit1584

maven_set_reg_pair.exit1584:                      ; preds = %do.end.i1583, %maven_set_reg_pair.exit1578.maven_set_reg_pair.exit1584_crit_edge
  %arrayidx384 = getelementptr [256 x i8], ptr %m, i32 0, i32 170
  %316 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx384, align 2
  %conv385 = zext i8 %317 to i16
  %arrayidx387 = getelementptr [256 x i8], ptr %m, i32 0, i32 171
  %318 = ptrtoint ptr %arrayidx387 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %arrayidx387, align 1
  %conv388 = zext i8 %319 to i16
  %shl389 = shl nuw i16 %conv388, 8
  %or390 = or i16 %shl389, %conv385
  %call.i1586 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext -86, i16 noundef zeroext %or390) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1586)
  %tobool.not.i1587 = icmp eq i32 %call.i1586, 0
  br i1 %tobool.not.i1587, label %maven_set_reg_pair.exit1584.maven_set_reg_pair.exit1590_crit_edge, label %do.end.i1589

maven_set_reg_pair.exit1584.maven_set_reg_pair.exit1590_crit_edge: ; preds = %maven_set_reg_pair.exit1584
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1590

do.end.i1589:                                     ; preds = %maven_set_reg_pair.exit1584
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1588 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 170) #15
  br label %maven_set_reg_pair.exit1590

maven_set_reg_pair.exit1590:                      ; preds = %do.end.i1589, %maven_set_reg_pair.exit1584.maven_set_reg_pair.exit1590_crit_edge
  %arrayidx393 = getelementptr [256 x i8], ptr %m, i32 0, i32 172
  %320 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx393, align 4
  %conv394 = zext i8 %321 to i16
  %arrayidx396 = getelementptr [256 x i8], ptr %m, i32 0, i32 173
  %322 = ptrtoint ptr %arrayidx396 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx396, align 1
  %conv397 = zext i8 %323 to i16
  %shl398 = shl nuw i16 %conv397, 8
  %or399 = or i16 %shl398, %conv394
  %call.i1592 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext -84, i16 noundef zeroext %or399) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1592)
  %tobool.not.i1593 = icmp eq i32 %call.i1592, 0
  br i1 %tobool.not.i1593, label %maven_set_reg_pair.exit1590.maven_set_reg_pair.exit1596_crit_edge, label %do.end.i1595

maven_set_reg_pair.exit1590.maven_set_reg_pair.exit1596_crit_edge: ; preds = %maven_set_reg_pair.exit1590
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1596

do.end.i1595:                                     ; preds = %maven_set_reg_pair.exit1590
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1594 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 172) #15
  br label %maven_set_reg_pair.exit1596

maven_set_reg_pair.exit1596:                      ; preds = %do.end.i1595, %maven_set_reg_pair.exit1590.maven_set_reg_pair.exit1596_crit_edge
  %arrayidx402 = getelementptr [256 x i8], ptr %m, i32 0, i32 190
  %324 = ptrtoint ptr %arrayidx402 to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %arrayidx402, align 2
  %call.i1597 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -66, i8 noundef zeroext %325) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1597)
  %tobool.not.i1598 = icmp eq i32 %call.i1597, 0
  br i1 %tobool.not.i1598, label %maven_set_reg_pair.exit1596.maven_set_reg.exit1601_crit_edge, label %do.end.i1600

maven_set_reg_pair.exit1596.maven_set_reg.exit1601_crit_edge: ; preds = %maven_set_reg_pair.exit1596
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1601

do.end.i1600:                                     ; preds = %maven_set_reg_pair.exit1596
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1599 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 190) #15
  br label %maven_set_reg.exit1601

maven_set_reg.exit1601:                           ; preds = %do.end.i1600, %maven_set_reg_pair.exit1596.maven_set_reg.exit1601_crit_edge
  %arrayidx406 = getelementptr [256 x i8], ptr %m, i32 0, i32 194
  %326 = ptrtoint ptr %arrayidx406 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx406, align 2
  %call.i1602 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -62, i8 noundef zeroext %327) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1602)
  %tobool.not.i1603 = icmp eq i32 %call.i1602, 0
  br i1 %tobool.not.i1603, label %maven_set_reg.exit1601.maven_set_reg.exit1606_crit_edge, label %do.end.i1605

maven_set_reg.exit1601.maven_set_reg.exit1606_crit_edge: ; preds = %maven_set_reg.exit1601
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1606

do.end.i1605:                                     ; preds = %maven_set_reg.exit1601
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1604 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 194) #15
  br label %maven_set_reg.exit1606

maven_set_reg.exit1606:                           ; preds = %do.end.i1605, %maven_set_reg.exit1601.maven_set_reg.exit1606_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i1607)
  %328 = ptrtoint ptr %reg.addr.i1607 to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 -115, ptr %reg.addr.i1607, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dst.i1608) #11
  %329 = ptrtoint ptr %dst.i1608 to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 -1, ptr %dst.i1608, align 1, !annotation !65
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i1609) #11
  %330 = getelementptr inbounds i8, ptr %msgs.i1609, i32 4
  %331 = call ptr @memset(ptr %330, i32 255, i32 16)
  %332 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %332)
  %333 = load i16, ptr %addr1.i, align 2
  %334 = ptrtoint ptr %msgs.i1609 to i32
  call void @__asan_store2_noabort(i32 %334)
  store i16 %333, ptr %msgs.i1609, align 4
  %flags.i1611 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1609, i32 0, i32 1
  %335 = ptrtoint ptr %flags.i1611 to i32
  call void @__asan_store2_noabort(i32 %335)
  store i16 8192, ptr %flags.i1611, align 2
  %336 = ptrtoint ptr %330 to i32
  call void @__asan_store2_noabort(i32 %336)
  store i16 1, ptr %330, align 4
  %buf.i1613 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1609, i32 0, i32 3
  %337 = ptrtoint ptr %buf.i1613 to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %reg.addr.i1607, ptr %buf.i1613, align 4
  %arrayinit.element.i1614 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1609, i32 1
  %338 = ptrtoint ptr %arrayinit.element.i1614 to i32
  call void @__asan_store2_noabort(i32 %338)
  store i16 %333, ptr %arrayinit.element.i1614, align 4
  %flags4.i1615 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1609, i32 1, i32 1
  %339 = ptrtoint ptr %flags4.i1615 to i32
  call void @__asan_store2_noabort(i32 %339)
  store i16 16385, ptr %flags4.i1615, align 2
  %len5.i1616 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1609, i32 1, i32 2
  %340 = ptrtoint ptr %len5.i1616 to i32
  call void @__asan_store2_noabort(i32 %340)
  store i16 1, ptr %len5.i1616, align 4
  %buf6.i1617 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1609, i32 1, i32 3
  %341 = ptrtoint ptr %buf6.i1617 to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr %dst.i1608, ptr %buf6.i1617, align 4
  %342 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %adapter.i, align 8
  %call.i1619 = call i32 @i2c_transfer(ptr noundef %343, ptr noundef nonnull %msgs.i1609, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1619)
  %cmp.i1620 = icmp slt i32 %call.i1619, 0
  br i1 %cmp.i1620, label %do.end.i1623, label %maven_set_reg.exit1606.maven_get_reg.exit1625_crit_edge

maven_set_reg.exit1606.maven_get_reg.exit1625_crit_edge: ; preds = %maven_set_reg.exit1606
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_get_reg.exit1625

do.end.i1623:                                     ; preds = %maven_set_reg.exit1606
  call void @__sanitizer_cov_trace_pc() #13
  %344 = ptrtoint ptr %reg.addr.i1607 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %reg.addr.i1607, align 1
  %conv.i1621 = zext i8 %345 to i32
  %call7.i1622 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv.i1621) #15
  br label %maven_get_reg.exit1625

maven_get_reg.exit1625:                           ; preds = %do.end.i1623, %maven_set_reg.exit1606.maven_get_reg.exit1625_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i1609) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dst.i1608) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i1607)
  %call.i1626 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -115, i8 noundef zeroext 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1626)
  %tobool.not.i1627 = icmp eq i32 %call.i1626, 0
  br i1 %tobool.not.i1627, label %maven_get_reg.exit1625.maven_set_reg.exit1630_crit_edge, label %do.end.i1629

maven_get_reg.exit1625.maven_set_reg.exit1630_crit_edge: ; preds = %maven_get_reg.exit1625
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1630

do.end.i1629:                                     ; preds = %maven_get_reg.exit1625
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1628 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 141) #15
  br label %maven_set_reg.exit1630

maven_set_reg.exit1630:                           ; preds = %do.end.i1629, %maven_get_reg.exit1625.maven_set_reg.exit1630_crit_edge
  %346 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %arrayidx101, align 4
  %call.i1631 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 32, i8 noundef zeroext %347) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1631)
  %tobool.not.i1632 = icmp eq i32 %call.i1631, 0
  br i1 %tobool.not.i1632, label %maven_set_reg.exit1630.maven_set_reg.exit1635_crit_edge, label %do.end.i1634

maven_set_reg.exit1630.maven_set_reg.exit1635_crit_edge: ; preds = %maven_set_reg.exit1630
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1635

do.end.i1634:                                     ; preds = %maven_set_reg.exit1630
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1633 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 32) #15
  br label %maven_set_reg.exit1635

maven_set_reg.exit1635:                           ; preds = %do.end.i1634, %maven_set_reg.exit1630.maven_set_reg.exit1635_crit_edge
  %348 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %arrayidx105, align 2
  %call.i1636 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 34, i8 noundef zeroext %349) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1636)
  %tobool.not.i1637 = icmp eq i32 %call.i1636, 0
  br i1 %tobool.not.i1637, label %maven_set_reg.exit1635.maven_set_reg.exit1640_crit_edge, label %do.end.i1639

maven_set_reg.exit1635.maven_set_reg.exit1640_crit_edge: ; preds = %maven_set_reg.exit1635
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1640

do.end.i1639:                                     ; preds = %maven_set_reg.exit1635
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1638 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 34) #15
  br label %maven_set_reg.exit1640

maven_set_reg.exit1640:                           ; preds = %do.end.i1639, %maven_set_reg.exit1635.maven_set_reg.exit1640_crit_edge
  %arrayidx420 = getelementptr [256 x i8], ptr %m, i32 0, i32 147
  %350 = ptrtoint ptr %arrayidx420 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %arrayidx420, align 1
  %call.i1641 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -109, i8 noundef zeroext %351) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1641)
  %tobool.not.i1642 = icmp eq i32 %call.i1641, 0
  br i1 %tobool.not.i1642, label %maven_set_reg.exit1640.maven_set_reg.exit1645_crit_edge, label %do.end.i1644

maven_set_reg.exit1640.maven_set_reg.exit1645_crit_edge: ; preds = %maven_set_reg.exit1640
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1645

do.end.i1644:                                     ; preds = %maven_set_reg.exit1640
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1643 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 147) #15
  br label %maven_set_reg.exit1645

maven_set_reg.exit1645:                           ; preds = %do.end.i1644, %maven_set_reg.exit1640.maven_set_reg.exit1645_crit_edge
  %352 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %arrayidx101, align 4
  %call.i1646 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 32, i8 noundef zeroext %353) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1646)
  %tobool.not.i1647 = icmp eq i32 %call.i1646, 0
  br i1 %tobool.not.i1647, label %maven_set_reg.exit1645.maven_set_reg.exit1650_crit_edge, label %do.end.i1649

maven_set_reg.exit1645.maven_set_reg.exit1650_crit_edge: ; preds = %maven_set_reg.exit1645
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1650

do.end.i1649:                                     ; preds = %maven_set_reg.exit1645
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1648 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 32) #15
  br label %maven_set_reg.exit1650

maven_set_reg.exit1650:                           ; preds = %do.end.i1649, %maven_set_reg.exit1645.maven_set_reg.exit1650_crit_edge
  %354 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %arrayidx105, align 2
  %call.i1651 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 34, i8 noundef zeroext %355) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1651)
  %tobool.not.i1652 = icmp eq i32 %call.i1651, 0
  br i1 %tobool.not.i1652, label %maven_set_reg.exit1650.maven_set_reg.exit1655_crit_edge, label %do.end.i1654

maven_set_reg.exit1650.maven_set_reg.exit1655_crit_edge: ; preds = %maven_set_reg.exit1650
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1655

do.end.i1654:                                     ; preds = %maven_set_reg.exit1650
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1653 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 34) #15
  br label %maven_set_reg.exit1655

maven_set_reg.exit1655:                           ; preds = %do.end.i1654, %maven_set_reg.exit1650.maven_set_reg.exit1655_crit_edge
  %356 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %arrayidx109, align 1
  %call.i1656 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 37, i8 noundef zeroext %357) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1656)
  %tobool.not.i1657 = icmp eq i32 %call.i1656, 0
  br i1 %tobool.not.i1657, label %maven_set_reg.exit1655.maven_set_reg.exit1660_crit_edge, label %do.end.i1659

maven_set_reg.exit1655.maven_set_reg.exit1660_crit_edge: ; preds = %maven_set_reg.exit1655
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1660

do.end.i1659:                                     ; preds = %maven_set_reg.exit1655
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1658 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 37) #15
  br label %maven_set_reg.exit1660

maven_set_reg.exit1660:                           ; preds = %do.end.i1659, %maven_set_reg.exit1655.maven_set_reg.exit1660_crit_edge
  %358 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %arrayidx83, align 2
  %conv437 = zext i8 %359 to i16
  %360 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %arrayidx86, align 1
  %conv440 = zext i8 %361 to i16
  %shl441 = shl nuw i16 %conv440, 8
  %or442 = or i16 %shl441, %conv437
  %call.i1662 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext 14, i16 noundef zeroext %or442) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1662)
  %tobool.not.i1663 = icmp eq i32 %call.i1662, 0
  br i1 %tobool.not.i1663, label %maven_set_reg.exit1660.maven_set_reg_pair.exit1666_crit_edge, label %do.end.i1665

maven_set_reg.exit1660.maven_set_reg_pair.exit1666_crit_edge: ; preds = %maven_set_reg.exit1660
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1666

do.end.i1665:                                     ; preds = %maven_set_reg.exit1660
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1664 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 14) #15
  br label %maven_set_reg_pair.exit1666

maven_set_reg_pair.exit1666:                      ; preds = %do.end.i1665, %maven_set_reg.exit1660.maven_set_reg_pair.exit1666_crit_edge
  %362 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %arrayidx92, align 2
  %conv446 = zext i8 %363 to i16
  %364 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %arrayidx95, align 1
  %conv449 = zext i8 %365 to i16
  %shl450 = shl nuw i16 %conv449, 8
  %or451 = or i16 %shl450, %conv446
  %call.i1668 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext 30, i16 noundef zeroext %or451) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1668)
  %tobool.not.i1669 = icmp eq i32 %call.i1668, 0
  br i1 %tobool.not.i1669, label %maven_set_reg_pair.exit1666.maven_set_reg_pair.exit1672_crit_edge, label %do.end.i1671

maven_set_reg_pair.exit1666.maven_set_reg_pair.exit1672_crit_edge: ; preds = %maven_set_reg_pair.exit1666
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1672

do.end.i1671:                                     ; preds = %maven_set_reg_pair.exit1666
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1670 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 30) #15
  br label %maven_set_reg_pair.exit1672

maven_set_reg_pair.exit1672:                      ; preds = %do.end.i1671, %maven_set_reg_pair.exit1666.maven_set_reg_pair.exit1672_crit_edge
  %366 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %arrayidx83, align 2
  %conv455 = zext i8 %367 to i16
  %368 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %arrayidx86, align 1
  %conv458 = zext i8 %369 to i16
  %shl459 = shl nuw i16 %conv458, 8
  %or460 = or i16 %shl459, %conv455
  %call.i1674 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext 14, i16 noundef zeroext %or460) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1674)
  %tobool.not.i1675 = icmp eq i32 %call.i1674, 0
  br i1 %tobool.not.i1675, label %maven_set_reg_pair.exit1672.maven_set_reg_pair.exit1678_crit_edge, label %do.end.i1677

maven_set_reg_pair.exit1672.maven_set_reg_pair.exit1678_crit_edge: ; preds = %maven_set_reg_pair.exit1672
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1678

do.end.i1677:                                     ; preds = %maven_set_reg_pair.exit1672
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1676 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 14) #15
  br label %maven_set_reg_pair.exit1678

maven_set_reg_pair.exit1678:                      ; preds = %do.end.i1677, %maven_set_reg_pair.exit1672.maven_set_reg_pair.exit1678_crit_edge
  %370 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %arrayidx92, align 2
  %conv464 = zext i8 %371 to i16
  %372 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %arrayidx95, align 1
  %conv467 = zext i8 %373 to i16
  %shl468 = shl nuw i16 %conv467, 8
  %or469 = or i16 %shl468, %conv464
  %call.i1680 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext 30, i16 noundef zeroext %or469) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1680)
  %tobool.not.i1681 = icmp eq i32 %call.i1680, 0
  br i1 %tobool.not.i1681, label %maven_set_reg_pair.exit1678.maven_set_reg_pair.exit1684_crit_edge, label %do.end.i1683

maven_set_reg_pair.exit1678.maven_set_reg_pair.exit1684_crit_edge: ; preds = %maven_set_reg_pair.exit1678
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1684

do.end.i1683:                                     ; preds = %maven_set_reg_pair.exit1678
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1682 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 30) #15
  br label %maven_set_reg_pair.exit1684

maven_set_reg_pair.exit1684:                      ; preds = %do.end.i1683, %maven_set_reg_pair.exit1678.maven_set_reg_pair.exit1684_crit_edge
  %arrayidx472 = getelementptr [256 x i8], ptr %m, i32 0, i32 131
  %374 = ptrtoint ptr %arrayidx472 to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %arrayidx472, align 1
  %call.i1685 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -125, i8 noundef zeroext %375) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1685)
  %tobool.not.i1686 = icmp eq i32 %call.i1685, 0
  br i1 %tobool.not.i1686, label %maven_set_reg_pair.exit1684.maven_set_reg.exit1689_crit_edge, label %do.end.i1688

maven_set_reg_pair.exit1684.maven_set_reg.exit1689_crit_edge: ; preds = %maven_set_reg_pair.exit1684
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1689

do.end.i1688:                                     ; preds = %maven_set_reg_pair.exit1684
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1687 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 131) #15
  br label %maven_set_reg.exit1689

maven_set_reg.exit1689:                           ; preds = %do.end.i1688, %maven_set_reg_pair.exit1684.maven_set_reg.exit1689_crit_edge
  %arrayidx476 = getelementptr [256 x i8], ptr %m, i32 0, i32 132
  %376 = ptrtoint ptr %arrayidx476 to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %arrayidx476, align 4
  %call.i1690 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -124, i8 noundef zeroext %377) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1690)
  %tobool.not.i1691 = icmp eq i32 %call.i1690, 0
  br i1 %tobool.not.i1691, label %maven_set_reg.exit1689.maven_set_reg.exit1694_crit_edge, label %do.end.i1693

maven_set_reg.exit1689.maven_set_reg.exit1694_crit_edge: ; preds = %maven_set_reg.exit1689
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1694

do.end.i1693:                                     ; preds = %maven_set_reg.exit1689
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1692 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 132) #15
  br label %maven_set_reg.exit1694

maven_set_reg.exit1694:                           ; preds = %do.end.i1693, %maven_set_reg.exit1689.maven_set_reg.exit1694_crit_edge
  %arrayidx480 = getelementptr [256 x i8], ptr %m, i32 0, i32 133
  %378 = ptrtoint ptr %arrayidx480 to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %arrayidx480, align 1
  %call.i1695 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -123, i8 noundef zeroext %379) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1695)
  %tobool.not.i1696 = icmp eq i32 %call.i1695, 0
  br i1 %tobool.not.i1696, label %maven_set_reg.exit1694.maven_set_reg.exit1699_crit_edge, label %do.end.i1698

maven_set_reg.exit1694.maven_set_reg.exit1699_crit_edge: ; preds = %maven_set_reg.exit1694
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1699

do.end.i1698:                                     ; preds = %maven_set_reg.exit1694
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1697 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 133) #15
  br label %maven_set_reg.exit1699

maven_set_reg.exit1699:                           ; preds = %do.end.i1698, %maven_set_reg.exit1694.maven_set_reg.exit1699_crit_edge
  %arrayidx484 = getelementptr [256 x i8], ptr %m, i32 0, i32 134
  %380 = ptrtoint ptr %arrayidx484 to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %arrayidx484, align 2
  %call.i1700 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -122, i8 noundef zeroext %381) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1700)
  %tobool.not.i1701 = icmp eq i32 %call.i1700, 0
  br i1 %tobool.not.i1701, label %maven_set_reg.exit1699.maven_set_reg.exit1704_crit_edge, label %do.end.i1703

maven_set_reg.exit1699.maven_set_reg.exit1704_crit_edge: ; preds = %maven_set_reg.exit1699
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1704

do.end.i1703:                                     ; preds = %maven_set_reg.exit1699
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1702 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 134) #15
  br label %maven_set_reg.exit1704

maven_set_reg.exit1704:                           ; preds = %do.end.i1703, %maven_set_reg.exit1699.maven_set_reg.exit1704_crit_edge
  %arrayidx488 = getelementptr [256 x i8], ptr %m, i32 0, i32 135
  %382 = ptrtoint ptr %arrayidx488 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %arrayidx488, align 1
  %call.i1705 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -121, i8 noundef zeroext %383) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1705)
  %tobool.not.i1706 = icmp eq i32 %call.i1705, 0
  br i1 %tobool.not.i1706, label %maven_set_reg.exit1704.maven_set_reg.exit1709_crit_edge, label %do.end.i1708

maven_set_reg.exit1704.maven_set_reg.exit1709_crit_edge: ; preds = %maven_set_reg.exit1704
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1709

do.end.i1708:                                     ; preds = %maven_set_reg.exit1704
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1707 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 135) #15
  br label %maven_set_reg.exit1709

maven_set_reg.exit1709:                           ; preds = %do.end.i1708, %maven_set_reg.exit1704.maven_set_reg.exit1709_crit_edge
  %arrayidx492 = getelementptr [256 x i8], ptr %m, i32 0, i32 136
  %384 = ptrtoint ptr %arrayidx492 to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %arrayidx492, align 4
  %call.i1710 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -120, i8 noundef zeroext %385) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1710)
  %tobool.not.i1711 = icmp eq i32 %call.i1710, 0
  br i1 %tobool.not.i1711, label %maven_set_reg.exit1709.maven_set_reg.exit1714_crit_edge, label %do.end.i1713

maven_set_reg.exit1709.maven_set_reg.exit1714_crit_edge: ; preds = %maven_set_reg.exit1709
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1714

do.end.i1713:                                     ; preds = %maven_set_reg.exit1709
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1712 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 136) #15
  br label %maven_set_reg.exit1714

maven_set_reg.exit1714:                           ; preds = %do.end.i1713, %maven_set_reg.exit1709.maven_set_reg.exit1714_crit_edge
  %arrayidx496 = getelementptr [256 x i8], ptr %m, i32 0, i32 137
  %386 = ptrtoint ptr %arrayidx496 to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %arrayidx496, align 1
  %call.i1715 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -119, i8 noundef zeroext %387) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1715)
  %tobool.not.i1716 = icmp eq i32 %call.i1715, 0
  br i1 %tobool.not.i1716, label %maven_set_reg.exit1714.maven_set_reg.exit1719_crit_edge, label %do.end.i1718

maven_set_reg.exit1714.maven_set_reg.exit1719_crit_edge: ; preds = %maven_set_reg.exit1714
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1719

do.end.i1718:                                     ; preds = %maven_set_reg.exit1714
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1717 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 137) #15
  br label %maven_set_reg.exit1719

maven_set_reg.exit1719:                           ; preds = %do.end.i1718, %maven_set_reg.exit1714.maven_set_reg.exit1719_crit_edge
  %arrayidx500 = getelementptr [256 x i8], ptr %m, i32 0, i32 138
  %388 = ptrtoint ptr %arrayidx500 to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %arrayidx500, align 2
  %call.i1720 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -118, i8 noundef zeroext %389) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1720)
  %tobool.not.i1721 = icmp eq i32 %call.i1720, 0
  br i1 %tobool.not.i1721, label %maven_set_reg.exit1719.maven_set_reg.exit1724_crit_edge, label %do.end.i1723

maven_set_reg.exit1719.maven_set_reg.exit1724_crit_edge: ; preds = %maven_set_reg.exit1719
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1724

do.end.i1723:                                     ; preds = %maven_set_reg.exit1719
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1722 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 138) #15
  br label %maven_set_reg.exit1724

maven_set_reg.exit1724:                           ; preds = %do.end.i1723, %maven_set_reg.exit1719.maven_set_reg.exit1724_crit_edge
  %arrayidx504 = getelementptr [256 x i8], ptr %m, i32 0, i32 139
  %390 = ptrtoint ptr %arrayidx504 to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %arrayidx504, align 1
  %call.i1725 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -117, i8 noundef zeroext %391) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1725)
  %tobool.not.i1726 = icmp eq i32 %call.i1725, 0
  br i1 %tobool.not.i1726, label %maven_set_reg.exit1724.maven_set_reg.exit1729_crit_edge, label %do.end.i1728

maven_set_reg.exit1724.maven_set_reg.exit1729_crit_edge: ; preds = %maven_set_reg.exit1724
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1729

do.end.i1728:                                     ; preds = %maven_set_reg.exit1724
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1727 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 139) #15
  br label %maven_set_reg.exit1729

maven_set_reg.exit1729:                           ; preds = %do.end.i1728, %maven_set_reg.exit1724.maven_set_reg.exit1729_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i1730)
  %392 = ptrtoint ptr %reg.addr.i1730 to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 -115, ptr %reg.addr.i1730, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dst.i1731) #11
  %393 = ptrtoint ptr %dst.i1731 to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 -1, ptr %dst.i1731, align 1, !annotation !65
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i1732) #11
  %394 = getelementptr inbounds i8, ptr %msgs.i1732, i32 4
  %395 = call ptr @memset(ptr %394, i32 255, i32 16)
  %396 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %396)
  %397 = load i16, ptr %addr1.i, align 2
  %398 = ptrtoint ptr %msgs.i1732 to i32
  call void @__asan_store2_noabort(i32 %398)
  store i16 %397, ptr %msgs.i1732, align 4
  %flags.i1734 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1732, i32 0, i32 1
  %399 = ptrtoint ptr %flags.i1734 to i32
  call void @__asan_store2_noabort(i32 %399)
  store i16 8192, ptr %flags.i1734, align 2
  %400 = ptrtoint ptr %394 to i32
  call void @__asan_store2_noabort(i32 %400)
  store i16 1, ptr %394, align 4
  %buf.i1736 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1732, i32 0, i32 3
  %401 = ptrtoint ptr %buf.i1736 to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr %reg.addr.i1730, ptr %buf.i1736, align 4
  %arrayinit.element.i1737 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1732, i32 1
  %402 = ptrtoint ptr %arrayinit.element.i1737 to i32
  call void @__asan_store2_noabort(i32 %402)
  store i16 %397, ptr %arrayinit.element.i1737, align 4
  %flags4.i1738 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1732, i32 1, i32 1
  %403 = ptrtoint ptr %flags4.i1738 to i32
  call void @__asan_store2_noabort(i32 %403)
  store i16 16385, ptr %flags4.i1738, align 2
  %len5.i1739 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1732, i32 1, i32 2
  %404 = ptrtoint ptr %len5.i1739 to i32
  call void @__asan_store2_noabort(i32 %404)
  store i16 1, ptr %len5.i1739, align 4
  %buf6.i1740 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1732, i32 1, i32 3
  %405 = ptrtoint ptr %buf6.i1740 to i32
  call void @__asan_store4_noabort(i32 %405)
  store ptr %dst.i1731, ptr %buf6.i1740, align 4
  %406 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %adapter.i, align 8
  %call.i1742 = call i32 @i2c_transfer(ptr noundef %407, ptr noundef nonnull %msgs.i1732, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1742)
  %cmp.i1743 = icmp slt i32 %call.i1742, 0
  br i1 %cmp.i1743, label %do.end.i1746, label %maven_set_reg.exit1729.maven_get_reg.exit1748_crit_edge

maven_set_reg.exit1729.maven_get_reg.exit1748_crit_edge: ; preds = %maven_set_reg.exit1729
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_get_reg.exit1748

do.end.i1746:                                     ; preds = %maven_set_reg.exit1729
  call void @__sanitizer_cov_trace_pc() #13
  %408 = ptrtoint ptr %reg.addr.i1730 to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %reg.addr.i1730, align 1
  %conv.i1744 = zext i8 %409 to i32
  %call7.i1745 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv.i1744) #15
  br label %maven_get_reg.exit1748

maven_get_reg.exit1748:                           ; preds = %do.end.i1746, %maven_set_reg.exit1729.maven_get_reg.exit1748_crit_edge
  %410 = ptrtoint ptr %dst.i1731 to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %dst.i1731, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i1732) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dst.i1731) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i1730)
  %412 = and i8 %411, 20
  %call.i1750 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -115, i8 noundef zeroext %412) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1750)
  %tobool.not.i1751 = icmp eq i32 %call.i1750, 0
  br i1 %tobool.not.i1751, label %maven_get_reg.exit1748.maven_set_reg.exit1754_crit_edge, label %do.end.i1753

maven_get_reg.exit1748.maven_set_reg.exit1754_crit_edge: ; preds = %maven_get_reg.exit1748
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1754

do.end.i1753:                                     ; preds = %maven_get_reg.exit1748
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1752 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 141) #15
  br label %maven_set_reg.exit1754

maven_set_reg.exit1754:                           ; preds = %do.end.i1753, %maven_get_reg.exit1748.maven_set_reg.exit1754_crit_edge
  %413 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %arrayidx117, align 1
  %call.i1755 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 51, i8 noundef zeroext %414) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1755)
  %tobool.not.i1756 = icmp eq i32 %call.i1755, 0
  br i1 %tobool.not.i1756, label %maven_set_reg.exit1754.maven_set_reg.exit1759_crit_edge, label %do.end.i1758

maven_set_reg.exit1754.maven_set_reg.exit1759_crit_edge: ; preds = %maven_set_reg.exit1754
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1759

do.end.i1758:                                     ; preds = %maven_set_reg.exit1754
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1757 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 51) #15
  br label %maven_set_reg.exit1759

maven_set_reg.exit1759:                           ; preds = %do.end.i1758, %maven_set_reg.exit1754.maven_set_reg.exit1759_crit_edge
  %415 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %arrayidx121, align 1
  %call.i1760 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 25, i8 noundef zeroext %416) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1760)
  %tobool.not.i1761 = icmp eq i32 %call.i1760, 0
  br i1 %tobool.not.i1761, label %maven_set_reg.exit1759.maven_set_reg.exit1764_crit_edge, label %do.end.i1763

maven_set_reg.exit1759.maven_set_reg.exit1764_crit_edge: ; preds = %maven_set_reg.exit1759
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1764

do.end.i1763:                                     ; preds = %maven_set_reg.exit1759
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1762 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 25) #15
  br label %maven_set_reg.exit1764

maven_set_reg.exit1764:                           ; preds = %do.end.i1763, %maven_set_reg.exit1759.maven_set_reg.exit1764_crit_edge
  %417 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %arrayidx125, align 2
  %call.i1765 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 18, i8 noundef zeroext %418) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1765)
  %tobool.not.i1766 = icmp eq i32 %call.i1765, 0
  br i1 %tobool.not.i1766, label %maven_set_reg.exit1764.maven_set_reg.exit1769_crit_edge, label %do.end.i1768

maven_set_reg.exit1764.maven_set_reg.exit1769_crit_edge: ; preds = %maven_set_reg.exit1764
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1769

do.end.i1768:                                     ; preds = %maven_set_reg.exit1764
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1767 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 18) #15
  br label %maven_set_reg.exit1769

maven_set_reg.exit1769:                           ; preds = %do.end.i1768, %maven_set_reg.exit1764.maven_set_reg.exit1769_crit_edge
  %419 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %arrayidx129, align 1
  %call.i1770 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 59, i8 noundef zeroext %420) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1770)
  %tobool.not.i1771 = icmp eq i32 %call.i1770, 0
  br i1 %tobool.not.i1771, label %maven_set_reg.exit1769.maven_set_reg.exit1774_crit_edge, label %do.end.i1773

maven_set_reg.exit1769.maven_set_reg.exit1774_crit_edge: ; preds = %maven_set_reg.exit1769
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1774

do.end.i1773:                                     ; preds = %maven_set_reg.exit1769
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1772 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 59) #15
  br label %maven_set_reg.exit1774

maven_set_reg.exit1774:                           ; preds = %do.end.i1773, %maven_set_reg.exit1769.maven_set_reg.exit1774_crit_edge
  %421 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %arrayidx133, align 1
  %call.i1775 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 19, i8 noundef zeroext %422) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1775)
  %tobool.not.i1776 = icmp eq i32 %call.i1775, 0
  br i1 %tobool.not.i1776, label %maven_set_reg.exit1774.maven_set_reg.exit1779_crit_edge, label %do.end.i1778

maven_set_reg.exit1774.maven_set_reg.exit1779_crit_edge: ; preds = %maven_set_reg.exit1774
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1779

do.end.i1778:                                     ; preds = %maven_set_reg.exit1774
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1777 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 19) #15
  br label %maven_set_reg.exit1779

maven_set_reg.exit1779:                           ; preds = %do.end.i1778, %maven_set_reg.exit1774.maven_set_reg.exit1779_crit_edge
  %423 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %arrayidx137, align 1
  %call.i1780 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 57, i8 noundef zeroext %424) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1780)
  %tobool.not.i1781 = icmp eq i32 %call.i1780, 0
  br i1 %tobool.not.i1781, label %maven_set_reg.exit1779.maven_set_reg.exit1784_crit_edge, label %do.end.i1783

maven_set_reg.exit1779.maven_set_reg.exit1784_crit_edge: ; preds = %maven_set_reg.exit1779
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1784

do.end.i1783:                                     ; preds = %maven_set_reg.exit1779
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1782 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 57) #15
  br label %maven_set_reg.exit1784

maven_set_reg.exit1784:                           ; preds = %do.end.i1783, %maven_set_reg.exit1779.maven_set_reg.exit1784_crit_edge
  %425 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %arrayidx141, align 1
  %call.i1785 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 29, i8 noundef zeroext %426) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1785)
  %tobool.not.i1786 = icmp eq i32 %call.i1785, 0
  br i1 %tobool.not.i1786, label %maven_set_reg.exit1784.maven_set_reg.exit1789_crit_edge, label %do.end.i1788

maven_set_reg.exit1784.maven_set_reg.exit1789_crit_edge: ; preds = %maven_set_reg.exit1784
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1789

do.end.i1788:                                     ; preds = %maven_set_reg.exit1784
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1787 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 29) #15
  br label %maven_set_reg.exit1789

maven_set_reg.exit1789:                           ; preds = %do.end.i1788, %maven_set_reg.exit1784.maven_set_reg.exit1789_crit_edge
  %427 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %arrayidx145, align 2
  %call.i1790 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 58, i8 noundef zeroext %428) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1790)
  %tobool.not.i1791 = icmp eq i32 %call.i1790, 0
  br i1 %tobool.not.i1791, label %maven_set_reg.exit1789.maven_set_reg.exit1794_crit_edge, label %do.end.i1793

maven_set_reg.exit1789.maven_set_reg.exit1794_crit_edge: ; preds = %maven_set_reg.exit1789
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1794

do.end.i1793:                                     ; preds = %maven_set_reg.exit1789
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1792 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 58) #15
  br label %maven_set_reg.exit1794

maven_set_reg.exit1794:                           ; preds = %do.end.i1793, %maven_set_reg.exit1789.maven_set_reg.exit1794_crit_edge
  %429 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %arrayidx149, align 4
  %call.i1795 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 36, i8 noundef zeroext %430) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1795)
  %tobool.not.i1796 = icmp eq i32 %call.i1795, 0
  br i1 %tobool.not.i1796, label %maven_set_reg.exit1794.maven_set_reg.exit1799_crit_edge, label %do.end.i1798

maven_set_reg.exit1794.maven_set_reg.exit1799_crit_edge: ; preds = %maven_set_reg.exit1794
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1799

do.end.i1798:                                     ; preds = %maven_set_reg.exit1794
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1797 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 36) #15
  br label %maven_set_reg.exit1799

maven_set_reg.exit1799:                           ; preds = %do.end.i1798, %maven_set_reg.exit1794.maven_set_reg.exit1799_crit_edge
  %431 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %arrayidx153, align 4
  %call.i1800 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 20, i8 noundef zeroext %432) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1800)
  %tobool.not.i1801 = icmp eq i32 %call.i1800, 0
  br i1 %tobool.not.i1801, label %maven_set_reg.exit1799.maven_set_reg.exit1804_crit_edge, label %do.end.i1803

maven_set_reg.exit1799.maven_set_reg.exit1804_crit_edge: ; preds = %maven_set_reg.exit1799
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1804

do.end.i1803:                                     ; preds = %maven_set_reg.exit1799
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1802 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 20) #15
  br label %maven_set_reg.exit1804

maven_set_reg.exit1804:                           ; preds = %do.end.i1803, %maven_set_reg.exit1799.maven_set_reg.exit1804_crit_edge
  %433 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %arrayidx157, align 1
  %call.i1805 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 21, i8 noundef zeroext %434) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1805)
  %tobool.not.i1806 = icmp eq i32 %call.i1805, 0
  br i1 %tobool.not.i1806, label %maven_set_reg.exit1804.maven_set_reg.exit1809_crit_edge, label %do.end.i1808

maven_set_reg.exit1804.maven_set_reg.exit1809_crit_edge: ; preds = %maven_set_reg.exit1804
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1809

do.end.i1808:                                     ; preds = %maven_set_reg.exit1804
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1807 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 21) #15
  br label %maven_set_reg.exit1809

maven_set_reg.exit1809:                           ; preds = %do.end.i1808, %maven_set_reg.exit1804.maven_set_reg.exit1809_crit_edge
  %435 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load1_noabort(i32 %435)
  %436 = load i8, ptr %arrayidx161, align 2
  %call.i1810 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 22, i8 noundef zeroext %436) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1810)
  %tobool.not.i1811 = icmp eq i32 %call.i1810, 0
  br i1 %tobool.not.i1811, label %maven_set_reg.exit1809.maven_set_reg.exit1814_crit_edge, label %do.end.i1813

maven_set_reg.exit1809.maven_set_reg.exit1814_crit_edge: ; preds = %maven_set_reg.exit1809
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1814

do.end.i1813:                                     ; preds = %maven_set_reg.exit1809
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1812 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 22) #15
  br label %maven_set_reg.exit1814

maven_set_reg.exit1814:                           ; preds = %do.end.i1813, %maven_set_reg.exit1809.maven_set_reg.exit1814_crit_edge
  %437 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %arrayidx165, align 1
  %conv559 = zext i8 %438 to i16
  %439 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %439)
  %440 = load i8, ptr %arrayidx168, align 2
  %conv562 = zext i8 %440 to i16
  %shl563 = shl nuw i16 %conv562, 8
  %or564 = or i16 %shl563, %conv559
  %call.i1816 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext 45, i16 noundef zeroext %or564) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1816)
  %tobool.not.i1817 = icmp eq i32 %call.i1816, 0
  br i1 %tobool.not.i1817, label %maven_set_reg.exit1814.maven_set_reg_pair.exit1820_crit_edge, label %do.end.i1819

maven_set_reg.exit1814.maven_set_reg_pair.exit1820_crit_edge: ; preds = %maven_set_reg.exit1814
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1820

do.end.i1819:                                     ; preds = %maven_set_reg.exit1814
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1818 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 45) #15
  br label %maven_set_reg_pair.exit1820

maven_set_reg_pair.exit1820:                      ; preds = %do.end.i1819, %maven_set_reg.exit1814.maven_set_reg_pair.exit1820_crit_edge
  %441 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %arrayidx174, align 1
  %conv568 = zext i8 %442 to i16
  %443 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %arrayidx177, align 4
  %conv571 = zext i8 %444 to i16
  %shl572 = shl nuw i16 %conv571, 8
  %or573 = or i16 %shl572, %conv568
  %call.i1822 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext 47, i16 noundef zeroext %or573) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1822)
  %tobool.not.i1823 = icmp eq i32 %call.i1822, 0
  br i1 %tobool.not.i1823, label %maven_set_reg_pair.exit1820.maven_set_reg_pair.exit1826_crit_edge, label %do.end.i1825

maven_set_reg_pair.exit1820.maven_set_reg_pair.exit1826_crit_edge: ; preds = %maven_set_reg_pair.exit1820
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1826

do.end.i1825:                                     ; preds = %maven_set_reg_pair.exit1820
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1824 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 47) #15
  br label %maven_set_reg_pair.exit1826

maven_set_reg_pair.exit1826:                      ; preds = %do.end.i1825, %maven_set_reg_pair.exit1820.maven_set_reg_pair.exit1826_crit_edge
  %445 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %arrayidx183, align 2
  %call.i1827 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 26, i8 noundef zeroext %446) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1827)
  %tobool.not.i1828 = icmp eq i32 %call.i1827, 0
  br i1 %tobool.not.i1828, label %maven_set_reg_pair.exit1826.maven_set_reg.exit1831_crit_edge, label %do.end.i1830

maven_set_reg_pair.exit1826.maven_set_reg.exit1831_crit_edge: ; preds = %maven_set_reg_pair.exit1826
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1831

do.end.i1830:                                     ; preds = %maven_set_reg_pair.exit1826
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1829 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 26) #15
  br label %maven_set_reg.exit1831

maven_set_reg.exit1831:                           ; preds = %do.end.i1830, %maven_set_reg_pair.exit1826.maven_set_reg.exit1831_crit_edge
  %447 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %arrayidx187, align 1
  %call.i1832 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 27, i8 noundef zeroext %448) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1832)
  %tobool.not.i1833 = icmp eq i32 %call.i1832, 0
  br i1 %tobool.not.i1833, label %maven_set_reg.exit1831.maven_set_reg.exit1836_crit_edge, label %do.end.i1835

maven_set_reg.exit1831.maven_set_reg.exit1836_crit_edge: ; preds = %maven_set_reg.exit1831
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1836

do.end.i1835:                                     ; preds = %maven_set_reg.exit1831
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1834 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 27) #15
  br label %maven_set_reg.exit1836

maven_set_reg.exit1836:                           ; preds = %do.end.i1835, %maven_set_reg.exit1831.maven_set_reg.exit1836_crit_edge
  %449 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %arrayidx191, align 4
  %call.i1837 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 28, i8 noundef zeroext %450) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1837)
  %tobool.not.i1838 = icmp eq i32 %call.i1837, 0
  br i1 %tobool.not.i1838, label %maven_set_reg.exit1836.maven_set_reg.exit1841_crit_edge, label %do.end.i1840

maven_set_reg.exit1836.maven_set_reg.exit1841_crit_edge: ; preds = %maven_set_reg.exit1836
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1841

do.end.i1840:                                     ; preds = %maven_set_reg.exit1836
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1839 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 28) #15
  br label %maven_set_reg.exit1841

maven_set_reg.exit1841:                           ; preds = %do.end.i1840, %maven_set_reg.exit1836.maven_set_reg.exit1841_crit_edge
  %451 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load1_noabort(i32 %451)
  %452 = load i8, ptr %arrayidx195, align 1
  %call.i1842 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 35, i8 noundef zeroext %452) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1842)
  %tobool.not.i1843 = icmp eq i32 %call.i1842, 0
  br i1 %tobool.not.i1843, label %maven_set_reg.exit1841.maven_set_reg.exit1846_crit_edge, label %do.end.i1845

maven_set_reg.exit1841.maven_set_reg.exit1846_crit_edge: ; preds = %maven_set_reg.exit1841
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1846

do.end.i1845:                                     ; preds = %maven_set_reg.exit1841
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1844 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 35) #15
  br label %maven_set_reg.exit1846

maven_set_reg.exit1846:                           ; preds = %do.end.i1845, %maven_set_reg.exit1841.maven_set_reg.exit1846_crit_edge
  %453 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %arrayidx199, align 2
  %call.i1847 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 38, i8 noundef zeroext %454) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1847)
  %tobool.not.i1848 = icmp eq i32 %call.i1847, 0
  br i1 %tobool.not.i1848, label %maven_set_reg.exit1846.maven_set_reg.exit1851_crit_edge, label %do.end.i1850

maven_set_reg.exit1846.maven_set_reg.exit1851_crit_edge: ; preds = %maven_set_reg.exit1846
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1851

do.end.i1850:                                     ; preds = %maven_set_reg.exit1846
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1849 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 38) #15
  br label %maven_set_reg.exit1851

maven_set_reg.exit1851:                           ; preds = %do.end.i1850, %maven_set_reg.exit1846.maven_set_reg.exit1851_crit_edge
  %455 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load1_noabort(i32 %455)
  %456 = load i8, ptr %arrayidx203, align 4
  %call.i1852 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 40, i8 noundef zeroext %456) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1852)
  %tobool.not.i1853 = icmp eq i32 %call.i1852, 0
  br i1 %tobool.not.i1853, label %maven_set_reg.exit1851.maven_set_reg.exit1856_crit_edge, label %do.end.i1855

maven_set_reg.exit1851.maven_set_reg.exit1856_crit_edge: ; preds = %maven_set_reg.exit1851
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1856

do.end.i1855:                                     ; preds = %maven_set_reg.exit1851
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1854 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 40) #15
  br label %maven_set_reg.exit1856

maven_set_reg.exit1856:                           ; preds = %do.end.i1855, %maven_set_reg.exit1851.maven_set_reg.exit1856_crit_edge
  %457 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load1_noabort(i32 %457)
  %458 = load i8, ptr %arrayidx207, align 1
  %call.i1857 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 39, i8 noundef zeroext %458) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1857)
  %tobool.not.i1858 = icmp eq i32 %call.i1857, 0
  br i1 %tobool.not.i1858, label %maven_set_reg.exit1856.maven_set_reg.exit1861_crit_edge, label %do.end.i1860

maven_set_reg.exit1856.maven_set_reg.exit1861_crit_edge: ; preds = %maven_set_reg.exit1856
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1861

do.end.i1860:                                     ; preds = %maven_set_reg.exit1856
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1859 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 39) #15
  br label %maven_set_reg.exit1861

maven_set_reg.exit1861:                           ; preds = %do.end.i1860, %maven_set_reg.exit1856.maven_set_reg.exit1861_crit_edge
  %459 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %arrayidx211, align 1
  %call.i1862 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 33, i8 noundef zeroext %460) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1862)
  %tobool.not.i1863 = icmp eq i32 %call.i1862, 0
  br i1 %tobool.not.i1863, label %maven_set_reg.exit1861.maven_set_reg.exit1866_crit_edge, label %do.end.i1865

maven_set_reg.exit1861.maven_set_reg.exit1866_crit_edge: ; preds = %maven_set_reg.exit1861
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1866

do.end.i1865:                                     ; preds = %maven_set_reg.exit1861
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1864 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 33) #15
  br label %maven_set_reg.exit1866

maven_set_reg.exit1866:                           ; preds = %do.end.i1865, %maven_set_reg.exit1861.maven_set_reg.exit1866_crit_edge
  %461 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load1_noabort(i32 %461)
  %462 = load i8, ptr %arrayidx215, align 2
  %conv609 = zext i8 %462 to i16
  %463 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %arrayidx218, align 1
  %conv612 = zext i8 %464 to i16
  %shl613 = shl nuw i16 %conv612, 8
  %or614 = or i16 %shl613, %conv609
  %call.i1868 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext 42, i16 noundef zeroext %or614) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1868)
  %tobool.not.i1869 = icmp eq i32 %call.i1868, 0
  br i1 %tobool.not.i1869, label %maven_set_reg.exit1866.maven_set_reg_pair.exit1872_crit_edge, label %do.end.i1871

maven_set_reg.exit1866.maven_set_reg_pair.exit1872_crit_edge: ; preds = %maven_set_reg.exit1866
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1872

do.end.i1871:                                     ; preds = %maven_set_reg.exit1866
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1870 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 42) #15
  br label %maven_set_reg_pair.exit1872

maven_set_reg_pair.exit1872:                      ; preds = %do.end.i1871, %maven_set_reg.exit1866.maven_set_reg_pair.exit1872_crit_edge
  %465 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %466)
  %cmp617 = icmp eq i32 %466, 1
  br i1 %cmp617, label %if.then619, label %if.else621

if.then619:                                       ; preds = %maven_set_reg_pair.exit1872
  %call.i1873 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 53, i8 noundef zeroext 29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1873)
  %tobool.not.i1874 = icmp eq i32 %call.i1873, 0
  br i1 %tobool.not.i1874, label %if.then619.if.end623_crit_edge, label %if.then619.if.end623.sink.split_crit_edge

if.then619.if.end623.sink.split_crit_edge:        ; preds = %if.then619
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end623.sink.split

if.then619.if.end623_crit_edge:                   ; preds = %if.then619
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end623

if.else621:                                       ; preds = %maven_set_reg_pair.exit1872
  %call.i1878 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 53, i8 noundef zeroext 28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1878)
  %tobool.not.i1879 = icmp eq i32 %call.i1878, 0
  br i1 %tobool.not.i1879, label %if.else621.if.end623_crit_edge, label %if.else621.if.end623.sink.split_crit_edge

if.else621.if.end623.sink.split_crit_edge:        ; preds = %if.else621
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end623.sink.split

if.else621.if.end623_crit_edge:                   ; preds = %if.else621
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end623

if.end623.sink.split:                             ; preds = %if.else621.if.end623.sink.split_crit_edge, %if.then619.if.end623.sink.split_crit_edge
  %call2.i1880 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 53) #15
  br label %if.end623

if.end623:                                        ; preds = %if.end623.sink.split, %if.else621.if.end623_crit_edge, %if.then619.if.end623_crit_edge
  %467 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %arrayidx232, align 4
  %conv626 = zext i8 %468 to i16
  %469 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %arrayidx235, align 1
  %conv629 = zext i8 %470 to i16
  %shl630 = shl nuw i16 %conv629, 8
  %or631 = or i16 %shl630, %conv626
  %call.i1884 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext 60, i16 noundef zeroext %or631) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1884)
  %tobool.not.i1885 = icmp eq i32 %call.i1884, 0
  br i1 %tobool.not.i1885, label %if.end623.maven_set_reg_pair.exit1888_crit_edge, label %do.end.i1887

if.end623.maven_set_reg_pair.exit1888_crit_edge:  ; preds = %if.end623
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1888

do.end.i1887:                                     ; preds = %if.end623
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1886 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 60) #15
  br label %maven_set_reg_pair.exit1888

maven_set_reg_pair.exit1888:                      ; preds = %do.end.i1887, %if.end623.maven_set_reg_pair.exit1888_crit_edge
  %471 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %arrayidx241, align 1
  %call.i1889 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 55, i8 noundef zeroext %472) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1889)
  %tobool.not.i1890 = icmp eq i32 %call.i1889, 0
  br i1 %tobool.not.i1890, label %maven_set_reg_pair.exit1888.maven_set_reg.exit1893_crit_edge, label %do.end.i1892

maven_set_reg_pair.exit1888.maven_set_reg.exit1893_crit_edge: ; preds = %maven_set_reg_pair.exit1888
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1893

do.end.i1892:                                     ; preds = %maven_set_reg_pair.exit1888
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1891 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 55) #15
  br label %maven_set_reg.exit1893

maven_set_reg.exit1893:                           ; preds = %do.end.i1892, %maven_set_reg_pair.exit1888.maven_set_reg.exit1893_crit_edge
  %473 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %arrayidx245, align 4
  %call.i1894 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 56, i8 noundef zeroext %474) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1894)
  %tobool.not.i1895 = icmp eq i32 %call.i1894, 0
  br i1 %tobool.not.i1895, label %maven_set_reg.exit1893.maven_set_reg.exit1898_crit_edge, label %do.end.i1897

maven_set_reg.exit1893.maven_set_reg.exit1898_crit_edge: ; preds = %maven_set_reg.exit1893
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1898

do.end.i1897:                                     ; preds = %maven_set_reg.exit1893
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1896 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 56) #15
  br label %maven_set_reg.exit1898

maven_set_reg.exit1898:                           ; preds = %do.end.i1897, %maven_set_reg.exit1893.maven_set_reg.exit1898_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i1899)
  %475 = ptrtoint ptr %reg.addr.i1899 to i32
  call void @__asan_store1_noabort(i32 %475)
  store i8 -80, ptr %reg.addr.i1899, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dst.i1900) #11
  %476 = ptrtoint ptr %dst.i1900 to i32
  call void @__asan_store1_noabort(i32 %476)
  store i8 -1, ptr %dst.i1900, align 1, !annotation !65
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i1901) #11
  %477 = getelementptr inbounds i8, ptr %msgs.i1901, i32 4
  %478 = call ptr @memset(ptr %477, i32 255, i32 16)
  %479 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %479)
  %480 = load i16, ptr %addr1.i, align 2
  %481 = ptrtoint ptr %msgs.i1901 to i32
  call void @__asan_store2_noabort(i32 %481)
  store i16 %480, ptr %msgs.i1901, align 4
  %flags.i1903 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1901, i32 0, i32 1
  %482 = ptrtoint ptr %flags.i1903 to i32
  call void @__asan_store2_noabort(i32 %482)
  store i16 8192, ptr %flags.i1903, align 2
  %483 = ptrtoint ptr %477 to i32
  call void @__asan_store2_noabort(i32 %483)
  store i16 1, ptr %477, align 4
  %buf.i1905 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1901, i32 0, i32 3
  %484 = ptrtoint ptr %buf.i1905 to i32
  call void @__asan_store4_noabort(i32 %484)
  store ptr %reg.addr.i1899, ptr %buf.i1905, align 4
  %arrayinit.element.i1906 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1901, i32 1
  %485 = ptrtoint ptr %arrayinit.element.i1906 to i32
  call void @__asan_store2_noabort(i32 %485)
  store i16 %480, ptr %arrayinit.element.i1906, align 4
  %flags4.i1907 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1901, i32 1, i32 1
  %486 = ptrtoint ptr %flags4.i1907 to i32
  call void @__asan_store2_noabort(i32 %486)
  store i16 16385, ptr %flags4.i1907, align 2
  %len5.i1908 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1901, i32 1, i32 2
  %487 = ptrtoint ptr %len5.i1908 to i32
  call void @__asan_store2_noabort(i32 %487)
  store i16 1, ptr %len5.i1908, align 4
  %buf6.i1909 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i1901, i32 1, i32 3
  %488 = ptrtoint ptr %buf6.i1909 to i32
  call void @__asan_store4_noabort(i32 %488)
  store ptr %dst.i1900, ptr %buf6.i1909, align 4
  %489 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %adapter.i, align 8
  %call.i1911 = call i32 @i2c_transfer(ptr noundef %490, ptr noundef nonnull %msgs.i1901, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1911)
  %cmp.i1912 = icmp slt i32 %call.i1911, 0
  br i1 %cmp.i1912, label %do.end.i1915, label %maven_set_reg.exit1898.maven_get_reg.exit1917_crit_edge

maven_set_reg.exit1898.maven_get_reg.exit1917_crit_edge: ; preds = %maven_set_reg.exit1898
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_get_reg.exit1917

do.end.i1915:                                     ; preds = %maven_set_reg.exit1898
  call void @__sanitizer_cov_trace_pc() #13
  %491 = ptrtoint ptr %reg.addr.i1899 to i32
  call void @__asan_load1_noabort(i32 %491)
  %492 = load i8, ptr %reg.addr.i1899, align 1
  %conv.i1913 = zext i8 %492 to i32
  %call7.i1914 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv.i1913) #15
  br label %maven_get_reg.exit1917

maven_get_reg.exit1917:                           ; preds = %do.end.i1915, %maven_set_reg.exit1898.maven_get_reg.exit1917_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i1901) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dst.i1900) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i1899)
  %arrayidx643 = getelementptr [256 x i8], ptr %m, i32 0, i32 176
  %493 = ptrtoint ptr %arrayidx643 to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %arrayidx643, align 4
  %call.i1918 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -80, i8 noundef zeroext %494) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1918)
  %tobool.not.i1919 = icmp eq i32 %call.i1918, 0
  br i1 %tobool.not.i1919, label %maven_get_reg.exit1917.maven_set_reg.exit1922_crit_edge, label %do.end.i1921

maven_get_reg.exit1917.maven_set_reg.exit1922_crit_edge: ; preds = %maven_get_reg.exit1917
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1922

do.end.i1921:                                     ; preds = %maven_get_reg.exit1917
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1920 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 176) #15
  br label %maven_set_reg.exit1922

maven_set_reg.exit1922:                           ; preds = %do.end.i1921, %maven_get_reg.exit1917.maven_set_reg.exit1922_crit_edge
  %495 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %arrayidx273, align 4
  %call.i1923 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -112, i8 noundef zeroext %496) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1923)
  %tobool.not.i1924 = icmp eq i32 %call.i1923, 0
  br i1 %tobool.not.i1924, label %maven_set_reg.exit1922.maven_set_reg.exit1927_crit_edge, label %do.end.i1926

maven_set_reg.exit1922.maven_set_reg.exit1927_crit_edge: ; preds = %maven_set_reg.exit1922
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1927

do.end.i1926:                                     ; preds = %maven_set_reg.exit1922
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1925 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 144) #15
  br label %maven_set_reg.exit1927

maven_set_reg.exit1927:                           ; preds = %do.end.i1926, %maven_set_reg.exit1922.maven_set_reg.exit1927_crit_edge
  %497 = ptrtoint ptr %arrayidx402 to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %arrayidx402, align 2
  %call.i1928 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -66, i8 noundef zeroext %498) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1928)
  %tobool.not.i1929 = icmp eq i32 %call.i1928, 0
  br i1 %tobool.not.i1929, label %maven_set_reg.exit1927.maven_set_reg.exit1932_crit_edge, label %do.end.i1931

maven_set_reg.exit1927.maven_set_reg.exit1932_crit_edge: ; preds = %maven_set_reg.exit1927
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1932

do.end.i1931:                                     ; preds = %maven_set_reg.exit1927
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1930 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 190) #15
  br label %maven_set_reg.exit1932

maven_set_reg.exit1932:                           ; preds = %do.end.i1931, %maven_set_reg.exit1927.maven_set_reg.exit1932_crit_edge
  %499 = ptrtoint ptr %arrayidx406 to i32
  call void @__asan_load1_noabort(i32 %499)
  %500 = load i8, ptr %arrayidx406, align 2
  %call.i1933 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -62, i8 noundef zeroext %500) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1933)
  %tobool.not.i1934 = icmp eq i32 %call.i1933, 0
  br i1 %tobool.not.i1934, label %maven_set_reg.exit1932.maven_set_reg.exit1937_crit_edge, label %do.end.i1936

maven_set_reg.exit1932.maven_set_reg.exit1937_crit_edge: ; preds = %maven_set_reg.exit1932
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1937

do.end.i1936:                                     ; preds = %maven_set_reg.exit1932
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1935 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 194) #15
  br label %maven_set_reg.exit1937

maven_set_reg.exit1937:                           ; preds = %do.end.i1936, %maven_set_reg.exit1932.maven_set_reg.exit1937_crit_edge
  %501 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load1_noabort(i32 %501)
  %502 = load i8, ptr %arrayidx285, align 2
  %conv660 = zext i8 %502 to i16
  %503 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %arrayidx288, align 1
  %conv663 = zext i8 %504 to i16
  %shl664 = shl nuw i16 %conv663, 8
  %or665 = or i16 %shl664, %conv660
  %call.i1939 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext -102, i16 noundef zeroext %or665) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1939)
  %tobool.not.i1940 = icmp eq i32 %call.i1939, 0
  br i1 %tobool.not.i1940, label %maven_set_reg.exit1937.maven_set_reg_pair.exit1943_crit_edge, label %do.end.i1942

maven_set_reg.exit1937.maven_set_reg_pair.exit1943_crit_edge: ; preds = %maven_set_reg.exit1937
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1943

do.end.i1942:                                     ; preds = %maven_set_reg.exit1937
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1941 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 154) #15
  br label %maven_set_reg_pair.exit1943

maven_set_reg_pair.exit1943:                      ; preds = %do.end.i1942, %maven_set_reg.exit1937.maven_set_reg_pair.exit1943_crit_edge
  %505 = ptrtoint ptr %arrayidx321 to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %arrayidx321, align 2
  %conv669 = zext i8 %506 to i16
  %507 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %arrayidx324, align 1
  %conv672 = zext i8 %508 to i16
  %shl673 = shl nuw i16 %conv672, 8
  %or674 = or i16 %shl673, %conv669
  %call.i1945 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext -94, i16 noundef zeroext %or674) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1945)
  %tobool.not.i1946 = icmp eq i32 %call.i1945, 0
  br i1 %tobool.not.i1946, label %maven_set_reg_pair.exit1943.maven_set_reg_pair.exit1949_crit_edge, label %do.end.i1948

maven_set_reg_pair.exit1943.maven_set_reg_pair.exit1949_crit_edge: ; preds = %maven_set_reg_pair.exit1943
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1949

do.end.i1948:                                     ; preds = %maven_set_reg_pair.exit1943
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1947 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 162) #15
  br label %maven_set_reg_pair.exit1949

maven_set_reg_pair.exit1949:                      ; preds = %do.end.i1948, %maven_set_reg_pair.exit1943.maven_set_reg_pair.exit1949_crit_edge
  %509 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %arrayidx303, align 2
  %conv678 = zext i8 %510 to i16
  %511 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %arrayidx306, align 1
  %conv681 = zext i8 %512 to i16
  %shl682 = shl nuw i16 %conv681, 8
  %or683 = or i16 %shl682, %conv678
  %call.i1951 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext -98, i16 noundef zeroext %or683) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1951)
  %tobool.not.i1952 = icmp eq i32 %call.i1951, 0
  br i1 %tobool.not.i1952, label %maven_set_reg_pair.exit1949.maven_set_reg_pair.exit1955_crit_edge, label %do.end.i1954

maven_set_reg_pair.exit1949.maven_set_reg_pair.exit1955_crit_edge: ; preds = %maven_set_reg_pair.exit1949
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1955

do.end.i1954:                                     ; preds = %maven_set_reg_pair.exit1949
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1953 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 158) #15
  br label %maven_set_reg_pair.exit1955

maven_set_reg_pair.exit1955:                      ; preds = %do.end.i1954, %maven_set_reg_pair.exit1949.maven_set_reg_pair.exit1955_crit_edge
  %513 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_load1_noabort(i32 %513)
  %514 = load i8, ptr %arrayidx339, align 2
  %conv687 = zext i8 %514 to i16
  %515 = ptrtoint ptr %arrayidx342 to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %arrayidx342, align 1
  %conv690 = zext i8 %516 to i16
  %shl691 = shl nuw i16 %conv690, 8
  %or692 = or i16 %shl691, %conv687
  %call.i1957 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext -90, i16 noundef zeroext %or692) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1957)
  %tobool.not.i1958 = icmp eq i32 %call.i1957, 0
  br i1 %tobool.not.i1958, label %maven_set_reg_pair.exit1955.maven_set_reg_pair.exit1961_crit_edge, label %do.end.i1960

maven_set_reg_pair.exit1955.maven_set_reg_pair.exit1961_crit_edge: ; preds = %maven_set_reg_pair.exit1955
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1961

do.end.i1960:                                     ; preds = %maven_set_reg_pair.exit1955
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1959 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 166) #15
  br label %maven_set_reg_pair.exit1961

maven_set_reg_pair.exit1961:                      ; preds = %do.end.i1960, %maven_set_reg_pair.exit1955.maven_set_reg_pair.exit1961_crit_edge
  %517 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %arrayidx384, align 2
  %conv696 = zext i8 %518 to i16
  %519 = ptrtoint ptr %arrayidx387 to i32
  call void @__asan_load1_noabort(i32 %519)
  %520 = load i8, ptr %arrayidx387, align 1
  %conv699 = zext i8 %520 to i16
  %shl700 = shl nuw i16 %conv699, 8
  %or701 = or i16 %shl700, %conv696
  %call.i1963 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext -86, i16 noundef zeroext %or701) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1963)
  %tobool.not.i1964 = icmp eq i32 %call.i1963, 0
  br i1 %tobool.not.i1964, label %maven_set_reg_pair.exit1961.maven_set_reg_pair.exit1967_crit_edge, label %do.end.i1966

maven_set_reg_pair.exit1961.maven_set_reg_pair.exit1967_crit_edge: ; preds = %maven_set_reg_pair.exit1961
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1967

do.end.i1966:                                     ; preds = %maven_set_reg_pair.exit1961
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1965 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 170) #15
  br label %maven_set_reg_pair.exit1967

maven_set_reg_pair.exit1967:                      ; preds = %do.end.i1966, %maven_set_reg_pair.exit1961.maven_set_reg_pair.exit1967_crit_edge
  %521 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %arrayidx393, align 4
  %conv705 = zext i8 %522 to i16
  %523 = ptrtoint ptr %arrayidx396 to i32
  call void @__asan_load1_noabort(i32 %523)
  %524 = load i8, ptr %arrayidx396, align 1
  %conv708 = zext i8 %524 to i16
  %shl709 = shl nuw i16 %conv708, 8
  %or710 = or i16 %shl709, %conv705
  %call.i1969 = call i32 @i2c_smbus_write_word_data(ptr noundef %c, i8 noundef zeroext -84, i16 noundef zeroext %or710) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1969)
  %tobool.not.i1970 = icmp eq i32 %call.i1969, 0
  br i1 %tobool.not.i1970, label %maven_set_reg_pair.exit1967.maven_set_reg_pair.exit1973_crit_edge, label %do.end.i1972

maven_set_reg_pair.exit1967.maven_set_reg_pair.exit1973_crit_edge: ; preds = %maven_set_reg_pair.exit1967
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg_pair.exit1973

do.end.i1972:                                     ; preds = %maven_set_reg_pair.exit1967
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1971 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 172) #15
  br label %maven_set_reg_pair.exit1973

maven_set_reg_pair.exit1973:                      ; preds = %do.end.i1972, %maven_set_reg_pair.exit1967.maven_set_reg_pair.exit1973_crit_edge
  %call.i1974 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext 62, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1974)
  %tobool.not.i1975 = icmp eq i32 %call.i1974, 0
  br i1 %tobool.not.i1975, label %maven_set_reg_pair.exit1973.maven_set_reg.exit1978_crit_edge, label %do.end.i1977

maven_set_reg_pair.exit1973.maven_set_reg.exit1978_crit_edge: ; preds = %maven_set_reg_pair.exit1973
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1978

do.end.i1977:                                     ; preds = %maven_set_reg_pair.exit1973
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1976 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 62) #15
  br label %maven_set_reg.exit1978

maven_set_reg.exit1978:                           ; preds = %do.end.i1977, %maven_set_reg_pair.exit1973.maven_set_reg.exit1978_crit_edge
  %call.i1979 = call i32 @i2c_smbus_write_byte_data(ptr noundef %c, i8 noundef zeroext -107, i8 noundef zeroext 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1979)
  %tobool.not.i1980 = icmp eq i32 %call.i1979, 0
  br i1 %tobool.not.i1980, label %maven_set_reg.exit1978.maven_set_reg.exit1983_crit_edge, label %do.end.i1982

maven_set_reg.exit1978.maven_set_reg.exit1983_crit_edge: ; preds = %maven_set_reg.exit1978
  call void @__sanitizer_cov_trace_pc() #13
  br label %maven_set_reg.exit1983

do.end.i1982:                                     ; preds = %maven_set_reg.exit1978
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i1981 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 149) #15
  br label %maven_set_reg.exit1983

maven_set_reg.exit1983:                           ; preds = %do.end.i1982, %maven_set_reg.exit1978.maven_set_reg.exit1983_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40, !41, !42, !43, !45, !47, !49, !50, !51, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_matroxfb_maven__309_1301_maven_driver_init6, !1, !"__initcall__kmod_matroxfb_maven__309_1301_maven_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 1301, i32 1}
!2 = !{ptr @__exitcall_maven_driver_exit, !1, !"__exitcall_maven_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author310, !4, !"__UNIQUE_ID_author310", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 1302, i32 1}
!5 = !{ptr @__UNIQUE_ID_description311, !6, !"__UNIQUE_ID_description311", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 1303, i32 1}
!7 = !{ptr @__UNIQUE_ID_file312, !8, !"__UNIQUE_ID_file312", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 1304, i32 1}
!9 = !{ptr @__UNIQUE_ID_license313, !8, !"__UNIQUE_ID_license313", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 1294, i32 11}
!12 = !{ptr @maven_driver, !13, !"maven_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 1292, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 1191, i32 11}
!16 = !{ptr @maven_altout, !17, !"maven_altout", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 1190, i32 29}
!18 = !{ptr @maven_init_TVdata.palregs, !19, !"palregs", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 373, i32 26}
!20 = !{ptr @maven_init_TVdata.ntscregs, !21, !"ntscregs", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 425, i32 26}
!22 = !{ptr @maven_gamma, !23, !"maven_gamma", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 37, i32 3}
!24 = distinct !{null, !25, !"maven1000_pll", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 204, i32 42}
!26 = distinct !{null, !27, !"maven_PAL", i1 false, i1 false}
!27 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 214, i32 36}
!28 = distinct !{null, !29, !"maven_NTSC", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 219, i32 36}
!30 = !{ptr @maven_pll, !31, !"maven_pll", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 181, i32 41}
!32 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 168, i32 3}
!34 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @maven_set_reg._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @maven_set_reg._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 177, i32 3}
!40 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @maven_set_reg_pair._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @maven_set_reg_pair._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @maven_get_queryctrl.disctrl, !44, !"disctrl", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 1043, i32 38}
!45 = !{ptr @.str.7, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 1049, i32 20}
!47 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 159, i32 3}
!49 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @maven_get_reg._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @maven_get_reg._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @maven_controls, !53, !"maven_controls", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 68, i32 26}
!54 = !{ptr @maven_id, !55, !"maven_id", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/matrox/matroxfb_maven.c", i32 1286, i32 35}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{i64 2149045100, i64 2149045380, i64 2149045714, i64 2149046048}
