; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fb_ssd1325.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fb_ssd1325.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fbtft_display = type { i32, i32, i32, i32, i32, %struct.fbtft_ops, i32, i32, i32, ptr, ptr, i32, i32, i32 }
%struct.fbtft_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@fbtft_driver_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @fbtft_driver_probe_spi, ptr @fbtft_driver_remove_spi, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@fbtft_driver_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fbtft_driver_probe_pdev, ptr @fbtft_driver_remove_pdev, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_fb_ssd1325__303_185_fbtft_driver_module_init6 = internal global ptr @fbtft_driver_module_init, section ".initcall6.init", align 4
@__exitcall_fbtft_driver_module_exit = internal global ptr @fbtft_driver_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias304 = internal constant [32 x i8] c"fb_ssd1325.alias=spi:fb_ssd1325\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [37 x i8] c"fb_ssd1325.alias=platform:fb_ssd1325\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [29 x i8] c"fb_ssd1325.alias=spi:ssd1325\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [34 x i8] c"fb_ssd1325.alias=platform:ssd1325\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [43 x i8] c"fb_ssd1325.description=SSD1325 OLED Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [32 x i8] c"fb_ssd1325.author=Alexey Mednyy\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [49 x i8] c"fb_ssd1325.file=drivers/staging/fbtft/fb_ssd1325\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [23 x i8] c"fb_ssd1325.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fb_ssd1325\00", [21 x i8] zeroinitializer }, align 32
@dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"solomon,ssd1325\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@display = internal global { %struct.fbtft_display, [40 x i8] } { %struct.fbtft_display { i32 128, i32 64, i32 8, i32 0, i32 0, %struct.fbtft_ops { ptr null, ptr null, ptr @write_vmem, ptr null, ptr @set_addr_win, ptr null, ptr null, ptr null, ptr @init_display, ptr @blank, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @set_gamma }, i32 0, i32 0, i32 4096, ptr null, ptr @.str.1, i32 1, i32 15, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"7 1 1 1 1 2 2 3 3 4 4 5 5 6 6\00", [34 x i8] zeroinitializer }, align 32
@write_vmem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 163, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: write failed and returned: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write_vmem\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/staging/fbtft/fb_ssd1325.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@write_vmem._entry_ptr = internal global ptr @write_vmem._entry, section ".printk_index", align 4
@set_addr_win._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 77, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s(xs=%d, ys=%d, xe=%d, ye=%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_addr_win\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@set_addr_win._entry_ptr = internal global ptr @set_addr_win._entry, section ".printk_index", align 4
@blank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 90, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(%s=%s)\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"blank\00", [26 x i8] zeroinitializer }, align 32
@blank._entry_ptr = internal global ptr @blank._entry, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@set_gamma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 112, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"set_gamma\00", [22 x i8] zeroinitializer }, align 32
@set_gamma._entry_ptr = internal global ptr @set_gamma._entry, section ".printk_index", align 4
@set_gamma._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.4, i32 118, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Illegal value in Grayscale Lookup Table at index %d.\0AMust be greater than 0\0A\00", [51 x i8] zeroinitializer }, align 32
@set_gamma._entry_ptr.18 = internal global ptr @set_gamma._entry.16, section ".printk_index", align 4
@set_gamma._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.4, i32 125, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"Illegal value(s) in Grayscale Lookup Table.\0AAt index=%d, the accumulated value has exceeded 7\0A\00", [33 x i8] zeroinitializer }, align 32
@set_gamma._entry_ptr.21 = internal global ptr @set_gamma._entry.19, section ".printk_index", align 4
@___asan_gen_.22 = private unnamed_addr constant [24 x i8] c"fbtft_driver_spi_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [29 x i8] c"fbtft_driver_platform_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"dt_ids\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 185, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 168, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 175, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 162, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 75, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 89, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 112, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 116, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [38 x i8] c"../drivers/staging/fbtft/fb_ssd1325.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 122, i32 4 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_fbtft_driver_module_exit, ptr @__initcall__kmod_fb_ssd1325__303_185_fbtft_driver_module_init6, ptr @blank._entry, ptr @blank._entry_ptr, ptr @fbtft_driver_module_exit, ptr @set_addr_win._entry, ptr @set_addr_win._entry_ptr, ptr @set_gamma._entry, ptr @set_gamma._entry.16, ptr @set_gamma._entry.19, ptr @set_gamma._entry_ptr, ptr @set_gamma._entry_ptr.18, ptr @set_gamma._entry_ptr.21, ptr @write_vmem._entry, ptr @write_vmem._entry_ptr, ptr @fbtft_driver_spi_driver, ptr @fbtft_driver_platform_driver, ptr @.str, ptr @dt_ids, ptr @display, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_vmem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_addr_win._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gamma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gamma._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_gamma._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
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
  %2 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %txbuf = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 6
  %var75 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %var75 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %var75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp76.not = icmp eq i32 %6, 0
  br i1 %cmp76.not, label %entry.for.end23_crit_edge, label %for.body.preheader

