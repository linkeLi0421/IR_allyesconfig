; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/matrox/i2c-matroxfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/matrox/i2c-matroxfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.matroxfb_driver = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
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
%struct.matroxfb_dh_maven_info = type { %struct.i2c_bit_adapter, %struct.i2c_bit_adapter, %struct.i2c_bit_adapter }
%struct.i2c_bit_adapter = type { %struct.i2c_adapter, i32, %struct.i2c_algo_bit_data, ptr, %struct.anon.107 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.107 = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.80, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.80 = type { ptr }

@i2c_matroxfb = internal global { %struct.matroxfb_driver, [44 x i8] } { %struct.matroxfb_driver { %struct.list_head { ptr @i2c_matroxfb, ptr @i2c_matroxfb }, ptr @.str, ptr @i2c_matroxfb_probe, ptr @i2c_matroxfb_remove }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author305 = internal constant [71 x i8] c"i2c_matroxfb.author=(c) 1999-2002 Petr Vandrovec <vandrove@vc.cvut.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [89 x i8] c"i2c_matroxfb.description=Support module providing I2C buses present on Matrox videocards\00", section ".modinfo", align 1
@__initcall__kmod_i2c_matroxfb__307_236_i2c_matroxfb_init6 = internal global ptr @i2c_matroxfb_init, section ".initcall6.init", align 4
@__exitcall_i2c_matroxfb_exit = internal global ptr @i2c_matroxfb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file308 = internal constant [58 x i8] c"i2c_matroxfb.file=drivers/video/fbdev/matrox/i2c-matroxfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [25 x i8] c"i2c_matroxfb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c-matroxfb\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DDC:fb%u #0\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DDC:fb%u #1\00", [20 x i8] zeroinitializer }, align 32
@i2c_matroxfb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016i2c-matroxfb: VGA->TV plug detected, DDC unavailable.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c_matroxfb_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/video/fbdev/matrox/i2c-matroxfb.c\00", [54 x i8] zeroinitializer }, align 32
@i2c_matroxfb_probe._entry_ptr = internal global ptr @i2c_matroxfb_probe._entry, section ".printk_index", align 4
@i2c_matroxfb_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\016i2c-matroxfb: Could not register secondary output i2c bus. Continuing anyway.\0A\00", [47 x i8] zeroinitializer }, align 32
@i2c_matroxfb_probe._entry_ptr.8 = internal global ptr @i2c_matroxfb_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MAVEN:fb%u\00", [21 x i8] zeroinitializer }, align 32
@i2c_matroxfb_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016i2c-matroxfb: Could not register Maven i2c bus. Continuing anyway.\0A\00", [58 x i8] zeroinitializer }, align 32
@i2c_matroxfb_probe._entry_ptr.12 = internal global ptr @i2c_matroxfb_probe._entry.10, section ".printk_index", align 4
@i2c_matroxfb_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013i2c-matroxfb: Could not register primary adapter DDC bus.\0A\00", [35 x i8] zeroinitializer }, align 32
@i2c_matroxfb_probe._entry_ptr.15 = internal global ptr @i2c_matroxfb_probe._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@matrox_i2c_algo_template = internal constant { %struct.i2c_algo_bit_data, [56 x i8] } { %struct.i2c_algo_bit_data { ptr null, ptr @matroxfb_gpio_setsda, ptr @matroxfb_gpio_setscl, ptr @matroxfb_gpio_getsda, ptr @matroxfb_gpio_getscl, ptr null, ptr null, i32 10, i32 100, i8 0 }, [56 x i8] zeroinitializer }, align 32
@i2c_matroxfb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013i2c-matroxfb: failed to register driver\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c_matroxfb_init\00", [46 x i8] zeroinitializer }, align 32
@i2c_matroxfb_init._entry_ptr = internal global ptr @i2c_matroxfb_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"i2c_matroxfb\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 214, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 216, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 163, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 176, i32 7 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 178, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 180, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 183, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 185, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 201, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [25 x i8] c"matrox_i2c_algo_template\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 92, i32 39 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [45 x i8] c"../drivers/video/fbdev/matrox/i2c-matroxfb.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 223, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_i2c_matroxfb_exit, ptr @__initcall__kmod_i2c_matroxfb__307_236_i2c_matroxfb_init6, ptr @i2c_matroxfb_exit, ptr @i2c_matroxfb_init._entry, ptr @i2c_matroxfb_init._entry_ptr, ptr @i2c_matroxfb_probe._entry, ptr @i2c_matroxfb_probe._entry.10, ptr @i2c_matroxfb_probe._entry.13, ptr @i2c_matroxfb_probe._entry.6, ptr @i2c_matroxfb_probe._entry_ptr, ptr @i2c_matroxfb_probe._entry_ptr.12, ptr @i2c_matroxfb_probe._entry_ptr.15, ptr @i2c_matroxfb_probe._entry_ptr.8, ptr @i2c_matroxfb, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @matrox_i2c_algo_template, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_matroxfb to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_matroxfb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_matroxfb_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_matroxfb_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_matroxfb_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @matrox_i2c_algo_template to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_matroxfb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_matroxfb_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @matroxfb_unregister_driver(ptr noundef nonnull @i2c_matroxfb) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @matroxfb_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_matroxfb_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @matroxfb_register_driver(ptr noundef nonnull @i2c_matroxfb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @i2c_matroxfb_probe(ptr noundef %minfo) #2 align 64 {
entry:
  %maven_info = alloca %struct.i2c_board_info, align 4
  %addr_list = alloca [2 x i16], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4248) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 24
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 43, i32 noundef 255) #7
  tail call void @matroxfb_DAC_out(ptr noundef %minfo, i32 noundef 42, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  %chip = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 25
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  %ddc1 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 1
  %minfo1.i = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %minfo1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %minfo, ptr %minfo1.i, align 4
  %mask.i = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 1, i32 4
  %. = select i1 %switch, i32 4, i32 2
  %.127 = select i1 %switch, i32 16, i32 8
  %4 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %., ptr %mask.i, align 8
  %clock4.i75 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 1
  %5 = ptrtoint ptr %clock4.i75 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.127, ptr %clock4.i75, align 4
  %6 = ptrtoint ptr %ddc1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ddc1, align 8
  %name6.i76 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 12
  %node.i77 = getelementptr inbounds %struct.fb_info, ptr %minfo, i32 0, i32 1
  %7 = ptrtoint ptr %node.i77 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %node.i77, align 4
  %call.i78 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name6.i76, i32 noundef 48, ptr noundef nonnull @.str.1, i32 noundef %8) #7
  %driver_data.i.i.i79 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 9, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ddc1, ptr %driver_data.i.i.i79, align 4
  %class9.i80 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %class9.i80 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %class9.i80, align 4
  %bac.i81 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 1, i32 2
  %algo_data.i82 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %algo_data.i82 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %bac.i81, ptr %algo_data.i82, align 4
  %pcidev.i83 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 10
  %12 = ptrtoint ptr %pcidev.i83 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcidev.i83, align 4
  %dev.i84 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %parent.i85 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %parent.i85 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev.i84, ptr %parent.i85, align 8
  %15 = call ptr @memcpy(ptr %bac.i81, ptr @matrox_i2c_algo_template, i32 40)
  %16 = ptrtoint ptr %bac.i81 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ddc1, ptr %bac.i81, align 4
  %call17.i86 = tail call i32 @i2c_bit_add_bus(ptr noundef %ddc1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i86)
  %lnot.ext.i88.sink.in = icmp eq i32 %call17.i86, 0
  %lnot.ext.i88.sink = zext i1 %lnot.ext.i88.sink.in to i32
  %17 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %lnot.ext.i88.sink, ptr %17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i86)
  %tobool11.not = icmp eq i32 %call17.i86, 0
  br i1 %tobool11.not, label %if.end13, label %fail_ddc1

