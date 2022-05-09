; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fb_st7789v.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fb_st7789v.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fbtft_display = type { i32, i32, i32, i32, i32, %struct.fbtft_ops, i32, i32, i32, ptr, ptr, i32, i32, i32 }
%struct.fbtft_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@fbtft_driver_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @fbtft_driver_probe_spi, ptr @fbtft_driver_remove_spi, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@fbtft_driver_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fbtft_driver_probe_pdev, ptr @fbtft_driver_remove_pdev, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_fb_st7789v__303_385_fbtft_driver_module_init6 = internal global ptr @fbtft_driver_module_init, section ".initcall6.init", align 4
@__exitcall_fbtft_driver_module_exit = internal global ptr @fbtft_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias304 = internal constant [32 x i8] c"fb_st7789v.alias=spi:fb_st7789v\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [37 x i8] c"fb_st7789v.alias=platform:fb_st7789v\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [29 x i8] c"fb_st7789v.alias=spi:st7789v\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [34 x i8] c"fb_st7789v.alias=platform:st7789v\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [64 x i8] c"fb_st7789v.description=FB driver for the ST7789V LCD Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [34 x i8] c"fb_st7789v.author=Dennis Menschel\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [49 x i8] c"fb_st7789v.file=drivers/staging/fbtft/fb_st7789v\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [23 x i8] c"fb_st7789v.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fb_st7789v\00", [21 x i8] zeroinitializer }, align 32
@dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sitronix,st7789v\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@display = internal global { %struct.fbtft_display, [40 x i8] } { %struct.fbtft_display { i32 240, i32 320, i32 8, i32 0, i32 0, %struct.fbtft_ops { ptr null, ptr null, ptr @write_vmem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @init_display, ptr @blank, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @set_var, ptr @set_gamma }, i32 0, i32 0, i32 0, ptr null, ptr @.str.1, i32 2, i32 14, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"D0 05 0A 09 08 05 2E 44 45 0F 17 16 2B 33\0AD0 05 0A 09 08 05 2E 43 45 0F 16 16 2B 33\00", [44 x i8] zeroinitializer }, align 32
@irq_te = internal global { i32, [28 x i8] } zeroinitializer, align 32
@panel_te = internal global { %struct.completion, [40 x i8] } zeroinitializer, align 32
@write_vmem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 239, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wait panel TE timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write_vmem\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/staging/fbtft/fb_st7789v.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@write_vmem._entry_ptr = internal global ptr @write_vmem._entry, section ".printk_index", align 4
@write_vmem._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 256, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported buswidth %d\0A\00", [39 x i8] zeroinitializer }, align 32
@write_vmem._entry_ptr.9 = internal global ptr @write_vmem._entry.7, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"te\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request te GPIO\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TE_GPIO\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TE IRQ request failed.\0A\00", [40 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@set_gamma.gamma_par_mask = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\FF??\1F\1F?\7Fw\7F?\1F\1F??", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 9, i64 16]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 90, i64 180, i64 270]
@___asan_gen_.16 = private unnamed_addr constant [24 x i8] c"fbtft_driver_spi_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [29 x i8] c"fbtft_driver_platform_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"dt_ids\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 385, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 369, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 375, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"irq_te\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 77, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"panel_te\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 76, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 239, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 255, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 97, i32 31 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 99, i32 42 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 120, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 122, i32 33 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 87, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [15 x i8] c"gamma_par_mask\00", align 1
@___asan_gen_.83 = private constant [38 x i8] c"../drivers/staging/fbtft/fb_st7789v.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 321, i32 18 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_fbtft_driver_module_exit, ptr @__initcall__kmod_fb_st7789v__303_385_fbtft_driver_module_init6, ptr @fbtft_driver_module_exit, ptr @write_vmem._entry, ptr @write_vmem._entry.7, ptr @write_vmem._entry_ptr, ptr @write_vmem._entry_ptr.9, ptr @fbtft_driver_spi_driver, ptr @fbtft_driver_platform_driver, ptr @.str, ptr @dt_ids, ptr @display, ptr @.str.1, ptr @irq_te, ptr @panel_te, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @init_completion.__key, ptr @.str.14, ptr @set_gamma.gamma_par_mask], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_te to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_te to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_vmem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_vmem._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gamma.gamma_par_mask to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fbtft_driver_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @fbtft_driver_spi_driver, i32 0, i32 4)) #4
  tail call void @platform_driver_unregister(ptr noundef nonnull @fbtft_driver_platform_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @fbtft_driver_spi_driver) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fbtft_driver_platform_driver, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @fbtft_driver_spi_driver, i32 0, i32 4)) #4
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
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fbtft_probe_common(ptr noundef nonnull @display, ptr noundef %spi, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_remove_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @fbtft_remove_common(ptr noundef %spi, ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbtft_probe_common(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_vmem(ptr noundef %par, i32 noundef %offset, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %4 = load i32, ptr @irq_te, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then:                                          ; preds = %entry
  tail call void @enable_irq(i32 noundef %4) #4
  store i32 0, ptr @panel_te, align 4
  %call1 = tail call i32 @wait_for_completion_timeout(ptr noundef nonnull @panel_te, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %5 = load i32, ptr @irq_te, align 4
  tail call void @disable_irq(i32 noundef %5) #4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %pdata = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 3
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 4
  %buswidth = getelementptr inbounds %struct.fbtft_display, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %buswidth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buswidth, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end11 [
    i32 8, label %sw.bb
    i32 9, label %sw.bb5
    i32 16, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 @fbtft_write_vmem16_bus8(ptr noundef %par, i32 noundef %offset, i32 noundef %len) #4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 @fbtft_write_vmem16_bus9(ptr noundef %par, i32 noundef %offset, i32 noundef %len) #4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 @fbtft_write_vmem16_bus16(ptr noundef %par, i32 noundef %offset, i32 noundef %len) #4
  br label %sw.epilog

do.end11:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %9) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end11, %sw.bb7, %sw.bb5, %sw.bb
  %ret.0 = phi i32 [ 0, %do.end11 ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_display(ptr noundef %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 5
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  tail call void %1(ptr noundef %par) #4
  %info.i = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info.i, align 8
  %device.i = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 4
  %call.i = tail call ptr @gpiod_get_optional(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef 1) #4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %call.i to i32
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %6, ptr noundef nonnull @.str.11) #4
  br label %init_tearing_effect_line.exit

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  store i32 0, ptr @irq_te, align 4
  br label %if.end

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @gpiod_to_irq(ptr noundef nonnull %call.i) #4
  tail call void @gpiod_put(ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.end5.i.cleanup_crit_edge, label %if.end8.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8.i:                                        ; preds = %if.end5.i
  store i32 %call6.i, ptr @irq_te, align 4
  store i32 0, ptr @panel_te, align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.completion, ptr @panel_te, i32 0, i32 1), ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #4
  %7 = load i32, ptr @irq_te, align 4
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %7, ptr noundef nonnull @panel_te_handler, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef %par) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool10.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not.i, label %if.end13.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %call12.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %call.i.i, ptr noundef nonnull @.str.13) #4
  br label %init_tearing_effect_line.exit

if.end13.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %8 = load i32, ptr @irq_te, align 4
  tail call void @disable_irq_nosync(i32 noundef %8) #4
  br label %if.end

init_tearing_effect_line.exit:                    ; preds = %if.then11.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.then.i ], [ %call12.i, %if.then11.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %init_tearing_effect_line.exit.if.end_crit_edge, label %init_tearing_effect_line.exit.cleanup_crit_edge

init_tearing_effect_line.exit.cleanup_crit_edge:  ; preds = %init_tearing_effect_line.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

init_tearing_effect_line.exit.if.end_crit_edge:   ; preds = %init_tearing_effect_line.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %init_tearing_effect_line.exit.if.end_crit_edge, %if.end13.i, %if.then4.i
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %9 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %10(ptr noundef %par, i32 noundef 1, i32 noundef 17) #4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end
  %__ms.064 = phi i32 [ 120, %if.end ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.064, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #4
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body
  %12 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %13(ptr noundef %par, i32 noundef 2, i32 noundef 58, i32 noundef 5) #4
  %14 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %15(ptr noundef %par, i32 noundef 6, i32 noundef 178, i32 noundef 5, i32 noundef 5, i32 noundef 0, i32 noundef 51, i32 noundef 51) #4
  %16 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %17(ptr noundef %par, i32 noundef 2, i32 noundef 183, i32 noundef 117) #4
  %18 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %19(ptr noundef %par, i32 noundef 3, i32 noundef 194, i32 noundef 1, i32 noundef 255) #4
  %20 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %21(ptr noundef %par, i32 noundef 2, i32 noundef 195, i32 noundef 19) #4
  %22 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %23(ptr noundef %par, i32 noundef 2, i32 noundef 196, i32 noundef 32) #4
  %24 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %25(ptr noundef %par, i32 noundef 2, i32 noundef 187, i32 noundef 34) #4
  %26 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %27(ptr noundef %par, i32 noundef 2, i32 noundef 197, i32 noundef 32) #4
  %28 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %29(ptr noundef %par, i32 noundef 3, i32 noundef 208, i32 noundef 164, i32 noundef 161) #4
  %30 = load i32, ptr @irq_te, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool21.not = icmp eq i32 %30, 0
  br i1 %tobool21.not, label %while.end.if.end25_crit_edge, label %if.then22

while.end.if.end25_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then22:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %32(ptr noundef %par, i32 noundef 2, i32 noundef 53, i32 noundef 0) #4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %while.end.if.end25_crit_edge
  %33 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %34(ptr noundef %par, i32 noundef 1, i32 noundef 41) #4
  %35 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %36(ptr noundef %par, i32 noundef 1, i32 noundef 33) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %init_tearing_effect_line.exit.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ %retval.0.i, %init_tearing_effect_line.exit.cleanup_crit_edge ], [ %call6.i, %if.end5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blank(ptr noundef %par, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_register, align 4
  %. = select i1 %on, i32 40, i32 41
  tail call void (ptr, i32, ...) %1(ptr noundef %par, i32 noundef 1, i32 noundef %.) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_var(ptr noundef %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bgr = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 19
  %0 = ptrtoint ptr %bgr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bgr, align 8, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool.not, i8 0, i8 8
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %rotate = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 6, i32 26
  %4 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rotate, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 90, label %sw.bb
    i32 180, label %sw.bb5
    i32 270, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %7 = or i8 %spec.select, -96
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = or i8 %spec.select, -64
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = or i8 %spec.select, 96
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb5, %sw.bb, %entry.sw.epilog_crit_edge
  %madctl_par.1 = phi i8 [ %9, %sw.bb9 ], [ %8, %sw.bb5 ], [ %7, %sw.bb ], [ %spec.select, %entry.sw.epilog_crit_edge ]
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %10 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_register, align 4
  %conv13 = zext i8 %madctl_par.1 to i32
  tail call void (ptr, i32, ...) %11(ptr noundef %par, i32 noundef 2, i32 noundef 54, i32 noundef %conv13) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_gamma(ptr noundef %par, ptr nocapture noundef %curves) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %num_curves = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15, i32 3
  %0 = ptrtoint ptr %num_curves to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_curves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp80 = icmp sgt i32 %1, 0
  br i1 %cmp80, label %for.body.lr.ph, label %entry.for.end39_crit_edge

entry.for.end39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end39

for.body.lr.ph:                                   ; preds = %entry
  %num_values = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 15, i32 2
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc38, %for.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_values, align 8
  %mul = mul i32 %3, %i.081
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp578 = icmp sgt i32 %3, 0
  br i1 %cmp578, label %for.body.for.body6_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %j.079 = phi i32 [ %inc, %for.body6.for.body6_crit_edge ], [ 0, %for.body.for.body6_crit_edge ]
  %arrayidx = getelementptr [14 x i8], ptr @set_gamma.gamma_par_mask, i32 0, i32 %j.079
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %add = add i32 %j.079, %mul
  %arrayidx7 = getelementptr i32, ptr %curves, i32 %add
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7, align 4
  %and = and i32 %7, %conv
  store i32 %and, ptr %arrayidx7, align 4
  %inc = add nuw nsw i32 %j.079, 1
  %8 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_values, align 8
  %cmp5 = icmp slt i32 %inc, %9
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.body6.for.end_crit_edge

for.body6.for.end_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body6

for.end:                                          ; preds = %for.body6.for.end_crit_edge, %for.body.for.end_crit_edge
  %10 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_register, align 4
  %add8 = add nuw i32 %i.081, 224
  %arrayidx10 = getelementptr i32, ptr %curves, i32 %mul
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10, align 4
  %add11 = add i32 %mul, 1
  %arrayidx12 = getelementptr i32, ptr %curves, i32 %add11
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx12, align 4
  %add13 = add i32 %mul, 2
  %arrayidx14 = getelementptr i32, ptr %curves, i32 %add13
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 4
  %add15 = add i32 %mul, 3
  %arrayidx16 = getelementptr i32, ptr %curves, i32 %add15
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx16, align 4
  %add17 = add i32 %mul, 4
  %arrayidx18 = getelementptr i32, ptr %curves, i32 %add17
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx18, align 4
  %add19 = add i32 %mul, 5
  %arrayidx20 = getelementptr i32, ptr %curves, i32 %add19
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx20, align 4
  %add21 = add i32 %mul, 6
  %arrayidx22 = getelementptr i32, ptr %curves, i32 %add21
  %24 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx22, align 4
  %add23 = add i32 %mul, 7
  %arrayidx24 = getelementptr i32, ptr %curves, i32 %add23
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx24, align 4
  %add25 = add i32 %mul, 8
  %arrayidx26 = getelementptr i32, ptr %curves, i32 %add25
  %28 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx26, align 4
  %add27 = add i32 %mul, 9
  %arrayidx28 = getelementptr i32, ptr %curves, i32 %add27
  %30 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx28, align 4
  %add29 = add i32 %mul, 10
  %arrayidx30 = getelementptr i32, ptr %curves, i32 %add29
  %32 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx30, align 4
  %add31 = add i32 %mul, 11
  %arrayidx32 = getelementptr i32, ptr %curves, i32 %add31
  %34 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx32, align 4
  %add33 = add i32 %mul, 12
  %arrayidx34 = getelementptr i32, ptr %curves, i32 %add33
  %36 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx34, align 4
  %add35 = add i32 %mul, 13
  %arrayidx36 = getelementptr i32, ptr %curves, i32 %add35
  %38 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx36, align 4
  tail call void (ptr, i32, ...) %11(ptr noundef %par, i32 noundef 15, i32 noundef %add8, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39) #4
  %inc38 = add nuw nsw i32 %i.081, 1
  %40 = ptrtoint ptr %num_curves to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_curves, align 4
  %cmp = icmp slt i32 %inc38, %41
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end39_crit_edge

for.end.for.end39_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end39

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end39:                                        ; preds = %for.end.for.end39_crit_edge, %entry.for.end39_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbtft_write_vmem16_bus8(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbtft_write_vmem16_bus9(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbtft_write_vmem16_bus16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_te_handler(i32 noundef %irq, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @complete(ptr noundef nonnull @panel_te) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbtft_remove_common(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_probe_pdev(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fbtft_probe_common(ptr noundef nonnull @display, ptr noundef null, ptr noundef %pdev) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_remove_pdev(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @fbtft_remove_common(ptr noundef %dev, ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_fb_st7789v__303_385_fbtft_driver_module_init6, !1, !"__initcall__kmod_fb_st7789v__303_385_fbtft_driver_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fb_st7789v.c", i32 385, i32 1}
!2 = !{ptr @__exitcall_fbtft_driver_module_exit, !1, !"__exitcall_fbtft_driver_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias304, !4, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fb_st7789v.c", i32 387, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias305, !6, !"__UNIQUE_ID_alias305", i1 false, i1 false}
!6 = !{!"../drivers/staging/fbtft/fb_st7789v.c", i32 388, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias306, !8, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!8 = !{!"../drivers/staging/fbtft/fb_st7789v.c", i32 389, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias307, !10, !"__UNIQUE_ID_alias307", i1 false, i1 false}
!10 = !{!"../drivers/staging/fbtft/fb_st7789v.c", i32 390, i32 1}
!11 = !{ptr @__UNIQUE_ID_description308, !12, !"__UNIQUE_ID_description308", i1 false, i1 false}
!12 = !{!"../drivers/staging/fbtft/fb_st7789v.c", i32 392, i32 1}
!13 = !{ptr @__UNIQUE_ID_author309, !14, !"__UNIQUE_ID_author309", i1 false, i1 false}
!14 = !{!"../drivers/staging/fbtft/fb_st7789v.c", i32 393, i32 1}
!15 = !{ptr @__UNIQUE_ID_file310, !16, !"__UNIQUE_ID_file310", i1 false, i1 false}
!16 = !{!"../drivers/staging/fbtft/fb_st7789v.c", i32 394, i32 1}
!17 = !{ptr @__UNIQUE_ID_license311, !16, !"__UNIQUE_ID_license311", i1 false, i1 false}
!18 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fbtft_driver_spi_driver, !1, !"fbtft_driver_spi_driver", i1 false, i1 false}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/fbtft/fb_st7789v.c", i32 375, i32 11}
!22 = !{ptr @display, !23, !"display", i1 false, i1 false}
!23 = !{!"../drivers/staging/fbtft/fb_st7789v.c", i32 369, i32 29}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/fbtft/fb_st7789v.c", i32 239, i32 4}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @write_vmem._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @write_vmem._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/fbtft/fb_st7789v.c", i32 255, i32 3}
!34 = !{ptr @write_vmem._entry.7, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @write_vmem._entry_ptr.9, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @irq_te, !37, !"irq_te", i1 false, i1 false}
!37 = !{!"../drivers/staging/fbtft/fb_st7789v.c", i32 77, i32 12}
!38 = !{ptr @panel_te, !39, !"panel_te", i1 false, i1 false}
!39 = !{!"../drivers/staging/fbtft/fb_st7789v.c", i32 76, i32 26}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/fbtft/fb_st7789v.c", i32 97, i32 31}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/fbtft/fb_st7789v.c", i32 99, i32 42}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/fbtft/fb_st7789v.c", i32 120, i32 31}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/fbtft/fb_st7789v.c", i32 122, i32 33}
!48 = !{ptr @init_completion.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../include/linux/completion.h", i32 87, i32 2}
!50 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @set_gamma.gamma_par_mask, !52, !"gamma_par_mask", i1 false, i1 false}
!52 = !{!"../drivers/staging/fbtft/fb_st7789v.c", i32 321, i32 18}
!53 = !{ptr @dt_ids, !1, !"dt_ids", i1 false, i1 false}
!54 = !{ptr @fbtft_driver_platform_driver, !1, !"fbtft_driver_platform_driver", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i8 0, i8 2}
