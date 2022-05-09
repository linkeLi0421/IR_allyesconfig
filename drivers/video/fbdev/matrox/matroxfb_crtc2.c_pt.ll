; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/matrox/matroxfb_crtc2.c_pt.bc'
source_filename = "../drivers/video/fbdev/matrox/matroxfb_crtc2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.matroxfb_driver = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.matrox_fb_info = type { %struct.fb_info, %struct.list_head, i32, i32, i32, i32, i32, %struct.matroxfb_par, %struct.matrox_hw_state, %struct.matrox_accel_data, ptr, %struct.anon.87, %struct.anon.88, %struct.anon.91, [3 x %struct.anon.93], [5 x ptr], [5 x ptr], i32, %struct.anon.94, %struct.anon.95, i32, i32, ptr, %struct.anon.96, %struct.anon.97, i32, i32, i32, i32, %struct.anon.98, i32, %struct.anon.99, %struct.fb_ops, %struct.matrox_bios, %struct.anon.102, %struct.anon.103, %struct.anon.105, [16 x i32] }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.84 = type { ptr }
%struct.matroxfb_par = type { i32, i32, %struct.anon.85 }
%struct.anon.85 = type { i32, i32, i32 }
%struct.matrox_hw_state = type { i32, [6 x i8], [80 x i8], i8, [768 x i8], [25 x i8], [9 x i8], [5 x i8], [9 x i8], [21 x i8], %struct.mavenregs, %struct.matrox_crtc2 }
%struct.mavenregs = type { [256 x i8], i32, i32, i32, i32, i16, i16 }
%struct.matrox_crtc2 = type { i32 }
%struct.matrox_accel_data = type { i8, i32, i32, i32, i32 }
%struct.anon.87 = type { %struct.matrox_vsync, i32, i32, i32 }
%struct.matrox_vsync = type { %struct.wait_queue_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.88 = type { %struct.matrox_vsync, i32, i32, ptr, %struct.rw_semaphore }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.91 = type { %struct.rw_semaphore, %struct.anon.92 }
%struct.anon.92 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.93 = type { i32, ptr, ptr, i32, i32 }
%struct.anon.94 = type { i32, %struct.vaddr_t, i32, i32, i32 }
%struct.vaddr_t = type { ptr }
%struct.anon.95 = type { i32, %struct.vaddr_t, i32 }
%struct.anon.96 = type { %struct.matrox_pll_features, %struct.matrox_DAC1064_features }
%struct.matrox_pll_features = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.matrox_DAC1064_features = type { i8, i8 }
%struct.anon.97 = type { %struct.spinlock, %struct.spinlock }
%struct.anon.98 = type { i32, ptr, i32, i32, i32, i32 }
%struct.anon.99 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.matroxfb_dh_fb_info = type { %struct.fb_info, i32, i32, ptr, %struct.anon.89, %struct.anon.90, i8, [16 x i32] }
%struct.anon.89 = type { i32, %struct.vaddr_t, i32, i32, i32, i32, i32 }
%struct.anon.90 = type { i32, %struct.vaddr_t, i32 }
%struct.my_timming = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.matrox_altout = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_vblank = type { i32, i32, i32, i32, [4 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_mem = internal constant [19 x i8] c"matroxfb_crtc2.mem\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@mem = internal global { i32, [28 x i8] } { i32 8192, [28 x i8] zeroinitializer }, align 32
@__param_mem = internal constant %struct.kernel_param { ptr @__param_str_mem, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mem } }, section "__param", align 4
@__UNIQUE_ID_memtype305 = internal constant [32 x i8] c"matroxfb_crtc2.parmtype=mem:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mem306 = internal constant [72 x i8] c"matroxfb_crtc2.parm=mem:Memory size reserved for dualhead (default=8MB)\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [73 x i8] c"matroxfb_crtc2.author=(c) 1999-2002 Petr Vandrovec <vandrove@vc.cvut.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [52 x i8] c"matroxfb_crtc2.description=Matrox G400 CRTC2 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [62 x i8] c"matroxfb_crtc2.file=drivers/video/fbdev/matrox/matroxfb_crtc2\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [27 x i8] c"matroxfb_crtc2.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_matroxfb_crtc2__311_737_matroxfb_crtc2_init6 = internal global ptr @matroxfb_crtc2_init, section ".initcall6.init", align 4
@__exitcall_matroxfb_crtc2_exit = internal global ptr @matroxfb_crtc2_exit, section ".exitcall.exit", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"matrox_crtc2fb\00", [17 x i8] zeroinitializer }, align 32
@crtc2 = internal global { %struct.matroxfb_driver, [44 x i8] } { %struct.matroxfb_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @matroxfb_crtc2_probe, ptr @matroxfb_crtc2_remove }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Matrox G400 CRTC2\00", [46 x i8] zeroinitializer }, align 32
@matroxfb_crtc2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013matroxfb_crtc2: CRTC2 framebuffer failed to register\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"matroxfb_crtc2_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/video/fbdev/matrox/matroxfb_crtc2.c\00", [52 x i8] zeroinitializer }, align 32
@matroxfb_crtc2_probe._entry_ptr = internal global ptr @matroxfb_crtc2_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@matroxfb_dh_registerfb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013matroxfb_crtc2: secondary head failed to register\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"matroxfb_dh_registerfb\00", [41 x i8] zeroinitializer }, align 32
@matroxfb_dh_registerfb._entry_ptr = internal global ptr @matroxfb_dh_registerfb._entry, section ".printk_index", align 4
@matroxfb_dh_registerfb._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.4, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016matroxfb_crtc2: secondary head of fb%u was registered as fb%u\0A\00", [63 x i8] zeroinitializer }, align 32
@matroxfb_dh_registerfb._entry_ptr.9 = internal global ptr @matroxfb_dh_registerfb._entry.7, section ".printk_index", align 4
@matroxfb_dh_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr @matroxfb_dh_open, ptr @matroxfb_dh_release, ptr null, ptr null, ptr @matroxfb_dh_check_var, ptr @matroxfb_dh_set_par, ptr @matroxfb_dh_setcolreg, ptr null, ptr @matroxfb_dh_blank, ptr @matroxfb_dh_pan_display, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr @matroxfb_dh_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@matroxfb_dh_defined = internal global { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 640, i32 480, i32 640, i32 480, i32 0, i32 0, i32 32, i32 0, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 39721, i32 48, i32 16, i32 33, i32 10, i32 96, i32 2, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@matroxfb_dh_regit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013matroxfb_crtc2: Internal consistency check failed: crtc2 already present: %p\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"matroxfb_dh_regit\00", [46 x i8] zeroinitializer }, align 32
@matroxfb_dh_regit._entry_ptr = internal global ptr @matroxfb_dh_regit._entry, section ".printk_index", align 4
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MATROX DH\00", [22 x i8] zeroinitializer }, align 32
@matroxfb_dh_deregisterfb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013matroxfb_crtc2: Internal consistency check failed: crtc2 mismatch at unload: %p != %p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"matroxfb_dh_deregisterfb\00", [39 x i8] zeroinitializer }, align 32
@matroxfb_dh_deregisterfb._entry_ptr = internal global ptr @matroxfb_dh_deregisterfb._entry, section ".printk_index", align 4
@matroxfb_dh_deregisterfb._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013matroxfb_crtc2: Expect kernel crash after module unload.\0A\00", [36 x i8] zeroinitializer }, align 32
@matroxfb_dh_deregisterfb._entry_ptr.20 = internal global ptr @matroxfb_dh_deregisterfb._entry.18, section ".printk_index", align 4
@matroxfb_dh_deregisterfb._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.4, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016matroxfb_crtc2: fb%u unregistered\0A\00", [59 x i8] zeroinitializer }, align 32
@matroxfb_dh_deregisterfb._entry_ptr.23 = internal global ptr @matroxfb_dh_deregisterfb._entry.21, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.24 = internal global [10 x i64] [i64 8, i64 32, i64 1074021920, i64 1074032376, i64 1074032378, i64 2147774200, i64 2147774201, i64 2147774203, i64 2149598738, i64 3221516026]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@___asan_gen_.29 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 24, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 723, i32 21 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"crtc2\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 717, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 718, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 706, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 656, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 659, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"matroxfb_dh_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 566, i32 28 }
@___asan_gen_.71 = private unnamed_addr constant [20 x i8] c"matroxfb_dh_defined\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 581, i32 33 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 644, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 174, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 302, i32 18 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 678, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 680, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [47 x i8] c"../drivers/video/fbdev/matrox/matroxfb_crtc2.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 687, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__UNIQUE_ID_mem306, ptr @__UNIQUE_ID_memtype305, ptr @__exitcall_matroxfb_crtc2_exit, ptr @__initcall__kmod_matroxfb_crtc2__311_737_matroxfb_crtc2_init6, ptr @__param_mem, ptr @matroxfb_crtc2_probe._entry, ptr @matroxfb_crtc2_probe._entry_ptr, ptr @matroxfb_dh_deregisterfb._entry, ptr @matroxfb_dh_deregisterfb._entry.18, ptr @matroxfb_dh_deregisterfb._entry.21, ptr @matroxfb_dh_deregisterfb._entry_ptr, ptr @matroxfb_dh_deregisterfb._entry_ptr.20, ptr @matroxfb_dh_deregisterfb._entry_ptr.23, ptr @matroxfb_dh_registerfb._entry, ptr @matroxfb_dh_registerfb._entry.7, ptr @matroxfb_dh_registerfb._entry_ptr, ptr @matroxfb_dh_registerfb._entry_ptr.9, ptr @matroxfb_dh_regit._entry, ptr @matroxfb_dh_regit._entry_ptr, ptr @mem, ptr @.str, ptr @crtc2, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @matroxfb_dh_ops, ptr @matroxfb_dh_defined, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crtc2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_crtc2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_dh_registerfb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_dh_registerfb._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_dh_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_dh_defined to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_dh_regit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_dh_deregisterfb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_dh_deregisterfb._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matroxfb_dh_deregisterfb._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matroxfb_crtc2_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fb_get_options(ptr noundef nonnull @.str, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @matroxfb_register_driver(ptr noundef nonnull @crtc2) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @matroxfb_crtc2_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @matroxfb_unregister_driver(ptr noundef nonnull @crtc2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matroxfb_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @matroxfb_crtc2_probe(ptr noundef %minfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc2 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 11
  %0 = ptrtoint ptr %crtc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crtc2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1236) #13
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %primary_dev = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %primary_dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %minfo, ptr %primary_dev, align 4
  %fbops.i.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 20
  %4 = ptrtoint ptr %fbops.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @matroxfb_dh_ops, ptr %fbops.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 12288, ptr %flags.i.i, align 8
  %cmap.i.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %call7.i.i, i32 0, i32 7
  %pseudo_palette.i.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 27
  %6 = ptrtoint ptr %pseudo_palette.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cmap.i.i, ptr %pseudo_palette.i.i, align 4
  %cmap6.i.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 12
  %call.i.i = tail call i32 @fb_alloc_cmap(ptr noundef %cmap6.i.i, i32 noundef 256, i32 noundef 1) #10
  %7 = load i32, ptr @mem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %7)
  %cmp.i.i = icmp slt i32 %7, 64
  %mul.i.i = shl i32 %7, 10
  %8 = select i1 %cmp.i.i, i32 %mul.i.i, i32 %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %8)
  %cmp7.i.i = icmp slt i32 %8, 65536
  %9 = or i1 %cmp.i.i, %cmp7.i.i
  br i1 %9, label %10, label %if.end3._crit_edge

if.end3._crit_edge:                               ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %11

10:                                               ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %mul9.i.i = shl i32 %8, 10
  %simplifycfg.merge.i.i = select i1 %cmp7.i.i, i32 %mul9.i.i, i32 %8
  store i32 %simplifycfg.merge.i.i, ptr @mem, align 4
  br label %11