if.end13:                                         ; preds = %do.body1
  %dualhead = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 31, i32 22
  %19 = ptrtoint ptr %dualhead to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dualhead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not = icmp eq i32 %20, 0
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  %ddc2 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 2
  %minfo1.i90 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %minfo1.i90 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %minfo, ptr %minfo1.i90, align 4
  %mask.i91 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %mask.i91 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %mask.i91, align 8
  %clock4.i92 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 2, i32 4, i32 1
  %23 = ptrtoint ptr %clock4.i92 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %clock4.i92, align 4
  %24 = ptrtoint ptr %ddc2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %ddc2, align 8
  %name6.i93 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 12
  %node.i94 = getelementptr inbounds %struct.fb_info, ptr %minfo, i32 0, i32 1
  %25 = ptrtoint ptr %node.i94 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %node.i94, align 4
  %call.i95 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name6.i93, i32 noundef 48, ptr noundef nonnull @.str.2, i32 noundef %26) #7
  %driver_data.i.i.i96 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 9, i32 8
  %27 = ptrtoint ptr %driver_data.i.i.i96 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ddc2, ptr %driver_data.i.i.i96, align 4
  %class9.i97 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %28 = ptrtoint ptr %class9.i97 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %class9.i97, align 4
  %bac.i98 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 2, i32 2
  %algo_data.i99 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  %29 = ptrtoint ptr %algo_data.i99 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %bac.i98, ptr %algo_data.i99, align 4
  %pcidev.i100 = getelementptr inbounds %struct.matrox_fb_info, ptr %minfo, i32 0, i32 10
  %30 = ptrtoint ptr %pcidev.i100 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcidev.i100, align 4
  %dev.i101 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %parent.i102 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %parent.i102 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev.i101, ptr %parent.i102, align 8
  %33 = call ptr @memcpy(ptr %bac.i98, ptr @matrox_i2c_algo_template, i32 40)
  %34 = ptrtoint ptr %bac.i98 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ddc2, ptr %bac.i98, align 4
  %call17.i103 = tail call i32 @i2c_bit_add_bus(ptr noundef %ddc2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i103)
  %tobool.not.i104 = icmp eq i32 %call17.i103, 0
  %lnot.ext.i105 = zext i1 %tobool.not.i104 to i32
  %initialized.i106 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %call7.i.i, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %initialized.i106 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %lnot.ext.i105, ptr %initialized.i106, align 8
  %36 = zext i32 %call17.i103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call17.i103, label %do.end29 [
    i32 -19, label %if.then15.if.end33.sink.split_crit_edge
    i32 0, label %if.then15.if.end33_crit_edge
  ]