entry.for.end23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end23

for.body.preheader:                               ; preds = %entry
  %7 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %txbuf, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc21.for.body_crit_edge, %for.body.preheader
  %x.078 = phi i32 [ %inc22, %for.inc21.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %buf.077 = phi ptr [ %buf.2, %for.inc21.for.body_crit_edge ], [ %8, %for.body.preheader ]
  %9 = and i32 %x.078, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %for.cond3.preheader, label %for.body.for.inc21_crit_edge

for.body.for.inc21_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc21

for.cond3.preheader:                              ; preds = %for.body
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 8
  %yres71 = getelementptr inbounds %struct.fb_info, ptr %11, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %yres71 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yres71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp672.not = icmp eq i32 %13, 0
  br i1 %cmp672.not, label %for.cond3.preheader.for.inc21_crit_edge, label %for.cond3.preheader.for.body7_crit_edge

for.cond3.preheader.for.body7_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body7

for.cond3.preheader.for.inc21_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc21

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.cond3.preheader.for.body7_crit_edge
  %14 = phi ptr [ %31, %for.body7.for.body7_crit_edge ], [ %11, %for.cond3.preheader.for.body7_crit_edge ]
  %y.074 = phi i32 [ %inc, %for.body7.for.body7_crit_edge ], [ 0, %for.cond3.preheader.for.body7_crit_edge ]
  %buf.173 = phi ptr [ %incdec.ptr, %for.body7.for.body7_crit_edge ], [ %buf.077, %for.cond3.preheader.for.body7_crit_edge ]
  %var5 = getelementptr inbounds %struct.fb_info, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %var5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %var5, align 4
  %mul = mul i32 %16, %y.074
  %add = add i32 %mul, %x.078
  %arrayidx = getelementptr i16, ptr %4, i32 %add
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx, align 2
  %and.i = and i16 %18, 31
  %and3.i = lshr i16 %18, 5
  %19 = and i16 %and3.i, 63
  %20 = lshr i16 %18, 11
  %narrow.i = mul nuw nsw i16 %20, 299
  %narrow26.i = mul nuw i16 %19, 587
  %narrow27.i = mul nuw nsw i16 %and.i, 114
  %add.i = add nuw nsw i16 %narrow27.i, %narrow.i
  %add14.i = add nuw i16 %add.i, %narrow26.i
  %div29.i = udiv i16 %add14.i, 195
  %21 = trunc i16 %div29.i to i8
  %22 = and i8 %21, -16
  %add16 = add i32 %add, 1
  %arrayidx17 = getelementptr i16, ptr %4, i32 %add16
  %23 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx17, align 2
  %and.i63 = and i16 %24, 31
  %and3.i64 = lshr i16 %24, 5
  %25 = and i16 %and3.i64, 63
  %26 = lshr i16 %24, 11
  %narrow.i65 = mul nuw nsw i16 %26, 299
  %narrow26.i66 = mul nuw i16 %25, 587
  %narrow27.i67 = mul nuw nsw i16 %and.i63, 114
  %add.i68 = add nuw nsw i16 %narrow27.i67, %narrow.i65
  %add14.i69 = add nuw i16 %add.i68, %narrow26.i66
  %div29.i70 = udiv i16 %add14.i69, 195
  %27 = trunc i16 %div29.i70 to i8
  %28 = lshr i8 %27, 4
  %or = or i8 %28, %22
  %29 = ptrtoint ptr %buf.173 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %or, ptr %buf.173, align 1
  %incdec.ptr = getelementptr i8, ptr %buf.173, i32 1
  %inc = add nuw i32 %y.074, 1
  %30 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %info, align 8
  %yres = getelementptr inbounds %struct.fb_info, ptr %31, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %yres, align 4
  %cmp6 = icmp ult i32 %inc, %33
  br i1 %cmp6, label %for.body7.for.body7_crit_edge, label %for.body7.for.inc21_crit_edge

for.body7.for.inc21_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc21

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body7

for.inc21:                                        ; preds = %for.body7.for.inc21_crit_edge, %for.cond3.preheader.for.inc21_crit_edge, %for.body.for.inc21_crit_edge
  %buf.2 = phi ptr [ %buf.077, %for.body.for.inc21_crit_edge ], [ %buf.077, %for.cond3.preheader.for.inc21_crit_edge ], [ %incdec.ptr, %for.body7.for.inc21_crit_edge ]
  %inc22 = add nuw i32 %x.078, 1
  %34 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %info, align 8
  %var = getelementptr inbounds %struct.fb_info, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %var, align 4
  %cmp = icmp ult i32 %inc22, %37
  br i1 %cmp, label %for.inc21.for.body_crit_edge, label %for.inc21.for.end23_crit_edge

for.inc21.for.end23_crit_edge:                    ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end23

for.inc21.for.body_crit_edge:                     ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end23:                                        ; preds = %for.inc21.for.end23_crit_edge, %entry.for.end23_crit_edge
  %dc = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 1
  %38 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dc, align 4
  tail call void @gpiod_set_value(ptr noundef %39, i32 noundef 1) #4
  %fbtftops = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9
  %40 = ptrtoint ptr %fbtftops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fbtftops, align 4
  %42 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %txbuf, align 4
  %44 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %info, align 8
  %var27 = getelementptr inbounds %struct.fb_info, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %var27 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %var27, align 4
  %yres31 = getelementptr inbounds %struct.fb_info, ptr %45, i32 0, i32 6, i32 1
  %48 = ptrtoint ptr %yres31 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %yres31, align 4
  %mul32 = mul i32 %49, %47
  %div62 = lshr i32 %mul32, 1
  %call33 = tail call i32 %41(ptr noundef %par, ptr noundef %43, i32 noundef %div62) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end, label %for.end23.if.end38_crit_edge

for.end23.if.end38_crit_edge:                     ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

do.end:                                           ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %51, i32 0, i32 21
  %52 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %call33) #7
  br label %if.end38

