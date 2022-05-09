; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fb_agm1264k-fl.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fb_agm1264k-fl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fbtft_display = type { i32, i32, i32, i32, i32, %struct.fbtft_ops, i32, i32, i32, ptr, ptr, i32, i32, i32 }
%struct.fbtft_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.fbtft_par = type { ptr, ptr, ptr, ptr, ptr, [16 x i32], %struct.anon.85, ptr, i8, %struct.fbtft_ops, %struct.spinlock, i32, i32, %struct.anon.86, ptr, %struct.anon.87, i32, i8, i64, i8, ptr, i8 }
%struct.anon.85 = type { ptr, i32 }
%struct.anon.86 = type { ptr, ptr, ptr, ptr, ptr, ptr, [16 x ptr], [16 x ptr], [16 x ptr] }
%struct.anon.87 = type { %struct.mutex, ptr, i32, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.__va_list = type { ptr }
%struct.fbtft_gpio = type { [32 x i8], ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@fbtft_driver_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @fbtft_driver_probe_spi, ptr @fbtft_driver_remove_spi, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@fbtft_driver_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fbtft_driver_probe_pdev, ptr @fbtft_driver_remove_pdev, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_fb_agm1264k_fl__305_435_fbtft_driver_module_init6 = internal global ptr @fbtft_driver_module_init, section ".initcall6.init", align 4
@__exitcall_fbtft_driver_module_exit = internal global ptr @fbtft_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias306 = internal constant [45 x i8] c"fb_agm1264k_fl.alias=platform:fb_agm1264k-fl\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [77 x i8] c"fb_agm1264k_fl.description=Two KS0108 LCD controllers in AGM1264K-FL display\00", section ".modinfo", align 1
@__UNIQUE_ID_author308 = internal constant [36 x i8] c"fb_agm1264k_fl.author=ololoshka2871\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [57 x i8] c"fb_agm1264k_fl.file=drivers/staging/fbtft/fb_agm1264k-fl\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [27 x i8] c"fb_agm1264k_fl.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fb_agm1264k-fl\00", [17 x i8] zeroinitializer }, align 32
@dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"displaytronic,fb_agm1264k-fl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@display = internal global { %struct.fbtft_display, [40 x i8] } { %struct.fbtft_display { i32 128, i32 64, i32 8, i32 0, i32 0, %struct.fbtft_ops { ptr @write, ptr null, ptr @write_vmem, ptr @write_reg8_bus8, ptr @set_addr_win, ptr null, ptr null, ptr null, ptr @init_display, ptr null, ptr @request_gpios_match, ptr null, ptr @verify_gpios, ptr null, ptr null, ptr null, ptr null }, i32 0, i32 20, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(len=%zu): \00", [18 x i8] zeroinitializer }, align 32
@__func__.write = private unnamed_addr constant [6 x i8] c"write\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@gamma_correction_table = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\03\03\03\03\03\04\04\04\04\05\05\05\05\06\06\06\06\07\07\07\08\08\08\09\09\09\0A\0A\0B\0B\0B\0C\0C\0D\0D\0D\0E\0E\0F\0F\10\10\11\11\12\12\13\13\14\14\15\16\16\17\17\18\19\19\1A\1A\1B\1C\1C\1D\1E\1E\1F !!\22##$%&''()*++,-./01123456789:;<=>?@ABCDEFGIJKLMNOQRSTUWXYZ[]^_abcdfgijkmnoqrtuwxy{|~\7F\81\82\84\85\87\89\8A\8C\8D\8F\91\92\94\95\97\99\9A\9C\9E\9F\A1\A3\A5\A6\A8\AA\AC\AD\AF\B1\B3\B5\B6\B8\BA\BC\BE\C0\C2\C4\C5\C7\C9\CB\CD\CF\D1\D3\D5\D7\D9\DB\DD\DF\E1\E3\E5\E7\EA\EC\EE\F0\F2\F4\F6\F8\FB\FD\FF", [64 x i8] zeroinitializer }, align 32
@addr_win.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@addr_win.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@addr_win.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@addr_win.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@write_vmem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 359, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"write failed and returned: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write_vmem\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/staging/fbtft/fb_agm1264k-fl.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@write_vmem._entry_ptr = internal global ptr @write_vmem._entry, section ".printk_index", align 4
@write_vmem._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 382, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@write_vmem._entry_ptr.8 = internal global ptr @write_vmem._entry.7, section ".printk_index", align 4
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s: \00", [27 x i8] zeroinitializer }, align 32
@__func__.write_reg8_bus8 = private unnamed_addr constant [16 x i8] c"write_reg8_bus8\00", align 1
@write_reg8_bus8._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.write_reg8_bus8, ptr @.str.4, i32 177, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Incorrect chip select request (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@write_reg8_bus8._entry_ptr = internal global ptr @write_reg8_bus8._entry, section ".printk_index", align 4
@write_reg8_bus8._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.write_reg8_bus8, ptr @.str.4, i32 203, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"write() failed and returned %d\0A\00", [32 x i8] zeroinitializer }, align 32
@write_reg8_bus8._entry_ptr.13 = internal global ptr @write_reg8_bus8._entry.11, section ".printk_index", align 4
@request_gpios_match.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.4, ptr @.str.16, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fb_agm1264k_fl\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"request_gpios_match\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s('%s')\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"wr\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cs0\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cs1\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rw\00", [29 x i8] zeroinitializer }, align 32
@verify_gpios.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"verify_gpios\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@verify_gpios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 90, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Missing info about 'wr' (aka E) gpio. Aborting.\0A\00", [47 x i8] zeroinitializer }, align 32
@verify_gpios._entry_ptr = internal global ptr @verify_gpios._entry, section ".printk_index", align 4
@verify_gpios._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.4, i32 97, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Missing info about 'db[%i]' gpio. Aborting.\0A\00", [51 x i8] zeroinitializer }, align 32
@verify_gpios._entry_ptr.26 = internal global ptr @verify_gpios._entry.24, section ".printk_index", align 4
@verify_gpios._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.21, ptr @.str.4, i32 103, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Missing info about 'cs0' gpio. Aborting.\0A\00", [54 x i8] zeroinitializer }, align 32
@verify_gpios._entry_ptr.29 = internal global ptr @verify_gpios._entry.27, section ".printk_index", align 4
@verify_gpios._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.21, ptr @.str.4, i32 108, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Missing info about 'cs1' gpio. Aborting.\0A\00", [54 x i8] zeroinitializer }, align 32
@verify_gpios._entry_ptr.32 = internal global ptr @verify_gpios._entry.30, section ".printk_index", align 4
@verify_gpios._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.21, ptr @.str.4, i32 113, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Missing info about 'rw' gpio. Aborting.\0A\00", [55 x i8] zeroinitializer }, align 32
@verify_gpios._entry_ptr.35 = internal global ptr @verify_gpios._entry.33, section ".printk_index", align 4
@___asan_gen_.36 = private unnamed_addr constant [24 x i8] c"fbtft_driver_spi_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [29 x i8] c"fbtft_driver_platform_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"dt_ids\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 435, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 419, i32 29 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 395, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [23 x i8] c"gamma_correction_table\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 45, i32 28 }
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"addr_win.0\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [11 x i8] c"addr_win.1\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"addr_win.2\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"addr_win.3\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 357, i32 5 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 380, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 166, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 176, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 202, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 123, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 126, i32 29 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 130, i32 36 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 134, i32 36 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 142, i32 34 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 85, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 89, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 95, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 102, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 107, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [42 x i8] c"../drivers/staging/fbtft/fb_agm1264k-fl.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 112, i32 3 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_fbtft_driver_module_exit, ptr @__initcall__kmod_fb_agm1264k_fl__305_435_fbtft_driver_module_init6, ptr @fbtft_driver_module_exit, ptr @verify_gpios._entry, ptr @verify_gpios._entry.24, ptr @verify_gpios._entry.27, ptr @verify_gpios._entry.30, ptr @verify_gpios._entry.33, ptr @verify_gpios._entry_ptr, ptr @verify_gpios._entry_ptr.26, ptr @verify_gpios._entry_ptr.29, ptr @verify_gpios._entry_ptr.32, ptr @verify_gpios._entry_ptr.35, ptr @write_reg8_bus8._entry, ptr @write_reg8_bus8._entry.11, ptr @write_reg8_bus8._entry_ptr, ptr @write_reg8_bus8._entry_ptr.13, ptr @write_vmem._entry, ptr @write_vmem._entry.7, ptr @write_vmem._entry_ptr, ptr @write_vmem._entry_ptr.8, ptr @fbtft_driver_spi_driver, ptr @fbtft_driver_platform_driver, ptr @.str, ptr @dt_ids, ptr @display, ptr @.str.1, ptr @gamma_correction_table, ptr @addr_win.0, ptr @addr_win.1, ptr @addr_win.2, ptr @addr_win.3, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamma_correction_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addr_win.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addr_win.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addr_win.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addr_win.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_vmem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_vmem._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_reg8_bus8._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_reg8_bus8._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_gpios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_gpios._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_gpios._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_gpios._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_gpios._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fbtft_driver_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @fbtft_driver_spi_driver, i32 0, i32 4)) #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @fbtft_driver_platform_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @fbtft_driver_spi_driver) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fbtft_driver_platform_driver, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @fbtft_driver_spi_driver, i32 0, i32 4)) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_probe_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fbtft_probe_common(ptr noundef nonnull @display, ptr noundef %spi, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_remove_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @fbtft_remove_common(ptr noundef %spi, ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbtft_probe_common(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write(ptr nocapture noundef readonly %par, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 8
  %and = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then, !prof !95

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  tail call void (ptr, i32, ptr, i32, ptr, ...) @fbtft_dbg_hex(ptr noundef %5, i32 noundef 1, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.write, i32 noundef %len) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %arrayidx = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 8, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool3.not26 = icmp eq i32 %len, 0
  br i1 %tobool3.not26, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %wr = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 3
  %arrayidx6 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 0
  %arrayidx6.1 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 1
  %arrayidx6.2 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 2
  %arrayidx6.3 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 3
  %arrayidx6.4 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 4
  %arrayidx6.5 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 5
  %arrayidx6.6 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 6
  %arrayidx6.7 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %dec28.in = phi i32 [ %len, %while.body.lr.ph ], [ %dec28, %while.body.while.body_crit_edge ]
  %buf.addr.027 = phi ptr [ %buf, %while.body.lr.ph ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %dec28 = add i32 %dec28.in, -1
  %8 = ptrtoint ptr %buf.addr.027 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf.addr.027, align 1
  %conv7 = zext i8 %9 to i32
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6, align 4
  %and9 = and i32 %conv7, 1
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef %and9) #11
  %12 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6.1, align 4
  %and9.1 = and i32 %conv7, 2
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef %and9.1) #11
  %14 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6.2, align 4
  %and9.2 = and i32 %conv7, 4
  tail call void @gpiod_set_value(ptr noundef %15, i32 noundef %and9.2) #11
  %16 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx6.3, align 4
  %and9.3 = and i32 %conv7, 8
  tail call void @gpiod_set_value(ptr noundef %17, i32 noundef %and9.3) #11
  %18 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx6.4, align 4
  %and9.4 = and i32 %conv7, 16
  tail call void @gpiod_set_value(ptr noundef %19, i32 noundef %and9.4) #11
  %20 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx6.5, align 4
  %and9.5 = and i32 %conv7, 32
  tail call void @gpiod_set_value(ptr noundef %21, i32 noundef %and9.5) #11
  %22 = ptrtoint ptr %arrayidx6.6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx6.6, align 4
  %and9.6 = and i32 %conv7, 64
  tail call void @gpiod_set_value(ptr noundef %23, i32 noundef %and9.6) #11
  %24 = ptrtoint ptr %arrayidx6.7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx6.7, align 4
  %and9.7 = and i32 %conv7, 128
  tail call void @gpiod_set_value(ptr noundef %25, i32 noundef %and9.7) #11
  %incdec.ptr = getelementptr i8, ptr %buf.addr.027, i32 1
  %26 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr, align 4
  tail call void @gpiod_set_value(ptr noundef %27, i32 noundef 0) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 1073740) #11
  %29 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wr, align 4
  tail call void @gpiod_set_value(ptr noundef %30, i32 noundef 1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #11
  %tobool3.not = icmp eq i32 %dec28, 0
  br i1 %tobool3.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_vmem(ptr noundef %par, i32 noundef %offset, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %2 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %txbuf = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 6
  %5 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %txbuf, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %yres, align 4
  %mul = mul i32 %10, %8
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 2) #11
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %entry.cleanup_crit_edge, label %if.end7.i, !prof !96

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  %13 = extractvalue { i32, i1 } %11, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3072) #14
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info, align 8
  %var6300 = getelementptr inbounds %struct.fb_info, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %var6300 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %var6300, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp301.not = icmp eq i32 %17, 0
  br i1 %cmp301.not, label %for.cond.preheader.for.cond51.preheader_crit_edge, label %for.cond8.preheader.preheader