if.then15.if.end33_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then15.if.end33.sink.split_crit_edge:          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.sink.split

do.end29:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.sink.split

if.end33.sink.split:                              ; preds = %do.end29, %if.then15.if.end33.sink.split_crit_edge
  %.str.7.sink = phi ptr [ @.str.7, %do.end29 ], [ @.str.3, %if.then15.if.end33.sink.split_crit_edge ]
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.7.sink) #10
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %if.then15.if.end33_crit_edge
  %minfo1.i107 = getelementptr inbounds %struct.i2c_bit_adapter, ptr %call7.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %minfo1.i107 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %minfo, ptr %minfo1.i107, align 4
  %mask.i108 = getelementptr inbounds %struct.i2c_bit_adapter, ptr %call7.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %mask.i108 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 16, ptr %mask.i108, align 8
  %clock4.i109 = getelementptr inbounds %struct.i2c_bit_adapter, ptr %call7.i.i, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %clock4.i109 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 32, ptr %clock4.i109, align 4
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %call7.i.i, align 8
  %name6.i110 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 12
  %41 = ptrtoint ptr %node.i94 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %node.i94, align 4
  %call.i112 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name6.i110, i32 noundef 48, ptr noundef nonnull @.str.9, i32 noundef %42) #7
  %driver_data.i.i.i113 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 9, i32 8
  %43 = ptrtoint ptr %driver_data.i.i.i113 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i, ptr %driver_data.i.i.i113, align 4
  %class9.i114 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %class9.i114 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %class9.i114, align 4
  %bac.i115 = getelementptr inbounds %struct.i2c_bit_adapter, ptr %call7.i.i, i32 0, i32 2
  %algo_data.i116 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %algo_data.i116 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %bac.i115, ptr %algo_data.i116, align 4
  %46 = ptrtoint ptr %pcidev.i100 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcidev.i100, align 4
  %dev.i118 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %parent.i119 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 9, i32 1
  %48 = ptrtoint ptr %parent.i119 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %dev.i118, ptr %parent.i119, align 8
  %49 = call ptr @memcpy(ptr %bac.i115, ptr @matrox_i2c_algo_template, i32 40)
  %50 = ptrtoint ptr %bac.i115 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call7.i.i, ptr %bac.i115, align 4
  %call17.i120 = tail call i32 @i2c_bit_add_bus(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i120)
  %tobool.not.i121 = icmp eq i32 %call17.i120, 0
  %lnot.ext.i122 = zext i1 %tobool.not.i121 to i32
  %initialized.i123 = getelementptr inbounds %struct.i2c_bit_adapter, ptr %call7.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %initialized.i123 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %lnot.ext.i122, ptr %initialized.i123, align 8
  br i1 %tobool.not.i121, label %if.else42, label %do.end39

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.else42:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %maven_info) #7
  %52 = getelementptr inbounds i8, ptr %maven_info, i32 4
  %53 = call ptr @memset(ptr %52, i32 0, i32 52)
  %54 = ptrtoint ptr %maven_info to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 109, ptr %maven_info, align 4
  %55 = getelementptr inbounds [20 x i8], ptr %maven_info, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 97, ptr %55, align 1
  %57 = getelementptr inbounds [20 x i8], ptr %maven_info, i32 0, i32 2
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 118, ptr %57, align 2
  %59 = getelementptr inbounds [20 x i8], ptr %maven_info, i32 0, i32 3
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 101, ptr %59, align 1
  %61 = getelementptr inbounds [20 x i8], ptr %maven_info, i32 0, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 110, ptr %61, align 4
  %63 = getelementptr inbounds %struct.i2c_board_info, ptr %maven_info, i32 0, i32 2
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 27, ptr %63, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_list) #7
  %65 = ptrtoint ptr %addr_list to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1835006, ptr %addr_list, align 4
  %call44 = call ptr @i2c_new_scanned_device(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %maven_info, ptr noundef nonnull %addr_list, ptr noundef null) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_list) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %maven_info) #7
  br label %cleanup