if.end38:                                         ; preds = %do.end, %for.end23.if.end38_crit_edge
  ret i32 %call33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_addr_win(ptr noundef %par, i32 noundef %xs, i32 noundef %ys, i32 noundef %xe, i32 noundef %ye) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 8
  %and = and i32 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end, !prof !69

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %xs, i32 noundef %ys, i32 noundef %xe, i32 noundef %ye) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %6 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %7(ptr noundef %par, i32 noundef 1, i32 noundef 117) #4
  %8 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %9(ptr noundef %par, i32 noundef 1, i32 noundef 0) #4
  %10 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %11(ptr noundef %par, i32 noundef 1, i32 noundef 63) #4
  %12 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %13(ptr noundef %par, i32 noundef 1, i32 noundef 21) #4
  %14 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %15(ptr noundef %par, i32 noundef 1, i32 noundef 0) #4
  %16 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %17(ptr noundef %par, i32 noundef 1, i32 noundef 127) #4
  ret void
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
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 1, i32 noundef 179) #4
  %4 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %5(ptr noundef %par, i32 noundef 1, i32 noundef 240) #4
  %6 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %7(ptr noundef %par, i32 noundef 1, i32 noundef 174) #4
  %8 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %9(ptr noundef %par, i32 noundef 1, i32 noundef 161) #4
  %10 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %11(ptr noundef %par, i32 noundef 1, i32 noundef 0) #4
  %12 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %13(ptr noundef %par, i32 noundef 1, i32 noundef 168) #4
  %14 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %15(ptr noundef %par, i32 noundef 1, i32 noundef 63) #4
  %16 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %17(ptr noundef %par, i32 noundef 1, i32 noundef 160) #4
  %18 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %19(ptr noundef %par, i32 noundef 1, i32 noundef 69) #4
  %20 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %21(ptr noundef %par, i32 noundef 1, i32 noundef 162) #4
  %22 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %23(ptr noundef %par, i32 noundef 1, i32 noundef 64) #4
  %24 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %25(ptr noundef %par, i32 noundef 1, i32 noundef 117) #4
  %26 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %27(ptr noundef %par, i32 noundef 1, i32 noundef 0) #4
  %28 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %29(ptr noundef %par, i32 noundef 1, i32 noundef 63) #4
  %30 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %31(ptr noundef %par, i32 noundef 1, i32 noundef 21) #4
  %32 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %33(ptr noundef %par, i32 noundef 1, i32 noundef 0) #4
  %34 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %35(ptr noundef %par, i32 noundef 1, i32 noundef 127) #4
  %36 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %37(ptr noundef %par, i32 noundef 1, i32 noundef 164) #4
  %38 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %39(ptr noundef %par, i32 noundef 1, i32 noundef 175) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blank(ptr noundef %par, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !69

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %cond = select i1 %on, ptr @.str.12, ptr @.str.13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond) #7
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %6 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_register, align 4
  %. = select i1 %on, i32 174, i32 175
  tail call void (ptr, i32, ...) %7(ptr noundef %par, i32 noundef 1, i32 noundef %.) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_gamma(ptr noundef %par, ptr nocapture noundef readonly %curves) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 8
  %and = and i32 %1, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %do.end, !prof !69

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #7
  br label %if.end14