for.cond.preheader.for.cond51.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond51.preheader

for.cond8.preheader.preheader:                    ; preds = %for.cond.preheader
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info, align 8
  %yres11297 = getelementptr inbounds %struct.fb_info, ptr %19, i32 0, i32 6, i32 1
  %20 = load ptr, ptr %info, align 8
  %var6 = getelementptr inbounds %struct.fb_info, ptr %20, i32 0, i32 6
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.inc48.for.cond8.preheader_crit_edge, %for.cond8.preheader.preheader
  %x.0302 = phi i32 [ %inc49, %for.inc48.for.cond8.preheader_crit_edge ], [ 0, %for.cond8.preheader.preheader ]
  %21 = ptrtoint ptr %yres11297 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %yres11297, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp12298.not = icmp eq i32 %22, 0
  br i1 %cmp12298.not, label %for.cond8.preheader.for.inc48_crit_edge, label %for.body13.preheader

for.cond8.preheader.for.inc48_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc48

for.body13.preheader:                             ; preds = %for.cond8.preheader
  %23 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %info, align 8
  %yres11 = getelementptr inbounds %struct.fb_info, ptr %24, i32 0, i32 6, i32 1
  br label %for.body13

for.cond51.preheader:                             ; preds = %for.inc48.for.cond51.preheader_crit_edge, %for.cond.preheader.for.cond51.preheader_crit_edge
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info, align 8
  %var53309 = getelementptr inbounds %struct.fb_info, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %var53309 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %var53309, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp55310.not = icmp eq i32 %28, 0
  br i1 %cmp55310.not, label %for.cond51.preheader.for.end113_crit_edge, label %for.cond58.preheader.preheader