11:                                               ; preds = %10, %if.end3._crit_edge
  %12 = load i32, ptr @mem, align 4
  %and.i.i = and i32 %12, -4096
  store i32 %and.i.i, ptr @mem, align 4
  %13 = ptrtoint ptr %primary_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %primary_dev, align 4
  %len_usable.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %14, i32 0, i32 18, i32 3
  %15 = ptrtoint ptr %len_usable.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len_usable.i.i, align 4
  %add.i.i = add i32 %16, %and.i.i
  %len.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %14, i32 0, i32 18, i32 2
  %17 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %18)
  %cmp13.not.i.i = icmp ugt i32 %add.i.i, %18
  br i1 %cmp13.not.i.i, label %if.else.i.i, label %if.then14.i.i

if.then14.i.i:                                    ; preds = %11
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %18, %and.i.i
  br label %if.end36.i.i

if.else.i.i:                                      ; preds = %11
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %and.i.i)
  %cmp22.i.i = icmp ult i32 %18, %and.i.i
  br i1 %cmp22.i.i, label %if.else.i.i.if.then6_crit_edge, label %if.else24.i.i

if.else.i.i.if.then6_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.else24.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %borrowed.i.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %call7.i.i, i32 0, i32 4, i32 6
  %19 = ptrtoint ptr %borrowed.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and.i.i, ptr %borrowed.i.i, align 8
  %20 = ptrtoint ptr %len_usable.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len_usable.i.i, align 4
  %sub29.i.i = sub i32 %21, %and.i.i
  store i32 %sub29.i.i, ptr %len_usable.i.i, align 4
  %22 = ptrtoint ptr %primary_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %primary_dev, align 4
  %len_usable32.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %23, i32 0, i32 18, i32 3
  %24 = ptrtoint ptr %len_usable32.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len_usable32.i.i, align 4
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.else24.i.i, %if.then14.i.i
  %.sink.i.i = phi i32 [ %25, %if.else24.i.i ], [ %sub.i.i, %if.then14.i.i ]
  %offbase34.i.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %call7.i.i, i32 0, i32 4, i32 5
  %26 = ptrtoint ptr %offbase34.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink.i.i, ptr %offbase34.i.i, align 4
  %27 = ptrtoint ptr %primary_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %primary_dev, align 4
  %video38.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %28, i32 0, i32 18
  %29 = ptrtoint ptr %video38.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %video38.i.i, align 4
  %video39.i.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %call7.i.i, i32 0, i32 4
  %add41.i.i = add i32 %30, %.sink.i.i
  %31 = ptrtoint ptr %video39.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add41.i.i, ptr %video39.i.i, align 8
  %len_maximum.i.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %call7.i.i, i32 0, i32 4, i32 4
  %32 = ptrtoint ptr %len_maximum.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and.i.i, ptr %len_maximum.i.i, align 8
  %len_usable46.i.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %call7.i.i, i32 0, i32 4, i32 3
  %33 = ptrtoint ptr %len_usable46.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and.i.i, ptr %len_usable46.i.i, align 4
  %len48.i.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %call7.i.i, i32 0, i32 4, i32 2
  %34 = ptrtoint ptr %len48.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and.i.i, ptr %len48.i.i, align 8
  %vbase.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %28, i32 0, i32 18, i32 1
  %35 = ptrtoint ptr %vbase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack.i.i = load i32, ptr %vbase.i.i, align 4
  %36 = inttoptr i32 %.unpack.i.i to ptr
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 %.sink.i.i
  %vbase55.i.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %call7.i.i, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %vbase55.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr.i.i, ptr %vbase55.i.i, align 4
  %mmio.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %28, i32 0, i32 19
  %38 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mmio.i.i, align 4
  %mmio58.i.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %call7.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %mmio58.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %mmio58.i.i, align 4
  %vbase61.i.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %call7.i.i, i32 0, i32 5, i32 1
  %vbase64.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %28, i32 0, i32 19, i32 1
  %41 = ptrtoint ptr %vbase64.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vbase64.i.i, align 4
  %43 = ptrtoint ptr %vbase61.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %vbase61.i.i, align 8
  %len67.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %28, i32 0, i32 19, i32 2
  %44 = ptrtoint ptr %len67.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len67.i.i, align 4
  %len69.i.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %call7.i.i, i32 0, i32 5, i32 2
  %46 = ptrtoint ptr %len69.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %len69.i.i, align 4
  %fix1.i.i.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 7
  %47 = call ptr @memcpy(ptr %fix1.i.i.i, ptr @.str.15, i32 10)
  %smem_start.i.i.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 7, i32 1
  %48 = ptrtoint ptr %smem_start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add41.i.i, ptr %smem_start.i.i.i, align 8
  %smem_len.i.i.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 7, i32 2
  %49 = ptrtoint ptr %smem_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and.i.i, ptr %smem_len.i.i.i, align 4
  %ypanstep.i.i.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 7, i32 7
  %50 = ptrtoint ptr %ypanstep.i.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %ypanstep.i.i.i, align 2
  %ywrapstep.i.i.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 7, i32 8
  %51 = ptrtoint ptr %ywrapstep.i.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %ywrapstep.i.i.i, align 8
  %xpanstep.i.i.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 7, i32 6
  %52 = ptrtoint ptr %xpanstep.i.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 8, ptr %xpanstep.i.i.i, align 4
  %mmio_start.i.i.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 7, i32 10
  %53 = ptrtoint ptr %mmio_start.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %39, ptr %mmio_start.i.i.i, align 8
  %mmio_len.i.i.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 7, i32 11
  %54 = ptrtoint ptr %mmio_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %45, ptr %mmio_len.i.i.i, align 4
  %accel.i.i.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 7, i32 12
  %55 = ptrtoint ptr %accel.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %accel.i.i.i, align 8
  %call71.i.i = tail call i32 @register_framebuffer(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i.i)
  %tobool.not.i.i = icmp eq i32 %call71.i.i, 0
  br i1 %tobool.not.i.i, label %if.end73.i.i, label %if.end36.i.i.if.then6_crit_edge

if.end36.i.i.if.then6_crit_edge:                  ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.end73.i.i:                                     ; preds = %if.end36.i.i
  %initialized.i.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %call7.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %initialized.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %initialized.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool74.not.i.i = icmp eq i32 %57, 0
  br i1 %tobool74.not.i.i, label %if.then75.i.i, label %if.end73.i.i.if.end78.i.i_crit_edge

if.end73.i.i.if.end78.i.i_crit_edge:              ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78.i.i

if.then75.i.i:                                    ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call77.i.i = tail call i32 @fb_set_var(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @matroxfb_dh_defined) #10
  br label %if.end78.i.i

if.end78.i.i:                                     ; preds = %if.then75.i.i, %if.end73.i.i.if.end78.i.i_crit_edge
  %58 = ptrtoint ptr %primary_dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %primary_dev, align 4
  %lock.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %59, i32 0, i32 12, i32 4
  tail call void @down_write(ptr noundef %lock.i.i) #10
  %60 = ptrtoint ptr %primary_dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %primary_dev, align 4
  %info.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %61, i32 0, i32 12, i32 3
  %62 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %info.i.i, align 4
  store ptr %call7.i.i, ptr %info.i.i, align 4
  %64 = load ptr, ptr %primary_dev, align 4
  %lock87.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %64, i32 0, i32 12, i32 4
  tail call void @up_write(ptr noundef %lock87.i.i) #10
  %tobool88.not.i.i = icmp eq ptr %63, null
  br i1 %tobool88.not.i.i, label %if.end78.i.i.matroxfb_dh_registerfb.exit.thread_crit_edge, label %do.end.i.i

if.end78.i.i.matroxfb_dh_registerfb.exit.thread_crit_edge: ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %matroxfb_dh_registerfb.exit.thread

do.end.i.i:                                       ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call90.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %63) #14
  br label %matroxfb_dh_registerfb.exit.thread

matroxfb_dh_registerfb.exit.thread:               ; preds = %do.end.i.i, %if.end78.i.i.matroxfb_dh_registerfb.exit.thread_crit_edge
  %65 = ptrtoint ptr %primary_dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %primary_dev, align 4
  %node.i = getelementptr inbounds %struct.fb_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %node.i, align 4
  %node7.i = getelementptr inbounds %struct.fb_info, ptr %call7.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %node7.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %node7.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %68, i32 noundef %70) #14
  %fbcon_registered.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %call7.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %fbcon_registered.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %fbcon_registered.i, align 4
  br label %cleanup

if.then6:                                         ; preds = %if.end36.i.i.if.then6_crit_edge, %if.else.i.i.if.then6_crit_edge
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %matroxfb_dh_registerfb.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then6 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call7.i.i, %matroxfb_dh_registerfb.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @matroxfb_crtc2_remove(ptr nocapture noundef readnone %minfo, ptr noundef %crtc2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fbcon_registered.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %crtc2, i32 0, i32 1
  %0 = ptrtoint ptr %fbcon_registered.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fbcon_registered.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.matroxfb_dh_deregisterfb.exit_crit_edge, label %if.then.i

entry.matroxfb_dh_deregisterfb.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %matroxfb_dh_deregisterfb.exit

if.then.i:                                        ; preds = %entry
  %primary_dev.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %crtc2, i32 0, i32 3
  %2 = ptrtoint ptr %primary_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_dev.i, align 4
  %lock.i = getelementptr inbounds %struct.matrox_fb_info, ptr %3, i32 0, i32 12, i32 4
  tail call void @down_write(ptr noundef %lock.i) #10
  %4 = ptrtoint ptr %primary_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary_dev.i, align 4
  %info.i = getelementptr inbounds %struct.matrox_fb_info, ptr %5, i32 0, i32 12, i32 3
  %6 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info.i, align 4
  %cmp.i = icmp eq ptr %7, %crtc2
  br i1 %cmp.i, label %if.end18.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %lock10.i = getelementptr inbounds %struct.matrox_fb_info, ptr %5, i32 0, i32 12, i32 4
  tail call void @up_write(ptr noundef %lock10.i) #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %7, ptr noundef %crtc2) #14
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #14
  br label %matroxfb_dh_deregisterfb.exit

if.end18.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %info.i, align 4
  %9 = ptrtoint ptr %primary_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %primary_dev.i, align 4
  %lock1044.i = getelementptr inbounds %struct.matrox_fb_info, ptr %10, i32 0, i32 12, i32 4
  tail call void @up_write(ptr noundef %lock1044.i) #10
  %node.i = getelementptr inbounds %struct.fb_info, ptr %crtc2, i32 0, i32 1
  %11 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %node.i, align 4
  tail call void @unregister_framebuffer(ptr noundef %crtc2) #10
  %borrowed.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %crtc2, i32 0, i32 4, i32 6
  %13 = ptrtoint ptr %borrowed.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %borrowed.i, align 4
  %15 = ptrtoint ptr %primary_dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %primary_dev.i, align 4
  %len_usable.i = getelementptr inbounds %struct.matrox_fb_info, ptr %16, i32 0, i32 18, i32 3
  %17 = ptrtoint ptr %len_usable.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len_usable.i, align 4
  %add.i = add i32 %18, %14
  store i32 %add.i, ptr %len_usable.i, align 4
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %12) #14
  %19 = ptrtoint ptr %fbcon_registered.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %fbcon_registered.i, align 4
  br label %matroxfb_dh_deregisterfb.exit

matroxfb_dh_deregisterfb.exit:                    ; preds = %if.end18.i, %do.end.i, %entry.matroxfb_dh_deregisterfb.exit_crit_edge
  tail call void @kfree(ptr noundef %crtc2) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matroxfb_dh_open(ptr nocapture noundef readonly %info, i32 noundef %user) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %primary_dev = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %primary_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %dead = getelementptr inbounds %struct.matrox_fb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dead to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %cleanup, label %if.then.cleanup7_crit_edge

if.then.cleanup7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup7

cleanup:                                          ; preds = %if.then
  %fb_open = getelementptr inbounds %struct.matrox_fb_info, ptr %1, i32 0, i32 32, i32 1
  %4 = ptrtoint ptr %fb_open to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb_open, align 4
  %call = tail call i32 %5(ptr noundef nonnull %1, i32 noundef %user) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %cleanup.if.end6_crit_edge, label %cleanup.cleanup7_crit_edge