do.end11:                                         ; preds = %land.lhs.true.14.do.end11_crit_edge, %land.lhs.true.13.do.end11_crit_edge, %land.lhs.true.12.do.end11_crit_edge, %land.lhs.true.11.do.end11_crit_edge, %land.lhs.true.10.do.end11_crit_edge, %land.lhs.true.9.do.end11_crit_edge, %land.lhs.true.8.do.end11_crit_edge, %land.lhs.true.7.do.end11_crit_edge, %land.lhs.true.6.do.end11_crit_edge, %land.lhs.true.5.do.end11_crit_edge, %land.lhs.true.4.do.end11_crit_edge, %land.lhs.true.3.do.end11_crit_edge, %land.lhs.true.2.do.end11_crit_edge, %land.lhs.true.1.do.end11_crit_edge
  %i.054.lcssa = phi i32 [ 1, %land.lhs.true.1.do.end11_crit_edge ], [ 2, %land.lhs.true.2.do.end11_crit_edge ], [ 3, %land.lhs.true.3.do.end11_crit_edge ], [ 4, %land.lhs.true.4.do.end11_crit_edge ], [ 5, %land.lhs.true.5.do.end11_crit_edge ], [ 6, %land.lhs.true.6.do.end11_crit_edge ], [ 7, %land.lhs.true.7.do.end11_crit_edge ], [ 8, %land.lhs.true.8.do.end11_crit_edge ], [ 9, %land.lhs.true.9.do.end11_crit_edge ], [ 10, %land.lhs.true.10.do.end11_crit_edge ], [ 11, %land.lhs.true.11.do.end11_crit_edge ], [ 12, %land.lhs.true.12.do.end11_crit_edge ], [ 13, %land.lhs.true.13.do.end11_crit_edge ], [ 14, %land.lhs.true.14.do.end11_crit_edge ]
  %info12 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %6 = ptrtoint ptr %info12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info12, align 8
  %device13 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %device13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.17, i32 noundef %i.054.lcssa) #7
  br label %cleanup

if.end14:                                         ; preds = %do.end, %entry.if.end14_crit_edge
  %10 = ptrtoint ptr %curves to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %curves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %11)
  %cmp16 = icmp ugt i32 %11, 7
  br i1 %cmp16, label %if.end14.do.end20_crit_edge, label %land.lhs.true.1

if.end14.do.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

do.end20:                                         ; preds = %if.end14.14.do.end20_crit_edge, %if.end14.13.do.end20_crit_edge, %if.end14.12.do.end20_crit_edge, %if.end14.11.do.end20_crit_edge, %if.end14.10.do.end20_crit_edge, %if.end14.9.do.end20_crit_edge, %if.end14.8.do.end20_crit_edge, %if.end14.7.do.end20_crit_edge, %if.end14.6.do.end20_crit_edge, %if.end14.5.do.end20_crit_edge, %if.end14.4.do.end20_crit_edge, %if.end14.3.do.end20_crit_edge, %if.end14.2.do.end20_crit_edge, %if.end14.1.do.end20_crit_edge, %if.end14.do.end20_crit_edge
  %i.054.lcssa56 = phi i32 [ 0, %if.end14.do.end20_crit_edge ], [ 1, %if.end14.1.do.end20_crit_edge ], [ 2, %if.end14.2.do.end20_crit_edge ], [ 3, %if.end14.3.do.end20_crit_edge ], [ 4, %if.end14.4.do.end20_crit_edge ], [ 5, %if.end14.5.do.end20_crit_edge ], [ 6, %if.end14.6.do.end20_crit_edge ], [ 7, %if.end14.7.do.end20_crit_edge ], [ 8, %if.end14.8.do.end20_crit_edge ], [ 9, %if.end14.9.do.end20_crit_edge ], [ 10, %if.end14.10.do.end20_crit_edge ], [ 11, %if.end14.11.do.end20_crit_edge ], [ 12, %if.end14.12.do.end20_crit_edge ], [ 13, %if.end14.13.do.end20_crit_edge ], [ 14, %if.end14.14.do.end20_crit_edge ]
  %info21 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %12 = ptrtoint ptr %info21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info21, align 8
  %device22 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %device22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.20, i32 noundef %i.054.lcssa56) #7
  br label %cleanup