for.cond51.preheader.for.end113_crit_edge:        ; preds = %for.cond51.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end113

for.cond58.preheader.preheader:                   ; preds = %for.cond51.preheader
  %29 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %info, align 8
  %yres61304 = getelementptr inbounds %struct.fb_info, ptr %30, i32 0, i32 6, i32 1
  %31 = load ptr, ptr %info, align 8
  %var53 = getelementptr inbounds %struct.fb_info, ptr %31, i32 0, i32 6
  br label %for.cond58.preheader

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body13.preheader
  %32 = phi ptr [ %24, %for.body13.for.body13_crit_edge ], [ %19, %for.body13.preheader ]
  %y.0299 = phi i32 [ %inc, %for.body13.for.body13_crit_edge ], [ 0, %for.body13.preheader ]
  %var10 = getelementptr inbounds %struct.fb_info, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %var10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %var10, align 4
  %mul17 = mul i32 %34, %y.0299
  %add = add i32 %mul17, %x.0302
  %arrayidx = getelementptr i16, ptr %4, i32 %add
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx, align 2
  %and = and i16 %36, 31
  %and20 = lshr i16 %36, 5
  %37 = and i16 %and20, 63
  %38 = lshr i16 %36, 11
  %narrow = mul nuw nsw i16 %38, 299
  %narrow292 = mul nuw i16 %37, 587
  %narrow293 = mul nuw nsw i16 %and, 114
  %add30 = add nuw nsw i16 %narrow293, %narrow
  %add33 = add nuw i16 %add30, %narrow292
  %div296 = udiv i16 %add33, 200
  %div.zext = zext i16 %div296 to i32
  %arrayidx40 = getelementptr [256 x i8], ptr @gamma_correction_table, i32 0, i32 %div.zext
  %39 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %40 to i16
  %arrayidx47 = getelementptr i16, ptr %call8.i, i32 %add
  %41 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv41, ptr %arrayidx47, align 2
  %inc = add nuw i32 %y.0299, 1
  %42 = ptrtoint ptr %yres11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %yres11, align 4
  %cmp12 = icmp ult i32 %inc, %43
  br i1 %cmp12, label %for.body13.for.body13_crit_edge, label %for.body13.for.inc48_crit_edge

for.body13.for.inc48_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc48

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13

for.inc48:                                        ; preds = %for.body13.for.inc48_crit_edge, %for.cond8.preheader.for.inc48_crit_edge
  %inc49 = add nuw i32 %x.0302, 1
  %44 = ptrtoint ptr %var6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %var6, align 4
  %cmp = icmp ult i32 %inc49, %45
  br i1 %cmp, label %for.inc48.for.cond8.preheader_crit_edge, label %for.inc48.for.cond51.preheader_crit_edge

for.inc48.for.cond51.preheader_crit_edge:         ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond51.preheader

for.inc48.for.cond8.preheader_crit_edge:          ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond8.preheader

for.cond58.preheader:                             ; preds = %for.inc111.for.cond58.preheader_crit_edge, %for.cond58.preheader.preheader
  %x.1311 = phi i32 [ %inc112.pre-phi, %for.inc111.for.cond58.preheader_crit_edge ], [ 0, %for.cond58.preheader.preheader ]
  %46 = ptrtoint ptr %yres61304 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %yres61304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp62305.not = icmp eq i32 %47, 0
  br i1 %cmp62305.not, label %for.cond58.preheader.for.inc111_crit_edge, label %for.body64.lr.ph

for.cond58.preheader.for.inc111_crit_edge:        ; preds = %for.cond58.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = add nuw i32 %x.1311, 1
  br label %for.inc111

for.body64.lr.ph:                                 ; preds = %for.cond58.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %x.1311)
  %cmp8.i = icmp sgt i32 %x.1311, -1
  %add.1.i = add nuw i32 %x.1311, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add.1.i)
  %cmp8.1.i = icmp sgt i32 %add.1.i, -1
  %48 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %info, align 8
  %yres61 = getelementptr inbounds %struct.fb_info, ptr %49, i32 0, i32 6, i32 1
  br label %for.body64

for.body64:                                       ; preds = %iterate_diffusion_matrix.exit.for.body64_crit_edge, %for.body64.lr.ph
  %50 = phi i32 [ %47, %for.body64.lr.ph ], [ %76, %iterate_diffusion_matrix.exit.for.body64_crit_edge ]
  %51 = phi ptr [ %30, %for.body64.lr.ph ], [ %49, %iterate_diffusion_matrix.exit.for.body64_crit_edge ]
  %y.1306 = phi i32 [ 0, %for.body64.lr.ph ], [ %inc109.pre-phi, %iterate_diffusion_matrix.exit.for.body64_crit_edge ]
  %var60 = getelementptr inbounds %struct.fb_info, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %var60 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %var60, align 4
  %mul69 = mul i32 %53, %y.1306
  %add70 = add i32 %mul69, %x.1311
  %arrayidx71 = getelementptr i16, ptr %call8.i, i32 %add70
  %54 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx71, align 2
  %sub75 = add i16 %55, -255
  %56 = tail call i16 @llvm.abs.i16(i16 %55, i1 false)
  %57 = tail call i16 @llvm.abs.i16(i16 %sub75, i1 false)
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %57)
  %cmp95.not = icmp ult i16 %56, %57
  %error.0 = select i1 %cmp95.not, i16 %55, i16 %sub75
  %58 = sdiv i16 %error.0, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %x.1311, i32 %53)
  %cmp12.not.i = icmp ult i32 %x.1311, %53
  %or.cond.i = and i1 %cmp8.i, %cmp12.not.i
  br i1 %or.cond.i, label %lor.lhs.false14.1.i, label %for.body64.cleanup.1.i_crit_edge

for.body64.cleanup.1.i_crit_edge:                 ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.1.i

lor.lhs.false14.1.i:                              ; preds = %for.body64
  %pixel65.0 = select i1 %cmp95.not, i16 0, i16 255
  %59 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %pixel65.0, ptr %arrayidx71, align 2
  %add16.1.i = add nuw i32 %y.1306, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add16.1.i, i32 %50)
  %cmp17.not.1.i = icmp ult i32 %add16.1.i, %50
  br i1 %cmp17.not.1.i, label %if.end47.1.i, label %lor.lhs.false14.1.i.cleanup.1.i_crit_edge