cleanup.cleanup7_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup7

cleanup.if.end6_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end6:                                          ; preds = %cleanup.if.end6_crit_edge, %entry.if.end6_crit_edge
  br label %cleanup7

cleanup7:                                         ; preds = %if.end6, %cleanup.cleanup7_crit_edge, %if.then.cleanup7_crit_edge
  %retval.1 = phi i32 [ 0, %if.end6 ], [ %call, %cleanup.cleanup7_crit_edge ], [ -6, %if.then.cleanup7_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matroxfb_dh_release(ptr nocapture noundef readonly %info, i32 noundef %user) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %primary_dev = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %primary_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fb_release = getelementptr inbounds %struct.matrox_fb_info, ptr %1, i32 0, i32 32, i32 2
  %2 = ptrtoint ptr %fb_release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb_release, align 4
  %call = tail call i32 %3(ptr noundef nonnull %1, i32 noundef %user) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @matroxfb_dh_check_var(ptr noundef %var, ptr nocapture noundef readonly %info) #5 align 64 {
entry:
  %visual = alloca i32, align 4
  %cmap_len = alloca i32, align 4
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %visual) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmap_len) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #10
  %call = call fastcc i32 @matroxfb_dh_decode_var(ptr noundef %info, ptr noundef %var, ptr noundef nonnull %visual, ptr noundef nonnull %cmap_len, ptr noundef nonnull %mode)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmap_len) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %visual) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matroxfb_dh_set_par(ptr noundef %info) #0 align 64 {
entry:
  %visual = alloca i32, align 4
  %cmap_len = alloca i32, align 4
  %mode = alloca i32, align 4
  %mt = alloca %struct.my_timming, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %visual) #10
  %0 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %visual, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmap_len) #10
  %1 = ptrtoint ptr %cmap_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %cmap_len, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #10
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mode, align 4, !annotation !81
  %var1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %primary_dev = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %info, i32 0, i32 3
  %3 = ptrtoint ptr %primary_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %primary_dev, align 4
  %call = call fastcc i32 @matroxfb_dh_decode_var(ptr noundef %info, ptr noundef %var1, ptr noundef nonnull %visual, ptr noundef nonnull %cmap_len, ptr noundef nonnull %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %vbase = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %info, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack = load i32, ptr %vbase, align 4
  %6 = inttoptr i32 %.unpack to ptr
  %7 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %7, align 4
  %9 = ptrtoint ptr %visual to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %visual, align 4
  %visual16 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 5
  %11 = ptrtoint ptr %visual16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %visual16, align 4
  %type = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 3
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %type, align 4
  %type_aux = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 4
  %13 = ptrtoint ptr %type_aux to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %type_aux, align 4
  %xres_virtual = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xres_virtual, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %16 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bits_per_pixel, align 4
  %mul = mul i32 %17, %15
  %shr = lshr i32 %mul, 3
  %line_length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 9
  %18 = ptrtoint ptr %line_length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr, ptr %line_length, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %mt) #10
  %19 = call ptr @memset(ptr %mt, i32 255, i32 60)
  call void @matroxfb_var2my(ptr noundef %var1, ptr noundef nonnull %mt) #10
  %crtc = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 2
  %20 = ptrtoint ptr %crtc to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %crtc, align 4
  %delay = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 14
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 34, ptr %delay, align 4
  %yoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %22 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %yoffset, align 4
  %24 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xres_virtual, align 4
  %mul48 = mul i32 %25, %23
  %xoffset = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %26 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %xoffset, align 4
  %add = add i32 %mul48, %27
  %28 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bits_per_pixel, align 4
  %mul60 = mul i32 %add, %29
  %offbase = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %info, i32 0, i32 4, i32 5
  %30 = ptrtoint ptr %offbase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offbase, align 4
  %altout = getelementptr inbounds %struct.matrox_fb_info, ptr %4, i32 0, i32 13
  call void @down_read(ptr noundef %altout) #10
  %arrayidx = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 0
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp68 = icmp eq i32 %33, 2
  br i1 %cmp68, label %if.then69, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then69:                                        ; preds = %if.end
  %output = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 0, i32 1
  %34 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %output, align 4
  %compute = getelementptr inbounds %struct.matrox_altout, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %compute to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %compute, align 4
  %tobool.not = icmp eq ptr %37, null
  br i1 %tobool.not, label %if.then69.for.inc_crit_edge, label %if.then72

if.then69.for.inc_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then72:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 0, i32 2
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %call79 = call i32 %37(ptr noundef %39, ptr noundef nonnull %mt) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then72, %if.then69.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %cnt.1 = phi i32 [ 1, %if.then72 ], [ 1, %if.then69.for.inc_crit_edge ], [ 0, %if.end.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 1
  %40 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp68.1 = icmp eq i32 %41, 2
  br i1 %cmp68.1, label %if.then69.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then69.1:                                      ; preds = %for.inc
  %inc.1 = add nuw nsw i32 %cnt.1, 1
  %output.1 = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 1, i32 1
  %42 = ptrtoint ptr %output.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %output.1, align 4
  %compute.1 = getelementptr inbounds %struct.matrox_altout, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %compute.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %compute.1, align 4
  %tobool.not.1 = icmp eq ptr %45, null
  br i1 %tobool.not.1, label %if.then69.1.for.inc.1_crit_edge, label %if.then72.1

if.then69.1.for.inc.1_crit_edge:                  ; preds = %if.then69.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then72.1:                                      ; preds = %if.then69.1
  call void @__sanitizer_cov_trace_pc() #12
  %data.1 = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 1, i32 2
  %46 = ptrtoint ptr %data.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.1, align 4
  %call79.1 = call i32 %45(ptr noundef %47, ptr noundef nonnull %mt) #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then72.1, %if.then69.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %cnt.1.1 = phi i32 [ %inc.1, %if.then72.1 ], [ %inc.1, %if.then69.1.for.inc.1_crit_edge ], [ %cnt.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 2
  %48 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp68.2 = icmp eq i32 %49, 2
  br i1 %cmp68.2, label %if.then69.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then69.2:                                      ; preds = %for.inc.1
  %inc.2 = add nuw nsw i32 %cnt.1.1, 1
  %output.2 = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 2, i32 1
  %50 = ptrtoint ptr %output.2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %output.2, align 4
  %compute.2 = getelementptr inbounds %struct.matrox_altout, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %compute.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %compute.2, align 4
  %tobool.not.2 = icmp eq ptr %53, null
  br i1 %tobool.not.2, label %if.then69.2.for.inc.2_crit_edge, label %if.then72.2

if.then69.2.for.inc.2_crit_edge:                  ; preds = %if.then69.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then72.2:                                      ; preds = %if.then69.2
  call void @__sanitizer_cov_trace_pc() #12
  %data.2 = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 2, i32 2
  %54 = ptrtoint ptr %data.2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.2, align 4
  %call79.2 = call i32 %53(ptr noundef %55, ptr noundef nonnull %mt) #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then72.2, %if.then69.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %cnt.1.2 = phi i32 [ %inc.2, %if.then72.2 ], [ %inc.2, %if.then69.2.for.inc.2_crit_edge ], [ %cnt.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %shr61 = lshr i32 %mul60, 3
  %add66 = add i32 %shr61, %31
  %56 = ptrtoint ptr %mt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mt, align 4
  %pixclock83 = getelementptr inbounds %struct.matrox_fb_info, ptr %4, i32 0, i32 12, i32 1
  %58 = ptrtoint ptr %pixclock83 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %pixclock83, align 4
  %mnp = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 1
  %59 = ptrtoint ptr %mnp to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mnp, align 4
  %mnp85 = getelementptr inbounds %struct.matrox_fb_info, ptr %4, i32 0, i32 12, i32 2
  %61 = ptrtoint ptr %mnp85 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %mnp85, align 4
  call void @up_read(ptr noundef %altout) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.1.2)
  %tobool88.not = icmp eq i32 %cnt.1.2, 0
  br i1 %tobool88.not, label %if.else, label %if.then89

if.then89:                                        ; preds = %for.inc.2
  %62 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mode, align 4
  %64 = ptrtoint ptr %primary_dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %primary_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %63)
  %switch.selectcmp.i = icmp eq i32 %63, 16
  %switch.select.i = select i1 %switch.selectcmp.i, i32 4194305, i32 8388609
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %63)
  %switch.selectcmp217.i = icmp eq i32 %63, 15
  %switch.select218.i = select i1 %switch.selectcmp217.i, i32 2097153, i32 %switch.select.i
  %outputs.i = getelementptr inbounds %struct.matrox_fb_info, ptr %65, i32 0, i32 14
  %arrayidx.i = getelementptr %struct.matrox_fb_info, ptr %65, i32 0, i32 14, i32 1
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp.i = icmp eq i32 %67, 2
  br i1 %cmp.i, label %if.then.i, label %if.else13.i

if.then.i:                                        ; preds = %if.then89
  %g450dac.i = getelementptr inbounds %struct.matrox_fb_info, ptr %65, i32 0, i32 31, i32 19
  %68 = ptrtoint ptr %g450dac.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %g450dac.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i = icmp eq i32 %69, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %mode6.i = getelementptr %struct.matrox_fb_info, ptr %65, i32 0, i32 14, i32 1, i32 3
  %70 = ptrtoint ptr %mode6.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mode6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %71)
  %cmp7.not.i = icmp eq i32 %71, 128
  %spec.select.v.i = select i1 %cmp7.not.i, i32 6, i32 -1073737722
  %spec.select.i = or i32 %spec.select.v.i, %switch.select218.i
  br label %if.end21.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %or11.i = or i32 %switch.select218.i, -1073741822
  br label %if.end21.i

if.else13.i:                                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %outputs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %outputs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %cmp17.i = icmp eq i32 %73, 2
  %or19.i = or i32 %switch.select218.i, 4
  %spec.select219.i = select i1 %cmp17.i, i32 %or19.i, i32 %switch.select218.i
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else13.i, %if.else.i, %if.then2.i
  %tmp.1.i = phi i32 [ %or11.i, %if.else.i ], [ %spec.select.i, %if.then2.i ], [ %spec.select219.i, %if.else13.i ]
  %74 = ptrtoint ptr %outputs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %outputs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %75)
  %cmp25.i = icmp eq i32 %75, 2
  %or27.i = or i32 %tmp.1.i, 1048576
  %spec.select220.i = select i1 %cmp25.i, i32 %or27.i, i32 %tmp.1.i
  %interlaced.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 13
  %76 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %interlaced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool29.not.i = icmp eq i32 %77, 0
  br i1 %tobool29.not.i, label %if.end21.i.if.end35.i_crit_edge, label %if.then30.i

if.end21.i.if.end35.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

if.then30.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %or31.i = or i32 %spec.select220.i, 33554432
  %VDisplay.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 7
  %78 = ptrtoint ptr %VDisplay.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %VDisplay.i, align 4
  %shr.i = lshr i32 %79, 1
  store i32 %shr.i, ptr %VDisplay.i, align 4
  %VSyncStart.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 8
  %80 = ptrtoint ptr %VSyncStart.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %VSyncStart.i, align 4
  %shr32.i = lshr i32 %81, 1
  store i32 %shr32.i, ptr %VSyncStart.i, align 4
  %VSyncEnd.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 9
  %82 = ptrtoint ptr %VSyncEnd.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %VSyncEnd.i, align 4
  %shr33.i = lshr i32 %83, 1
  store i32 %shr33.i, ptr %VSyncEnd.i, align 4
  %VTotal.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 10
  %84 = ptrtoint ptr %VTotal.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %VTotal.i, align 4
  %shr34.i = lshr i32 %85, 1
  store i32 %shr34.i, ptr %VTotal.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then30.i, %if.end21.i.if.end35.i_crit_edge
  %tmp.3.i = phi i32 [ %or31.i, %if.then30.i ], [ %spec.select220.i, %if.end21.i.if.end35.i_crit_edge ]
  %HTotal.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 6
  %86 = ptrtoint ptr %HTotal.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %HTotal.i, align 4
  %and.i = and i32 %87, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp36.i = icmp eq i32 %and.i, 2
  br i1 %cmp36.i, label %if.then37.i, label %if.end35.i.if.end41.i_crit_edge

