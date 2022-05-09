; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fb_sh1106.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fb_sh1106.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
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
%struct.__va_list = type { ptr }

@__initcall__kmod_fb_sh1106__303_176_fbtft_driver_spi_driver_init6 = internal global ptr @fbtft_driver_spi_driver_init, section ".initcall6.init", align 4
@fbtft_driver_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @spi_ids, ptr @fbtft_driver_probe_spi, ptr @fbtft_driver_remove_spi, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_fbtft_driver_spi_driver_exit = internal global ptr @fbtft_driver_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description304 = internal constant [41 x i8] c"fb_sh1106.description=SH1106 OLED Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [33 x i8] c"fb_sh1106.author=Heiner Kallweit\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [47 x i8] c"fb_sh1106.file=drivers/staging/fbtft/fb_sh1106\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [22 x i8] c"fb_sh1106.license=GPL\00", section ".modinfo", align 1
@spi_ids = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"sh1106\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fb_sh1106\00", [22 x i8] zeroinitializer }, align 32
@dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sinowealth,sh1106\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@display = internal global { %struct.fbtft_display, [40 x i8] } { %struct.fbtft_display { i32 128, i32 64, i32 8, i32 0, i32 0, %struct.fbtft_ops { ptr null, ptr null, ptr @write_vmem, ptr @write_register, ptr @set_addr_win, ptr null, ptr null, ptr null, ptr @init_display, ptr @blank, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @set_gamma }, i32 0, i32 0, i32 128, ptr null, ptr @.str.1, i32 1, i32 1, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cd\00", [29 x i8] zeroinitializer }, align 32
@init_display._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 26, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid screen size\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_display\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/staging/fbtft/fb_sh1106.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@init_display._entry_ptr = internal global ptr @init_display._entry, section ".printk_index", align 4
@init_display._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 31, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Display rotation not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@init_display._entry_ptr.9 = internal global ptr @init_display._entry.7, section ".printk_index", align 4
@blank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 92, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"(%s=%s)\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"blank\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@blank._entry_ptr = internal global ptr @blank._entry, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [24 x i8] c"fbtft_driver_spi_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [8 x i8] c"spi_ids\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"dt_ids\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 176, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 157, i32 29 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 165, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 26, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 31, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [37 x i8] c"../drivers/staging/fbtft/fb_sh1106.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 91, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_fbtft_driver_spi_driver_exit, ptr @__initcall__kmod_fb_sh1106__303_176_fbtft_driver_spi_driver_init6, ptr @blank._entry, ptr @blank._entry_ptr, ptr @fbtft_driver_spi_driver_exit, ptr @init_display._entry, ptr @init_display._entry.7, ptr @init_display._entry_ptr, ptr @init_display._entry_ptr.9, ptr @fbtft_driver_spi_driver, ptr @spi_ids, ptr @.str, ptr @dt_ids, ptr @display, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_driver_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_display._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_display._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @fbtft_driver_spi_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fbtft_driver_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @fbtft_driver_spi_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_probe_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fbtft_probe_common(ptr noundef nonnull @display, ptr noundef %spi, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fbtft_driver_remove_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @fbtft_remove_common(ptr noundef %spi, ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbtft_probe_common(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_vmem(ptr noundef %par, i32 noundef %offset, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %2 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %var, align 4
  %txbuf = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 6
  %7 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %txbuf, align 4
  %mul = shl i32 %6, 4
  %div = udiv i32 %offset, %mul
  %add = add i32 %offset, -1
  %add5 = add i32 %add, %len
  %sub = add i32 %add5, %mul
  %div7 = udiv i32 %sub, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div7)
  %cmp67 = icmp slt i32 %div, %div7
  br i1 %cmp67, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp965.not = icmp eq i32 %6, 0
  br label %for.body

for.cond:                                         ; preds = %for.end23
  %inc29 = add nsw i32 %page.068, 1
  %exitcond71.not = icmp eq i32 %inc29, %div7
  br i1 %exitcond71.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %page.068 = phi i32 [ %div, %for.body.lr.ph ], [ %inc29, %for.cond.for.body_crit_edge ]
  %9 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_register, align 4
  %or = or i32 %page.068, 176
  tail call void (ptr, i32, ...) %10(ptr noundef %par, i32 noundef 3, i32 noundef %or, i32 noundef 2, i32 noundef 16) #7
  %11 = call ptr @memset(ptr %8, i32 0, i32 %6)
  br i1 %cmp965.not, label %for.body.for.end23_crit_edge, label %for.cond11.preheader.lr.ph

for.body.for.end23_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end23

for.cond11.preheader.lr.ph:                       ; preds = %for.body
  %mul14 = shl i32 %page.068, 3
  %mul16 = mul i32 %mul14, %6
  %add15.1 = or i32 %mul14, 1
  %mul16.1 = mul i32 %add15.1, %6
  %add15.2 = or i32 %mul14, 2
  %mul16.2 = mul i32 %add15.2, %6
  %add15.3 = or i32 %mul14, 3
  %mul16.3 = mul i32 %add15.3, %6
  %add15.4 = or i32 %mul14, 4
  %mul16.4 = mul i32 %add15.4, %6
  %add15.5 = or i32 %mul14, 5
  %mul16.5 = mul i32 %add15.5, %6
  %add15.6 = or i32 %mul14, 6
  %mul16.6 = mul i32 %add15.6, %6
  %add15.7 = or i32 %mul14, 7
  %mul16.7 = mul i32 %add15.7, %6
  br label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.inc.7.for.cond11.preheader_crit_edge, %for.cond11.preheader.lr.ph
  %x.066 = phi i32 [ 0, %for.cond11.preheader.lr.ph ], [ %inc22, %for.inc.7.for.cond11.preheader_crit_edge ]
  %arrayidx18 = getelementptr i8, ptr %8, i32 %x.066
  %add17 = add i32 %mul16, %x.066
  %arrayidx = getelementptr i16, ptr %4, i32 %add17
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %for.cond11.preheader.for.inc_crit_edge, label %if.then

for.cond11.preheader.for.inc_crit_edge:           ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx18, align 1
  %conv20 = or i8 %15, 1
  store i8 %conv20, ptr %arrayidx18, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.cond11.preheader.for.inc_crit_edge
  %add17.1 = add i32 %mul16.1, %x.066
  %arrayidx.1 = getelementptr i16, ptr %4, i32 %add17.1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.1 = icmp eq i16 %17, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx18, align 1
  %conv20.1 = or i8 %19, 2
  store i8 %conv20.1, ptr %arrayidx18, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %add17.2 = add i32 %mul16.2, %x.066
  %arrayidx.2 = getelementptr i16, ptr %4, i32 %add17.2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.2 = icmp eq i16 %21, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx18, align 1
  %conv20.2 = or i8 %23, 4
  store i8 %conv20.2, ptr %arrayidx18, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %add17.3 = add i32 %mul16.3, %x.066
  %arrayidx.3 = getelementptr i16, ptr %4, i32 %add17.3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.3 = icmp eq i16 %25, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx18, align 1
  %conv20.3 = or i8 %27, 8
  store i8 %conv20.3, ptr %arrayidx18, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %add17.4 = add i32 %mul16.4, %x.066
  %arrayidx.4 = getelementptr i16, ptr %4, i32 %add17.4
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.4 = icmp eq i16 %29, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx18, align 1
  %conv20.4 = or i8 %31, 16
  store i8 %conv20.4, ptr %arrayidx18, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %add17.5 = add i32 %mul16.5, %x.066
  %arrayidx.5 = getelementptr i16, ptr %4, i32 %add17.5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not.5 = icmp eq i16 %33, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx18, align 1
  %conv20.5 = or i8 %35, 32
  store i8 %conv20.5, ptr %arrayidx18, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %add17.6 = add i32 %mul16.6, %x.066
  %arrayidx.6 = getelementptr i16, ptr %4, i32 %add17.6
  %36 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.6 = icmp eq i16 %37, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx18, align 1
  %conv20.6 = or i8 %39, 64
  store i8 %conv20.6, ptr %arrayidx18, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %add17.7 = add i32 %mul16.7, %x.066
  %arrayidx.7 = getelementptr i16, ptr %4, i32 %add17.7
  %40 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.7 = icmp eq i16 %41, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx18, align 1
  %conv20.7 = or i8 %43, -128
  store i8 %conv20.7, ptr %arrayidx18, align 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %inc22 = add nuw i32 %x.066, 1
  %exitcond.not = icmp eq i32 %inc22, %6
  br i1 %exitcond.not, label %for.inc.7.for.end23_crit_edge, label %for.inc.7.for.cond11.preheader_crit_edge

for.inc.7.for.cond11.preheader_crit_edge:         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond11.preheader

for.inc.7.for.end23_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end23

for.end23:                                        ; preds = %for.inc.7.for.end23_crit_edge, %for.body.for.end23_crit_edge
  %call = tail call i32 @fbtft_write_buf_dc(ptr noundef %par, ptr noundef %8, i32 noundef %6, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp24 = icmp slt i32 %call, 0
  br i1 %cmp24, label %for.end23.cleanup_crit_edge, label %for.cond

for.end23.cleanup_crit_edge:                      ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.end23.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %for.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_register(ptr noundef %par, i32 noundef %len, ...) #2 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #7
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !47
  call void @llvm.va_start(ptr nonnull %args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp7 = icmp sgt i32 %len, 0
  br i1 %cmp7, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %buf = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %argp.cur = load ptr, ptr %args, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %args, align 4
  %2 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %argp.cur, align 4
  %conv = trunc i32 %3 to i8
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 %i.08
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %buf1 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 7
  %7 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf1, align 4
  %call = call i32 @fbtft_write_buf_dc(ptr noundef %par, ptr noundef %8, i32 noundef %len, i32 noundef 0) #7
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @set_addr_win(ptr nocapture noundef %par, i32 noundef %xs, i32 noundef %ys, i32 noundef %xe, i32 noundef %ye) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_display(ptr noundef %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %var = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %var, align 4
  %4 = add i32 %3, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128, i32 %4)
  %5 = icmp ult i32 %4, -128
  br i1 %5, label %entry.do.end_crit_edge, label %lor.lhs.false4

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false4:                                   ; preds = %entry
  %yres = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yres, align 4
  %8 = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %8)
  %9 = icmp ult i32 %8, 64
  %rem = and i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool17.not = icmp eq i32 %rem, 0
  %or.cond110 = and i1 %9, %tobool17.not
  br i1 %or.cond110, label %if.end, label %lor.lhs.false4.do.end_crit_edge

lor.lhs.false4.do.end_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false4.do.end_crit_edge, %entry.do.end_crit_edge
  %device = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.2) #10
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %rotate = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 26
  %12 = ptrtoint ptr %rotate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rotate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %device26 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 21
  %14 = ptrtoint ptr %device26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.8) #10
  br label %return

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %reset = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 5
  %16 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset, align 4
  tail call void %17(ptr noundef %par) #7
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %18 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %19(ptr noundef %par, i32 noundef 1, i32 noundef 174) #7
  %20 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %21(ptr noundef %par, i32 noundef 2, i32 noundef 213, i32 noundef 128) #7
  %22 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_register, align 4
  %24 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %info, align 8
  %yres35 = getelementptr inbounds %struct.fb_info, ptr %25, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %yres35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %yres35, align 4
  %sub = add i32 %27, -1
  tail call void (ptr, i32, ...) %23(ptr noundef %par, i32 noundef 2, i32 noundef 168, i32 noundef %sub) #7
  %28 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %29(ptr noundef %par, i32 noundef 2, i32 noundef 211, i32 noundef 0) #7
  %30 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %31(ptr noundef %par, i32 noundef 1, i32 noundef 64) #7
  %32 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %33(ptr noundef %par, i32 noundef 1, i32 noundef 161) #7
  %34 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %35(ptr noundef %par, i32 noundef 1, i32 noundef 200) #7
  %36 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info, align 8
  %yres46 = getelementptr inbounds %struct.fb_info, ptr %37, i32 0, i32 6, i32 1
  %38 = ptrtoint ptr %yres46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %yres46, align 4
  %40 = add i32 %39, -48
  %switch.and = and i32 %40, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %41 = select i1 %switch.selectcmp, i32 18, i32 2
  %42 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %43(ptr noundef %par, i32 noundef 2, i32 noundef 218, i32 noundef %41) #7
  %44 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %45(ptr noundef %par, i32 noundef 2, i32 noundef 217, i32 noundef 241) #7
  %46 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %47(ptr noundef %par, i32 noundef 2, i32 noundef 219, i32 noundef 64) #7
  %48 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %49(ptr noundef %par, i32 noundef 1, i32 noundef 175) #7
  tail call void @msleep(i32 noundef 150) #7
  br label %return

return:                                           ; preds = %if.end27, %do.end24, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end24 ], [ 0, %if.end27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blank(ptr noundef %par, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 8
  %and = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !48

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %cond = select i1 %on, ptr @.str.13, ptr @.str.14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %6 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_register, align 4
  %cond7 = select i1 %on, i32 174, i32 175
  tail call void (ptr, i32, ...) %7(ptr noundef %par, i32 noundef 1, i32 noundef %cond7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_gamma(ptr noundef %par, ptr nocapture noundef %curves) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %curves to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curves, align 4
  %and = and i32 %1, 255
  store i32 %and, ptr %curves, align 4
  %write_register = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %write_register to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_register, align 4
  tail call void (ptr, i32, ...) %3(ptr noundef %par, i32 noundef 2, i32 noundef 129, i32 noundef %and) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fbtft_write_buf_dc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbtft_remove_common(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_fb_sh1106__303_176_fbtft_driver_spi_driver_init6, !1, !"__initcall__kmod_fb_sh1106__303_176_fbtft_driver_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fb_sh1106.c", i32 176, i32 1}
!2 = !{ptr @__exitcall_fbtft_driver_spi_driver_exit, !1, !"__exitcall_fbtft_driver_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description304, !4, !"__UNIQUE_ID_description304", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fb_sh1106.c", i32 178, i32 1}
!5 = !{ptr @__UNIQUE_ID_author305, !6, !"__UNIQUE_ID_author305", i1 false, i1 false}
!6 = !{!"../drivers/staging/fbtft/fb_sh1106.c", i32 179, i32 1}
!7 = !{ptr @__UNIQUE_ID_file306, !8, !"__UNIQUE_ID_file306", i1 false, i1 false}
!8 = !{!"../drivers/staging/fbtft/fb_sh1106.c", i32 180, i32 1}
!9 = !{ptr @__UNIQUE_ID_license307, !8, !"__UNIQUE_ID_license307", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @fbtft_driver_spi_driver, !1, !"fbtft_driver_spi_driver", i1 false, i1 false}
!12 = !{ptr @spi_ids, !1, !"spi_ids", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/fbtft/fb_sh1106.c", i32 165, i32 11}
!15 = !{ptr @display, !16, !"display", i1 false, i1 false}
!16 = !{!"../drivers/staging/fbtft/fb_sh1106.c", i32 157, i32 29}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/fbtft/fb_sh1106.c", i32 26, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @init_display._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @init_display._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/fbtft/fb_sh1106.c", i32 31, i32 3}
!27 = !{ptr @init_display._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @init_display._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/fbtft/fb_sh1106.c", i32 91, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @blank._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @blank._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @dt_ids, !1, !"dt_ids", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
!48 = !{!"branch_weights", i32 2000, i32 1}