land.lhs.true.1:                                  ; preds = %if.end14
  %arrayidx.1 = getelementptr i32, ptr %curves, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp7.1 = icmp eq i32 %17, 0
  br i1 %cmp7.1, label %land.lhs.true.1.do.end11_crit_edge, label %if.end14.1

land.lhs.true.1.do.end11_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.end14.1:                                       ; preds = %land.lhs.true.1
  %arrayidx15.1 = getelementptr i32, ptr %curves, i32 1
  %18 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %19)
  %cmp16.1 = icmp ugt i32 %19, 7
  br i1 %cmp16.1, label %if.end14.1.do.end20_crit_edge, label %land.lhs.true.2

if.end14.1.do.end20_crit_edge:                    ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

land.lhs.true.2:                                  ; preds = %if.end14.1
  %arrayidx.2 = getelementptr i32, ptr %curves, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp7.2 = icmp eq i32 %21, 0
  br i1 %cmp7.2, label %land.lhs.true.2.do.end11_crit_edge, label %if.end14.2

land.lhs.true.2.do.end11_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.end14.2:                                       ; preds = %land.lhs.true.2
  %arrayidx15.2 = getelementptr i32, ptr %curves, i32 2
  %22 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx15.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %23)
  %cmp16.2 = icmp ugt i32 %23, 7
  br i1 %cmp16.2, label %if.end14.2.do.end20_crit_edge, label %land.lhs.true.3

if.end14.2.do.end20_crit_edge:                    ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

land.lhs.true.3:                                  ; preds = %if.end14.2
  %arrayidx.3 = getelementptr i32, ptr %curves, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp7.3 = icmp eq i32 %25, 0
  br i1 %cmp7.3, label %land.lhs.true.3.do.end11_crit_edge, label %if.end14.3

land.lhs.true.3.do.end11_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.end14.3:                                       ; preds = %land.lhs.true.3
  %arrayidx15.3 = getelementptr i32, ptr %curves, i32 3
  %26 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx15.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %27)
  %cmp16.3 = icmp ugt i32 %27, 7
  br i1 %cmp16.3, label %if.end14.3.do.end20_crit_edge, label %land.lhs.true.4

if.end14.3.do.end20_crit_edge:                    ; preds = %if.end14.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

land.lhs.true.4:                                  ; preds = %if.end14.3
  %arrayidx.4 = getelementptr i32, ptr %curves, i32 4
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp7.4 = icmp eq i32 %29, 0
  br i1 %cmp7.4, label %land.lhs.true.4.do.end11_crit_edge, label %if.end14.4

land.lhs.true.4.do.end11_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.end14.4:                                       ; preds = %land.lhs.true.4
  %arrayidx15.4 = getelementptr i32, ptr %curves, i32 4
  %30 = ptrtoint ptr %arrayidx15.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx15.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %31)
  %cmp16.4 = icmp ugt i32 %31, 7
  br i1 %cmp16.4, label %if.end14.4.do.end20_crit_edge, label %land.lhs.true.5

if.end14.4.do.end20_crit_edge:                    ; preds = %if.end14.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

land.lhs.true.5:                                  ; preds = %if.end14.4
  %arrayidx.5 = getelementptr i32, ptr %curves, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp7.5 = icmp eq i32 %33, 0
  br i1 %cmp7.5, label %land.lhs.true.5.do.end11_crit_edge, label %if.end14.5

land.lhs.true.5.do.end11_crit_edge:               ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.end14.5:                                       ; preds = %land.lhs.true.5
  %arrayidx15.5 = getelementptr i32, ptr %curves, i32 5
  %34 = ptrtoint ptr %arrayidx15.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx15.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %35)
  %cmp16.5 = icmp ugt i32 %35, 7
  br i1 %cmp16.5, label %if.end14.5.do.end20_crit_edge, label %land.lhs.true.6

if.end14.5.do.end20_crit_edge:                    ; preds = %if.end14.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