if.end35.i.if.end41.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

if.then37.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  %and40.i = and i32 %87, -8
  %88 = ptrtoint ptr %HTotal.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %and40.i, ptr %HTotal.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then37.i, %if.end35.i.if.end41.i_crit_edge
  %datactl.0.i = phi i32 [ 268435456, %if.then37.i ], [ 0, %if.end35.i.if.end41.i_crit_edge ]
  %or42.i = or i32 %tmp.3.i, 268435456
  %vbase.i = getelementptr inbounds %struct.matrox_fb_info, ptr %65, i32 0, i32 19, i32 1
  %HDisplay.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 3
  %89 = ptrtoint ptr %HDisplay.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %HDisplay.i, align 4
  %sub.i = shl i32 %90, 16
  %shl.i = add i32 %sub.i, -524288
  %91 = ptrtoint ptr %HTotal.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %HTotal.i, align 4
  %sub44.i = add i32 %92, -8
  %or45.i = or i32 %shl.i, %sub44.i
  %93 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %.unpack.i = load i32, ptr %vbase.i, align 4
  %94 = inttoptr i32 %.unpack.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @arm_heavy_mb() #10
  %95 = call i32 @llvm.bswap.i32(i32 %or45.i) #10
  %add.ptr.i.i = getelementptr i8, ptr %94, i32 15380
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %95) #10, !srcloc !83
  %HSyncEnd.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 5
  %96 = ptrtoint ptr %HSyncEnd.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %HSyncEnd.i, align 4
  %sub48.i = shl i32 %97, 16
  %shl49.i = add i32 %sub48.i, -524288
  %HSyncStart.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 4
  %98 = ptrtoint ptr %HSyncStart.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %HSyncStart.i, align 4
  %sub50.i = add i32 %99, -8
  %or51.i = or i32 %shl49.i, %sub50.i
  %100 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %.unpack204.i = load i32, ptr %vbase.i, align 4
  %101 = inttoptr i32 %.unpack204.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @arm_heavy_mb() #10
  %102 = call i32 @llvm.bswap.i32(i32 %or51.i) #10
  %add.ptr.i224.i = getelementptr i8, ptr %101, i32 15384
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i224.i, i32 %102) #10, !srcloc !83
  %VDisplay55.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 7
  %103 = ptrtoint ptr %VDisplay55.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %VDisplay55.i, align 4
  %sub56.i = shl i32 %104, 16
  %shl57.i = add i32 %sub56.i, -65536
  %VTotal58.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 10
  %105 = ptrtoint ptr %VTotal58.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %VTotal58.i, align 4
  %sub59.i = add i32 %106, -1
  %or60.i = or i32 %shl57.i, %sub59.i
  %107 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %.unpack205.i = load i32, ptr %vbase.i, align 4
  %108 = inttoptr i32 %.unpack205.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @arm_heavy_mb() #10
  %109 = call i32 @llvm.bswap.i32(i32 %or60.i) #10
  %add.ptr.i225.i = getelementptr i8, ptr %108, i32 15388
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i225.i, i32 %109) #10, !srcloc !83
  %VSyncEnd64.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 9
  %110 = ptrtoint ptr %VSyncEnd64.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %VSyncEnd64.i, align 4
  %sub65.i = shl i32 %111, 16
  %shl66.i = add i32 %sub65.i, -65536
  %VSyncStart67.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 8
  %112 = ptrtoint ptr %VSyncStart67.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %VSyncStart67.i, align 4
  %sub68.i = add i32 %113, -1
  %or69.i = or i32 %shl66.i, %sub68.i
  %114 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %.unpack206.i = load i32, ptr %vbase.i, align 4
  %115 = inttoptr i32 %.unpack206.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @arm_heavy_mb() #10
  %116 = call i32 @llvm.bswap.i32(i32 %or69.i) #10
  %add.ptr.i226.i = getelementptr i8, ptr %115, i32 15392
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i226.i, i32 %116) #10, !srcloc !83
  %117 = ptrtoint ptr %VSyncStart67.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %VSyncStart67.i, align 4
  %shl74.i = shl i32 %118, 16
  %119 = ptrtoint ptr %HSyncStart.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %HSyncStart.i, align 4
  %or76.i = or i32 %shl74.i, %120
  %121 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %.unpack207.i = load i32, ptr %vbase.i, align 4
  %122 = inttoptr i32 %.unpack207.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @arm_heavy_mb() #10
  %123 = call i32 @llvm.bswap.i32(i32 %or76.i) #10
  %add.ptr.i227.i = getelementptr i8, ptr %122, i32 15396
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i227.i, i32 %123) #10, !srcloc !83
  %124 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %xres_virtual, align 4
  %126 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %bits_per_pixel, align 4
  %shr80.i = lshr i32 %127, 3
  %mul.i = mul i32 %shr80.i, %125
  %and81.i = and i32 %tmp.3.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  %128 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %.unpack208.i = load i32, ptr %vbase.i, align 4
  %129 = inttoptr i32 %.unpack208.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  %130 = call i32 @llvm.bswap.i32(i32 %add66) #10
  br i1 %tobool82.not.i, label %if.else92.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.end41.i
  %add.ptr.i228.i = getelementptr i8, ptr %129, i32 15404
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i228.i, i32 %130) #10, !srcloc !83
  %add.i = add i32 %mul.i, %add66
  %131 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %.unpack216.i = load i32, ptr %vbase.i, align 4
  %132 = inttoptr i32 %.unpack216.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @arm_heavy_mb() #10
  %133 = call i32 @llvm.bswap.i32(i32 %add.i) #10
  %add.ptr.i229.i = getelementptr i8, ptr %132, i32 15400
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i229.i, i32 %133) #10, !srcloc !83
  %shl90.i = shl i32 %mul.i, 1
  %interlaced91.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %info, i32 0, i32 6
  %134 = ptrtoint ptr %interlaced91.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %bf.load.i = load i8, ptr %interlaced91.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %interlaced91.i, align 4
  %135 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %.unpack209.c221.i = load i32, ptr %vbase.i, align 4
  %136 = inttoptr i32 %.unpack209.c221.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @arm_heavy_mb() #10
  %137 = call i32 @llvm.bswap.i32(i32 %shl90.i) #10
  %add.ptr.i230.i = getelementptr i8, ptr %136, i32 15424
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i230.i, i32 %137) #10, !srcloc !83
  %138 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %.unpack210.c222.i = load i32, ptr %vbase.i, align 4
  %139 = inttoptr i32 %.unpack210.c222.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @arm_heavy_mb() #10
  %add.ptr.i231.i = getelementptr i8, ptr %139, i32 15436
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i231.i, i32 %datactl.0.i) #10, !srcloc !83
  %and112.i = and i32 %or42.i, -33554433
  %140 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %.unpack213.i = load i32, ptr %vbase.i, align 4
  %141 = inttoptr i32 %.unpack213.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @arm_heavy_mb() #10
  %142 = call i32 @llvm.bswap.i32(i32 %and112.i) #10
  %add.ptr.i232.i = getelementptr i8, ptr %141, i32 15376
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i232.i, i32 %142) #10, !srcloc !83
  br label %while.cond.i

if.else92.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i233.i = getelementptr i8, ptr %129, i32 15400
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i233.i, i32 %130) #10, !srcloc !83
  %interlaced96.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %info, i32 0, i32 6
  %143 = ptrtoint ptr %interlaced96.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %bf.load97.i = load i8, ptr %interlaced96.i, align 4
  %bf.clear98.i = and i8 %bf.load97.i, 127
  store i8 %bf.clear98.i, ptr %interlaced96.i, align 4
  %144 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %.unpack209.c.i = load i32, ptr %vbase.i, align 4
  %145 = inttoptr i32 %.unpack209.c.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @arm_heavy_mb() #10
  %146 = call i32 @llvm.bswap.i32(i32 %mul.i) #10
  %add.ptr.i234.i = getelementptr i8, ptr %145, i32 15424
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i234.i, i32 %146) #10, !srcloc !83
  %147 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %.unpack210.c.i = load i32, ptr %vbase.i, align 4
  %148 = inttoptr i32 %.unpack210.c.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @arm_heavy_mb() #10
  %add.ptr.i235.i = getelementptr i8, ptr %148, i32 15436
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i235.i, i32 %datactl.0.i) #10, !srcloc !83
  br label %matroxfb_dh_restore.exit

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then83.i
  %lastl.0.i = phi i32 [ %153, %while.cond.i.while.cond.i_crit_edge ], [ 0, %if.then83.i ]
  %149 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %.unpack214.i = load i32, ptr %vbase.i, align 4
  %150 = inttoptr i32 %.unpack214.i to ptr
  %add.ptr.i236.i = getelementptr i8, ptr %150, i32 15432
  %151 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i236.i) #10, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  %152 = and i32 %151, -15794176
  %153 = call i32 @llvm.bswap.i32(i32 %152) #10
  %cmp119.not.i = icmp ult i32 %153, %lastl.0.i
  br i1 %cmp119.not.i, label %while.cond.i.while.cond.1.i_crit_edge, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.cond.i.while.cond.1.i_crit_edge:            ; preds = %while.cond.i
  br label %while.cond.1.i

while.cond.1.i:                                   ; preds = %while.cond.1.i.while.cond.1.i_crit_edge, %while.cond.i.while.cond.1.i_crit_edge
  %lastl.0.1.i = phi i32 [ %158, %while.cond.1.i.while.cond.1.i_crit_edge ], [ 0, %while.cond.i.while.cond.1.i_crit_edge ]
  %154 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %.unpack214.1.i = load i32, ptr %vbase.i, align 4
  %155 = inttoptr i32 %.unpack214.1.i to ptr
  %add.ptr.i236.1.i = getelementptr i8, ptr %155, i32 15432
  %156 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i236.1.i) #10, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  %157 = and i32 %156, -15794176
  %158 = call i32 @llvm.bswap.i32(i32 %157) #10
  %cmp119.not.1.i = icmp ult i32 %158, %lastl.0.1.i
  br i1 %cmp119.not.1.i, label %while.cond.1.i.matroxfb_dh_restore.exit_crit_edge, label %while.cond.1.i.while.cond.1.i_crit_edge

while.cond.1.i.while.cond.1.i_crit_edge:          ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.1.i

while.cond.1.i.matroxfb_dh_restore.exit_crit_edge: ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %matroxfb_dh_restore.exit

matroxfb_dh_restore.exit:                         ; preds = %while.cond.1.i.matroxfb_dh_restore.exit_crit_edge, %if.else92.i
  %159 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %.unpack211.i = load i32, ptr %vbase.i, align 4
  %160 = inttoptr i32 %.unpack211.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @arm_heavy_mb() #10
  %161 = call i32 @llvm.bswap.i32(i32 %or42.i) #10
  %add.ptr.i237.i = getelementptr i8, ptr %160, i32 15376
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i237.i, i32 %161) #10, !srcloc !83
  %crtc2.i = getelementptr inbounds %struct.matrox_fb_info, ptr %65, i32 0, i32 8, i32 11
  %162 = ptrtoint ptr %crtc2.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %or42.i, ptr %crtc2.i, align 4
  %163 = ptrtoint ptr %VDisplay55.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %VDisplay55.i, align 4
  %shl125.i = shl i32 %164, 16
  %sync.i = getelementptr inbounds %struct.my_timming, ptr %mt, i32 0, i32 11
  %165 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %sync.i, align 4
  %and126.i = shl i32 %166, 8
  %167 = and i32 %and126.i, 256
  %168 = or i32 %167, %shl125.i
  %169 = and i32 %and126.i, 512
  %170 = or i32 %168, %169
  %171 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %.unpack212.i = load i32, ptr %vbase.i, align 4
  %172 = inttoptr i32 %.unpack212.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @arm_heavy_mb() #10
  %173 = call i32 @llvm.bswap.i32(i32 %170) #10
  %add.ptr.i238.i = getelementptr i8, ptr %172, i32 15428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i238.i, i32 %173) #10, !srcloc !83
  br label %if.end96