fail_ddc1:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  br label %cleanup

cleanup:                                          ; preds = %fail_ddc1, %if.else42, %do.end39, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %fail_ddc1 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %do.end39 ], [ %call7.i.i, %if.else42 ], [ %call7.i.i, %if.end13.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_matroxfb_remove(ptr nocapture noundef readnone %minfo, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %initialized.i.i = getelementptr inbounds %struct.i2c_bit_adapter, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %initialized.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %initialized.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i, label %entry.i2c_maven_done.exit_crit_edge, label %if.then.i.i

entry.i2c_maven_done.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_maven_done.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_adapter(ptr noundef %data) #7
  %2 = ptrtoint ptr %initialized.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %initialized.i.i, align 8
  br label %i2c_maven_done.exit

i2c_maven_done.exit:                              ; preds = %if.then.i.i, %entry.i2c_maven_done.exit_crit_edge
  %initialized.i.i4 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %data, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %initialized.i.i4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %initialized.i.i4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i5 = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i5, label %i2c_maven_done.exit.i2c_ddc2_done.exit_crit_edge, label %if.then.i.i6

i2c_maven_done.exit.i2c_ddc2_done.exit_crit_edge: ; preds = %i2c_maven_done.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_ddc2_done.exit

if.then.i.i6:                                     ; preds = %i2c_maven_done.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ddc2.i = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %data, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %ddc2.i) #7
  %5 = ptrtoint ptr %initialized.i.i4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %initialized.i.i4, align 8
  br label %i2c_ddc2_done.exit

i2c_ddc2_done.exit:                               ; preds = %if.then.i.i6, %i2c_maven_done.exit.i2c_ddc2_done.exit_crit_edge
  %initialized.i.i7 = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %data, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %initialized.i.i7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %initialized.i.i7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i8 = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i8, label %i2c_ddc2_done.exit.i2c_ddc1_done.exit_crit_edge, label %if.then.i.i9

i2c_ddc2_done.exit.i2c_ddc1_done.exit_crit_edge:  ; preds = %i2c_ddc2_done.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_ddc1_done.exit

if.then.i.i9:                                     ; preds = %i2c_ddc2_done.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ddc1.i = getelementptr inbounds %struct.matroxfb_dh_maven_info, ptr %data, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %ddc1.i) #7
  %8 = ptrtoint ptr %initialized.i.i7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %initialized.i.i7, align 8
  br label %i2c_ddc1_done.exit