lor.lhs.false14.1.i.cleanup.1.i_crit_edge:        ; preds = %lor.lhs.false14.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.1.i

if.end47.1.i:                                     ; preds = %lor.lhs.false14.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.1.i = mul i32 %53, %add16.1.i
  %add23.1.i = add i32 %mul.1.i, %x.1311
  %arrayidx.1.i = getelementptr i16, ptr %call8.i, i32 %add23.1.i
  %60 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.1.i, align 2
  %mul34.1.i = mul nsw i16 %58, 3
  %add35.1.i = add i16 %61, %mul34.1.i
  %62 = tail call i16 @llvm.smin.i16(i16 %add35.1.i, i16 255) #11
  %63 = tail call i16 @llvm.smax.i16(i16 %62, i16 0) #11
  %64 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %arrayidx.1.i, align 2
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.end47.1.i, %lor.lhs.false14.1.i.cleanup.1.i_crit_edge, %for.body64.cleanup.1.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1.i, i32 %53)
  %cmp12.not.1.i = icmp ult i32 %add.1.i, %53
  %or.cond.1.i = and i1 %cmp8.1.i, %cmp12.not.1.i
  br i1 %or.cond.1.i, label %lor.lhs.false14.1.1.i, label %cleanup.1.i.iterate_diffusion_matrix.exit_crit_edge

cleanup.1.i.iterate_diffusion_matrix.exit_crit_edge: ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %.pre318 = add nuw i32 %y.1306, 1
  br label %iterate_diffusion_matrix.exit

lor.lhs.false14.1.1.i:                            ; preds = %cleanup.1.i
  %add23.178.i = add i32 %mul69, %add.1.i
  %arrayidx.179.i = getelementptr i16, ptr %call8.i, i32 %add23.178.i
  %65 = ptrtoint ptr %arrayidx.179.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx.179.i, align 2
  %mul34.184.i = mul nsw i16 %58, 3
  %add35.185.i = add i16 %66, %mul34.184.i
  %67 = tail call i16 @llvm.smin.i16(i16 %add35.185.i, i16 255) #11
  %68 = tail call i16 @llvm.smax.i16(i16 %67, i16 0) #11
  %69 = ptrtoint ptr %arrayidx.179.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %arrayidx.179.i, align 2
  %add16.1.1.i = add nuw i32 %y.1306, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add16.1.1.i, i32 %50)
  %cmp17.not.1.1.i = icmp ult i32 %add16.1.1.i, %50
  br i1 %cmp17.not.1.1.i, label %if.end47.1.1.i, label %lor.lhs.false14.1.1.i.iterate_diffusion_matrix.exit_crit_edge

lor.lhs.false14.1.1.i.iterate_diffusion_matrix.exit_crit_edge: ; preds = %lor.lhs.false14.1.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iterate_diffusion_matrix.exit

if.end47.1.1.i:                                   ; preds = %lor.lhs.false14.1.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.1.1.i = mul i32 %53, %add16.1.1.i
  %add23.1.1.i = add i32 %mul.1.1.i, %add.1.i
  %arrayidx.1.1.i = getelementptr i16, ptr %call8.i, i32 %add23.1.1.i
  %70 = ptrtoint ptr %arrayidx.1.1.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx.1.1.i, align 2
  %mul34.1.1.i = shl nsw i16 %58, 1
  %add35.1.1.i = add i16 %71, %mul34.1.1.i
  %72 = tail call i16 @llvm.smin.i16(i16 %add35.1.1.i, i16 255) #11
  %73 = tail call i16 @llvm.smax.i16(i16 %72, i16 0) #11
  %74 = ptrtoint ptr %arrayidx.1.1.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %arrayidx.1.1.i, align 2
  br label %iterate_diffusion_matrix.exit

iterate_diffusion_matrix.exit:                    ; preds = %if.end47.1.1.i, %lor.lhs.false14.1.1.i.iterate_diffusion_matrix.exit_crit_edge, %cleanup.1.i.iterate_diffusion_matrix.exit_crit_edge
  %inc109.pre-phi = phi i32 [ %.pre318, %cleanup.1.i.iterate_diffusion_matrix.exit_crit_edge ], [ %add16.1.1.i, %lor.lhs.false14.1.1.i.iterate_diffusion_matrix.exit_crit_edge ], [ %add16.1.1.i, %if.end47.1.1.i ]
  %75 = ptrtoint ptr %yres61 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %yres61, align 4
  %cmp62 = icmp ult i32 %inc109.pre-phi, %76
  br i1 %cmp62, label %iterate_diffusion_matrix.exit.for.body64_crit_edge, label %iterate_diffusion_matrix.exit.for.inc111_crit_edge

iterate_diffusion_matrix.exit.for.inc111_crit_edge: ; preds = %iterate_diffusion_matrix.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc111

iterate_diffusion_matrix.exit.for.body64_crit_edge: ; preds = %iterate_diffusion_matrix.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body64

for.inc111:                                       ; preds = %iterate_diffusion_matrix.exit.for.inc111_crit_edge, %for.cond58.preheader.for.inc111_crit_edge
  %inc112.pre-phi = phi i32 [ %.pre, %for.cond58.preheader.for.inc111_crit_edge ], [ %add.1.i, %iterate_diffusion_matrix.exit.for.inc111_crit_edge ]
  %77 = ptrtoint ptr %var53 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %var53, align 4
  %cmp55 = icmp ult i32 %inc112.pre-phi, %78
  br i1 %cmp55, label %for.inc111.for.cond58.preheader_crit_edge, label %for.inc111.for.end113_crit_edge

for.inc111.for.end113_crit_edge:                  ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end113

for.inc111.for.cond58.preheader_crit_edge:        ; preds = %for.inc111
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond58.preheader

for.end113:                                       ; preds = %for.inc111.for.end113_crit_edge, %for.cond51.preheader.for.end113_crit_edge
  %79 = load i32, ptr @addr_win.1, align 4
  %80 = load i32, ptr @addr_win.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %80)
  %cmp115.not313 = icmp sgt i32 %79, %80
  br i1 %cmp115.not313, label %for.end113.for.end191_crit_edge, label %for.body117.lr.ph

for.end113.for.end191_crit_edge:                  ; preds = %for.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end191

for.body117.lr.ph:                                ; preds = %for.end113
  %fbtftops = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %dc = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 1
  br label %for.body117

for.body117:                                      ; preds = %for.inc189.for.body117_crit_edge, %for.body117.lr.ph
  %y.2315 = phi i32 [ %79, %for.body117.lr.ph ], [ %inc190, %for.inc189.for.body117_crit_edge ]
  %ret.0314 = phi i32 [ 0, %for.body117.lr.ph ], [ %ret.1, %for.inc189.for.body117_crit_edge ]
  %81 = load i32, ptr @addr_win.0, align 4
  %82 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %info, align 8
  %var119 = getelementptr inbounds %struct.fb_info, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %var119 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %var119, align 4
  %div121288 = lshr i32 %85, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %div121288)
  %cmp122 = icmp ult i32 %81, %div121288
  br i1 %cmp122, label %if.then124, label %for.body117.if.end148_crit_edge