if.else:                                          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %174 = ptrtoint ptr %primary_dev to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %primary_dev, align 4
  %vbase.i218 = getelementptr inbounds %struct.matrox_fb_info, ptr %175, i32 0, i32 19, i32 1
  %176 = ptrtoint ptr %vbase.i218 to i32
  call void @__asan_load4_noabort(i32 %176)
  %.unpack.i219 = load i32, ptr %vbase.i218, align 4
  %177 = inttoptr i32 %.unpack.i219 to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @arm_heavy_mb() #10
  %add.ptr.i.i220 = getelementptr i8, ptr %177, i32 15376
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i220, i32 67108864) #10, !srcloc !83
  %crtc2.i221 = getelementptr inbounds %struct.matrox_fb_info, ptr %175, i32 0, i32 8, i32 11
  %178 = ptrtoint ptr %crtc2.i221 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 4, ptr %crtc2.i221, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.else, %matroxfb_dh_restore.exit
  call void @DAC1064_global_init(ptr noundef %4) #10
  call void @DAC1064_global_restore(ptr noundef %4) #10
  call void @down_read(ptr noundef %altout) #10
  %179 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %180)
  %cmp105 = icmp eq i32 %180, 2
  br i1 %cmp105, label %land.lhs.true, label %if.end96.for.inc120_crit_edge

if.end96.for.inc120_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc120

land.lhs.true:                                    ; preds = %if.end96
  %output108 = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 0, i32 1
  %181 = ptrtoint ptr %output108 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %output108, align 4
  %program = getelementptr inbounds %struct.matrox_altout, ptr %182, i32 0, i32 2
  %183 = ptrtoint ptr %program to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %program, align 4
  %tobool109.not = icmp eq ptr %184, null
  br i1 %tobool109.not, label %land.lhs.true.for.inc120_crit_edge, label %if.then110

land.lhs.true.for.inc120_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc120

if.then110:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %data117 = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 0, i32 2
  %185 = ptrtoint ptr %data117 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %data117, align 4
  %call118 = call i32 %184(ptr noundef %186) #10
  br label %for.inc120

for.inc120:                                       ; preds = %if.then110, %land.lhs.true.for.inc120_crit_edge, %if.end96.for.inc120_crit_edge
  %187 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %188)
  %cmp105.1 = icmp eq i32 %188, 2
  br i1 %cmp105.1, label %land.lhs.true.1, label %for.inc120.for.inc120.1_crit_edge

for.inc120.for.inc120.1_crit_edge:                ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc120.1

land.lhs.true.1:                                  ; preds = %for.inc120
  %output108.1 = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 1, i32 1
  %189 = ptrtoint ptr %output108.1 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %output108.1, align 4
  %program.1 = getelementptr inbounds %struct.matrox_altout, ptr %190, i32 0, i32 2
  %191 = ptrtoint ptr %program.1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %program.1, align 4
  %tobool109.not.1 = icmp eq ptr %192, null
  br i1 %tobool109.not.1, label %land.lhs.true.1.for.inc120.1_crit_edge, label %if.then110.1

land.lhs.true.1.for.inc120.1_crit_edge:           ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc120.1

if.then110.1:                                     ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  %data117.1 = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 1, i32 2
  %193 = ptrtoint ptr %data117.1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %data117.1, align 4
  %call118.1 = call i32 %192(ptr noundef %194) #10
  br label %for.inc120.1

for.inc120.1:                                     ; preds = %if.then110.1, %land.lhs.true.1.for.inc120.1_crit_edge, %for.inc120.for.inc120.1_crit_edge
  %195 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %196)
  %cmp105.2 = icmp eq i32 %196, 2
  br i1 %cmp105.2, label %land.lhs.true.2, label %for.inc120.1.for.inc120.2_crit_edge

for.inc120.1.for.inc120.2_crit_edge:              ; preds = %for.inc120.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc120.2

land.lhs.true.2:                                  ; preds = %for.inc120.1
  %output108.2 = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 2, i32 1
  %197 = ptrtoint ptr %output108.2 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %output108.2, align 4
  %program.2 = getelementptr inbounds %struct.matrox_altout, ptr %198, i32 0, i32 2
  %199 = ptrtoint ptr %program.2 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %program.2, align 4
  %tobool109.not.2 = icmp eq ptr %200, null
  br i1 %tobool109.not.2, label %land.lhs.true.2.for.inc120.2_crit_edge, label %if.then110.2

land.lhs.true.2.for.inc120.2_crit_edge:           ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc120.2

if.then110.2:                                     ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  %data117.2 = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 2, i32 2
  %201 = ptrtoint ptr %data117.2 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %data117.2, align 4
  %call118.2 = call i32 %200(ptr noundef %202) #10
  br label %for.inc120.2

for.inc120.2:                                     ; preds = %if.then110.2, %land.lhs.true.2.for.inc120.2_crit_edge, %for.inc120.1.for.inc120.2_crit_edge
  %203 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %204)
  %cmp129 = icmp eq i32 %204, 2
  br i1 %cmp129, label %land.lhs.true130, label %for.inc120.2.for.inc145_crit_edge

for.inc120.2.for.inc145_crit_edge:                ; preds = %for.inc120.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc145

land.lhs.true130:                                 ; preds = %for.inc120.2
  %output133 = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 0, i32 1
  %205 = ptrtoint ptr %output133 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %output133, align 4
  %start = getelementptr inbounds %struct.matrox_altout, ptr %206, i32 0, i32 3
  %207 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %start, align 4
  %tobool134.not = icmp eq ptr %208, null
  br i1 %tobool134.not, label %land.lhs.true130.for.inc145_crit_edge, label %if.then135

land.lhs.true130.for.inc145_crit_edge:            ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc145

if.then135:                                       ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #12
  %data142 = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 0, i32 2
  %209 = ptrtoint ptr %data142 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %data142, align 4
  %call143 = call i32 %208(ptr noundef %210) #10
  br label %for.inc145

for.inc145:                                       ; preds = %if.then135, %land.lhs.true130.for.inc145_crit_edge, %for.inc120.2.for.inc145_crit_edge
  %211 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %212)
  %cmp129.1 = icmp eq i32 %212, 2
  br i1 %cmp129.1, label %land.lhs.true130.1, label %for.inc145.for.inc145.1_crit_edge

for.inc145.for.inc145.1_crit_edge:                ; preds = %for.inc145
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc145.1

land.lhs.true130.1:                               ; preds = %for.inc145
  %output133.1 = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 1, i32 1
  %213 = ptrtoint ptr %output133.1 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %output133.1, align 4
  %start.1 = getelementptr inbounds %struct.matrox_altout, ptr %214, i32 0, i32 3
  %215 = ptrtoint ptr %start.1 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %start.1, align 4
  %tobool134.not.1 = icmp eq ptr %216, null
  br i1 %tobool134.not.1, label %land.lhs.true130.1.for.inc145.1_crit_edge, label %if.then135.1

land.lhs.true130.1.for.inc145.1_crit_edge:        ; preds = %land.lhs.true130.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc145.1

if.then135.1:                                     ; preds = %land.lhs.true130.1
  call void @__sanitizer_cov_trace_pc() #12
  %data142.1 = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 1, i32 2
  %217 = ptrtoint ptr %data142.1 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %data142.1, align 4
  %call143.1 = call i32 %216(ptr noundef %218) #10
  br label %for.inc145.1

for.inc145.1:                                     ; preds = %if.then135.1, %land.lhs.true130.1.for.inc145.1_crit_edge, %for.inc145.for.inc145.1_crit_edge
  %219 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %220)
  %cmp129.2 = icmp eq i32 %220, 2
  br i1 %cmp129.2, label %land.lhs.true130.2, label %for.inc145.1.for.inc145.2_crit_edge

for.inc145.1.for.inc145.2_crit_edge:              ; preds = %for.inc145.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc145.2

land.lhs.true130.2:                               ; preds = %for.inc145.1
  %output133.2 = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 2, i32 1
  %221 = ptrtoint ptr %output133.2 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %output133.2, align 4
  %start.2 = getelementptr inbounds %struct.matrox_altout, ptr %222, i32 0, i32 3
  %223 = ptrtoint ptr %start.2 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %start.2, align 4
  %tobool134.not.2 = icmp eq ptr %224, null
  br i1 %tobool134.not.2, label %land.lhs.true130.2.for.inc145.2_crit_edge, label %if.then135.2

land.lhs.true130.2.for.inc145.2_crit_edge:        ; preds = %land.lhs.true130.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc145.2

if.then135.2:                                     ; preds = %land.lhs.true130.2
  call void @__sanitizer_cov_trace_pc() #12
  %data142.2 = getelementptr %struct.matrox_fb_info, ptr %4, i32 0, i32 14, i32 2, i32 2
  %225 = ptrtoint ptr %data142.2 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %data142.2, align 4
  %call143.2 = call i32 %224(ptr noundef %226) #10
  br label %for.inc145.2

for.inc145.2:                                     ; preds = %if.then135.2, %land.lhs.true130.2.for.inc145.2_crit_edge, %for.inc145.1.for.inc145.2_crit_edge
  call void @up_read(ptr noundef %altout) #10
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %mt) #10
  %initialized = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %info, i32 0, i32 2
  %227 = ptrtoint ptr %initialized to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 1, ptr %initialized, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc145.2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc145.2 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmap_len) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %visual) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @matroxfb_dh_setcolreg(i32 noundef %regno, i32 noundef %red, i32 noundef %green, i32 noundef %blue, i32 noundef %transp, ptr nocapture noundef %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %regno)
  %cmp = icmp ugt i32 %regno, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %grayscale = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 7
  %0 = ptrtoint ptr %grayscale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %grayscale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then1

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mul = mul i32 %red, 77
  %mul2 = mul i32 %green, 151
  %add = add i32 %mul2, %mul
  %mul3 = mul i32 %blue, 28
  %add4 = add i32 %add, %mul3
  %shr = lshr i32 %add4, 8
  br label %if.end5