i2c_ddc1_done.exit:                               ; preds = %if.then.i.i9, %i2c_ddc2_done.exit.i2c_ddc1_done.exit_crit_edge
  tail call void @kfree(ptr noundef %data) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @matroxfb_DAC_out(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_scanned_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @matroxfb_gpio_setsda(ptr nocapture noundef readonly %data, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %minfo = getelementptr inbounds %struct.i2c_bit_adapter, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %minfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %minfo, align 4
  %mask = getelementptr inbounds %struct.i2c_bit_adapter, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not.i = icmp eq i32 %state, 0
  %mask..i = select i1 %tobool.not.i, i32 %3, i32 0
  %neg.i = xor i32 %3, -1
  %lock.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %1, i32 0, i32 24
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  %call5.i.i = tail call i32 @matroxfb_DAC_in(ptr noundef %1, i32 noundef 42) #7
  %and.i.i = and i32 %call5.i.i, %neg.i
  %or.i.i = or i32 %and.i.i, %mask..i
  tail call void @matroxfb_DAC_out(ptr noundef %1, i32 noundef 42, i32 noundef %or.i.i) #7
  tail call void @matroxfb_DAC_out(ptr noundef %1, i32 noundef 43, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @matroxfb_gpio_setscl(ptr nocapture noundef readonly %data, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %minfo = getelementptr inbounds %struct.i2c_bit_adapter, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %minfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %minfo, align 4
  %clock = getelementptr inbounds %struct.i2c_bit_adapter, ptr %data, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not.i = icmp eq i32 %state, 0
  %mask..i = select i1 %tobool.not.i, i32 %3, i32 0
  %neg.i = xor i32 %3, -1
  %lock.i.i = getelementptr inbounds %struct.matrox_fb_info, ptr %1, i32 0, i32 24
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  %call5.i.i = tail call i32 @matroxfb_DAC_in(ptr noundef %1, i32 noundef 42) #7
  %and.i.i = and i32 %call5.i.i, %neg.i
  %or.i.i = or i32 %and.i.i, %mask..i
  tail call void @matroxfb_DAC_out(ptr noundef %1, i32 noundef 42, i32 noundef %or.i.i) #7
  tail call void @matroxfb_DAC_out(ptr noundef %1, i32 noundef 43, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matroxfb_gpio_getsda(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %minfo = getelementptr inbounds %struct.i2c_bit_adapter, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %minfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %minfo, align 4
  %lock.i = getelementptr inbounds %struct.matrox_fb_info, ptr %1, i32 0, i32 24
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %call5.i = tail call i32 @matroxfb_DAC_in(ptr noundef %1, i32 noundef 43) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  %mask = getelementptr inbounds %struct.i2c_bit_adapter, ptr %data, i32 0, i32 4
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 8
  %and = and i32 %3, %call5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @matroxfb_gpio_getscl(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %minfo = getelementptr inbounds %struct.i2c_bit_adapter, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %minfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %minfo, align 4
  %lock.i = getelementptr inbounds %struct.matrox_fb_info, ptr %1, i32 0, i32 24
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %call5.i = tail call i32 @matroxfb_DAC_in(ptr noundef %1, i32 noundef 43) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  %clock = getelementptr inbounds %struct.i2c_bit_adapter, ptr %data, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock, align 4
  %and = and i32 %3, %call5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matroxfb_DAC_in(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matroxfb_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__UNIQUE_ID_author305, !1, !"__UNIQUE_ID_author305", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/matrox/i2c-matroxfb.c", i32 233, i32 1}
!2 = !{ptr @__UNIQUE_ID_description306, !3, !"__UNIQUE_ID_description306", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/matrox/i2c-matroxfb.c", i32 234, i32 1}
!4 = !{ptr @__initcall__kmod_i2c_matroxfb__307_236_i2c_matroxfb_init6, !5, !"__initcall__kmod_i2c_matroxfb__307_236_i2c_matroxfb_init6", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/matrox/i2c-matroxfb.c", i32 236, i32 1}
!6 = !{ptr @__exitcall_i2c_matroxfb_exit, !7, !"__exitcall_i2c_matroxfb_exit", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/matrox/i2c-matroxfb.c", i32 237, i32 1}
!8 = !{ptr @__UNIQUE_ID_file308, !9, !"__UNIQUE_ID_file308", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/matrox/i2c-matroxfb.c", i32 239, i32 1}
!10 = !{ptr @__UNIQUE_ID_license309, !9, !"__UNIQUE_ID_license309", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/video/fbdev/matrox/i2c-matroxfb.c", i32 216, i32 11}
!13 = !{ptr @i2c_matroxfb, !14, !"i2c_matroxfb", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/matrox/i2c-matroxfb.c", i32 214, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/video/fbdev/matrox/i2c-matroxfb.c", i32 163, i32 8}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/matrox/i2c-matroxfb.c", i32 176, i32 7}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/matrox/i2c-matroxfb.c", i32 178, i32 4}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @i2c_matroxfb_probe._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @i2c_matroxfb_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/matrox/i2c-matroxfb.c", i32 180, i32 4}
!27 = !{ptr @i2c_matroxfb_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @i2c_matroxfb_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/matrox/i2c-matroxfb.c", i32 183, i32 26}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/matrox/i2c-matroxfb.c", i32 185, i32 4}
!33 = !{ptr @i2c_matroxfb_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @i2c_matroxfb_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/matrox/i2c-matroxfb.c", i32 201, i32 2}
!37 = !{ptr @i2c_matroxfb_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @i2c_matroxfb_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @matrox_i2c_algo_template, !40, !"matrox_i2c_algo_template", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/matrox/i2c-matroxfb.c", i32 92, i32 39}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/matrox/i2c-matroxfb.c", i32 223, i32 3}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @i2c_matroxfb_init._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @i2c_matroxfb_init._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