for.body117.if.end148_crit_edge:                  ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.then124:                                       ; preds = %for.body117
  tail call fastcc void @construct_line_bitmap(ptr noundef %par, ptr noundef %6, ptr noundef nonnull %call8.i, i32 noundef %81, i32 noundef %div121288, i32 noundef %y.2315)
  %86 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %info, align 8
  %var130 = getelementptr inbounds %struct.fb_info, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %var130 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %var130, align 4
  %div132291 = lshr i32 %89, 1
  %90 = load i32, ptr @addr_win.0, align 4
  %sub133 = sub i32 %div132291, %90
  %91 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write_register, align 4
  %conv135 = and i32 %90, 191
  %or = or i32 %conv135, 64
  tail call void (ptr, i32, ...) %92(ptr noundef %par, i32 noundef 2, i32 noundef 0, i32 noundef %or) #11
  %93 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write_register, align 4
  %conv139 = and i32 %y.2315, 71
  %or140 = or i32 %conv139, 184
  tail call void (ptr, i32, ...) %94(ptr noundef %par, i32 noundef 2, i32 noundef 0, i32 noundef %or140) #11
  %95 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dc, align 4
  tail call void @gpiod_set_value(ptr noundef %96, i32 noundef 1) #11
  %97 = ptrtoint ptr %fbtftops to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %fbtftops, align 4
  %call142 = tail call i32 %98(ptr noundef %par, ptr noundef %6, i32 noundef %sub133) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %cmp143 = icmp slt i32 %call142, 0
  br i1 %cmp143, label %do.end, label %if.then124.if.end148_crit_edge

if.then124.if.end148_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

do.end:                                           ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #13
  %99 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %100, i32 0, i32 21
  %101 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.2, i32 noundef %call142) #15
  br label %if.end148

if.end148:                                        ; preds = %do.end, %if.then124.if.end148_crit_edge, %for.body117.if.end148_crit_edge
  %ret.1 = phi i32 [ %call142, %do.end ], [ %call142, %if.then124.if.end148_crit_edge ], [ %ret.0314, %for.body117.if.end148_crit_edge ]
  %103 = load i32, ptr @addr_win.2, align 4
  %104 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %info, align 8
  %var150 = getelementptr inbounds %struct.fb_info, ptr %105, i32 0, i32 6
  %106 = ptrtoint ptr %var150 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %var150, align 4
  %div152289 = lshr i32 %107, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %div152289)
  %cmp153.not = icmp ult i32 %103, %div152289
  br i1 %cmp153.not, label %if.end148.for.inc189_crit_edge, label %if.then155

if.end148.for.inc189_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc189

if.then155:                                       ; preds = %if.end148
  %add160 = add i32 %103, 1
  tail call fastcc void @construct_line_bitmap(ptr noundef %par, ptr noundef %6, ptr noundef nonnull %call8.i, i32 noundef %div152289, i32 noundef %add160, i32 noundef %y.2315)
  %108 = load i32, ptr @addr_win.2, align 4
  %add161 = add i32 %108, 1
  %109 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %info, align 8
  %var163 = getelementptr inbounds %struct.fb_info, ptr %110, i32 0, i32 6
  %111 = ptrtoint ptr %var163 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %var163, align 4
  %div165290 = lshr i32 %112, 1
  %sub166 = sub i32 %add161, %div165290
  %113 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %114(ptr noundef %par, i32 noundef 2, i32 noundef 1, i32 noundef 64) #11
  %115 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write_register, align 4
  %conv172 = and i32 %y.2315, 71
  %or173 = or i32 %conv172, 184
  tail call void (ptr, i32, ...) %116(ptr noundef %par, i32 noundef 2, i32 noundef 1, i32 noundef %or173) #11
  %117 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dc, align 4
  tail call void @gpiod_set_value(ptr noundef %118, i32 noundef 1) #11
  %119 = ptrtoint ptr %fbtftops to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %fbtftops, align 4
  %call178 = tail call i32 %120(ptr noundef %par, ptr noundef %6, i32 noundef %sub166) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp179 = icmp slt i32 %ret.1, 0
  br i1 %cmp179, label %do.end184, label %if.then155.for.inc189_crit_edge

if.then155.for.inc189_crit_edge:                  ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc189

do.end184:                                        ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #13
  %121 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %info, align 8
  %device186 = getelementptr inbounds %struct.fb_info, ptr %122, i32 0, i32 21
  %123 = ptrtoint ptr %device186 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %device186, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.2, i32 noundef %ret.1) #15
  br label %for.inc189

for.inc189:                                       ; preds = %do.end184, %if.then155.for.inc189_crit_edge, %if.end148.for.inc189_crit_edge
  %inc190 = add i32 %y.2315, 1
  %125 = load i32, ptr @addr_win.3, align 4
  %cmp115.not = icmp sgt i32 %inc190, %125
  br i1 %cmp115.not, label %for.inc189.for.end191_crit_edge, label %for.inc189.for.body117_crit_edge

for.inc189.for.body117_crit_edge:                 ; preds = %for.inc189
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body117

for.inc189.for.end191_crit_edge:                  ; preds = %for.inc189
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end191

for.end191:                                       ; preds = %for.inc189.for.end191_crit_edge, %for.end113.for.end191_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %for.end113.for.end191_crit_edge ], [ %ret.1, %for.inc189.for.end191_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i) #11
  %aux = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 8
  %126 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %aux, align 4
  tail call void @gpiod_set_value(ptr noundef %127, i32 noundef 0) #11
  %arrayidx196 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 8, i32 1
  %128 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx196, align 4
  tail call void @gpiod_set_value(ptr noundef %129, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end191, %if.end7.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.lcssa, %for.end191 ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_reg8_bus8(ptr noundef %par, i32 noundef %len, ...) #2 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #11
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !97
  %buf1 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 7
  %1 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buf1, align 4
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %3 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug, align 8
  %and = and i32 %4, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then, !prof !95

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @llvm.va_start(ptr nonnull %args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp93 = icmp sgt i32 %len, 0
  br i1 %cmp93, label %if.then.for.body_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.094 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %argp.cur = load ptr, ptr %args, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %args, align 4
  %6 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %argp.cur, align 4
  %conv = trunc i32 %7 to i8
  %arrayidx = getelementptr i8, ptr %2, i32 %i.094
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.094, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @llvm.va_end(ptr nonnull %args)
  %9 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug, align 8
  %and5 = and i32 %10, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %for.end.if.end14_crit_edge, label %if.then13, !prof !95

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  call void (ptr, i32, ptr, i32, ptr, ...) @fbtft_dbg_hex(ptr noundef %14, i32 noundef 1, ptr noundef %2, i32 noundef %len, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.write_reg8_bus8) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %for.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  call void @llvm.va_start(ptr nonnull %args)
  %15 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %15)
  %argp.cur15 = load ptr, ptr %args, align 4
  %argp.next16 = getelementptr inbounds i8, ptr %argp.cur15, i32 4
  store ptr %argp.next16, ptr %args, align 4
  %16 = ptrtoint ptr %argp.cur15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %argp.cur15, align 4
  %conv17 = trunc i32 %17 to i8
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv17, ptr %2, align 1
  %conv18 = and i32 %17, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv18)
  %cmp19.not = icmp eq i32 %conv18, 0
  br i1 %cmp19.not, label %if.end28, label %if.then21