if.end5:                                          ; preds = %if.then1, %if.end.if.end5_crit_edge
  %blue.addr.0 = phi i32 [ %shr, %if.then1 ], [ %blue, %if.end.if.end5_crit_edge ]
  %green.addr.0 = phi i32 [ %shr, %if.then1 ], [ %green, %if.end.if.end5_crit_edge ]
  %red.addr.0 = phi i32 [ %shr, %if.then1 ], [ %red, %if.end.if.end5_crit_edge ]
  %red11 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8
  %length = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 8, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %shl = shl i32 %red.addr.0, %3
  %add12 = sub i32 32767, %red.addr.0
  %sub = add i32 %add12, %shl
  %shr13 = lshr i32 %sub, 16
  %green19 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9
  %length20 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 9, i32 1
  %4 = ptrtoint ptr %length20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length20, align 4
  %shl21 = shl i32 %green.addr.0, %5
  %add22 = sub i32 32767, %green.addr.0
  %sub23 = add i32 %add22, %shl21
  %shr24 = lshr i32 %sub23, 16
  %blue30 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10
  %length31 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 10, i32 1
  %6 = ptrtoint ptr %length31 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length31, align 4
  %shl32 = shl i32 %blue.addr.0, %7
  %add33 = sub i32 32767, %blue.addr.0
  %sub34 = add i32 %add33, %shl32
  %shr35 = lshr i32 %sub34, 16
  %transp41 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11
  %length42 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 11, i32 1
  %8 = ptrtoint ptr %length42 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length42, align 4
  %shl43 = shl i32 %transp, %9
  %add44 = sub i32 32767, %transp
  %sub45 = add i32 %add44, %shl43
  %shr46 = lshr i32 %sub45, 16
  %10 = ptrtoint ptr %red11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %red11, align 4
  %shl53 = shl i32 %shr13, %11
  %12 = ptrtoint ptr %green19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %green19, align 4
  %shl61 = shl i32 %shr24, %13
  %or = or i32 %shl61, %shl53
  %14 = ptrtoint ptr %blue30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blue30, align 4
  %shl69 = shl i32 %shr35, %15
  %or70 = or i32 %or, %shl69
  %16 = ptrtoint ptr %transp41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %transp41, align 4
  %shl78 = shl i32 %shr46, %17
  %or79 = or i32 %or70, %shl78
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %18 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bits_per_pixel, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.end5.cleanup_crit_edge [
    i32 16, label %sw.bb
    i32 32, label %if.end5.cleanup.sink.split_crit_edge
  ]

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %shl85 = shl i32 %or79, 16
  %or86 = or i32 %shl85, %or79
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb, %if.end5.cleanup.sink.split_crit_edge
  %or86.sink = phi i32 [ %or86, %sw.bb ], [ %or79, %if.end5.cleanup.sink.split_crit_edge ]
  %arrayidx = getelementptr %struct.matroxfb_dh_fb_info, ptr %info, i32 0, i32 7, i32 %regno
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or86.sink, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @matroxfb_dh_blank(i32 noundef %blank, ptr nocapture noundef readnone %info) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matroxfb_dh_pan_display(ptr nocapture noundef readonly %var, ptr nocapture noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %primary_dev.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %primary_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_dev.i, align 4
  %xoffset.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %2 = ptrtoint ptr %xoffset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xoffset.i, align 4
  %xoffset2.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 4
  %4 = ptrtoint ptr %xoffset2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %xoffset2.i, align 4
  %yoffset.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %5 = ptrtoint ptr %yoffset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %yoffset.i, align 4
  %yoffset5.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 5
  %7 = ptrtoint ptr %yoffset5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %yoffset5.i, align 4
  %bits_per_pixel.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 6
  %8 = ptrtoint ptr %bits_per_pixel.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits_per_pixel.i, align 4
  %shr.i = lshr i32 %9, 3
  %xres_virtual.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %xres_virtual.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xres_virtual.i, align 4
  %mul.i = mul i32 %11, %shr.i
  %mul13.i = mul i32 %mul.i, %6
  %mul17.i = mul i32 %shr.i, %3
  %offbase.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %info, i32 0, i32 4, i32 5
  %12 = ptrtoint ptr %offbase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offbase.i, align 4
  %add.i = add i32 %13, %mul17.i
  %add18.i = add i32 %add.i, %mul13.i
  %interlaced.i = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %info, i32 0, i32 6
  %14 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %interlaced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  %vbase24.i = getelementptr inbounds %struct.matrox_fb_info, ptr %1, i32 0, i32 19, i32 1
  %15 = ptrtoint ptr %vbase24.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack.i = load i32, ptr %vbase24.i, align 4
  %16 = inttoptr i32 %.unpack.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %add18.i) #10
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 15404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %17) #10, !srcloc !83
  %add21.i = add i32 %add18.i, %mul.i
  %18 = ptrtoint ptr %vbase24.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack43.i = load i32, ptr %vbase24.i, align 4
  %19 = inttoptr i32 %.unpack43.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %add21.i) #10
  %add.ptr.i44.i = getelementptr i8, ptr %19, i32 15400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %20) #10, !srcloc !83
  br label %matroxfb_dh_pan_var.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i45.i = getelementptr i8, ptr %16, i32 15400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 %17) #10, !srcloc !83
  br label %matroxfb_dh_pan_var.exit

matroxfb_dh_pan_var.exit:                         ; preds = %if.else.i, %if.then.i
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matroxfb_dh_ioctl(ptr noundef %info, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %vblank = alloca %struct.fb_vblank, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %primary_dev = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %primary_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_dev, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %cmd, label %entry.cleanup188_crit_edge [
    i32 -2145368558, label %sw.bb
    i32 1074021920, label %sw.bb9
    i32 1074032378, label %entry.sw.bb21_crit_edge
    i32 -1073451270, label %entry.sw.bb21_crit_edge270
    i32 -2147193093, label %entry.sw.bb21_crit_edge271
    i32 1074032376, label %sw.bb24
    i32 -2147193096, label %for.body108.preheader
    i32 -2147193095, label %for.body138.preheader
  ]

entry.sw.bb21_crit_edge271:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb21

entry.sw.bb21_crit_edge270:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb21

entry.sw.bb21_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb21

entry.cleanup188_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup188

for.body138.preheader:                            ; preds = %entry
  %output141 = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 14, i32 0, i32 1
  %3 = ptrtoint ptr %output141 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %output141, align 4
  %tobool142.not = icmp eq ptr %4, null
  br i1 %tobool142.not, label %for.body138.preheader.for.inc152_crit_edge, label %if.then143

for.body138.preheader.for.inc152_crit_edge:       ; preds = %for.body138.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc152

for.body108.preheader:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx110 = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 14, i32 0
  %5 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp112 = icmp eq i32 %6, 2
  %or = zext i1 %cmp112 to i32
  %arrayidx110.1 = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 14, i32 1
  %7 = ptrtoint ptr %arrayidx110.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx110.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp112.1 = icmp eq i32 %8, 2
  %or.1 = select i1 %cmp112.1, i32 2, i32 0
  %conn.1.1 = or i32 %or.1, %or
  %arrayidx110.2 = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 14, i32 2
  %9 = ptrtoint ptr %arrayidx110.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx110.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp112.2 = icmp eq i32 %10, 2
  %or.2 = select i1 %cmp112.2, i32 4, i32 0
  %conn.1.2 = or i32 %or.2, %conn.1.1
  %11 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 518) #10
  %12 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i243 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i243 to ptr
  %cpu_domain.i.i244 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i244) #9, !srcloc !86
  %and.i245 = and i32 %14, -13
  %or.i246 = or i32 %and.i245, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i246) #10, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  %15 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %11, i32 %conn.1.2, i32 -1226833921) #10, !srcloc !89
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #10, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool128.not = icmp eq i32 %15, 0
  %. = select i1 %tobool128.not, i32 0, i32 -14
  br label %cleanup188

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vblank) #10
  %16 = getelementptr inbounds %struct.fb_vblank, ptr %vblank, i32 0, i32 1
  %17 = getelementptr inbounds %struct.fb_vblank, ptr %vblank, i32 0, i32 2
  %call.i = tail call i32 @matroxfb_enable_irq(ptr noundef %1, i32 noundef 0) #10
  %18 = call ptr @memset(ptr %16, i32 0, i32 28)
  %19 = ptrtoint ptr %vblank to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 36, ptr %vblank, align 4
  %vbase.i = getelementptr inbounds %struct.matrox_fb_info, ptr %1, i32 0, i32 19, i32 1
  %20 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack.i = load i32, ptr %vbase.i, align 4
  %21 = inttoptr i32 %.unpack.i to ptr
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 15432
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  %23 = and i32 %22, -16318464
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %17, align 4
  %yres.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %yres.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %27)
  %cmp.not.i = icmp ult i32 %24, %27
  br i1 %cmp.not.i, label %sw.bb.if.end.i_crit_edge, label %if.then.i252

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i252:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vblank, align 4
  %or.i251 = or i32 %29, 1
  store i32 %or.i251, ptr %vblank, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i252, %sw.bb.if.end.i_crit_edge
  %irq_flags.i = getelementptr inbounds %struct.matrox_fb_info, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %irq_flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %irq_flags.i, align 4
  %and1.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i.matroxfb_dh_get_vblank.exit_crit_edge, label %if.then5.i

if.end.i.matroxfb_dh_get_vblank.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %matroxfb_dh_get_vblank.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %vblank to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vblank, align 4
  %or7.i = or i32 %33, 16
  store i32 %or7.i, ptr %vblank, align 4
  %cnt.i = getelementptr inbounds %struct.matrox_fb_info, ptr %1, i32 0, i32 12, i32 0, i32 1
  %34 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cnt.i, align 4
  %36 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %16, align 4
  br label %matroxfb_dh_get_vblank.exit

matroxfb_dh_get_vblank.exit:                      ; preds = %if.then5.i, %if.end.i.matroxfb_dh_get_vblank.exit_crit_edge
  %37 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %matroxfb_dh_get_vblank.exit.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

matroxfb_dh_get_vblank.exit.copy_to_user.exit.thread_crit_edge: ; preds = %matroxfb_dh_get_vblank.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %matroxfb_dh_get_vblank.exit
  %38 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %37, i32 32, i32 -1226833920) #15, !srcloc !90
  %asmresult.i.i = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %vblank, i32 noundef 32) #10
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %37, ptr noundef nonnull %vblank, i32 noundef 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool5.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool5.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %matroxfb_dh_get_vblank.exit.copy_to_user.exit.thread_crit_edge
  %39 = phi i32 [ -14, %matroxfb_dh_get_vblank.exit.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vblank) #10
  br label %cleanup188

sw.bb9:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 449) #10
  %40 = inttoptr i32 %arg to ptr
  %41 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !86
  %and.i = and i32 %43, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  %44 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %40, i32 -1226833921) #10, !srcloc !91
  %asmresult = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #10, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool14.not = icmp eq i32 %asmresult, 0
  br i1 %tobool14.not, label %if.end16, label %sw.bb9.cleanup188_crit_edge

sw.bb9.cleanup188_crit_edge:                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup188

if.end16:                                         ; preds = %sw.bb9
  %asmresult12 = extractvalue { i32, i32 } %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult12)
  %cmp.not = icmp eq i32 %asmresult12, 0
  br i1 %cmp.not, label %if.end18, label %if.end16.cleanup188_crit_edge

if.end16.cleanup188_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup188

if.end18:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 @matroxfb_wait_for_sync(ptr noundef %1, i32 noundef 1) #10
  br label %cleanup188

sw.bb21:                                          ; preds = %entry.sw.bb21_crit_edge, %entry.sw.bb21_crit_edge270, %entry.sw.bb21_crit_edge271
  %fbops = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 20
  %45 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fbops, align 4
  %fb_ioctl = getelementptr inbounds %struct.fb_ops, ptr %46, i32 0, i32 16
  %47 = ptrtoint ptr %fb_ioctl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fb_ioctl, align 4
  %call23 = tail call i32 %48(ptr noundef %1, i32 noundef %cmd, i32 noundef %arg) #10
  br label %cleanup188

sw.bb24:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 468) #10
  %49 = inttoptr i32 %arg to ptr
  %50 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i239 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i239 to ptr
  %cpu_domain.i.i240 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 4
  %52 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i240) #9, !srcloc !86
  %and.i241 = and i32 %52, -13
  %or.i242 = or i32 %and.i241, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i242) #10, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  %53 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %49, i32 -1226833921) #10, !srcloc !92
  %asmresult35 = extractvalue { i32, i32 } %53, 0
  %asmresult36 = extractvalue { i32, i32 } %53, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #10, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult35)
  %tobool38.not = icmp eq i32 %asmresult35, 0
  br i1 %tobool38.not, label %sw.bb24.for.body_crit_edge, label %sw.bb24.cleanup188_crit_edge

sw.bb24.cleanup188_crit_edge:                     ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup188

sw.bb24.for.body_crit_edge:                       ; preds = %sw.bb24
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.bb24.for.body_crit_edge
  %out.0260 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %sw.bb24.for.body_crit_edge ]
  %shl = shl nuw i32 1, %out.0260
  %and = and i32 %shl, %asmresult36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %for.body.for.inc_crit_edge, label %if.then43

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then43:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %out.0260)
  %cmp44 = icmp ugt i32 %out.0260, 2
  br i1 %cmp44, label %if.then43.cleanup188_crit_edge, label %if.end46

if.then43.cleanup188_crit_edge:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup188

if.end46:                                         ; preds = %if.then43
  %output = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 14, i32 %out.0260, i32 1
  %54 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %output, align 4
  %tobool47.not = icmp eq ptr %55, null
  br i1 %tobool47.not, label %if.end46.cleanup188_crit_edge, label %if.end49