land.lhs.true.6:                                  ; preds = %if.end14.5
  %arrayidx.6 = getelementptr i32, ptr %curves, i32 6
  %36 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp7.6 = icmp eq i32 %37, 0
  br i1 %cmp7.6, label %land.lhs.true.6.do.end11_crit_edge, label %if.end14.6

land.lhs.true.6.do.end11_crit_edge:               ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.end14.6:                                       ; preds = %land.lhs.true.6
  %arrayidx15.6 = getelementptr i32, ptr %curves, i32 6
  %38 = ptrtoint ptr %arrayidx15.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx15.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %39)
  %cmp16.6 = icmp ugt i32 %39, 7
  br i1 %cmp16.6, label %if.end14.6.do.end20_crit_edge, label %land.lhs.true.7

if.end14.6.do.end20_crit_edge:                    ; preds = %if.end14.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

land.lhs.true.7:                                  ; preds = %if.end14.6
  %arrayidx.7 = getelementptr i32, ptr %curves, i32 7
  %40 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp7.7 = icmp eq i32 %41, 0
  br i1 %cmp7.7, label %land.lhs.true.7.do.end11_crit_edge, label %if.end14.7

land.lhs.true.7.do.end11_crit_edge:               ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.end14.7:                                       ; preds = %land.lhs.true.7
  %arrayidx15.7 = getelementptr i32, ptr %curves, i32 7
  %42 = ptrtoint ptr %arrayidx15.7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx15.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %43)
  %cmp16.7 = icmp ugt i32 %43, 7
  br i1 %cmp16.7, label %if.end14.7.do.end20_crit_edge, label %land.lhs.true.8

if.end14.7.do.end20_crit_edge:                    ; preds = %if.end14.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

land.lhs.true.8:                                  ; preds = %if.end14.7
  %arrayidx.8 = getelementptr i32, ptr %curves, i32 8
  %44 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp7.8 = icmp eq i32 %45, 0
  br i1 %cmp7.8, label %land.lhs.true.8.do.end11_crit_edge, label %if.end14.8

land.lhs.true.8.do.end11_crit_edge:               ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.end14.8:                                       ; preds = %land.lhs.true.8
  %arrayidx15.8 = getelementptr i32, ptr %curves, i32 8
  %46 = ptrtoint ptr %arrayidx15.8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx15.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %47)
  %cmp16.8 = icmp ugt i32 %47, 7
  br i1 %cmp16.8, label %if.end14.8.do.end20_crit_edge, label %land.lhs.true.9

if.end14.8.do.end20_crit_edge:                    ; preds = %if.end14.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

land.lhs.true.9:                                  ; preds = %if.end14.8
  %arrayidx.9 = getelementptr i32, ptr %curves, i32 9
  %48 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp7.9 = icmp eq i32 %49, 0
  br i1 %cmp7.9, label %land.lhs.true.9.do.end11_crit_edge, label %if.end14.9

land.lhs.true.9.do.end11_crit_edge:               ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.end14.9:                                       ; preds = %land.lhs.true.9
  %arrayidx15.9 = getelementptr i32, ptr %curves, i32 9
  %50 = ptrtoint ptr %arrayidx15.9 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx15.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %51)
  %cmp16.9 = icmp ugt i32 %51, 7
  br i1 %cmp16.9, label %if.end14.9.do.end20_crit_edge, label %land.lhs.true.10

if.end14.9.do.end20_crit_edge:                    ; preds = %if.end14.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

land.lhs.true.10:                                 ; preds = %if.end14.9
  %arrayidx.10 = getelementptr i32, ptr %curves, i32 10
  %52 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp7.10 = icmp eq i32 %53, 0
  br i1 %cmp7.10, label %land.lhs.true.10.do.end11_crit_edge, label %if.end14.10

land.lhs.true.10.do.end11_crit_edge:              ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.end14.10:                                      ; preds = %land.lhs.true.10
  %arrayidx15.10 = getelementptr i32, ptr %curves, i32 10
  %54 = ptrtoint ptr %arrayidx15.10 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx15.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %55)
  %cmp16.10 = icmp ugt i32 %55, 7
  br i1 %cmp16.10, label %if.end14.10.do.end20_crit_edge, label %land.lhs.true.11

if.end14.10.do.end20_crit_edge:                   ; preds = %if.end14.10
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

land.lhs.true.11:                                 ; preds = %if.end14.10
  %arrayidx.11 = getelementptr i32, ptr %curves, i32 11
  %56 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp7.11 = icmp eq i32 %57, 0
  br i1 %cmp7.11, label %land.lhs.true.11.do.end11_crit_edge, label %if.end14.11