if.then21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.va_end(ptr nonnull %args)
  %info25 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %19 = ptrtoint ptr %info25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info25, align 8
  %device26 = getelementptr inbounds %struct.fb_info, ptr %20, i32 0, i32 21
  %21 = ptrtoint ptr %device26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device26, align 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %2, align 1
  %conv27 = zext i8 %24 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.10, i32 noundef %conv27) #15
  br label %cleanup

if.end28:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv17)
  %tobool29.not = icmp eq i8 %conv17, 0
  %aux36 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 8
  %25 = ptrtoint ptr %aux36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %aux36, align 4
  %. = zext i1 %tobool29.not to i32
  %not.tobool29.not = xor i1 %tobool29.not, true
  %.99 = zext i1 %not.tobool29.not to i32
  call void @gpiod_set_value(ptr noundef %26, i32 noundef %.) #11
  %arrayidx40 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 8, i32 1
  %27 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx40, align 4
  call void @gpiod_set_value(ptr noundef %28, i32 noundef %.99) #11
  %dc = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 1
  %29 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dc, align 4
  call void @gpiod_set_value(ptr noundef %30, i32 noundef 0) #11
  %dec = add i32 %len, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool43.not = icmp eq i32 %dec, 0
  br i1 %tobool43.not, label %if.end28.if.end61_crit_edge, label %if.end28.while.body_crit_edge

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  br label %while.body

if.end28.if.end61_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end28.while.body_crit_edge
  %buf.097 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %2, %if.end28.while.body_crit_edge ]
  %i.196 = phi i32 [ %dec45, %while.body.while.body_crit_edge ], [ %dec, %if.end28.while.body_crit_edge ]
  %dec45 = add i32 %i.196, -1
  %31 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %31)
  %argp.cur47 = load ptr, ptr %args, align 4
  %argp.next48 = getelementptr inbounds i8, ptr %argp.cur47, i32 4
  store ptr %argp.next48, ptr %args, align 4
  %32 = ptrtoint ptr %argp.cur47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %argp.cur47, align 4
  %conv49 = trunc i32 %33 to i8
  %incdec.ptr = getelementptr i8, ptr %buf.097, i32 1
  %34 = ptrtoint ptr %buf.097 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv49, ptr %buf.097, align 1
  %tobool46.not = icmp eq i32 %dec45, 0
  br i1 %tobool46.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body
  %fbtftops = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9
  %35 = ptrtoint ptr %fbtftops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fbtftops, align 4
  %37 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buf1, align 4
  %call = call i32 %36(ptr noundef %par, ptr noundef %38, i32 noundef %dec) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp52 = icmp slt i32 %call, 0
  br i1 %cmp52, label %if.then54, label %while.end.if.end61_crit_edge

while.end.if.end61_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then54:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.va_end(ptr nonnull %args)
  %info58 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %39 = ptrtoint ptr %info58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %info58, align 8
  %device59 = getelementptr inbounds %struct.fb_info, ptr %40, i32 0, i32 21
  %41 = ptrtoint ptr %device59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device59, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.12, i32 noundef %call) #15
  br label %cleanup