if.end46.cleanup188_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup188

if.end49:                                         ; preds = %if.end46
  %arrayidx = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 14, i32 %out.0260
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %57, label %if.end49.cleanup188_crit_edge [
    i32 0, label %if.end49.for.inc_crit_edge
    i32 2, label %if.end49.for.inc_crit_edge272
  ]

if.end49.for.inc_crit_edge272:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end49.for.inc_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end49.cleanup188_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup188

for.inc:                                          ; preds = %if.end49.for.inc_crit_edge, %if.end49.for.inc_crit_edge272, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %out.0260, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %panellink = getelementptr inbounds %struct.matrox_fb_info, ptr %1, i32 0, i32 31, i32 21
  %59 = ptrtoint ptr %panellink to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %panellink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool54.not = icmp eq i32 %60, 0
  br i1 %tobool54.not, label %for.end.if.end67_crit_edge, label %if.then55

for.end.if.end67_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then55:                                        ; preds = %for.end
  %and56 = and i32 %asmresult36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end59, label %if.then55.cleanup188_crit_edge

if.then55.cleanup188_crit_edge:                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup188

if.end59:                                         ; preds = %if.then55
  %arrayidx61 = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 14, i32 2
  %61 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp63 = icmp ne i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult36)
  %tobool64.not = icmp eq i32 %asmresult36, 0
  %or.cond = select i1 %cmp63, i1 true, i1 %tobool64.not
  br i1 %or.cond, label %if.end59.if.end67_crit_edge, label %if.end59.cleanup188_crit_edge

if.end59.cleanup188_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup188

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.end67:                                         ; preds = %if.end59.if.end67_crit_edge, %for.end.if.end67_crit_edge
  %and72 = and i32 %asmresult36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  %arrayidx85 = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 14, i32 0
  %63 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp87 = icmp eq i32 %64, 2
  br i1 %tobool73.not, label %if.else, label %if.then74

if.then74:                                        ; preds = %if.end67
  br i1 %cmp87, label %if.then74.for.inc94_crit_edge, label %if.then74.for.inc94.sink.split_crit_edge

if.then74.for.inc94.sink.split_crit_edge:         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc94.sink.split

if.then74.for.inc94_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc94

if.else:                                          ; preds = %if.end67
  br i1 %cmp87, label %if.else.for.inc94.sink.split_crit_edge, label %if.else.for.inc94_crit_edge

if.else.for.inc94_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc94

if.else.for.inc94.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc94.sink.split

for.inc94.sink.split:                             ; preds = %if.else.for.inc94.sink.split_crit_edge, %if.then74.for.inc94.sink.split_crit_edge
  %.sink = phi i32 [ 2, %if.then74.for.inc94.sink.split_crit_edge ], [ 0, %if.else.for.inc94.sink.split_crit_edge ]
  %65 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %.sink, ptr %arrayidx85, align 4
  br label %for.inc94

for.inc94:                                        ; preds = %for.inc94.sink.split, %if.else.for.inc94_crit_edge, %if.then74.for.inc94_crit_edge
  %changes.1 = phi i32 [ 0, %if.then74.for.inc94_crit_edge ], [ 0, %if.else.for.inc94_crit_edge ], [ 1, %for.inc94.sink.split ]
  %and72.1 = and i32 %asmresult36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.1)
  %tobool73.not.1 = icmp eq i32 %and72.1, 0
  %arrayidx85.1 = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 14, i32 1
  %66 = ptrtoint ptr %arrayidx85.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx85.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp87.1 = icmp eq i32 %67, 2
  br i1 %tobool73.not.1, label %if.else.1, label %if.then74.1

if.then74.1:                                      ; preds = %for.inc94
  br i1 %cmp87.1, label %if.then74.1.for.inc94.1_crit_edge, label %if.then74.1.for.inc94.1.sink.split_crit_edge

if.then74.1.for.inc94.1.sink.split_crit_edge:     ; preds = %if.then74.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc94.1.sink.split

if.then74.1.for.inc94.1_crit_edge:                ; preds = %if.then74.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc94.1

if.else.1:                                        ; preds = %for.inc94
  br i1 %cmp87.1, label %if.else.1.for.inc94.1.sink.split_crit_edge, label %if.else.1.for.inc94.1_crit_edge

if.else.1.for.inc94.1_crit_edge:                  ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc94.1

if.else.1.for.inc94.1.sink.split_crit_edge:       ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc94.1.sink.split

for.inc94.1.sink.split:                           ; preds = %if.else.1.for.inc94.1.sink.split_crit_edge, %if.then74.1.for.inc94.1.sink.split_crit_edge
  %.sink269 = phi i32 [ 2, %if.then74.1.for.inc94.1.sink.split_crit_edge ], [ 0, %if.else.1.for.inc94.1.sink.split_crit_edge ]
  %68 = ptrtoint ptr %arrayidx85.1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %.sink269, ptr %arrayidx85.1, align 4
  br label %for.inc94.1

for.inc94.1:                                      ; preds = %for.inc94.1.sink.split, %if.else.1.for.inc94.1_crit_edge, %if.then74.1.for.inc94.1_crit_edge
  %changes.1.1 = phi i32 [ %changes.1, %if.then74.1.for.inc94.1_crit_edge ], [ %changes.1, %if.else.1.for.inc94.1_crit_edge ], [ 1, %for.inc94.1.sink.split ]
  %and72.2 = and i32 %asmresult36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.2)
  %tobool73.not.2 = icmp eq i32 %and72.2, 0
  %arrayidx85.2 = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 14, i32 2
  %69 = ptrtoint ptr %arrayidx85.2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx85.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp87.2 = icmp eq i32 %70, 2
  br i1 %tobool73.not.2, label %if.else.2, label %if.then74.2

if.then74.2:                                      ; preds = %for.inc94.1
  br i1 %cmp87.2, label %if.then74.2.for.inc94.2_crit_edge, label %if.then74.2.if.end99.sink.split_crit_edge

if.then74.2.if.end99.sink.split_crit_edge:        ; preds = %if.then74.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99.sink.split

if.then74.2.for.inc94.2_crit_edge:                ; preds = %if.then74.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc94.2

if.else.2:                                        ; preds = %for.inc94.1
  br i1 %cmp87.2, label %if.else.2.if.end99.sink.split_crit_edge, label %if.else.2.for.inc94.2_crit_edge

if.else.2.for.inc94.2_crit_edge:                  ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc94.2

if.else.2.if.end99.sink.split_crit_edge:          ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99.sink.split

for.inc94.2:                                      ; preds = %if.else.2.for.inc94.2_crit_edge, %if.then74.2.for.inc94.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %changes.1.1)
  %tobool97.not = icmp eq i32 %changes.1.1, 0
  br i1 %tobool97.not, label %for.inc94.2.cleanup188_crit_edge, label %for.inc94.2.if.end99_crit_edge

for.inc94.2.if.end99_crit_edge:                   ; preds = %for.inc94.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

for.inc94.2.cleanup188_crit_edge:                 ; preds = %for.inc94.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup188

if.end99.sink.split:                              ; preds = %if.else.2.if.end99.sink.split_crit_edge, %if.then74.2.if.end99.sink.split_crit_edge
  %.sink268 = phi i32 [ 2, %if.then74.2.if.end99.sink.split_crit_edge ], [ 0, %if.else.2.if.end99.sink.split_crit_edge ]
  %71 = ptrtoint ptr %arrayidx85.2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %.sink268, ptr %arrayidx85.2, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.end99.sink.split, %for.inc94.2.if.end99_crit_edge
  %call100 = tail call i32 @matroxfb_dh_set_par(ptr noundef %info)
  br label %cleanup188

if.then143:                                       ; preds = %for.body138.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx140 = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 14, i32 0
  %72 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx140, align 4
  %switch.and = and i32 %73, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %74 = zext i1 %switch.selectcmp to i32
  br label %for.inc152

for.inc152:                                       ; preds = %if.then143, %for.body138.preheader.for.inc152_crit_edge
  %tmp134.1 = phi i32 [ 0, %for.body138.preheader.for.inc152_crit_edge ], [ %74, %if.then143 ]
  %output141.1 = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 14, i32 1, i32 1
  %75 = ptrtoint ptr %output141.1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %output141.1, align 4
  %tobool142.not.1 = icmp eq ptr %76, null
  br i1 %tobool142.not.1, label %for.inc152.for.inc152.1_crit_edge, label %if.then143.1

for.inc152.for.inc152.1_crit_edge:                ; preds = %for.inc152
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc152.1

if.then143.1:                                     ; preds = %for.inc152
  %arrayidx140.1 = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 14, i32 1
  %77 = ptrtoint ptr %arrayidx140.1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx140.1, align 4
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %78, label %if.then143.1.for.inc152.1_crit_edge [
    i32 0, label %if.then143.1.sw.bb147.1_crit_edge
    i32 2, label %if.then143.1.sw.bb147.1_crit_edge273
  ]

if.then143.1.sw.bb147.1_crit_edge273:             ; preds = %if.then143.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb147.1

if.then143.1.sw.bb147.1_crit_edge:                ; preds = %if.then143.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb147.1

if.then143.1.for.inc152.1_crit_edge:              ; preds = %if.then143.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc152.1

sw.bb147.1:                                       ; preds = %if.then143.1.sw.bb147.1_crit_edge, %if.then143.1.sw.bb147.1_crit_edge273
  %or149.1 = or i32 %tmp134.1, 2
  br label %for.inc152.1

for.inc152.1:                                     ; preds = %sw.bb147.1, %if.then143.1.for.inc152.1_crit_edge, %for.inc152.for.inc152.1_crit_edge
  %tmp134.1.1 = phi i32 [ %tmp134.1, %if.then143.1.for.inc152.1_crit_edge ], [ %or149.1, %sw.bb147.1 ], [ %tmp134.1, %for.inc152.for.inc152.1_crit_edge ]
  %output141.2 = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 14, i32 2, i32 1
  %80 = ptrtoint ptr %output141.2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %output141.2, align 4
  %tobool142.not.2 = icmp eq ptr %81, null
  br i1 %tobool142.not.2, label %for.inc152.1.for.inc152.2_crit_edge, label %if.then143.2

for.inc152.1.for.inc152.2_crit_edge:              ; preds = %for.inc152.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc152.2

if.then143.2:                                     ; preds = %for.inc152.1
  %arrayidx140.2 = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 14, i32 2
  %82 = ptrtoint ptr %arrayidx140.2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx140.2, align 4
  %84 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %83, label %if.then143.2.for.inc152.2_crit_edge [
    i32 0, label %if.then143.2.sw.bb147.2_crit_edge
    i32 2, label %if.then143.2.sw.bb147.2_crit_edge274
  ]

if.then143.2.sw.bb147.2_crit_edge274:             ; preds = %if.then143.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb147.2

if.then143.2.sw.bb147.2_crit_edge:                ; preds = %if.then143.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb147.2

if.then143.2.for.inc152.2_crit_edge:              ; preds = %if.then143.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc152.2

sw.bb147.2:                                       ; preds = %if.then143.2.sw.bb147.2_crit_edge, %if.then143.2.sw.bb147.2_crit_edge274
  %or149.2 = or i32 %tmp134.1.1, 4
  br label %for.inc152.2

for.inc152.2:                                     ; preds = %sw.bb147.2, %if.then143.2.for.inc152.2_crit_edge, %for.inc152.1.for.inc152.2_crit_edge
  %tmp134.1.2 = phi i32 [ %tmp134.1.1, %if.then143.2.for.inc152.2_crit_edge ], [ %or149.2, %sw.bb147.2 ], [ %tmp134.1.1, %for.inc152.1.for.inc152.2_crit_edge ]
  %panellink156 = getelementptr inbounds %struct.matrox_fb_info, ptr %1, i32 0, i32 31, i32 21
  %85 = ptrtoint ptr %panellink156 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %panellink156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool157.not = icmp eq i32 %86, 0
  br i1 %tobool157.not, label %for.inc152.2.if.end166_crit_edge, label %if.then158