land.lhs.true.11.do.end11_crit_edge:              ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.end14.11:                                      ; preds = %land.lhs.true.11
  %arrayidx15.11 = getelementptr i32, ptr %curves, i32 11
  %58 = ptrtoint ptr %arrayidx15.11 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx15.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %59)
  %cmp16.11 = icmp ugt i32 %59, 7
  br i1 %cmp16.11, label %if.end14.11.do.end20_crit_edge, label %land.lhs.true.12

if.end14.11.do.end20_crit_edge:                   ; preds = %if.end14.11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

land.lhs.true.12:                                 ; preds = %if.end14.11
  %arrayidx.12 = getelementptr i32, ptr %curves, i32 12
  %60 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp7.12 = icmp eq i32 %61, 0
  br i1 %cmp7.12, label %land.lhs.true.12.do.end11_crit_edge, label %if.end14.12

land.lhs.true.12.do.end11_crit_edge:              ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.end14.12:                                      ; preds = %land.lhs.true.12
  %arrayidx15.12 = getelementptr i32, ptr %curves, i32 12
  %62 = ptrtoint ptr %arrayidx15.12 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx15.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %63)
  %cmp16.12 = icmp ugt i32 %63, 7
  br i1 %cmp16.12, label %if.end14.12.do.end20_crit_edge, label %land.lhs.true.13

if.end14.12.do.end20_crit_edge:                   ; preds = %if.end14.12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

land.lhs.true.13:                                 ; preds = %if.end14.12
  %arrayidx.13 = getelementptr i32, ptr %curves, i32 13
  %64 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp7.13 = icmp eq i32 %65, 0
  br i1 %cmp7.13, label %land.lhs.true.13.do.end11_crit_edge, label %if.end14.13

land.lhs.true.13.do.end11_crit_edge:              ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.end14.13:                                      ; preds = %land.lhs.true.13
  %arrayidx15.13 = getelementptr i32, ptr %curves, i32 13
  %66 = ptrtoint ptr %arrayidx15.13 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx15.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %67)
  %cmp16.13 = icmp ugt i32 %67, 7
  br i1 %cmp16.13, label %if.end14.13.do.end20_crit_edge, label %land.lhs.true.14

if.end14.13.do.end20_crit_edge:                   ; preds = %if.end14.13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

land.lhs.true.14:                                 ; preds = %if.end14.13
  %arrayidx.14 = getelementptr i32, ptr %curves, i32 14
  %68 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp7.14 = icmp eq i32 %69, 0
  br i1 %cmp7.14, label %land.lhs.true.14.do.end11_crit_edge, label %if.end14.14

land.lhs.true.14.do.end11_crit_edge:              ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

if.end14.14:                                      ; preds = %land.lhs.true.14
  %arrayidx15.14 = getelementptr i32, ptr %curves, i32 14
  %70 = ptrtoint ptr %arrayidx15.14 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx15.14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %71)
  %cmp16.14 = icmp ugt i32 %71, 7
  br i1 %cmp16.14, label %if.end14.14.do.end20_crit_edge, label %for.inc.14

if.end14.14.do.end20_crit_edge:                   ; preds = %if.end14.14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end20

for.inc.14:                                       ; preds = %if.end14.14
  call void @__sanitizer_cov_trace_pc() #6
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %72 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %73(ptr noundef %par, i32 noundef 1, i32 noundef 184) #4
  %74 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write_register, align 4
  %76 = ptrtoint ptr %curves to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %curves, align 4
  %and30 = and i32 %77, 255
  tail call void (ptr, i32, ...) %75(ptr noundef %par, i32 noundef 1, i32 noundef %and30) #4
  %78 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write_register, align 4
  %80 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx15.1, align 4
  %and30.1 = and i32 %81, 255
  tail call void (ptr, i32, ...) %79(ptr noundef %par, i32 noundef 1, i32 noundef %and30.1) #4
  %82 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write_register, align 4
  %84 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx15.2, align 4
  %and30.2 = and i32 %85, 255
  tail call void (ptr, i32, ...) %83(ptr noundef %par, i32 noundef 1, i32 noundef %and30.2) #4
  %86 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write_register, align 4
  %88 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx15.3, align 4
  %and30.3 = and i32 %89, 255
  tail call void (ptr, i32, ...) %87(ptr noundef %par, i32 noundef 1, i32 noundef %and30.3) #4
  %90 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write_register, align 4
  %92 = ptrtoint ptr %arrayidx15.4 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx15.4, align 4
  %and30.4 = and i32 %93, 255
  tail call void (ptr, i32, ...) %91(ptr noundef %par, i32 noundef 1, i32 noundef %and30.4) #4
  %94 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write_register, align 4
  %96 = ptrtoint ptr %arrayidx15.5 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx15.5, align 4
  %and30.5 = and i32 %97, 255
  tail call void (ptr, i32, ...) %95(ptr noundef %par, i32 noundef 1, i32 noundef %and30.5) #4
  %98 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write_register, align 4
  %100 = ptrtoint ptr %arrayidx15.6 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx15.6, align 4
  %and30.6 = and i32 %101, 255
  tail call void (ptr, i32, ...) %99(ptr noundef %par, i32 noundef 1, i32 noundef %and30.6) #4
  %102 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write_register, align 4
  %104 = ptrtoint ptr %arrayidx15.7 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx15.7, align 4
  %and30.7 = and i32 %105, 255
  tail call void (ptr, i32, ...) %103(ptr noundef %par, i32 noundef 1, i32 noundef %and30.7) #4
  br label %cleanup