if.end61:                                         ; preds = %while.end.if.end61_crit_edge, %if.end28.if.end61_crit_edge
  call void @llvm.va_end(ptr nonnull %args)
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then54, %if.then21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @set_addr_win(ptr nocapture noundef readnone %par, i32 noundef %xs, i32 noundef %ys, i32 noundef %xe, i32 noundef %ye) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %xs, ptr @addr_win.0, align 4
  %div = sdiv i32 %ys, 8
  store i32 %div, ptr @addr_win.1, align 4
  store i32 %xe, ptr @addr_win.2, align 4
  %div1 = sdiv i32 %ye, 8
  store i32 %div1, ptr @addr_win.3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_display(ptr noundef %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 5
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  tail call void %1(ptr noundef %par) #11
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 2, i32 noundef 0, i32 noundef 63) #11
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %5(ptr noundef %par, i32 noundef 2, i32 noundef 0, i32 noundef 64) #11
  %6 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %7(ptr noundef %par, i32 noundef 2, i32 noundef 0, i32 noundef 176) #11
  %8 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %9(ptr noundef %par, i32 noundef 2, i32 noundef 0, i32 noundef 192) #11
  %10 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %11(ptr noundef %par, i32 noundef 2, i32 noundef 1, i32 noundef 63) #11
  %12 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %13(ptr noundef %par, i32 noundef 2, i32 noundef 1, i32 noundef 64) #11
  %14 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %15(ptr noundef %par, i32 noundef 2, i32 noundef 1, i32 noundef 176) #11
  %16 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %17(ptr noundef %par, i32 noundef 2, i32 noundef 1, i32 noundef 192) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @request_gpios_match(ptr nocapture noundef %par, ptr noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @request_gpios_match.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@request_gpios_match, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @request_gpios_match.__UNIQUE_ID_ddebug304, ptr noundef %3, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef %gpio) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @strcasecmp(ptr noundef %gpio, ptr noundef nonnull @.str.17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %gpio7 = getelementptr inbounds %struct.fbtft_gpio, ptr %gpio, i32 0, i32 1
  %4 = ptrtoint ptr %gpio7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio7, align 4
  %wr = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 3
  %6 = ptrtoint ptr %wr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %wr, align 4
  br label %return

if.else:                                          ; preds = %do.end
  %call11 = tail call i32 @strcasecmp(ptr noundef %gpio, ptr noundef nonnull @.str.18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.else16

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %gpio14 = getelementptr inbounds %struct.fbtft_gpio, ptr %gpio, i32 0, i32 1
  %7 = ptrtoint ptr %gpio14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpio14, align 4
  %aux = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 8
  %9 = ptrtoint ptr %aux to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %aux, align 4
  br label %return

if.else16:                                        ; preds = %if.else
  %call19 = tail call i32 @strcasecmp(ptr noundef %gpio, ptr noundef nonnull @.str.19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.else26

if.then21:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #13
  %gpio22 = getelementptr inbounds %struct.fbtft_gpio, ptr %gpio, i32 0, i32 1
  %10 = ptrtoint ptr %gpio22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpio22, align 4
  %arrayidx25 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 8, i32 1
  %12 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %arrayidx25, align 4
  br label %return

if.else26:                                        ; preds = %if.else16
  %call29 = tail call i32 @strcasecmp(ptr noundef %gpio, ptr noundef nonnull @.str.20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.else26.return_crit_edge

if.else26.return_crit_edge:                       ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then31:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #13
  %gpio32 = getelementptr inbounds %struct.fbtft_gpio, ptr %gpio, i32 0, i32 1
  %13 = ptrtoint ptr %gpio32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpio32, align 4
  %arrayidx35 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 8, i32 2
  %15 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %arrayidx35, align 4
  br label %return

return:                                           ; preds = %if.then31, %if.else26.return_crit_edge, %if.then21, %if.then13, %if.then6
  %retval.0 = phi i32 [ 3, %if.then6 ], [ 7, %if.then13 ], [ 7, %if.then21 ], [ 3, %if.then31 ], [ 65535, %if.else26.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @verify_gpios(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @verify_gpios.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@verify_gpios, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @verify_gpios.__UNIQUE_ID_ddebug303, ptr noundef %3, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %wr = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 3
  %4 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wr, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end7, label %for.body.preheader

for.body.preheader:                               ; preds = %do.end
  %arrayidx = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %for.body.preheader.do.end16_crit_edge, label %for.inc

for.body.preheader.do.end16_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %info8 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %8 = ptrtoint ptr %info8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info8, align 8
  %device9 = getelementptr inbounds %struct.fb_info, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %device9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.23) #15
  br label %cleanup

do.end16:                                         ; preds = %for.inc.6.do.end16_crit_edge, %for.inc.5.do.end16_crit_edge, %for.inc.4.do.end16_crit_edge, %for.inc.3.do.end16_crit_edge, %for.inc.2.do.end16_crit_edge, %for.inc.1.do.end16_crit_edge, %for.inc.do.end16_crit_edge, %for.body.preheader.do.end16_crit_edge
  %i.067.lcssa = phi i32 [ 0, %for.body.preheader.do.end16_crit_edge ], [ 1, %for.inc.do.end16_crit_edge ], [ 2, %for.inc.1.do.end16_crit_edge ], [ 3, %for.inc.2.do.end16_crit_edge ], [ 4, %for.inc.3.do.end16_crit_edge ], [ 5, %for.inc.4.do.end16_crit_edge ], [ 6, %for.inc.5.do.end16_crit_edge ], [ 7, %for.inc.6.do.end16_crit_edge ]
  %info17 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %12 = ptrtoint ptr %info17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info17, align 8
  %device18 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %device18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.25, i32 noundef %i.067.lcssa) #15
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  %tobool12.not.1 = icmp eq ptr %17, null
  br i1 %tobool12.not.1, label %for.inc.do.end16_crit_edge, label %for.inc.1

for.inc.do.end16_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  %tobool12.not.2 = icmp eq ptr %19, null
  br i1 %tobool12.not.2, label %for.inc.1.do.end16_crit_edge, label %for.inc.2

for.inc.1.do.end16_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.3, align 4
  %tobool12.not.3 = icmp eq ptr %21, null
  br i1 %tobool12.not.3, label %for.inc.2.do.end16_crit_edge, label %for.inc.3

for.inc.2.do.end16_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 4
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.4, align 4
  %tobool12.not.4 = icmp eq ptr %23, null
  br i1 %tobool12.not.4, label %for.inc.3.do.end16_crit_edge, label %for.inc.4

for.inc.3.do.end16_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 5
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.5, align 4
  %tobool12.not.5 = icmp eq ptr %25, null
  br i1 %tobool12.not.5, label %for.inc.4.do.end16_crit_edge, label %for.inc.5

for.inc.4.do.end16_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 6
  %26 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.6, align 4
  %tobool12.not.6 = icmp eq ptr %27, null
  br i1 %tobool12.not.6, label %for.inc.5.do.end16_crit_edge, label %for.inc.6

for.inc.5.do.end16_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 7
  %28 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.7, align 4
  %tobool12.not.7 = icmp eq ptr %29, null
  br i1 %tobool12.not.7, label %for.inc.6.do.end16_crit_edge, label %for.inc.7

for.inc.6.do.end16_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

for.inc.7:                                        ; preds = %for.inc.6
  %aux = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 8
  %30 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %aux, align 4
  %tobool22.not = icmp eq ptr %31, null
  br i1 %tobool22.not, label %do.end26, label %if.end29

do.end26:                                         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  %info27 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %32 = ptrtoint ptr %info27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info27, align 8
  %device28 = getelementptr inbounds %struct.fb_info, ptr %33, i32 0, i32 21
  %34 = ptrtoint ptr %device28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.28) #15
  br label %cleanup

if.end29:                                         ; preds = %for.inc.7
  %arrayidx32 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 8, i32 1
  %36 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx32, align 4
  %tobool33.not = icmp eq ptr %37, null
  br i1 %tobool33.not, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %info38 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %38 = ptrtoint ptr %info38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info38, align 8
  %device39 = getelementptr inbounds %struct.fb_info, ptr %39, i32 0, i32 21
  %40 = ptrtoint ptr %device39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.31) #15
  br label %cleanup

if.end40:                                         ; preds = %if.end29
  %arrayidx43 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 8, i32 2
  %42 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx43, align 4
  %tobool44.not = icmp eq ptr %43, null
  br i1 %tobool44.not, label %do.end48, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %info49 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %44 = ptrtoint ptr %info49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %info49, align 8
  %device50 = getelementptr inbounds %struct.fb_info, ptr %45, i32 0, i32 21
  %46 = ptrtoint ptr %device50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.34) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %if.end40.cleanup_crit_edge, %do.end37, %do.end26, %do.end16, %do.end7
  %retval.0 = phi i32 [ -22, %do.end16 ], [ -22, %do.end48 ], [ -22, %do.end37 ], [ -22, %do.end26 ], [ -22, %do.end7 ], [ 0, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbtft_dbg_hex(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @construct_line_bitmap(ptr nocapture noundef readonly %par, ptr nocapture noundef writeonly %dest, ptr nocapture noundef readonly %src, i32 noundef %xs, i32 noundef %xe, i32 noundef %y) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %xs, i32 %xe)
  %cmp20 = icmp slt i32 %xs, %xe
  br i1 %cmp20, label %for.cond1.preheader.lr.ph, label %entry.for.end11_crit_edge

entry.for.end11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end11

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %mul = shl i32 %y, 3
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %add.1 = or i32 %mul, 1
  %add.2 = or i32 %mul, 2
  %add.3 = or i32 %mul, 3
  %add.4 = or i32 %mul, 4
  %add.5 = or i32 %mul, 5
  %add.6 = or i32 %mul, 6
  %add.7 = or i32 %mul, 7
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %x.022 = phi i32 [ %xs, %for.cond1.preheader.lr.ph ], [ %inc10, %for.cond1.preheader.for.cond1.preheader_crit_edge ]
  %dest.addr.021 = phi ptr [ %dest, %for.cond1.preheader.lr.ph ], [ %incdec.ptr, %for.cond1.preheader.for.cond1.preheader_crit_edge ]
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %var = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %mul4 = mul i32 %3, %mul
  %add5 = add i32 %mul4, %x.022
  %arrayidx = getelementptr i16, ptr %src, i32 %add5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp ne i16 %5, 0
  %conv6 = zext i1 %tobool.not to i8
  %mul4.1 = mul i32 %3, %add.1
  %add5.1 = add i32 %mul4.1, %x.022
  %arrayidx.1 = getelementptr i16, ptr %src, i32 %add5.1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.1 = icmp eq i16 %7, 0
  %conv6.1 = select i1 %tobool.not.1, i8 0, i8 2
  %res.1.1 = or i8 %conv6.1, %conv6
  %mul4.2 = mul i32 %3, %add.2
  %add5.2 = add i32 %mul4.2, %x.022
  %arrayidx.2 = getelementptr i16, ptr %src, i32 %add5.2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.2 = icmp eq i16 %9, 0
  %conv6.2 = select i1 %tobool.not.2, i8 0, i8 4
  %res.1.2 = or i8 %conv6.2, %res.1.1
  %mul4.3 = mul i32 %3, %add.3
  %add5.3 = add i32 %mul4.3, %x.022
  %arrayidx.3 = getelementptr i16, ptr %src, i32 %add5.3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.3 = icmp eq i16 %11, 0
  %conv6.3 = select i1 %tobool.not.3, i8 0, i8 8
  %res.1.3 = or i8 %conv6.3, %res.1.2
  %mul4.4 = mul i32 %3, %add.4
  %add5.4 = add i32 %mul4.4, %x.022
  %arrayidx.4 = getelementptr i16, ptr %src, i32 %add5.4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.4 = icmp eq i16 %13, 0
  %conv6.4 = select i1 %tobool.not.4, i8 0, i8 16
  %res.1.4 = or i8 %conv6.4, %res.1.3
  %mul4.5 = mul i32 %3, %add.5
  %add5.5 = add i32 %mul4.5, %x.022
  %arrayidx.5 = getelementptr i16, ptr %src, i32 %add5.5
  %14 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.5 = icmp eq i16 %15, 0
  %conv6.5 = select i1 %tobool.not.5, i8 0, i8 32
  %res.1.5 = or i8 %conv6.5, %res.1.4
  %mul4.6 = mul i32 %3, %add.6
  %add5.6 = add i32 %mul4.6, %x.022
  %arrayidx.6 = getelementptr i16, ptr %src, i32 %add5.6
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.6 = icmp eq i16 %17, 0
  %conv6.6 = select i1 %tobool.not.6, i8 0, i8 64
  %res.1.6 = or i8 %conv6.6, %res.1.5
  %mul4.7 = mul i32 %3, %add.7
  %add5.7 = add i32 %mul4.7, %x.022
  %arrayidx.7 = getelementptr i16, ptr %src, i32 %add5.7
  %18 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.7 = icmp eq i16 %19, 0
  %conv6.7 = select i1 %tobool.not.7, i8 0, i8 -128
  %res.1.7 = or i8 %conv6.7, %res.1.6
  %neg = xor i8 %res.1.7, -1
  %incdec.ptr = getelementptr i8, ptr %dest.addr.021, i32 1
  %20 = ptrtoint ptr %dest.addr.021 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %neg, ptr %dest.addr.021, align 1
  %inc10 = add nsw i32 %x.022, 1
  %exitcond.not = icmp eq i32 %inc10, %xe
  br i1 %exitcond.not, label %for.cond1.preheader.for.end11_crit_edge, label %for.cond1.preheader.for.cond1.preheader_crit_edge

for.cond1.preheader.for.cond1.preheader_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader

for.cond1.preheader.for.end11_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end11

for.end11:                                        ; preds = %for.cond1.preheader.for.end11_crit_edge, %entry.for.end11_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbtft_remove_common(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_probe_pdev(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fbtft_probe_common(ptr noundef nonnull @display, ptr noundef null, ptr noundef %pdev) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_remove_pdev(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @fbtft_remove_common(ptr noundef %dev, ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.abs.i16(i16, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !32, !34, !36, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !56, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_fb_agm1264k_fl__305_435_fbtft_driver_module_init6, !1, !"__initcall__kmod_fb_agm1264k_fl__305_435_fbtft_driver_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 435, i32 1}
!2 = !{ptr @__exitcall_fbtft_driver_module_exit, !1, !"__exitcall_fbtft_driver_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias306, !4, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 437, i32 1}
!5 = !{ptr @__UNIQUE_ID_description307, !6, !"__UNIQUE_ID_description307", i1 false, i1 false}
!6 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 439, i32 1}
!7 = !{ptr @__UNIQUE_ID_author308, !8, !"__UNIQUE_ID_author308", i1 false, i1 false}
!8 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 440, i32 1}
!9 = !{ptr @__UNIQUE_ID_file309, !10, !"__UNIQUE_ID_file309", i1 false, i1 false}
!10 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 441, i32 1}
!11 = !{ptr @__UNIQUE_ID_license310, !10, !"__UNIQUE_ID_license310", i1 false, i1 false}
!12 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @fbtft_driver_spi_driver, !1, !"fbtft_driver_spi_driver", i1 false, i1 false}
!14 = !{ptr @display, !15, !"display", i1 false, i1 false}
!15 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 419, i32 29}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 395, i32 2}
!18 = !{ptr @__func__.write, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 357, i32 5}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @write_vmem._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @write_vmem._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @write_vmem._entry.7, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 380, i32 5}
!29 = !{ptr @write_vmem._entry_ptr.8, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @gamma_correction_table, !31, !"gamma_correction_table", i1 false, i1 false}
!31 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 45, i32 28}
!32 = distinct !{null, !33, !"diffusing_matrix", i1 false, i1 false}
!33 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 40, i32 1}
!34 = distinct !{null, !35, !"addr_win", i1 false, i1 false}
!35 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 214, i32 3}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 166, i32 3}
!38 = !{ptr @__func__.write_reg8_bus8, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 176, i32 3}
!41 = !{ptr @write_reg8_bus8._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @write_reg8_bus8._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 202, i32 4}
!45 = !{ptr @write_reg8_bus8._entry.11, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @write_reg8_bus8._entry_ptr.13, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 123, i32 2}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @request_gpios_match.__UNIQUE_ID_ddebug304, !48, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 126, i32 29}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 130, i32 36}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 134, i32 36}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 142, i32 34}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 85, i32 2}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @verify_gpios.__UNIQUE_ID_ddebug303, !61, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 89, i32 3}
!66 = !{ptr @verify_gpios._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @verify_gpios._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 95, i32 4}
!70 = !{ptr @verify_gpios._entry.24, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @verify_gpios._entry_ptr.26, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 102, i32 3}
!74 = !{ptr @verify_gpios._entry.27, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @verify_gpios._entry_ptr.29, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 107, i32 3}
!78 = !{ptr @verify_gpios._entry.30, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @verify_gpios._entry_ptr.32, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/staging/fbtft/fb_agm1264k-fl.c", i32 112, i32 3}
!82 = !{ptr @verify_gpios._entry.33, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @verify_gpios._entry_ptr.35, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @dt_ids, !1, !"dt_ids", i1 false, i1 false}
!85 = !{ptr @fbtft_driver_platform_driver, !1, !"fbtft_driver_platform_driver", i1 false, i1 false}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{!"auto-init"}
!98 = !{i64 2148962223, i64 2148962228, i64 2148962241, i64 2148962285, i64 2148962319, i64 2148962340}