for.inc152.2.if.end166_crit_edge:                 ; preds = %for.inc152.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166

if.then158:                                       ; preds = %for.inc152.2
  call void @__sanitizer_cov_trace_pc() #12
  %and159 = and i32 %tmp134.1.2, -5
  %arrayidx161 = getelementptr %struct.matrox_fb_info, ptr %1, i32 0, i32 14, i32 2
  %87 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp163 = icmp eq i32 %88, 1
  %spec.store.select = select i1 %cmp163, i32 0, i32 %and159
  br label %if.end166

if.end166:                                        ; preds = %if.then158, %for.inc152.2.if.end166_crit_edge
  %tmp134.2 = phi i32 [ %spec.store.select, %if.then158 ], [ %tmp134.1.2, %for.inc152.2.if.end166_crit_edge ]
  %89 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 543) #10
  %90 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i247 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i247 to ptr
  %cpu_domain.i.i248 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 4
  %92 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i248) #9, !srcloc !86
  %and.i249 = and i32 %92, -13
  %or.i250 = or i32 %and.i249, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i250) #10, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  %93 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %89, i32 %tmp134.2, i32 -1226833921) #10, !srcloc !93
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %92) #10, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool182.not = icmp eq i32 %93, 0
  %.238 = select i1 %tobool182.not, i32 0, i32 -14
  br label %cleanup188

cleanup188:                                       ; preds = %if.end166, %if.end99, %for.inc94.2.cleanup188_crit_edge, %if.end59.cleanup188_crit_edge, %if.then55.cleanup188_crit_edge, %if.end49.cleanup188_crit_edge, %if.end46.cleanup188_crit_edge, %if.then43.cleanup188_crit_edge, %sw.bb24.cleanup188_crit_edge, %sw.bb21, %if.end18, %if.end16.cleanup188_crit_edge, %sw.bb9.cleanup188_crit_edge, %copy_to_user.exit.thread, %for.body108.preheader, %entry.cleanup188_crit_edge
  %retval.5 = phi i32 [ %.238, %if.end166 ], [ %., %for.body108.preheader ], [ %call23, %sw.bb21 ], [ %39, %copy_to_user.exit.thread ], [ %call19, %if.end18 ], [ -14, %sw.bb9.cleanup188_crit_edge ], [ -19, %if.end16.cleanup188_crit_edge ], [ 0, %if.end99 ], [ -14, %sw.bb24.cleanup188_crit_edge ], [ -22, %if.then55.cleanup188_crit_edge ], [ -16, %if.end59.cleanup188_crit_edge ], [ 0, %for.inc94.2.cleanup188_crit_edge ], [ -25, %entry.cleanup188_crit_edge ], [ -16, %if.end49.cleanup188_crit_edge ], [ -6, %if.end46.cleanup188_crit_edge ], [ -6, %if.then43.cleanup188_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @matroxfb_dh_decode_var(ptr nocapture noundef readonly %m2info, ptr noundef %var, ptr nocapture noundef writeonly %visual, ptr nocapture noundef writeonly %video_cmap_len, ptr nocapture noundef writeonly %mode) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %0 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bits_per_pixel, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 16, label %entry.sw.epilog_crit_edge
    i32 32, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %mask.0 = phi i32 [ 15, %sw.bb1 ], [ 31, %entry.sw.epilog_crit_edge ]
  %len_usable = getelementptr inbounds %struct.matroxfb_dh_fb_info, ptr %m2info, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %len_usable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len_usable, align 4
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 3
  %5 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %yres_virtual, align 4
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %7 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp = icmp ult i32 %6, %8
  br i1 %cmp, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %yres_virtual, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 2
  %10 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xres_virtual, align 4
  %12 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp4 = icmp ult i32 %11, %13
  br i1 %cmp4, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %xres_virtual, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %15 = ptrtoint ptr %xres_virtual to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xres_virtual, align 4
  %add = add i32 %16, %mask.0
  %neg = xor i32 %mask.0, -1
  %and = and i32 %add, %neg
  store i32 %and, ptr %xres_virtual, align 4
  %17 = ptrtoint ptr %yres_virtual to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %yres_virtual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %18)
  %cmp12 = icmp ugt i32 %18, 32767
  br i1 %cmp12, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %shr = lshr i32 %1, 3
  %mul = mul nuw nsw i32 %18, %shr
  %mul18 = mul i32 %mul, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %mul18, i32 %4)
  %cmp19 = icmp ugt i32 %mul18, %4
  br i1 %cmp19, label %if.end14.cleanup_crit_edge, label %if.end21

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 4
  %19 = ptrtoint ptr %xoffset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xoffset, align 4
  %add23 = add i32 %20, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add23, i32 %and)
  %cmp25 = icmp ugt i32 %add23, %and
  br i1 %cmp25, label %if.then26, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %and, %13
  %21 = ptrtoint ptr %xoffset to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub, ptr %xoffset, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end21.if.end30_crit_edge
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 5
  %22 = ptrtoint ptr %yoffset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %yoffset, align 4
  %add32 = add i32 %23, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %add32, i32 %18)
  %cmp34 = icmp ugt i32 %add32, %18
  br i1 %cmp34, label %if.then35, label %if.end30.if.end40_crit_edge

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %sub38 = sub i32 %18, %8
  %24 = ptrtoint ptr %yoffset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub38, ptr %yoffset, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.end30.if.end40_crit_edge
  %and42 = and i32 %13, -8
  %25 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and42, ptr %var, align 4
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %26 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %left_margin, align 4
  %and43 = and i32 %27, -8
  store i32 %and43, ptr %left_margin, align 4
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %28 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %right_margin, align 4
  %and44 = and i32 %29, -8
  store i32 %and44, ptr %right_margin, align 4
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %30 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hsync_len, align 4
  %and45 = and i32 %31, -8
  store i32 %and45, ptr %hsync_len, align 4
  %32 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %1, ptr %mode, align 4
  %33 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %34)
  %cmp48 = icmp eq i32 %34, 16
  br i1 %cmp48, label %if.then49, label %if.else81

if.then49:                                        ; preds = %if.end40
  %green = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %length = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %35 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %36)
  %cmp50 = icmp eq i32 %36, 5
  %red = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  br i1 %cmp50, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 10, ptr %red, align 4
  %length53 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %38 = ptrtoint ptr %length53 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 5, ptr %length53, align 4
  %39 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 5, ptr %green, align 4
  %40 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 5, ptr %length, align 4
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %41 = ptrtoint ptr %blue to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %blue, align 4
  %length60 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %42 = ptrtoint ptr %length60 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 5, ptr %length60, align 4
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %43 = ptrtoint ptr %transp to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 15, ptr %transp, align 4
  %length63 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %44 = ptrtoint ptr %length63 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %length63, align 4
  %45 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 15, ptr %mode, align 4
  br label %if.end98

if.else:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %red to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 11, ptr %red, align 4
  %length67 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %length67 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 5, ptr %length67, align 4
  %48 = ptrtoint ptr %green to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 5, ptr %green, align 4
  %49 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 6, ptr %length, align 4
  %blue72 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %50 = ptrtoint ptr %blue72 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %blue72, align 4
  %length75 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %51 = ptrtoint ptr %length75 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 5, ptr %length75, align 4
  %transp76 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %52 = ptrtoint ptr %transp76 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %transp76, align 4
  %length79 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %53 = ptrtoint ptr %length79 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %length79, align 4
  br label %if.end98

if.else81:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %red82 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8
  %54 = ptrtoint ptr %red82 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 16, ptr %red82, align 4
  %length85 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 8, i32 1
  %55 = ptrtoint ptr %length85 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 8, ptr %length85, align 4
  %green86 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9
  %56 = ptrtoint ptr %green86 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 8, ptr %green86, align 4
  %length89 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 9, i32 1
  %57 = ptrtoint ptr %length89 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 8, ptr %length89, align 4
  %blue90 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10
  %58 = ptrtoint ptr %blue90 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %blue90, align 4
  %length93 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 10, i32 1
  %59 = ptrtoint ptr %length93 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 8, ptr %length93, align 4
  %transp94 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11
  %60 = ptrtoint ptr %transp94 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 24, ptr %transp94, align 4
  %length97 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 11, i32 1
  %61 = ptrtoint ptr %length97 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 8, ptr %length97, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.else81, %if.else, %if.then51
  %62 = ptrtoint ptr %visual to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %visual, align 4
  %63 = ptrtoint ptr %video_cmap_len to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 16, ptr %video_cmap_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.end14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end98 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @matroxfb_var2my(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @DAC1064_global_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @DAC1064_global_restore(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matroxfb_wait_for_sync(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matroxfb_enable_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @matroxfb_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !49, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__param_mem, !1, !"__param_mem", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_memtype305, !1, !"__UNIQUE_ID_memtype305", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_mem306, !4, !"__UNIQUE_ID_mem306", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 27, i32 1}
!5 = !{ptr @__UNIQUE_ID_author307, !6, !"__UNIQUE_ID_author307", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 734, i32 1}
!7 = !{ptr @__UNIQUE_ID_description308, !8, !"__UNIQUE_ID_description308", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 735, i32 1}
!9 = !{ptr @__UNIQUE_ID_file309, !10, !"__UNIQUE_ID_file309", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 736, i32 1}
!11 = !{ptr @__UNIQUE_ID_license310, !10, !"__UNIQUE_ID_license310", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_matroxfb_crtc2__311_737_matroxfb_crtc2_init6, !13, !"__initcall__kmod_matroxfb_crtc2__311_737_matroxfb_crtc2_init6", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 737, i32 1}
!14 = !{ptr @__exitcall_matroxfb_crtc2_exit, !15, !"__exitcall_matroxfb_crtc2_exit", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 738, i32 1}
!16 = !{ptr @__param_str_mem, !1, !"__param_str_mem", i1 false, i1 false}
!17 = !{ptr @mem, !18, !"mem", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 24, i32 12}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 723, i32 21}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 718, i32 12}
!23 = !{ptr @crtc2, !24, !"crtc2", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 717, i32 31}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 706, i32 3}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @matroxfb_crtc2_probe._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @matroxfb_crtc2_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 656, i32 3}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @matroxfb_dh_registerfb._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @matroxfb_dh_registerfb._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 659, i32 2}
!38 = !{ptr @matroxfb_dh_registerfb._entry.7, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @matroxfb_dh_registerfb._entry_ptr.9, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 644, i32 3}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @matroxfb_dh_regit._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @matroxfb_dh_regit._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @matroxfb_dh_ops, !46, !"matroxfb_dh_ops", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 566, i32 28}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!49 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 302, i32 18}
!56 = !{ptr @matroxfb_dh_defined, !57, !"matroxfb_dh_defined", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 581, i32 33}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 678, i32 4}
!60 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @matroxfb_dh_deregisterfb._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @matroxfb_dh_deregisterfb._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 680, i32 4}
!65 = !{ptr @matroxfb_dh_deregisterfb._entry.18, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @matroxfb_dh_deregisterfb._entry_ptr.20, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/matrox/matroxfb_crtc2.c", i32 687, i32 3}
!69 = !{ptr @matroxfb_dh_deregisterfb._entry.21, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @matroxfb_dh_deregisterfb._entry_ptr.23, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{!"sp"}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
!82 = !{i64 2156253483}
!83 = !{i64 6841960}
!84 = !{i64 6842378}
!85 = !{i64 2156253100}
!86 = !{i64 6363341}
!87 = !{i64 6363538}
!88 = !{i64 2153848771}
!89 = !{i64 2156559337, i64 2156559617, i64 2156559951, i64 2156560285}
!90 = !{i64 2153868467, i64 2153868492}
!91 = !{i64 2156533762, i64 2156534042, i64 2156534376, i64 2156534710}
!92 = !{i64 2156548960, i64 2156549240, i64 2156549574, i64 2156549908}
!93 = !{i64 2156569002, i64 2156569282, i64 2156569616, i64 2156569950}