cleanup:                                          ; preds = %for.inc.14, %do.end20, %do.end11
  %retval.0 = phi i32 [ -22, %do.end11 ], [ -22, %do.end20 ], [ 0, %for.inc.14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

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

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !40, !41, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_fb_ssd1325__303_185_fbtft_driver_module_init6, !1, !"__initcall__kmod_fb_ssd1325__303_185_fbtft_driver_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fb_ssd1325.c", i32 185, i32 1}
!2 = !{ptr @__exitcall_fbtft_driver_module_exit, !1, !"__exitcall_fbtft_driver_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias304, !4, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fb_ssd1325.c", i32 187, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias305, !6, !"__UNIQUE_ID_alias305", i1 false, i1 false}
!6 = !{!"../drivers/staging/fbtft/fb_ssd1325.c", i32 188, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias306, !8, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!8 = !{!"../drivers/staging/fbtft/fb_ssd1325.c", i32 189, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias307, !10, !"__UNIQUE_ID_alias307", i1 false, i1 false}
!10 = !{!"../drivers/staging/fbtft/fb_ssd1325.c", i32 190, i32 1}
!11 = !{ptr @__UNIQUE_ID_description308, !12, !"__UNIQUE_ID_description308", i1 false, i1 false}
!12 = !{!"../drivers/staging/fbtft/fb_ssd1325.c", i32 192, i32 1}
!13 = !{ptr @__UNIQUE_ID_author309, !14, !"__UNIQUE_ID_author309", i1 false, i1 false}
!14 = !{!"../drivers/staging/fbtft/fb_ssd1325.c", i32 193, i32 1}
!15 = !{ptr @__UNIQUE_ID_file310, !16, !"__UNIQUE_ID_file310", i1 false, i1 false}
!16 = !{!"../drivers/staging/fbtft/fb_ssd1325.c", i32 194, i32 1}
!17 = !{ptr @__UNIQUE_ID_license311, !16, !"__UNIQUE_ID_license311", i1 false, i1 false}
!18 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fbtft_driver_spi_driver, !1, !"fbtft_driver_spi_driver", i1 false, i1 false}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/fbtft/fb_ssd1325.c", i32 175, i32 11}
!22 = !{ptr @display, !23, !"display", i1 false, i1 false}
!23 = !{!"../drivers/staging/fbtft/fb_ssd1325.c", i32 168, i32 29}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/fbtft/fb_ssd1325.c", i32 162, i32 3}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @write_vmem._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @write_vmem._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/fbtft/fb_ssd1325.c", i32 75, i32 2}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @set_addr_win._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @set_addr_win._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/fbtft/fb_ssd1325.c", i32 89, i32 2}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @blank._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @blank._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/fbtft/fb_ssd1325.c", i32 112, i32 2}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @set_gamma._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @set_gamma._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/fbtft/fb_ssd1325.c", i32 116, i32 4}
!52 = !{ptr @set_gamma._entry.16, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @set_gamma._entry_ptr.18, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/fbtft/fb_ssd1325.c", i32 122, i32 4}
!56 = !{ptr @set_gamma._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @set_gamma._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @dt_ids, !1, !"dt_ids", i1 false, i1 false}
!59 = !{ptr @fbtft_driver_platform_driver, !1, !"fbtft_driver_platform_driver", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"branch_weights", i32 2000, i32 1}
