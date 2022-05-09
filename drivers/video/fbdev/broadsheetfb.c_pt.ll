; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/broadsheetfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/broadsheetfb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.panel_info = type { i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fb_deferred_io = type { i32, %struct.mutex, %struct.list_head, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.broadsheet_board = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.84, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.broadsheetfb_par = type { ptr, ptr, ptr, ptr, %struct.wait_queue_head, i32, %struct.mutex }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }

@__initcall__kmod_broadsheetfb__305_1222_broadsheetfb_driver_init6 = internal global ptr @broadsheetfb_driver_init, section ".initcall6.init", align 4
@broadsheetfb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @broadsheetfb_probe, ptr @broadsheetfb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_broadsheetfb_driver_exit = internal global ptr @broadsheetfb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description306 = internal constant [64 x i8] c"broadsheetfb.description=fbdev driver for Broadsheet controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [31 x i8] c"broadsheetfb.author=Jaya Kumar\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [51 x i8] c"broadsheetfb.file=drivers/video/fbdev/broadsheetfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [25 x i8] c"broadsheetfb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"broadsheetfb\00", [19 x i8] zeroinitializer }, align 32
@panel_table = internal constant { [3 x %struct.panel_info], [56 x i8] } { [3 x %struct.panel_info] [%struct.panel_info { i32 800, i32 600, i16 868, i16 2, i16 132, i16 4, i16 2564, i16 10, i16 25604, i16 6 }, %struct.panel_info { i32 320, i32 240, i16 67, i16 3, i16 132, i16 0, i16 20484, i16 10, i16 20500, i16 14 }, %struct.panel_info { i32 1200, i32 825, i16 868, i16 2, i16 132, i16 0, i16 1028, i16 4, i16 15370, i16 3 }], [56 x i8] zeroinitializer }, align 32
@broadsheetfb_ops = internal constant { %struct.fb_ops, [36 x i8] } { %struct.fb_ops { ptr null, ptr null, ptr null, ptr @fb_sys_read, ptr @broadsheetfb_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @broadsheetfb_fillrect, ptr @broadsheetfb_copyarea, ptr @broadsheetfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@broadsheetfb_var = internal global { %struct.fb_var_screeninfo, [32 x i8] } { %struct.fb_var_screeninfo { i32 800, i32 600, i32 800, i32 600, i32 0, i32 0, i32 8, i32 1, %struct.fb_bitfield { i32 0, i32 4, i32 0 }, %struct.fb_bitfield { i32 0, i32 4, i32 0 }, %struct.fb_bitfield { i32 0, i32 4, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@broadsheetfb_fix = internal global { %struct.fb_fix_screeninfo, [60 x i8] } { %struct.fb_fix_screeninfo { [16 x i8] c"broadsheetfb\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 5, i16 0, i16 0, i16 0, i32 800, i32 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@broadsheetfb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&par->waitq\00", [20 x i8] zeroinitializer }, align 32
@broadsheetfb_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&par->io_lock\00", [18 x i8] zeroinitializer }, align 32
@broadsheetfb_defio = internal global { %struct.fb_deferred_io, [48 x i8] } { %struct.fb_deferred_io { i32 25, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr @broadsheetfb_dpy_deferred_io }, [48 x i8] zeroinitializer }, align 32
@broadsheetfb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1141, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to allocate colormap\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"broadsheetfb_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/video/fbdev/broadsheetfb.c\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@broadsheetfb_probe._entry_ptr = internal global ptr @broadsheetfb_probe._entry, section ".printk_index", align 4
@dev_attr_loadstore_waveform = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @broadsheet_loadstore_waveform }, [36 x i8] zeroinitializer }, align 32
@broadsheetfb_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016fb%d: Broadsheet frame buffer, using %dK of video memory\0A\00", [36 x i8] zeroinitializer }, align 32
@broadsheetfb_probe._entry_ptr.11 = internal global ptr @broadsheetfb_probe._entry.9, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@broadsheet_identify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.6, i32 848, ptr @.str.17, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Broadsheet Rev 0x%x, Product Code 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"broadsheet_identify\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@broadsheet_identify._entry_ptr = internal global ptr @broadsheet_identify._entry, section ".printk_index", align 4
@broadsheet_identify._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.6, i32 851, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unrecognized Broadsheet Product Code\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@broadsheet_identify._entry_ptr.21 = internal global ptr @broadsheet_identify._entry.18, section ".printk_index", align 4
@broadsheet_identify._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.6, i32 853, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unrecognized Broadsheet Revision\0A\00", [62 x i8] zeroinitializer }, align 32
@broadsheet_identify._entry_ptr.24 = internal global ptr @broadsheet_identify._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"loadstore_waveform\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"broadsheet.wbf\00", [17 x i8] zeroinitializer }, align 32
@broadsheet_loadstore_waveform._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.6, i32 747, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get broadsheet waveform\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"broadsheet_loadstore_waveform\00", [34 x i8] zeroinitializer }, align 32
@broadsheet_loadstore_waveform._entry_ptr = internal global ptr @broadsheet_loadstore_waveform._entry, section ".printk_index", align 4
@broadsheet_loadstore_waveform._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.6, i32 753, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid waveform\0A\00", [46 x i8] zeroinitializer }, align 32
@broadsheet_loadstore_waveform._entry_ptr.31 = internal global ptr @broadsheet_loadstore_waveform._entry.29, section ".printk_index", align 4
@broadsheet_loadstore_waveform._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.6, i32 764, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to store broadsheet waveform\0A\00", [59 x i8] zeroinitializer }, align 32
@broadsheet_loadstore_waveform._entry_ptr.34 = internal global ptr @broadsheet_loadstore_waveform._entry.32, section ".printk_index", align 4
@broadsheet_loadstore_waveform._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.6, i32 768, ptr @.str.17, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Stored broadsheet waveform, size %zd\0A\00", [58 x i8] zeroinitializer }, align 32
@broadsheet_loadstore_waveform._entry_ptr.37 = internal global ptr @broadsheet_loadstore_waveform._entry.35, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@broadsheet_verify_spiflash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.6, i32 475, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unexpected flash type\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"broadsheet_verify_spiflash\00", [37 x i8] zeroinitializer }, align 32
@broadsheet_verify_spiflash._entry_ptr = internal global ptr @broadsheet_verify_spiflash._entry, section ".printk_index", align 4
@broadsheet_spiflash_wait_for_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.6, i32 429, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Timed out waiting for spiflash status\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"broadsheet_spiflash_wait_for_status\00", [60 x i8] zeroinitializer }, align 32
@broadsheet_spiflash_wait_for_status._entry_ptr = internal global ptr @broadsheet_spiflash_wait_for_status._entry, section ".printk_index", align 4
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"broadsheetfb_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1215, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1219, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"panel_table\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 52, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"broadsheetfb_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1051, i32 28 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"broadsheetfb_var\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 105, i32 33 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"broadsheetfb_fix\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 94, i32 33 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1130, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1132, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"broadsheetfb_defio\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1060, i32 30 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1141, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [28 x i8] c"dev_attr_loadstore_waveform\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1174, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 230, i32 6 }
@___asan_gen_.106 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 214, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 156, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 848, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 851, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 853, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 777, i32 8 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 745, i32 36 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 747, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 753, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 764, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 768, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 475, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private constant [38 x i8] c"../drivers/video/fbdev/broadsheetfb.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 429, i32 2 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_broadsheetfb_driver_exit, ptr @__initcall__kmod_broadsheetfb__305_1222_broadsheetfb_driver_init6, ptr @broadsheet_identify._entry, ptr @broadsheet_identify._entry.18, ptr @broadsheet_identify._entry.22, ptr @broadsheet_identify._entry_ptr, ptr @broadsheet_identify._entry_ptr.21, ptr @broadsheet_identify._entry_ptr.24, ptr @broadsheet_loadstore_waveform._entry, ptr @broadsheet_loadstore_waveform._entry.29, ptr @broadsheet_loadstore_waveform._entry.32, ptr @broadsheet_loadstore_waveform._entry.35, ptr @broadsheet_loadstore_waveform._entry_ptr, ptr @broadsheet_loadstore_waveform._entry_ptr.31, ptr @broadsheet_loadstore_waveform._entry_ptr.34, ptr @broadsheet_loadstore_waveform._entry_ptr.37, ptr @broadsheet_spiflash_wait_for_status._entry, ptr @broadsheet_spiflash_wait_for_status._entry_ptr, ptr @broadsheet_verify_spiflash._entry, ptr @broadsheet_verify_spiflash._entry_ptr, ptr @broadsheetfb_driver_exit, ptr @broadsheetfb_probe._entry, ptr @broadsheetfb_probe._entry.9, ptr @broadsheetfb_probe._entry_ptr, ptr @broadsheetfb_probe._entry_ptr.11, ptr @broadsheetfb_driver, ptr @.str, ptr @panel_table, ptr @broadsheetfb_ops, ptr @broadsheetfb_var, ptr @broadsheetfb_fix, ptr @broadsheetfb_probe.__key, ptr @.str.1, ptr @broadsheetfb_probe.__key.2, ptr @.str.3, ptr @broadsheetfb_defio, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @dev_attr_loadstore_waveform, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broadsheetfb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broadsheetfb_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broadsheetfb_var to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broadsheetfb_fix to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broadsheetfb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broadsheetfb_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broadsheetfb_defio to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broadsheetfb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_loadstore_waveform to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broadsheetfb_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broadsheet_identify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broadsheet_identify._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broadsheet_identify._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broadsheet_loadstore_waveform._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broadsheet_loadstore_waveform._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broadsheet_loadstore_waveform._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broadsheet_loadstore_waveform._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broadsheet_verify_spiflash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @broadsheet_spiflash_wait_for_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @broadsheetfb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @broadsheetfb_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @broadsheetfb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @broadsheetfb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @broadsheetfb_probe(ptr noundef %dev) #2 align 64 {
entry:
  %args.i.i = alloca [5 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup76_crit_edge, label %if.end

entry.cleanup76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup76

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call zeroext i1 @try_module_get(ptr noundef %3) #8
  br i1 %call, label %if.end4, label %if.end.cleanup76_crit_edge

if.end.cleanup76_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup76

if.end4:                                          ; preds = %if.end
  %call6 = tail call ptr @framebuffer_alloc(i32 noundef 164, ptr noundef %dev2) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end4.err_crit_edge, label %if.end9

if.end4.err_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end9:                                          ; preds = %if.end4
  %get_panel_type = getelementptr inbounds %struct.broadsheet_board, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %get_panel_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_panel_type, align 4
  %call10 = tail call i32 %5() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %call10)
  %switch.selectcmp = icmp eq i32 %call10, 97
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %call10)
  %switch.selectcmp152 = icmp eq i32 %call10, 37
  %switch.select153 = select i1 %switch.selectcmp152, i32 1, i32 %switch.select
  %arrayidx = getelementptr [3 x %struct.panel_info], ptr @panel_table, i32 0, i32 %switch.select153
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %h = getelementptr [3 x %struct.panel_info], ptr @panel_table, i32 0, i32 %switch.select153, i32 1
  %8 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %h, align 4
  %mul = mul i32 %9, %7
  %add = add i32 %mul, 4095
  %div151 = and i32 %add, -4096
  %call15 = tail call noalias ptr @vzalloc(i32 noundef %div151) #11
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end9.err_fb_rel_crit_edge, label %if.end18

if.end9.err_fb_rel_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_fb_rel

if.end18:                                         ; preds = %if.end9
  %10 = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 25
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call15, ptr %10, align 4
  %fbops = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 20
  %12 = ptrtoint ptr %fbops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @broadsheetfb_ops, ptr %fbops, align 4
  store i32 %7, ptr @broadsheetfb_var, align 4
  store i32 %9, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @broadsheetfb_var, i32 0, i32 1), align 4
  store i32 %7, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @broadsheetfb_var, i32 0, i32 2), align 4
  store i32 %9, ptr getelementptr inbounds (%struct.fb_var_screeninfo, ptr @broadsheetfb_var, i32 0, i32 3), align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 6
  %13 = call ptr @memcpy(ptr %var, ptr @broadsheetfb_var, i32 160)
  store i32 %7, ptr getelementptr inbounds (%struct.fb_fix_screeninfo, ptr @broadsheetfb_fix, i32 0, i32 9), align 4
  %fix = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 7
  %14 = call ptr @memcpy(ptr %fix, ptr @broadsheetfb_fix, i32 68)
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %smem_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div151, ptr %smem_len, align 4
  %par20 = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 30
  %16 = ptrtoint ptr %par20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %par20, align 4
  %panel_index21 = getelementptr inbounds %struct.broadsheetfb_par, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %panel_index21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %switch.select153, ptr %panel_index21, align 4
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call6, ptr %17, align 4
  %board23 = getelementptr inbounds %struct.broadsheetfb_par, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %board23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %1, ptr %board23, align 4
  %write_reg = getelementptr inbounds %struct.broadsheetfb_par, ptr %17, i32 0, i32 2
  %21 = ptrtoint ptr %write_reg to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @broadsheet_write_reg, ptr %write_reg, align 4
  %read_reg = getelementptr inbounds %struct.broadsheetfb_par, ptr %17, i32 0, i32 3
  %22 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @broadsheet_read_reg, ptr %read_reg, align 4
  %waitq = getelementptr inbounds %struct.broadsheetfb_par, ptr %17, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.1, ptr noundef nonnull @broadsheetfb_probe.__key) #8
  %io_lock = getelementptr inbounds %struct.broadsheetfb_par, ptr %17, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %io_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @broadsheetfb_probe.__key.2) #8
  %flags = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 2
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %flags, align 4
  %fbdefio = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 19
  %24 = ptrtoint ptr %fbdefio to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @broadsheetfb_defio, ptr %fbdefio, align 4
  tail call void @fb_deferred_io_init(ptr noundef nonnull %call6) #8
  %cmap = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 12
  %call27 = tail call i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef 16, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %do.end31, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end18
  %red = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 12, i32 2
  %25 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %red, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 2047, ptr %26, align 2
  %28 = load ptr, ptr %red, align 4
  %arrayidx40.1 = getelementptr i16, ptr %28, i32 1
  %29 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 6143, ptr %arrayidx40.1, align 2
  %30 = load ptr, ptr %red, align 4
  %arrayidx40.2 = getelementptr i16, ptr %30, i32 2
  %31 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 10239, ptr %arrayidx40.2, align 2
  %32 = load ptr, ptr %red, align 4
  %arrayidx40.3 = getelementptr i16, ptr %32, i32 3
  %33 = ptrtoint ptr %arrayidx40.3 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 14335, ptr %arrayidx40.3, align 2
  %34 = load ptr, ptr %red, align 4
  %arrayidx40.4 = getelementptr i16, ptr %34, i32 4
  %35 = ptrtoint ptr %arrayidx40.4 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 18431, ptr %arrayidx40.4, align 2
  %36 = load ptr, ptr %red, align 4
  %arrayidx40.5 = getelementptr i16, ptr %36, i32 5
  %37 = ptrtoint ptr %arrayidx40.5 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 22527, ptr %arrayidx40.5, align 2
  %38 = load ptr, ptr %red, align 4
  %arrayidx40.6 = getelementptr i16, ptr %38, i32 6
  %39 = ptrtoint ptr %arrayidx40.6 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 26623, ptr %arrayidx40.6, align 2
  %40 = load ptr, ptr %red, align 4
  %arrayidx40.7 = getelementptr i16, ptr %40, i32 7
  %41 = ptrtoint ptr %arrayidx40.7 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 30719, ptr %arrayidx40.7, align 2
  %42 = load ptr, ptr %red, align 4
  %arrayidx40.8 = getelementptr i16, ptr %42, i32 8
  %43 = ptrtoint ptr %arrayidx40.8 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -30721, ptr %arrayidx40.8, align 2
  %44 = load ptr, ptr %red, align 4
  %arrayidx40.9 = getelementptr i16, ptr %44, i32 9
  %45 = ptrtoint ptr %arrayidx40.9 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -26625, ptr %arrayidx40.9, align 2
  %46 = load ptr, ptr %red, align 4
  %arrayidx40.10 = getelementptr i16, ptr %46, i32 10
  %47 = ptrtoint ptr %arrayidx40.10 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -22529, ptr %arrayidx40.10, align 2
  %48 = load ptr, ptr %red, align 4
  %arrayidx40.11 = getelementptr i16, ptr %48, i32 11
  %49 = ptrtoint ptr %arrayidx40.11 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 -18433, ptr %arrayidx40.11, align 2
  %50 = load ptr, ptr %red, align 4
  %arrayidx40.12 = getelementptr i16, ptr %50, i32 12
  %51 = ptrtoint ptr %arrayidx40.12 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -14337, ptr %arrayidx40.12, align 2
  %52 = load ptr, ptr %red, align 4
  %arrayidx40.13 = getelementptr i16, ptr %52, i32 13
  %53 = ptrtoint ptr %arrayidx40.13 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 -10241, ptr %arrayidx40.13, align 2
  %54 = load ptr, ptr %red, align 4
  %arrayidx40.14 = getelementptr i16, ptr %54, i32 14
  %55 = ptrtoint ptr %arrayidx40.14 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 -6145, ptr %arrayidx40.14, align 2
  %56 = load ptr, ptr %red, align 4
  %arrayidx40.15 = getelementptr i16, ptr %56, i32 15
  %57 = ptrtoint ptr %arrayidx40.15 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 -2049, ptr %arrayidx40.15, align 2
  %green = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 12, i32 3
  %58 = ptrtoint ptr %green to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %green, align 4
  %60 = load ptr, ptr %red, align 4
  %61 = call ptr @memcpy(ptr %59, ptr %60, i32 32)
  %blue = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 12, i32 4
  %62 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %blue, align 4
  %64 = load ptr, ptr %red, align 4
  %65 = call ptr @memcpy(ptr %63, ptr %64, i32 32)
  %66 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %board23, align 4
  %setup_irq = getelementptr inbounds %struct.broadsheet_board, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %setup_irq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %setup_irq, align 4
  %call48 = tail call i32 %69(ptr noundef nonnull %call6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %for.cond.preheader.err_cmap_crit_edge, label %if.end52

for.cond.preheader.err_cmap_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_cmap

do.end31:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.4) #12
  br label %err_vfree

if.end52:                                         ; preds = %for.cond.preheader
  %init = getelementptr inbounds %struct.broadsheet_board, ptr %1, i32 0, i32 1
  %70 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %init, align 4
  %call53 = tail call i32 %71(ptr noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end52.err_free_irq_crit_edge, label %if.end57

if.end52.err_free_irq_crit_edge:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_irq

if.end57:                                         ; preds = %if.end52
  %72 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %17, align 4
  %device.i = getelementptr inbounds %struct.fb_info, ptr %73, i32 0, i32 21
  %74 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %device.i, align 4
  %call.i = tail call zeroext i16 @broadsheet_read_reg(ptr noundef %17, i16 noundef zeroext 0) #8
  %call1.i = tail call zeroext i16 @broadsheet_read_reg(ptr noundef %17, i16 noundef zeroext 2) #8
  %conv.i = zext i16 %call.i to i32
  %conv2.i = zext i16 %call1.i to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %75, ptr noundef nonnull @.str.15, i32 noundef %conv.i, i32 noundef %conv2.i) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 71, i16 %call1.i)
  %cmp.not.i = icmp eq i16 %call1.i, 71
  br i1 %cmp.not.i, label %if.end57.if.end.i_crit_edge, label %do.end7.i

if.end57.if.end.i_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end7.i:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %75, ptr noundef nonnull @.str.19) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end7.i, %if.end57.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %call.i)
  %cmp9.not.i = icmp eq i16 %call.i, 256
  br i1 %cmp9.not.i, label %if.end.i.broadsheet_identify.exit_crit_edge, label %do.end14.i

if.end.i.broadsheet_identify.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %broadsheet_identify.exit

do.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %75, ptr noundef nonnull @.str.23) #12
  br label %broadsheet_identify.exit

broadsheet_identify.exit:                         ; preds = %do.end14.i, %if.end.i.broadsheet_identify.exit_crit_edge
  %76 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %board23, align 4
  %mmio_write.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %77, i32 0, i32 9
  %78 = ptrtoint ptr %mmio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio_write.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %broadsheet_identify.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %79(ptr noundef %17, i32 noundef 1, i16 noundef zeroext 6) #8
  br label %broadsheet_send_command.exit.i

if.else.i.i:                                      ; preds = %broadsheet_identify.exit
  call void @__sanitizer_cov_trace_pc() #10
  %wait_for_rdy.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %77, i32 0, i32 2
  %80 = ptrtoint ptr %wait_for_rdy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wait_for_rdy.i.i.i, align 4
  %call.i.i.i = tail call i32 %81(ptr noundef %17) #8
  %82 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %board23, align 4
  %set_ctl.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %set_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %set_ctl.i.i.i, align 4
  tail call void %85(ptr noundef %17, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %86 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %board23, align 4
  %set_ctl.i.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %set_ctl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %set_ctl.i.i.i.i, align 4
  tail call void %89(ptr noundef %17, i8 noundef zeroext 2, i8 noundef zeroext 0) #8
  %90 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %board23, align 4
  %set_ctl.i.i.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %91, i32 0, i32 6
  %92 = ptrtoint ptr %set_ctl.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %set_ctl.i.i.i.i.i, align 4
  tail call void %93(ptr noundef %17, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %94 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %board23, align 4
  %set_hdb.i.i.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %95, i32 0, i32 7
  %96 = ptrtoint ptr %set_hdb.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %set_hdb.i.i.i.i.i, align 4
  tail call void %97(ptr noundef %17, i16 noundef zeroext 6) #8
  %98 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %board23, align 4
  %set_ctl3.i.i.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %99, i32 0, i32 6
  %100 = ptrtoint ptr %set_ctl3.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %set_ctl3.i.i.i.i.i, align 4
  tail call void %101(ptr noundef %17, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  %102 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %board23, align 4
  %set_ctl3.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %103, i32 0, i32 6
  %104 = ptrtoint ptr %set_ctl3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %set_ctl3.i.i.i, align 4
  tail call void %105(ptr noundef %17, i8 noundef zeroext 2, i8 noundef zeroext 1) #8
  %106 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %board23, align 4
  %set_ctl5.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %107, i32 0, i32 6
  %108 = ptrtoint ptr %set_ctl5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %set_ctl5.i.i.i, align 4
  tail call void %109(ptr noundef %17, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %broadsheet_send_command.exit.i

broadsheet_send_command.exit.i:                   ; preds = %if.else.i.i, %if.then.i.i
  tail call void @msleep(i32 noundef 1000) #8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %args.i.i) #8
  %110 = getelementptr inbounds [5 x i16], ptr %args.i.i, i32 0, i32 1
  %111 = getelementptr inbounds [5 x i16], ptr %args.i.i, i32 0, i32 2
  %112 = getelementptr inbounds [5 x i16], ptr %args.i.i, i32 0, i32 3
  %113 = getelementptr inbounds [5 x i16], ptr %args.i.i, i32 0, i32 4
  %114 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %17, align 4
  %var.i.i = getelementptr inbounds %struct.fb_info, ptr %115, i32 0, i32 6
  %116 = ptrtoint ptr %var.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %var.i.i, align 4
  %yres4.i.i = getelementptr inbounds %struct.fb_info, ptr %115, i32 0, i32 6, i32 1
  %118 = ptrtoint ptr %yres4.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %yres4.i.i, align 4
  %120 = ptrtoint ptr %panel_index21 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %panel_index21, align 4
  %arrayidx.i.i = getelementptr [3 x %struct.panel_info], ptr @panel_table, i32 0, i32 %121
  %122 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx.i.i, align 4
  %conv.i.i = trunc i32 %123 to i16
  %124 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv.i.i, ptr %args.i.i, align 2
  %h.i.i = getelementptr [3 x %struct.panel_info], ptr @panel_table, i32 0, i32 %121, i32 1
  %125 = ptrtoint ptr %h.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %h.i.i, align 4
  %conv8.i.i = trunc i32 %126 to i16
  %127 = ptrtoint ptr %110 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %conv8.i.i, ptr %110, align 2
  %sdcfg.i.i = getelementptr [3 x %struct.panel_info], ptr @panel_table, i32 0, i32 %121, i32 2
  %128 = ptrtoint ptr %sdcfg.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %sdcfg.i.i, align 4
  %130 = ptrtoint ptr %111 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %111, align 2
  %gdcfg.i.i = getelementptr [3 x %struct.panel_info], ptr @panel_table, i32 0, i32 %121, i32 3
  %131 = ptrtoint ptr %gdcfg.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %gdcfg.i.i, align 2
  %133 = ptrtoint ptr %112 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %112, align 2
  %lutfmt.i.i = getelementptr [3 x %struct.panel_info], ptr @panel_table, i32 0, i32 %121, i32 4
  %134 = ptrtoint ptr %lutfmt.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %lutfmt.i.i, align 4
  %136 = ptrtoint ptr %113 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %113, align 2
  call fastcc void @broadsheet_send_cmdargs(ptr noundef %17, i16 noundef zeroext 9, i32 noundef 5, ptr noundef nonnull %args.i.i) #8
  call fastcc void @broadsheet_send_cmdargs(ptr noundef %17, i16 noundef zeroext 9, i32 noundef 5, ptr noundef nonnull %args.i.i) #8
  %137 = ptrtoint ptr %panel_index21 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %panel_index21, align 4
  %fsynclen.i.i = getelementptr [3 x %struct.panel_info], ptr @panel_table, i32 0, i32 %138, i32 5
  %139 = ptrtoint ptr %fsynclen.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %fsynclen.i.i, align 2
  %141 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %args.i.i, align 2
  %fendfbegin.i.i = getelementptr [3 x %struct.panel_info], ptr @panel_table, i32 0, i32 %138, i32 6
  %142 = ptrtoint ptr %fendfbegin.i.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %fendfbegin.i.i, align 4
  %144 = ptrtoint ptr %110 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %143, ptr %110, align 2
  %lsynclen.i.i = getelementptr [3 x %struct.panel_info], ptr @panel_table, i32 0, i32 %138, i32 7
  %145 = ptrtoint ptr %lsynclen.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %lsynclen.i.i, align 2
  %147 = ptrtoint ptr %111 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %146, ptr %111, align 2
  %lendlbegin.i.i = getelementptr [3 x %struct.panel_info], ptr @panel_table, i32 0, i32 %138, i32 8
  %148 = ptrtoint ptr %lendlbegin.i.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %lendlbegin.i.i, align 4
  %150 = ptrtoint ptr %112 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %149, ptr %112, align 2
  %pixclk.i.i = getelementptr [3 x %struct.panel_info], ptr @panel_table, i32 0, i32 %138, i32 9
  %151 = ptrtoint ptr %pixclk.i.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %pixclk.i.i, align 2
  %153 = ptrtoint ptr %113 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %152, ptr %113, align 2
  call fastcc void @broadsheet_send_cmdargs(ptr noundef %17, i16 noundef zeroext 10, i32 noundef 5, ptr noundef nonnull %args.i.i) #8
  %mul.i.i = shl i32 %117, 1
  %mul36.i.i = mul i32 %mul.i.i, %119
  %154 = tail call i32 @llvm.bswap.i32(i32 %mul36.i.i) #8
  %conv.i.i.i = trunc i32 %154 to i16
  tail call void @broadsheet_write_reg(ptr noundef %17, i16 noundef zeroext 784, i16 noundef zeroext %conv.i.i.i) #8
  %shr.i.i.i = lshr i32 %154, 16
  %conv4.i.i.i = trunc i32 %shr.i.i.i to i16
  tail call void @broadsheet_write_reg(ptr noundef %17, i16 noundef zeroext 786, i16 noundef zeroext %conv4.i.i.i) #8
  %155 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 2182, ptr %args.i.i, align 2
  %156 = ptrtoint ptr %110 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 0, ptr %110, align 2
  call fastcc void @broadsheet_send_cmdargs(ptr noundef %17, i16 noundef zeroext 48, i32 noundef 2, ptr noundef nonnull %args.i.i) #8
  %157 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %board23, align 4
  %mmio_write.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %158, i32 0, i32 9
  %159 = ptrtoint ptr %mmio_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mmio_write.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %160, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %broadsheet_send_command.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %160(ptr noundef %17, i32 noundef 1, i16 noundef zeroext 55) #8
  br label %broadsheet_send_command.exit.i.i

if.else.i.i.i:                                    ; preds = %broadsheet_send_command.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %wait_for_rdy.i.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %158, i32 0, i32 2
  %161 = ptrtoint ptr %wait_for_rdy.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %wait_for_rdy.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %162(ptr noundef %17) #8
  %163 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %board23, align 4
  %set_ctl.i.i.i2.i = getelementptr inbounds %struct.broadsheet_board, ptr %164, i32 0, i32 6
  %165 = ptrtoint ptr %set_ctl.i.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %set_ctl.i.i.i2.i, align 4
  tail call void %166(ptr noundef %17, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %167 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %board23, align 4
  %set_ctl.i.i.i.i3.i = getelementptr inbounds %struct.broadsheet_board, ptr %168, i32 0, i32 6
  %169 = ptrtoint ptr %set_ctl.i.i.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %set_ctl.i.i.i.i3.i, align 4
  tail call void %170(ptr noundef %17, i8 noundef zeroext 2, i8 noundef zeroext 0) #8
  %171 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %board23, align 4
  %set_ctl.i.i.i.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %172, i32 0, i32 6
  %173 = ptrtoint ptr %set_ctl.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %set_ctl.i.i.i.i.i.i, align 4
  tail call void %174(ptr noundef %17, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %175 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %board23, align 4
  %set_hdb.i.i.i.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %176, i32 0, i32 7
  %177 = ptrtoint ptr %set_hdb.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %set_hdb.i.i.i.i.i.i, align 4
  tail call void %178(ptr noundef %17, i16 noundef zeroext 55) #8
  %179 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %board23, align 4
  %set_ctl3.i.i.i.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %180, i32 0, i32 6
  %181 = ptrtoint ptr %set_ctl3.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %set_ctl3.i.i.i.i.i.i, align 4
  tail call void %182(ptr noundef %17, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  %183 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %board23, align 4
  %set_ctl3.i.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %184, i32 0, i32 6
  %185 = ptrtoint ptr %set_ctl3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %set_ctl3.i.i.i.i, align 4
  tail call void %186(ptr noundef %17, i8 noundef zeroext 2, i8 noundef zeroext 1) #8
  %187 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %board23, align 4
  %set_ctl5.i.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %188, i32 0, i32 6
  %189 = ptrtoint ptr %set_ctl5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %set_ctl5.i.i.i.i, align 4
  tail call void %190(ptr noundef %17, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %broadsheet_send_command.exit.i.i

broadsheet_send_command.exit.i.i:                 ; preds = %if.else.i.i.i, %if.then.i.i.i
  %191 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %board23, align 4
  %mmio_write.i87.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %192, i32 0, i32 9
  %193 = ptrtoint ptr %mmio_write.i87.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %mmio_write.i87.i.i, align 4
  %tobool.not.i88.i.i = icmp eq ptr %194, null
  br i1 %tobool.not.i88.i.i, label %if.else.i99.i.i, label %if.then.i89.i.i

if.then.i89.i.i:                                  ; preds = %broadsheet_send_command.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %194(ptr noundef %17, i32 noundef 1, i16 noundef zeroext 40) #8
  br label %broadsheet_send_command.exit100.i.i

if.else.i99.i.i:                                  ; preds = %broadsheet_send_command.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %wait_for_rdy.i.i90.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %192, i32 0, i32 2
  %195 = ptrtoint ptr %wait_for_rdy.i.i90.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %wait_for_rdy.i.i90.i.i, align 4
  %call.i.i91.i.i = tail call i32 %196(ptr noundef %17) #8
  %197 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %board23, align 4
  %set_ctl.i.i92.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %198, i32 0, i32 6
  %199 = ptrtoint ptr %set_ctl.i.i92.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %set_ctl.i.i92.i.i, align 4
  tail call void %200(ptr noundef %17, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %201 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %board23, align 4
  %set_ctl.i.i.i93.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %202, i32 0, i32 6
  %203 = ptrtoint ptr %set_ctl.i.i.i93.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %set_ctl.i.i.i93.i.i, align 4
  tail call void %204(ptr noundef %17, i8 noundef zeroext 2, i8 noundef zeroext 0) #8
  %205 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %board23, align 4
  %set_ctl.i.i.i.i94.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %206, i32 0, i32 6
  %207 = ptrtoint ptr %set_ctl.i.i.i.i94.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %set_ctl.i.i.i.i94.i.i, align 4
  tail call void %208(ptr noundef %17, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %209 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %board23, align 4
  %set_hdb.i.i.i.i95.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %210, i32 0, i32 7
  %211 = ptrtoint ptr %set_hdb.i.i.i.i95.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %set_hdb.i.i.i.i95.i.i, align 4
  tail call void %212(ptr noundef %17, i16 noundef zeroext 40) #8
  %213 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %board23, align 4
  %set_ctl3.i.i.i.i96.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %214, i32 0, i32 6
  %215 = ptrtoint ptr %set_ctl3.i.i.i.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %set_ctl3.i.i.i.i96.i.i, align 4
  tail call void %216(ptr noundef %17, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  %217 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %board23, align 4
  %set_ctl3.i.i97.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %218, i32 0, i32 6
  %219 = ptrtoint ptr %set_ctl3.i.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %set_ctl3.i.i97.i.i, align 4
  tail call void %220(ptr noundef %17, i8 noundef zeroext 2, i8 noundef zeroext 1) #8
  %221 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %board23, align 4
  %set_ctl5.i.i98.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %222, i32 0, i32 6
  %223 = ptrtoint ptr %set_ctl5.i.i98.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %set_ctl5.i.i98.i.i, align 4
  tail call void %224(ptr noundef %17, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %broadsheet_send_command.exit100.i.i

broadsheet_send_command.exit100.i.i:              ; preds = %if.else.i99.i.i, %if.then.i89.i.i
  tail call void @broadsheet_write_reg(ptr noundef %17, i16 noundef zeroext 816, i16 noundef zeroext 132) #8
  %225 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %board23, align 4
  %mmio_write.i102.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %226, i32 0, i32 9
  %227 = ptrtoint ptr %mmio_write.i102.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %mmio_write.i102.i.i, align 4
  %tobool.not.i103.i.i = icmp eq ptr %228, null
  br i1 %tobool.not.i103.i.i, label %if.else.i114.i.i, label %if.then.i104.i.i

if.then.i104.i.i:                                 ; preds = %broadsheet_send_command.exit100.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %228(ptr noundef %17, i32 noundef 1, i16 noundef zeroext 40) #8
  br label %broadsheet_send_command.exit115.i.i

if.else.i114.i.i:                                 ; preds = %broadsheet_send_command.exit100.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %wait_for_rdy.i.i105.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %226, i32 0, i32 2
  %229 = ptrtoint ptr %wait_for_rdy.i.i105.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %wait_for_rdy.i.i105.i.i, align 4
  %call.i.i106.i.i = tail call i32 %230(ptr noundef %17) #8
  %231 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %board23, align 4
  %set_ctl.i.i107.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %232, i32 0, i32 6
  %233 = ptrtoint ptr %set_ctl.i.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %set_ctl.i.i107.i.i, align 4
  tail call void %234(ptr noundef %17, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %235 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %board23, align 4
  %set_ctl.i.i.i108.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %236, i32 0, i32 6
  %237 = ptrtoint ptr %set_ctl.i.i.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %set_ctl.i.i.i108.i.i, align 4
  tail call void %238(ptr noundef %17, i8 noundef zeroext 2, i8 noundef zeroext 0) #8
  %239 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %board23, align 4
  %set_ctl.i.i.i.i109.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %240, i32 0, i32 6
  %241 = ptrtoint ptr %set_ctl.i.i.i.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %set_ctl.i.i.i.i109.i.i, align 4
  tail call void %242(ptr noundef %17, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %243 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %board23, align 4
  %set_hdb.i.i.i.i110.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %244, i32 0, i32 7
  %245 = ptrtoint ptr %set_hdb.i.i.i.i110.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %set_hdb.i.i.i.i110.i.i, align 4
  tail call void %246(ptr noundef %17, i16 noundef zeroext 40) #8
  %247 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %board23, align 4
  %set_ctl3.i.i.i.i111.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %248, i32 0, i32 6
  %249 = ptrtoint ptr %set_ctl3.i.i.i.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %set_ctl3.i.i.i.i111.i.i, align 4
  tail call void %250(ptr noundef %17, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  %251 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %board23, align 4
  %set_ctl3.i.i112.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %252, i32 0, i32 6
  %253 = ptrtoint ptr %set_ctl3.i.i112.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %set_ctl3.i.i112.i.i, align 4
  tail call void %254(ptr noundef %17, i8 noundef zeroext 2, i8 noundef zeroext 1) #8
  %255 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %board23, align 4
  %set_ctl5.i.i113.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %256, i32 0, i32 6
  %257 = ptrtoint ptr %set_ctl5.i.i113.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %set_ctl5.i.i113.i.i, align 4
  tail call void %258(ptr noundef %17, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %broadsheet_send_command.exit115.i.i

broadsheet_send_command.exit115.i.i:              ; preds = %if.else.i114.i.i, %if.then.i104.i.i
  %259 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 48, ptr %args.i.i, align 2
  call fastcc void @broadsheet_send_cmdargs(ptr noundef %17, i16 noundef zeroext 32, i32 noundef 1, ptr noundef nonnull %args.i.i) #8
  %260 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 340, ptr %args.i.i, align 2
  call fastcc void @broadsheet_send_cmdargs(ptr noundef %17, i16 noundef zeroext 17, i32 noundef 1, ptr noundef nonnull %args.i.i) #8
  %261 = ptrtoint ptr %panel_index21 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %panel_index21, align 4
  %arrayidx45.i.i = getelementptr [3 x %struct.panel_info], ptr @panel_table, i32 0, i32 %262
  %263 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %arrayidx45.i.i, align 4
  %h49.i.i = getelementptr [3 x %struct.panel_info], ptr @panel_table, i32 0, i32 %262, i32 1
  %265 = ptrtoint ptr %h49.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %h49.i.i, align 4
  %mul50.i.i = mul i32 %266, %264
  %div.i.i = sdiv i32 %mul50.i.i, 2
  %267 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %17, align 4
  %269 = getelementptr inbounds %struct.fb_info, ptr %268, i32 0, i32 25
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %269, align 4
  tail call fastcc void @broadsheet_burst_write(ptr noundef %17, i32 noundef %div.i.i, ptr noundef %271) #8
  %272 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %board23, align 4
  %mmio_write.i117.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %273, i32 0, i32 9
  %274 = ptrtoint ptr %mmio_write.i117.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %mmio_write.i117.i.i, align 4
  %tobool.not.i118.i.i = icmp eq ptr %275, null
  br i1 %tobool.not.i118.i.i, label %if.else.i129.i.i, label %if.then.i119.i.i

if.then.i119.i.i:                                 ; preds = %broadsheet_send_command.exit115.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %275(ptr noundef %17, i32 noundef 1, i16 noundef zeroext 35) #8
  br label %broadsheet_send_command.exit130.i.i

if.else.i129.i.i:                                 ; preds = %broadsheet_send_command.exit115.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %wait_for_rdy.i.i120.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %273, i32 0, i32 2
  %276 = ptrtoint ptr %wait_for_rdy.i.i120.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %wait_for_rdy.i.i120.i.i, align 4
  %call.i.i121.i.i = tail call i32 %277(ptr noundef %17) #8
  %278 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %board23, align 4
  %set_ctl.i.i122.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %279, i32 0, i32 6
  %280 = ptrtoint ptr %set_ctl.i.i122.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %set_ctl.i.i122.i.i, align 4
  tail call void %281(ptr noundef %17, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %282 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %board23, align 4
  %set_ctl.i.i.i123.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %283, i32 0, i32 6
  %284 = ptrtoint ptr %set_ctl.i.i.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %set_ctl.i.i.i123.i.i, align 4
  tail call void %285(ptr noundef %17, i8 noundef zeroext 2, i8 noundef zeroext 0) #8
  %286 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %board23, align 4
  %set_ctl.i.i.i.i124.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %287, i32 0, i32 6
  %288 = ptrtoint ptr %set_ctl.i.i.i.i124.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %set_ctl.i.i.i.i124.i.i, align 4
  tail call void %289(ptr noundef %17, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %290 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %board23, align 4
  %set_hdb.i.i.i.i125.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %291, i32 0, i32 7
  %292 = ptrtoint ptr %set_hdb.i.i.i.i125.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %set_hdb.i.i.i.i125.i.i, align 4
  tail call void %293(ptr noundef %17, i16 noundef zeroext 35) #8
  %294 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %board23, align 4
  %set_ctl3.i.i.i.i126.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %295, i32 0, i32 6
  %296 = ptrtoint ptr %set_ctl3.i.i.i.i126.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %set_ctl3.i.i.i.i126.i.i, align 4
  tail call void %297(ptr noundef %17, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  %298 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %board23, align 4
  %set_ctl3.i.i127.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %299, i32 0, i32 6
  %300 = ptrtoint ptr %set_ctl3.i.i127.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %set_ctl3.i.i127.i.i, align 4
  tail call void %301(ptr noundef %17, i8 noundef zeroext 2, i8 noundef zeroext 1) #8
  %302 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %board23, align 4
  %set_ctl5.i.i128.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %303, i32 0, i32 6
  %304 = ptrtoint ptr %set_ctl5.i.i128.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %set_ctl5.i.i128.i.i, align 4
  tail call void %305(ptr noundef %17, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %broadsheet_send_command.exit130.i.i

broadsheet_send_command.exit130.i.i:              ; preds = %if.else.i129.i.i, %if.then.i119.i.i
  %306 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store2_noabort(i32 %306)
  store i16 17152, ptr %args.i.i, align 2
  call fastcc void @broadsheet_send_cmdargs(ptr noundef %17, i16 noundef zeroext 51, i32 noundef 1, ptr noundef nonnull %args.i.i) #8
  %307 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %board23, align 4
  %mmio_write.i132.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %308, i32 0, i32 9
  %309 = ptrtoint ptr %mmio_write.i132.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %mmio_write.i132.i.i, align 4
  %tobool.not.i133.i.i = icmp eq ptr %310, null
  br i1 %tobool.not.i133.i.i, label %if.else.i144.i.i, label %if.then.i134.i.i

if.then.i134.i.i:                                 ; preds = %broadsheet_send_command.exit130.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %310(ptr noundef %17, i32 noundef 1, i16 noundef zeroext 40) #8
  br label %broadsheet_send_command.exit145.i.i

if.else.i144.i.i:                                 ; preds = %broadsheet_send_command.exit130.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %wait_for_rdy.i.i135.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %308, i32 0, i32 2
  %311 = ptrtoint ptr %wait_for_rdy.i.i135.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %wait_for_rdy.i.i135.i.i, align 4
  %call.i.i136.i.i = tail call i32 %312(ptr noundef %17) #8
  %313 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %board23, align 4
  %set_ctl.i.i137.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %314, i32 0, i32 6
  %315 = ptrtoint ptr %set_ctl.i.i137.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %set_ctl.i.i137.i.i, align 4
  tail call void %316(ptr noundef %17, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %317 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %board23, align 4
  %set_ctl.i.i.i138.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %318, i32 0, i32 6
  %319 = ptrtoint ptr %set_ctl.i.i.i138.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %set_ctl.i.i.i138.i.i, align 4
  tail call void %320(ptr noundef %17, i8 noundef zeroext 2, i8 noundef zeroext 0) #8
  %321 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %board23, align 4
  %set_ctl.i.i.i.i139.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %322, i32 0, i32 6
  %323 = ptrtoint ptr %set_ctl.i.i.i.i139.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %set_ctl.i.i.i.i139.i.i, align 4
  tail call void %324(ptr noundef %17, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %325 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %board23, align 4
  %set_hdb.i.i.i.i140.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %326, i32 0, i32 7
  %327 = ptrtoint ptr %set_hdb.i.i.i.i140.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %set_hdb.i.i.i.i140.i.i, align 4
  tail call void %328(ptr noundef %17, i16 noundef zeroext 40) #8
  %329 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %board23, align 4
  %set_ctl3.i.i.i.i141.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %330, i32 0, i32 6
  %331 = ptrtoint ptr %set_ctl3.i.i.i.i141.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %set_ctl3.i.i.i.i141.i.i, align 4
  tail call void %332(ptr noundef %17, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  %333 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %board23, align 4
  %set_ctl3.i.i142.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %334, i32 0, i32 6
  %335 = ptrtoint ptr %set_ctl3.i.i142.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %set_ctl3.i.i142.i.i, align 4
  tail call void %336(ptr noundef %17, i8 noundef zeroext 2, i8 noundef zeroext 1) #8
  %337 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %board23, align 4
  %set_ctl5.i.i143.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %338, i32 0, i32 6
  %339 = ptrtoint ptr %set_ctl5.i.i143.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %set_ctl5.i.i143.i.i, align 4
  tail call void %340(ptr noundef %17, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %broadsheet_send_command.exit145.i.i

broadsheet_send_command.exit145.i.i:              ; preds = %if.else.i144.i.i, %if.then.i134.i.i
  %341 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %board23, align 4
  %mmio_write.i147.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %342, i32 0, i32 9
  %343 = ptrtoint ptr %mmio_write.i147.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %mmio_write.i147.i.i, align 4
  %tobool.not.i148.i.i = icmp eq ptr %344, null
  br i1 %tobool.not.i148.i.i, label %if.else.i159.i.i, label %if.then.i149.i.i

if.then.i149.i.i:                                 ; preds = %broadsheet_send_command.exit145.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %344(ptr noundef %17, i32 noundef 1, i16 noundef zeroext 41) #8
  br label %broadsheet_init.exit

if.else.i159.i.i:                                 ; preds = %broadsheet_send_command.exit145.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %wait_for_rdy.i.i150.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %342, i32 0, i32 2
  %345 = ptrtoint ptr %wait_for_rdy.i.i150.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %wait_for_rdy.i.i150.i.i, align 4
  %call.i.i151.i.i = tail call i32 %346(ptr noundef %17) #8
  %347 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %board23, align 4
  %set_ctl.i.i152.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %348, i32 0, i32 6
  %349 = ptrtoint ptr %set_ctl.i.i152.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %set_ctl.i.i152.i.i, align 4
  tail call void %350(ptr noundef %17, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %351 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %board23, align 4
  %set_ctl.i.i.i153.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %352, i32 0, i32 6
  %353 = ptrtoint ptr %set_ctl.i.i.i153.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %set_ctl.i.i.i153.i.i, align 4
  tail call void %354(ptr noundef %17, i8 noundef zeroext 2, i8 noundef zeroext 0) #8
  %355 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %board23, align 4
  %set_ctl.i.i.i.i154.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %356, i32 0, i32 6
  %357 = ptrtoint ptr %set_ctl.i.i.i.i154.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %set_ctl.i.i.i.i154.i.i, align 4
  tail call void %358(ptr noundef %17, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %359 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %board23, align 4
  %set_hdb.i.i.i.i155.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %360, i32 0, i32 7
  %361 = ptrtoint ptr %set_hdb.i.i.i.i155.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %set_hdb.i.i.i.i155.i.i, align 4
  tail call void %362(ptr noundef %17, i16 noundef zeroext 41) #8
  %363 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %board23, align 4
  %set_ctl3.i.i.i.i156.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %364, i32 0, i32 6
  %365 = ptrtoint ptr %set_ctl3.i.i.i.i156.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %set_ctl3.i.i.i.i156.i.i, align 4
  tail call void %366(ptr noundef %17, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  %367 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %board23, align 4
  %set_ctl3.i.i157.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %368, i32 0, i32 6
  %369 = ptrtoint ptr %set_ctl3.i.i157.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %set_ctl3.i.i157.i.i, align 4
  tail call void %370(ptr noundef %17, i8 noundef zeroext 2, i8 noundef zeroext 1) #8
  %371 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %board23, align 4
  %set_ctl5.i.i158.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %372, i32 0, i32 6
  %373 = ptrtoint ptr %set_ctl5.i.i158.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %set_ctl5.i.i158.i.i, align 4
  tail call void %374(ptr noundef %17, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %broadsheet_init.exit

broadsheet_init.exit:                             ; preds = %if.else.i159.i.i, %if.then.i149.i.i
  %375 = ptrtoint ptr %board23 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %board23, align 4
  %wait_for_rdy.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %376, i32 0, i32 2
  %377 = ptrtoint ptr %wait_for_rdy.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %wait_for_rdy.i.i, align 4
  %call.i.i = tail call i32 %378(ptr noundef %17) #8
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %args.i.i) #8
  %call58 = tail call i32 @register_framebuffer(ptr noundef nonnull %call6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %broadsheet_init.exit.err_free_irq_crit_edge, label %if.end62

broadsheet_init.exit.err_free_irq_crit_edge:      ; preds = %broadsheet_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_irq

if.end62:                                         ; preds = %broadsheet_init.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %379 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr %call6, ptr %driver_data.i.i, align 4
  %call64 = tail call i32 @device_create_file(ptr noundef %dev2, ptr noundef nonnull @dev_attr_loadstore_waveform) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %err_unreg_fb, label %do.end71

do.end71:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %node = getelementptr inbounds %struct.fb_info, ptr %call6, i32 0, i32 1
  %380 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %node, align 4
  %shr = ashr exact i32 %div151, 10
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %381, i32 noundef %shr) #12
  br label %cleanup76

err_unreg_fb:                                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unregister_framebuffer(ptr noundef nonnull %call6) #8
  br label %err_free_irq

err_free_irq:                                     ; preds = %err_unreg_fb, %broadsheet_init.exit.err_free_irq_crit_edge, %if.end52.err_free_irq_crit_edge
  %retval1.0 = phi i32 [ %call53, %if.end52.err_free_irq_crit_edge ], [ %call58, %broadsheet_init.exit.err_free_irq_crit_edge ], [ %call64, %err_unreg_fb ]
  %cleanup = getelementptr inbounds %struct.broadsheet_board, ptr %1, i32 0, i32 3
  %382 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %cleanup, align 4
  tail call void %383(ptr noundef %17) #8
  br label %err_cmap

err_cmap:                                         ; preds = %err_free_irq, %for.cond.preheader.err_cmap_crit_edge
  %retval1.1 = phi i32 [ %call48, %for.cond.preheader.err_cmap_crit_edge ], [ %retval1.0, %err_free_irq ]
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #8
  br label %err_vfree

err_vfree:                                        ; preds = %err_cmap, %do.end31
  %retval1.2 = phi i32 [ %call27, %do.end31 ], [ %retval1.1, %err_cmap ]
  tail call void @vfree(ptr noundef nonnull %call15) #8
  br label %err_fb_rel

err_fb_rel:                                       ; preds = %err_vfree, %if.end9.err_fb_rel_crit_edge
  %retval1.3 = phi i32 [ %retval1.2, %err_vfree ], [ -12, %if.end9.err_fb_rel_crit_edge ]
  tail call void @framebuffer_release(ptr noundef nonnull %call6) #8
  br label %err

err:                                              ; preds = %err_fb_rel, %if.end4.err_crit_edge
  %retval1.4 = phi i32 [ %retval1.3, %err_fb_rel ], [ -12, %if.end4.err_crit_edge ]
  %384 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %1, align 4
  tail call void @module_put(ptr noundef %385) #8
  br label %cleanup76

cleanup76:                                        ; preds = %err, %do.end71, %if.end.cleanup76_crit_edge, %entry.cleanup76_crit_edge
  %retval.0 = phi i32 [ %retval1.4, %err ], [ 0, %do.end71 ], [ -22, %entry.cleanup76_crit_edge ], [ -19, %if.end.cleanup76_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @broadsheetfb_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  %dev2 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  tail call void @device_remove_file(ptr noundef %5, ptr noundef nonnull @dev_attr_loadstore_waveform) #8
  tail call void @unregister_framebuffer(ptr noundef nonnull %1) #8
  tail call void @fb_deferred_io_cleanup(ptr noundef nonnull %1) #8
  %board = getelementptr inbounds %struct.broadsheetfb_par, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %board, align 4
  %cleanup = getelementptr inbounds %struct.broadsheet_board, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cleanup, align 4
  tail call void %9(ptr noundef %3) #8
  %cmap = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %cmap) #8
  %10 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 25
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  tail call void @vfree(ptr noundef %12) #8
  %13 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %board, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  tail call void @module_put(ptr noundef %16) #8
  tail call void @framebuffer_release(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext %reg, i16 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %board = getelementptr inbounds %struct.broadsheetfb_par, ptr %par, i32 0, i32 1
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board, align 4
  %mmio_write = getelementptr inbounds %struct.broadsheet_board, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mmio_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_write, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %par, i32 noundef 1, i16 noundef zeroext 17) #8
  %4 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board, align 4
  %mmio_write2.i = getelementptr inbounds %struct.broadsheet_board, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %mmio_write2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_write2.i, align 4
  tail call void %7(ptr noundef %par, i32 noundef 2, i16 noundef zeroext %reg) #8
  %8 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %board, align 4
  %mmio_write4.i = getelementptr inbounds %struct.broadsheet_board, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %mmio_write4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_write4.i, align 4
  tail call void %11(ptr noundef %par, i32 noundef 2, i16 noundef zeroext %data) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wait_for_rdy.i = getelementptr inbounds %struct.broadsheet_board, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %wait_for_rdy.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wait_for_rdy.i, align 4
  %call.i = tail call i32 %13(ptr noundef %par) #8
  %14 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %board, align 4
  %set_ctl.i = getelementptr inbounds %struct.broadsheet_board, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %set_ctl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_ctl.i, align 4
  tail call void %17(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %18 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %board, align 4
  %set_ctl.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %set_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_ctl.i.i, align 4
  tail call void %21(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext 0) #8
  %22 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %board, align 4
  %set_ctl.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %set_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_ctl.i.i.i, align 4
  tail call void %25(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %26 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %board, align 4
  %set_hdb.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %set_hdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_hdb.i.i.i, align 4
  tail call void %29(ptr noundef %par, i16 noundef zeroext 17) #8
  %30 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %board, align 4
  %set_ctl3.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %set_ctl3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_ctl3.i.i.i, align 4
  tail call void %33(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  %34 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %board, align 4
  %set_ctl3.i = getelementptr inbounds %struct.broadsheet_board, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %set_ctl3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_ctl3.i, align 4
  tail call void %37(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext 1) #8
  %38 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %board, align 4
  %set_ctl.i17.i = getelementptr inbounds %struct.broadsheet_board, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %set_ctl.i17.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_ctl.i17.i, align 4
  tail call void %41(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %42 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %board, align 4
  %set_hdb.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %set_hdb.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_hdb.i.i, align 4
  tail call void %45(ptr noundef %par, i16 noundef zeroext %reg) #8
  %46 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %board, align 4
  %set_ctl3.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %set_ctl3.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %set_ctl3.i.i, align 4
  tail call void %49(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  %50 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %board, align 4
  %set_ctl.i19.i = getelementptr inbounds %struct.broadsheet_board, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %set_ctl.i19.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_ctl.i19.i, align 4
  tail call void %53(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %54 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %board, align 4
  %set_hdb.i20.i = getelementptr inbounds %struct.broadsheet_board, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %set_hdb.i20.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_hdb.i20.i, align 4
  tail call void %57(ptr noundef %par, i16 noundef zeroext %data) #8
  %58 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %board, align 4
  %set_ctl3.i21.i = getelementptr inbounds %struct.broadsheet_board, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %set_ctl3.i21.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_ctl3.i21.i, align 4
  tail call void %61(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  %62 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %board, align 4
  %set_ctl5.i = getelementptr inbounds %struct.broadsheet_board, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %set_ctl5.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %set_ctl5.i, align 4
  tail call void %65(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @broadsheet_read_reg(ptr noundef %par, i16 noundef zeroext %reg) #2 align 64 {
entry:
  %reg.addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %reg, ptr %reg.addr, align 2
  call fastcc void @broadsheet_send_cmdargs(ptr noundef %par, i16 noundef zeroext 16, i32 noundef 1, ptr noundef nonnull %reg.addr)
  %board = getelementptr inbounds %struct.broadsheetfb_par, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %board, align 4
  %wait_for_rdy = getelementptr inbounds %struct.broadsheet_board, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %wait_for_rdy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wait_for_rdy, align 4
  %call = tail call i32 %4(ptr noundef %par) #8
  %5 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %board, align 4
  %mmio_read.i = getelementptr inbounds %struct.broadsheet_board, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %mmio_read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio_read.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call zeroext i16 %8(ptr noundef %par) #8
  br label %broadsheet_get_data.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wait_for_rdy.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %wait_for_rdy.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wait_for_rdy.i.i, align 4
  %call.i.i = tail call i32 %10(ptr noundef %par) #8
  %11 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %board, align 4
  %set_ctl.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %set_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_ctl.i.i, align 4
  tail call void %14(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext 1) #8
  %15 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %board, align 4
  %set_ctl3.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %set_ctl3.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_ctl3.i.i, align 4
  tail call void %18(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %19 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %board, align 4
  %set_ctl5.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %set_ctl5.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_ctl5.i.i, align 4
  tail call void %22(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %23 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %board, align 4
  %get_hdb.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %get_hdb.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_hdb.i.i, align 4
  %call7.i.i = tail call zeroext i16 %26(ptr noundef %par) #8
  %27 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %board, align 4
  %set_ctl9.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %set_ctl9.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_ctl9.i.i, align 4
  tail call void %30(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  %31 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %board, align 4
  %set_ctl11.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %set_ctl11.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_ctl11.i.i, align 4
  tail call void %34(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %broadsheet_get_data.exit

broadsheet_get_data.exit:                         ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i16 [ %call.i, %if.then.i ], [ %call7.i.i, %if.else.i ]
  ret i16 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_deferred_io_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_sys_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @broadsheetfb_write(ptr nocapture noundef readonly %info, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %3 to i32
  %state = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 28
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %smem_len = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %smem_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smem_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp3 = icmp ult i32 %7, %conv
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %count)
  %cmp7 = icmp ult i32 %7, %count
  %spec.store.select = select i1 %cmp7, i32 -27, i32 -28
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %count)
  %err.0 = select i1 %cmp7, i32 -27, i32 0
  %add = add i32 %8, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp11 = icmp ugt i32 %add, %7
  %sub = sub i32 %7, %conv
  %count.addr.1 = select i1 %cmp11, i32 %sub, i32 %8
  %err.1 = select i1 %cmp11, i32 %spec.store.select, i32 %err.0
  %9 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 25
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.1)
  %cmp9.i.i = icmp slt i32 %count.addr.1, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end6
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup.sink.split_crit_edge, label %if.then27.i.i, !prof !106

land.rhs16.i.i.cleanup.sink.split_crit_edge:      ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %cleanup.sink.split

if.then.i.i.i:                                    ; preds = %if.end6
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %count.addr.1, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count.addr.1, i32 -1226833920) #13, !srcloc !107
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !106

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %count.addr.1) #8
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !108
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %count.addr.1) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #8, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count.addr.1, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count.addr.1, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %copy_from_user.exit, label %if.then11.i.i, !prof !106

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %count.addr.1, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup.sink.split

copy_from_user.exit:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool20.not = icmp eq i32 %err.1, 0
  br i1 %tobool20.not, label %17, label %copy_from_user.exit.cleanup.sink.split_crit_edge

copy_from_user.exit.cleanup.sink.split_crit_edge: ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

17:                                               ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv22 = zext i32 %count.addr.1 to i64
  %18 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ppos, align 8
  %add23 = add i64 %19, %conv22
  store i64 %add23, ptr %ppos, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %17, %copy_from_user.exit.cleanup.sink.split_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %count.addr.1, %17 ], [ %err.1, %copy_from_user.exit.cleanup.sink.split_crit_edge ], [ -14, %land.rhs16.i.i.cleanup.sink.split_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %if.then11.i.i ]
  tail call fastcc void @broadsheetfb_dpy_update(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -27, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @broadsheetfb_fillrect(ptr noundef %info, ptr noundef %rect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  tail call void @sys_fillrect(ptr noundef %info, ptr noundef %rect) #8
  tail call fastcc void @broadsheetfb_dpy_update(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @broadsheetfb_copyarea(ptr noundef %info, ptr noundef %area) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  tail call void @sys_copyarea(ptr noundef %info, ptr noundef %area) #8
  tail call fastcc void @broadsheetfb_dpy_update(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @broadsheetfb_imageblit(ptr noundef %info, ptr noundef %image) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %par1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %0 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par1, align 4
  tail call void @sys_imageblit(ptr noundef %info, ptr noundef %image) #8
  tail call fastcc void @broadsheetfb_dpy_update(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @broadsheetfb_dpy_update(ptr noundef %par) unnamed_addr #2 align 64 {
entry:
  %args = alloca [5 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %args) #8
  %io_lock = getelementptr inbounds %struct.broadsheetfb_par, ptr %par, i32 0, i32 6
  %0 = getelementptr inbounds i8, ptr %args, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 2
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 48, ptr %args, align 2
  call fastcc void @broadsheet_send_cmdargs(ptr noundef %par, i16 noundef zeroext 32, i32 noundef 1, ptr noundef nonnull %args)
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 340, ptr %args, align 2
  call fastcc void @broadsheet_send_cmdargs(ptr noundef %par, i16 noundef zeroext 17, i32 noundef 1, ptr noundef nonnull %args)
  %panel_index = getelementptr inbounds %struct.broadsheetfb_par, ptr %par, i32 0, i32 5
  %4 = ptrtoint ptr %panel_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %panel_index, align 4
  %arrayidx3 = getelementptr [3 x %struct.panel_info], ptr @panel_table, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %h = getelementptr [3 x %struct.panel_info], ptr @panel_table, i32 0, i32 %5, i32 1
  %8 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %h, align 4
  %mul = mul i32 %9, %7
  %div = sdiv i32 %mul, 2
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 4
  %12 = getelementptr inbounds %struct.fb_info, ptr %11, i32 0, i32 25
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call fastcc void @broadsheet_burst_write(ptr noundef %par, i32 noundef %div, ptr noundef %14)
  %board.i = getelementptr inbounds %struct.broadsheetfb_par, ptr %par, i32 0, i32 1
  %15 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %board.i, align 4
  %mmio_write.i = getelementptr inbounds %struct.broadsheet_board, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %mmio_write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio_write.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %18(ptr noundef %par, i32 noundef 1, i16 noundef zeroext 35) #8
  br label %broadsheet_send_command.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wait_for_rdy.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %wait_for_rdy.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wait_for_rdy.i.i, align 4
  %call.i.i = tail call i32 %20(ptr noundef %par) #8
  %21 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %board.i, align 4
  %set_ctl.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %set_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_ctl.i.i, align 4
  tail call void %24(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %25 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %board.i, align 4
  %set_ctl.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %set_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_ctl.i.i.i, align 4
  tail call void %28(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext 0) #8
  %29 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %board.i, align 4
  %set_ctl.i.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %set_ctl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_ctl.i.i.i.i, align 4
  tail call void %32(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %33 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %board.i, align 4
  %set_hdb.i.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %set_hdb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_hdb.i.i.i.i, align 4
  tail call void %36(ptr noundef %par, i16 noundef zeroext 35) #8
  %37 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %board.i, align 4
  %set_ctl3.i.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %set_ctl3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_ctl3.i.i.i.i, align 4
  tail call void %40(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  %41 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %board.i, align 4
  %set_ctl3.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %set_ctl3.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_ctl3.i.i, align 4
  tail call void %44(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext 1) #8
  %45 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %board.i, align 4
  %set_ctl5.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %set_ctl5.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_ctl5.i.i, align 4
  tail call void %48(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %broadsheet_send_command.exit

broadsheet_send_command.exit:                     ; preds = %if.else.i, %if.then.i
  %49 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 17152, ptr %args, align 2
  call fastcc void @broadsheet_send_cmdargs(ptr noundef %par, i16 noundef zeroext 51, i32 noundef 1, ptr noundef nonnull %args)
  %50 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %board.i, align 4
  %mmio_write.i23 = getelementptr inbounds %struct.broadsheet_board, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %mmio_write.i23 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio_write.i23, align 4
  %tobool.not.i24 = icmp eq ptr %53, null
  br i1 %tobool.not.i24, label %if.else.i35, label %if.then.i25

if.then.i25:                                      ; preds = %broadsheet_send_command.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %53(ptr noundef %par, i32 noundef 1, i16 noundef zeroext 40) #8
  br label %broadsheet_send_command.exit36

if.else.i35:                                      ; preds = %broadsheet_send_command.exit
  call void @__sanitizer_cov_trace_pc() #10
  %wait_for_rdy.i.i26 = getelementptr inbounds %struct.broadsheet_board, ptr %51, i32 0, i32 2
  %54 = ptrtoint ptr %wait_for_rdy.i.i26 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wait_for_rdy.i.i26, align 4
  %call.i.i27 = tail call i32 %55(ptr noundef %par) #8
  %56 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %board.i, align 4
  %set_ctl.i.i28 = getelementptr inbounds %struct.broadsheet_board, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %set_ctl.i.i28 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set_ctl.i.i28, align 4
  tail call void %59(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %60 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %board.i, align 4
  %set_ctl.i.i.i29 = getelementptr inbounds %struct.broadsheet_board, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %set_ctl.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %set_ctl.i.i.i29, align 4
  tail call void %63(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext 0) #8
  %64 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %board.i, align 4
  %set_ctl.i.i.i.i30 = getelementptr inbounds %struct.broadsheet_board, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %set_ctl.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %set_ctl.i.i.i.i30, align 4
  tail call void %67(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %68 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %board.i, align 4
  %set_hdb.i.i.i.i31 = getelementptr inbounds %struct.broadsheet_board, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %set_hdb.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %set_hdb.i.i.i.i31, align 4
  tail call void %71(ptr noundef %par, i16 noundef zeroext 40) #8
  %72 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %board.i, align 4
  %set_ctl3.i.i.i.i32 = getelementptr inbounds %struct.broadsheet_board, ptr %73, i32 0, i32 6
  %74 = ptrtoint ptr %set_ctl3.i.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %set_ctl3.i.i.i.i32, align 4
  tail call void %75(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  %76 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %board.i, align 4
  %set_ctl3.i.i33 = getelementptr inbounds %struct.broadsheet_board, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %set_ctl3.i.i33 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %set_ctl3.i.i33, align 4
  tail call void %79(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext 1) #8
  %80 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %board.i, align 4
  %set_ctl5.i.i34 = getelementptr inbounds %struct.broadsheet_board, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %set_ctl5.i.i34 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %set_ctl5.i.i34, align 4
  tail call void %83(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %broadsheet_send_command.exit36

broadsheet_send_command.exit36:                   ; preds = %if.else.i35, %if.then.i25
  %84 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %board.i, align 4
  %mmio_write.i38 = getelementptr inbounds %struct.broadsheet_board, ptr %85, i32 0, i32 9
  %86 = ptrtoint ptr %mmio_write.i38 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio_write.i38, align 4
  %tobool.not.i39 = icmp eq ptr %87, null
  br i1 %tobool.not.i39, label %if.else.i50, label %if.then.i40

if.then.i40:                                      ; preds = %broadsheet_send_command.exit36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %87(ptr noundef %par, i32 noundef 1, i16 noundef zeroext 41) #8
  br label %broadsheet_send_command.exit51

if.else.i50:                                      ; preds = %broadsheet_send_command.exit36
  call void @__sanitizer_cov_trace_pc() #10
  %wait_for_rdy.i.i41 = getelementptr inbounds %struct.broadsheet_board, ptr %85, i32 0, i32 2
  %88 = ptrtoint ptr %wait_for_rdy.i.i41 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %wait_for_rdy.i.i41, align 4
  %call.i.i42 = tail call i32 %89(ptr noundef %par) #8
  %90 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %board.i, align 4
  %set_ctl.i.i43 = getelementptr inbounds %struct.broadsheet_board, ptr %91, i32 0, i32 6
  %92 = ptrtoint ptr %set_ctl.i.i43 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %set_ctl.i.i43, align 4
  tail call void %93(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %94 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %board.i, align 4
  %set_ctl.i.i.i44 = getelementptr inbounds %struct.broadsheet_board, ptr %95, i32 0, i32 6
  %96 = ptrtoint ptr %set_ctl.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %set_ctl.i.i.i44, align 4
  tail call void %97(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext 0) #8
  %98 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %board.i, align 4
  %set_ctl.i.i.i.i45 = getelementptr inbounds %struct.broadsheet_board, ptr %99, i32 0, i32 6
  %100 = ptrtoint ptr %set_ctl.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %set_ctl.i.i.i.i45, align 4
  tail call void %101(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %102 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %board.i, align 4
  %set_hdb.i.i.i.i46 = getelementptr inbounds %struct.broadsheet_board, ptr %103, i32 0, i32 7
  %104 = ptrtoint ptr %set_hdb.i.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %set_hdb.i.i.i.i46, align 4
  tail call void %105(ptr noundef %par, i16 noundef zeroext 41) #8
  %106 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %board.i, align 4
  %set_ctl3.i.i.i.i47 = getelementptr inbounds %struct.broadsheet_board, ptr %107, i32 0, i32 6
  %108 = ptrtoint ptr %set_ctl3.i.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %set_ctl3.i.i.i.i47, align 4
  tail call void %109(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  %110 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %board.i, align 4
  %set_ctl3.i.i48 = getelementptr inbounds %struct.broadsheet_board, ptr %111, i32 0, i32 6
  %112 = ptrtoint ptr %set_ctl3.i.i48 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %set_ctl3.i.i48, align 4
  tail call void %113(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext 1) #8
  %114 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %board.i, align 4
  %set_ctl5.i.i49 = getelementptr inbounds %struct.broadsheet_board, ptr %115, i32 0, i32 6
  %116 = ptrtoint ptr %set_ctl5.i.i49 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %set_ctl5.i.i49, align 4
  tail call void %117(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %broadsheet_send_command.exit51

broadsheet_send_command.exit51:                   ; preds = %if.else.i50, %if.then.i40
  %118 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %board.i, align 4
  %wait_for_rdy = getelementptr inbounds %struct.broadsheet_board, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %wait_for_rdy to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %wait_for_rdy, align 4
  %call = tail call i32 %121(ptr noundef %par) #8
  tail call void @mutex_unlock(ptr noundef %io_lock) #8
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %args) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @broadsheet_send_cmdargs(ptr noundef %par, i16 noundef zeroext %cmd, i32 noundef %argc, ptr nocapture noundef readonly %argv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %board = getelementptr inbounds %struct.broadsheetfb_par, ptr %par, i32 0, i32 1
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board, align 4
  %mmio_write = getelementptr inbounds %struct.broadsheet_board, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mmio_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_write, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void %3(ptr noundef %par, i32 noundef 1, i16 noundef zeroext %cmd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp8.i = icmp sgt i32 %argc, 0
  br i1 %cmp8.i, label %if.then.for.body.i_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board, align 4
  %mmio_write2.i = getelementptr inbounds %struct.broadsheet_board, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %mmio_write2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_write2.i, align 4
  %arrayidx.i = getelementptr i16, ptr %argv, i32 %i.09.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  tail call void %7(ptr noundef %par, i32 noundef 2, i16 noundef zeroext %9) #8
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %argc
  br i1 %exitcond.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  %wait_for_rdy.i = getelementptr inbounds %struct.broadsheet_board, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %wait_for_rdy.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wait_for_rdy.i, align 4
  %call.i = tail call i32 %11(ptr noundef %par) #8
  %12 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %board, align 4
  %set_ctl.i = getelementptr inbounds %struct.broadsheet_board, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %set_ctl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_ctl.i, align 4
  tail call void %15(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %16 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %board, align 4
  %set_ctl.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %set_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_ctl.i.i, align 4
  tail call void %19(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext 0) #8
  %20 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %board, align 4
  %set_ctl.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %set_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_ctl.i.i.i, align 4
  tail call void %23(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %24 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %board, align 4
  %set_hdb.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %set_hdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_hdb.i.i.i, align 4
  tail call void %27(ptr noundef %par, i16 noundef zeroext %cmd) #8
  %28 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %board, align 4
  %set_ctl3.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %set_ctl3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_ctl3.i.i.i, align 4
  tail call void %31(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  %32 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %board, align 4
  %set_ctl3.i = getelementptr inbounds %struct.broadsheet_board, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %set_ctl3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_ctl3.i, align 4
  tail call void %35(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp19.i = icmp sgt i32 %argc, 0
  br i1 %cmp19.i, label %if.else.for.body.i10_crit_edge, label %if.else.broadsheet_gpio_send_cmdargs.exit_crit_edge

if.else.broadsheet_gpio_send_cmdargs.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %broadsheet_gpio_send_cmdargs.exit

if.else.for.body.i10_crit_edge:                   ; preds = %if.else
  br label %for.body.i10

for.body.i10:                                     ; preds = %for.body.i10.for.body.i10_crit_edge, %if.else.for.body.i10_crit_edge
  %i.020.i = phi i32 [ %inc.i8, %for.body.i10.for.body.i10_crit_edge ], [ 0, %if.else.for.body.i10_crit_edge ]
  %arrayidx.i7 = getelementptr i16, ptr %argv, i32 %i.020.i
  %36 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.i7, align 2
  %38 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %board, align 4
  %set_ctl.i18.i = getelementptr inbounds %struct.broadsheet_board, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %set_ctl.i18.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_ctl.i18.i, align 4
  tail call void %41(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %42 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %board, align 4
  %set_hdb.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %set_hdb.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_hdb.i.i, align 4
  tail call void %45(ptr noundef %par, i16 noundef zeroext %37) #8
  %46 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %board, align 4
  %set_ctl3.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %set_ctl3.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %set_ctl3.i.i, align 4
  tail call void %49(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  %inc.i8 = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i9 = icmp eq i32 %inc.i8, %argc
  br i1 %exitcond.not.i9, label %for.body.i10.broadsheet_gpio_send_cmdargs.exit_crit_edge, label %for.body.i10.for.body.i10_crit_edge

for.body.i10.for.body.i10_crit_edge:              ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i10

for.body.i10.broadsheet_gpio_send_cmdargs.exit_crit_edge: ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %broadsheet_gpio_send_cmdargs.exit

broadsheet_gpio_send_cmdargs.exit:                ; preds = %for.body.i10.broadsheet_gpio_send_cmdargs.exit_crit_edge, %if.else.broadsheet_gpio_send_cmdargs.exit_crit_edge
  %50 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %board, align 4
  %set_ctl5.i = getelementptr inbounds %struct.broadsheet_board, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %set_ctl5.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_ctl5.i, align 4
  tail call void %53(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %if.end

if.end:                                           ; preds = %broadsheet_gpio_send_cmdargs.exit, %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @broadsheet_burst_write(ptr noundef %par, i32 noundef %size, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %board = getelementptr inbounds %struct.broadsheetfb_par, ptr %par, i32 0, i32 1
  %0 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board, align 4
  %mmio_write = getelementptr inbounds %struct.broadsheet_board, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mmio_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_write, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp15.i = icmp sgt i32 %size, 0
  br i1 %cmp15.i, label %if.then.for.body.i_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %data, i32 %i.016.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %and.i = shl i16 %5, 4
  %or14.i = and i16 %and.i, -3856
  %6 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %board, align 4
  %mmio_write.i = getelementptr inbounds %struct.broadsheet_board, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %mmio_write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio_write.i, align 4
  tail call void %9(ptr noundef %par, i32 noundef 2, i16 noundef zeroext %or14.i) #8
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %size
  br i1 %exitcond.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  %set_ctl.i = getelementptr inbounds %struct.broadsheet_board, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %set_ctl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_ctl.i, align 4
  tail call void %11(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %12 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %board, align 4
  %set_ctl2.i = getelementptr inbounds %struct.broadsheet_board, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %set_ctl2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_ctl2.i, align 4
  tail call void %15(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp34.i = icmp sgt i32 %size, 0
  br i1 %cmp34.i, label %if.else.for.body.i10_crit_edge, label %if.else.broadsheet_gpio_burst_write.exit_crit_edge

if.else.broadsheet_gpio_burst_write.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %broadsheet_gpio_burst_write.exit

if.else.for.body.i10_crit_edge:                   ; preds = %if.else
  br label %for.body.i10

for.body.i10:                                     ; preds = %for.body.i10.for.body.i10_crit_edge, %if.else.for.body.i10_crit_edge
  %i.035.i = phi i32 [ %inc.i8, %for.body.i10.for.body.i10_crit_edge ], [ 0, %if.else.for.body.i10_crit_edge ]
  %16 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %board, align 4
  %set_ctl4.i = getelementptr inbounds %struct.broadsheet_board, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %set_ctl4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_ctl4.i, align 4
  tail call void %19(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %arrayidx.i6 = getelementptr i16, ptr %data, i32 %i.035.i
  %20 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i6, align 2
  %and.i7 = shl i16 %21, 4
  %or33.i = and i16 %and.i7, -3856
  %22 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %board, align 4
  %set_hdb.i = getelementptr inbounds %struct.broadsheet_board, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %set_hdb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_hdb.i, align 4
  tail call void %25(ptr noundef %par, i16 noundef zeroext %or33.i) #8
  %26 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %board, align 4
  %set_ctl14.i = getelementptr inbounds %struct.broadsheet_board, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %set_ctl14.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_ctl14.i, align 4
  tail call void %29(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  %inc.i8 = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i9 = icmp eq i32 %inc.i8, %size
  br i1 %exitcond.not.i9, label %for.body.i10.broadsheet_gpio_burst_write.exit_crit_edge, label %for.body.i10.for.body.i10_crit_edge

for.body.i10.for.body.i10_crit_edge:              ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i10

for.body.i10.broadsheet_gpio_burst_write.exit_crit_edge: ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %broadsheet_gpio_burst_write.exit

broadsheet_gpio_burst_write.exit:                 ; preds = %for.body.i10.broadsheet_gpio_burst_write.exit_crit_edge, %if.else.broadsheet_gpio_burst_write.exit_crit_edge
  %30 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %board, align 4
  %set_ctl16.i = getelementptr inbounds %struct.broadsheet_board, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %set_ctl16.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_ctl16.i, align 4
  tail call void %33(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %if.end

if.end:                                           ; preds = %broadsheet_gpio_burst_write.exit, %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_fillrect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_copyarea(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_imageblit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @broadsheetfb_dpy_deferred_io(ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %pagelist) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fbdefio1 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 19
  %0 = ptrtoint ptr %fbdefio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fbdefio1, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6
  %yres2 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %yres2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %yres2, align 4
  %4 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %var, align 4
  %conv6 = and i32 %5, 65535
  %sub = add nuw nsw i32 %conv6, 4095
  %div = udiv i32 %sub, %conv6
  %pagelist8 = getelementptr inbounds %struct.fb_deferred_io, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %pagelist8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn90 = load ptr, ptr %pagelist8, align 4
  %cmp.not91 = icmp eq ptr %.pn90, %pagelist8
  br i1 %cmp.not91, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %par = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  br label %for.body

for.body:                                         ; preds = %if.end36.for.body_crit_edge, %for.body.lr.ph
  %.pn95 = phi ptr [ %.pn90, %for.body.lr.ph ], [ %.pn, %if.end36.for.body_crit_edge ]
  %y1.094 = phi i16 [ 0, %for.body.lr.ph ], [ %y1.1, %if.end36.for.body_crit_edge ]
  %h.093 = phi i16 [ 0, %for.body.lr.ph ], [ %h.1, %if.end36.for.body_crit_edge ]
  %prev_index.092 = phi i32 [ -1, %for.body.lr.ph ], [ %16, %if.end36.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev_index.092)
  %cmp11 = icmp slt i32 %prev_index.092, 0
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %index = getelementptr inbounds %struct.anon.3, ptr %.pn95, i32 0, i32 2
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %shl = shl i32 %8, 12
  %div14 = udiv i32 %shl, %conv6
  %conv15 = trunc i32 %div14 to i16
  br label %if.end36

if.else:                                          ; preds = %for.body
  %add17 = add nuw i32 %prev_index.092, 1
  %index18 = getelementptr inbounds %struct.anon.3, ptr %.pn95, i32 0, i32 2
  %9 = ptrtoint ptr %index18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add17, i32 %10)
  %cmp19 = icmp eq i32 %add17, %10
  br i1 %cmp19, label %if.then21, label %if.else25

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %conv22 = zext i16 %h.093 to i32
  %add23 = add nuw nsw i32 %div, %conv22
  br label %if.end36

if.else25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %par, align 4
  %add28 = add i16 %y1.094, %h.093
  tail call fastcc void @broadsheetfb_dpy_update_pages(ptr noundef %12, i16 noundef zeroext %y1.094, i16 noundef zeroext %add28)
  %13 = ptrtoint ptr %index18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index18, align 4
  %shl31 = shl i32 %14, 12
  %div33 = udiv i32 %shl31, %conv6
  %conv34 = trunc i32 %div33 to i16
  br label %if.end36

if.end36:                                         ; preds = %if.else25, %if.then21, %if.then
  %h.1.in = phi i32 [ %div, %if.then ], [ %add23, %if.then21 ], [ %div, %if.else25 ]
  %y1.1 = phi i16 [ %conv15, %if.then ], [ %y1.094, %if.then21 ], [ %conv34, %if.else25 ]
  %h.1 = trunc i32 %h.1.in to i16
  %index37 = getelementptr inbounds %struct.anon.3, ptr %.pn95, i32 0, i32 2
  %15 = ptrtoint ptr %index37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index37, align 4
  %17 = ptrtoint ptr %.pn95 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn95, align 4
  %cmp.not = icmp eq ptr %.pn, %pagelist8
  br i1 %cmp.not, label %for.end.loopexit, label %if.end36.for.body_crit_edge

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %h.1.le = trunc i32 %h.1.in to i16
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %h.0.lcssa = phi i16 [ 0, %entry.for.end_crit_edge ], [ %h.1.le, %for.end.loopexit ]
  %y1.0.lcssa = phi i16 [ 0, %entry.for.end_crit_edge ], [ %y1.1, %for.end.loopexit ]
  %conv43 = zext i16 %h.0.lcssa to i32
  %conv44 = and i32 %3, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv44, i32 %conv43)
  %cmp45.not = icmp ugt i32 %conv44, %conv43
  %par50 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 30
  %18 = ptrtoint ptr %par50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %par50, align 4
  br i1 %cmp45.not, label %if.else49, label %if.then47

if.then47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @broadsheetfb_dpy_update(ptr noundef %19)
  br label %if.end63

if.else49:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %add53 = add i16 %y1.0.lcssa, %h.0.lcssa
  %conv56 = zext i16 %add53 to i32
  %20 = tail call i32 @llvm.umin.i32(i32 %conv44, i32 %conv56)
  %conv62 = trunc i32 %20 to i16
  tail call fastcc void @broadsheetfb_dpy_update_pages(ptr noundef %19, i16 noundef zeroext %y1.0.lcssa, i16 noundef zeroext %conv62)
  br label %if.end63

if.end63:                                         ; preds = %if.else49, %if.then47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @broadsheetfb_dpy_update_pages(ptr noundef %par, i16 noundef zeroext %y1, i16 noundef zeroext %y2) unnamed_addr #2 align 64 {
entry:
  %args = alloca [5 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %args) #8
  %0 = getelementptr inbounds [5 x i16], ptr %args, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i16], ptr %args, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i16], ptr %args, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i16], ptr %args, i32 0, i32 4
  %4 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %par, align 4
  %6 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 25
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %io_lock = getelementptr inbounds %struct.broadsheetfb_par, ptr %par, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #8
  %9 = and i16 %y1, -4
  %10 = or i16 %y2, 3
  %11 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 48, ptr %args, align 2
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %0, align 2
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %9, ptr %1, align 2
  %14 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %par, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %var, align 4
  %conv7 = trunc i32 %17 to i16
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv7)
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %2, align 2
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %10, ptr %3, align 2
  call fastcc void @broadsheet_send_cmdargs(ptr noundef %par, i16 noundef zeroext 34, i32 noundef 5, ptr noundef nonnull %args)
  %21 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 340, ptr %args, align 2
  call fastcc void @broadsheet_send_cmdargs(ptr noundef %par, i16 noundef zeroext 17, i32 noundef 1, ptr noundef nonnull %args)
  %conv12 = zext i16 %9 to i32
  %22 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %par, align 4
  %var14 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %var14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %var14, align 4
  %mul = mul i32 %25, %conv12
  %add.ptr = getelementptr i8, ptr %8, i32 %mul
  %conv16 = zext i16 %10 to i32
  %add = sub nsw i32 1, %conv12
  %sub = add nsw i32 %add, %conv16
  %mul21 = mul i32 %25, %sub
  %div45 = lshr exact i32 %mul21, 1
  tail call fastcc void @broadsheet_burst_write(ptr noundef %par, i32 noundef %div45, ptr noundef %add.ptr)
  %board.i = getelementptr inbounds %struct.broadsheetfb_par, ptr %par, i32 0, i32 1
  %26 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %board.i, align 4
  %mmio_write.i = getelementptr inbounds %struct.broadsheet_board, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %mmio_write.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio_write.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %29(ptr noundef %par, i32 noundef 1, i16 noundef zeroext 35) #8
  br label %broadsheet_send_command.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wait_for_rdy.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %wait_for_rdy.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wait_for_rdy.i.i, align 4
  %call.i.i = tail call i32 %31(ptr noundef %par) #8
  %32 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %board.i, align 4
  %set_ctl.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %set_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_ctl.i.i, align 4
  tail call void %35(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %36 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %board.i, align 4
  %set_ctl.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %set_ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_ctl.i.i.i, align 4
  tail call void %39(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext 0) #8
  %40 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %board.i, align 4
  %set_ctl.i.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %set_ctl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_ctl.i.i.i.i, align 4
  tail call void %43(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %44 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %board.i, align 4
  %set_hdb.i.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %set_hdb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %set_hdb.i.i.i.i, align 4
  tail call void %47(ptr noundef %par, i16 noundef zeroext 35) #8
  %48 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %board.i, align 4
  %set_ctl3.i.i.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %set_ctl3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_ctl3.i.i.i.i, align 4
  tail call void %51(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  %52 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %board.i, align 4
  %set_ctl3.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %set_ctl3.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_ctl3.i.i, align 4
  tail call void %55(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext 1) #8
  %56 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %board.i, align 4
  %set_ctl5.i.i = getelementptr inbounds %struct.broadsheet_board, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %set_ctl5.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set_ctl5.i.i, align 4
  tail call void %59(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %broadsheet_send_command.exit

broadsheet_send_command.exit:                     ; preds = %if.else.i, %if.then.i
  %60 = ptrtoint ptr %args to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 17152, ptr %args, align 2
  call fastcc void @broadsheet_send_cmdargs(ptr noundef %par, i16 noundef zeroext 51, i32 noundef 1, ptr noundef nonnull %args)
  %61 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %board.i, align 4
  %mmio_write.i47 = getelementptr inbounds %struct.broadsheet_board, ptr %62, i32 0, i32 9
  %63 = ptrtoint ptr %mmio_write.i47 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio_write.i47, align 4
  %tobool.not.i48 = icmp eq ptr %64, null
  br i1 %tobool.not.i48, label %if.else.i59, label %if.then.i49

if.then.i49:                                      ; preds = %broadsheet_send_command.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %64(ptr noundef %par, i32 noundef 1, i16 noundef zeroext 40) #8
  br label %broadsheet_send_command.exit60

if.else.i59:                                      ; preds = %broadsheet_send_command.exit
  call void @__sanitizer_cov_trace_pc() #10
  %wait_for_rdy.i.i50 = getelementptr inbounds %struct.broadsheet_board, ptr %62, i32 0, i32 2
  %65 = ptrtoint ptr %wait_for_rdy.i.i50 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wait_for_rdy.i.i50, align 4
  %call.i.i51 = tail call i32 %66(ptr noundef %par) #8
  %67 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %board.i, align 4
  %set_ctl.i.i52 = getelementptr inbounds %struct.broadsheet_board, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %set_ctl.i.i52 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %set_ctl.i.i52, align 4
  tail call void %70(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %71 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %board.i, align 4
  %set_ctl.i.i.i53 = getelementptr inbounds %struct.broadsheet_board, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %set_ctl.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %set_ctl.i.i.i53, align 4
  tail call void %74(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext 0) #8
  %75 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %board.i, align 4
  %set_ctl.i.i.i.i54 = getelementptr inbounds %struct.broadsheet_board, ptr %76, i32 0, i32 6
  %77 = ptrtoint ptr %set_ctl.i.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %set_ctl.i.i.i.i54, align 4
  tail call void %78(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %79 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %board.i, align 4
  %set_hdb.i.i.i.i55 = getelementptr inbounds %struct.broadsheet_board, ptr %80, i32 0, i32 7
  %81 = ptrtoint ptr %set_hdb.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %set_hdb.i.i.i.i55, align 4
  tail call void %82(ptr noundef %par, i16 noundef zeroext 40) #8
  %83 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %board.i, align 4
  %set_ctl3.i.i.i.i56 = getelementptr inbounds %struct.broadsheet_board, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %set_ctl3.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %set_ctl3.i.i.i.i56, align 4
  tail call void %86(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  %87 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %board.i, align 4
  %set_ctl3.i.i57 = getelementptr inbounds %struct.broadsheet_board, ptr %88, i32 0, i32 6
  %89 = ptrtoint ptr %set_ctl3.i.i57 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %set_ctl3.i.i57, align 4
  tail call void %90(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext 1) #8
  %91 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %board.i, align 4
  %set_ctl5.i.i58 = getelementptr inbounds %struct.broadsheet_board, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %set_ctl5.i.i58 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %set_ctl5.i.i58, align 4
  tail call void %94(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %broadsheet_send_command.exit60

broadsheet_send_command.exit60:                   ; preds = %if.else.i59, %if.then.i49
  %95 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %board.i, align 4
  %mmio_write.i62 = getelementptr inbounds %struct.broadsheet_board, ptr %96, i32 0, i32 9
  %97 = ptrtoint ptr %mmio_write.i62 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mmio_write.i62, align 4
  %tobool.not.i63 = icmp eq ptr %98, null
  br i1 %tobool.not.i63, label %if.else.i74, label %if.then.i64

if.then.i64:                                      ; preds = %broadsheet_send_command.exit60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %98(ptr noundef %par, i32 noundef 1, i16 noundef zeroext 41) #8
  br label %broadsheet_send_command.exit75

if.else.i74:                                      ; preds = %broadsheet_send_command.exit60
  call void @__sanitizer_cov_trace_pc() #10
  %wait_for_rdy.i.i65 = getelementptr inbounds %struct.broadsheet_board, ptr %96, i32 0, i32 2
  %99 = ptrtoint ptr %wait_for_rdy.i.i65 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %wait_for_rdy.i.i65, align 4
  %call.i.i66 = tail call i32 %100(ptr noundef %par) #8
  %101 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %board.i, align 4
  %set_ctl.i.i67 = getelementptr inbounds %struct.broadsheet_board, ptr %102, i32 0, i32 6
  %103 = ptrtoint ptr %set_ctl.i.i67 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %set_ctl.i.i67, align 4
  tail call void %104(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %105 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %board.i, align 4
  %set_ctl.i.i.i68 = getelementptr inbounds %struct.broadsheet_board, ptr %106, i32 0, i32 6
  %107 = ptrtoint ptr %set_ctl.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %set_ctl.i.i.i68, align 4
  tail call void %108(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext 0) #8
  %109 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %board.i, align 4
  %set_ctl.i.i.i.i69 = getelementptr inbounds %struct.broadsheet_board, ptr %110, i32 0, i32 6
  %111 = ptrtoint ptr %set_ctl.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %set_ctl.i.i.i.i69, align 4
  tail call void %112(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 0) #8
  %113 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %board.i, align 4
  %set_hdb.i.i.i.i70 = getelementptr inbounds %struct.broadsheet_board, ptr %114, i32 0, i32 7
  %115 = ptrtoint ptr %set_hdb.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %set_hdb.i.i.i.i70, align 4
  tail call void %116(ptr noundef %par, i16 noundef zeroext 41) #8
  %117 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %board.i, align 4
  %set_ctl3.i.i.i.i71 = getelementptr inbounds %struct.broadsheet_board, ptr %118, i32 0, i32 6
  %119 = ptrtoint ptr %set_ctl3.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %set_ctl3.i.i.i.i71, align 4
  tail call void %120(ptr noundef %par, i8 noundef zeroext 3, i8 noundef zeroext 1) #8
  %121 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %board.i, align 4
  %set_ctl3.i.i72 = getelementptr inbounds %struct.broadsheet_board, ptr %122, i32 0, i32 6
  %123 = ptrtoint ptr %set_ctl3.i.i72 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %set_ctl3.i.i72, align 4
  tail call void %124(ptr noundef %par, i8 noundef zeroext 2, i8 noundef zeroext 1) #8
  %125 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %board.i, align 4
  %set_ctl5.i.i73 = getelementptr inbounds %struct.broadsheet_board, ptr %126, i32 0, i32 6
  %127 = ptrtoint ptr %set_ctl5.i.i73 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %set_ctl5.i.i73, align 4
  tail call void %128(ptr noundef %par, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  br label %broadsheet_send_command.exit75

broadsheet_send_command.exit75:                   ; preds = %if.else.i74, %if.then.i64
  %129 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %board.i, align 4
  %wait_for_rdy = getelementptr inbounds %struct.broadsheet_board, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %wait_for_rdy to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %wait_for_rdy, align 4
  %call = tail call i32 %132(ptr noundef %par) #8
  tail call void @mutex_unlock(ptr noundef %io_lock) #8
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %args) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @broadsheet_loadstore_waveform(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %len) #2 align 64 {
entry:
  %fw_entry = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %par1 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %par1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry) #8
  %4 = ptrtoint ptr %fw_entry to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry, align 4, !annotation !111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @request_firmware(ptr noundef nonnull %fw_entry, ptr noundef nonnull @.str.26, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw_entry, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %9 = add i32 %8, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 -57345, i32 %9)
  %10 = icmp ult i32 %9, -57345
  br i1 %10, label %do.end12, label %if.end13

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #12
  br label %err_fw

if.end13:                                         ; preds = %if.end5
  %io_lock = getelementptr inbounds %struct.broadsheetfb_par, ptr %3, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #8
  %11 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw_entry, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %call15 = call fastcc i32 @broadsheet_store_waveform_to_spiflash(ptr noundef %3, ptr noundef %14, i32 noundef %16)
  call void @mutex_unlock(ptr noundef %io_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp17 = icmp slt i32 %call15, 0
  br i1 %cmp17, label %do.end21, label %do.end25

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #12
  br label %err_fw

do.end25:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw_entry, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %20) #12
  br label %err_fw

err_fw:                                           ; preds = %do.end25, %do.end21, %do.end12
  %err.0 = phi i32 [ -22, %do.end12 ], [ %call15, %do.end21 ], [ %len, %do.end25 ]
  %21 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %22) #8
  br label %cleanup

cleanup:                                          ; preds = %err_fw, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call2, %do.end ], [ %err.0, %err_fw ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @broadsheet_store_waveform_to_spiflash(ptr noundef %par, ptr nocapture noundef readonly %wfm, i32 noundef %wfm_size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 6, i16 noundef zeroext 0) #8
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 16, i16 noundef zeroext 4) #8
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 18, i16 noundef zeroext 22857) #8
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 20, i16 noundef zeroext 64) #8
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 22, i16 noundef zeroext 0) #8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %entry
  %retry_count.0.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %retry_count.0.i.i)
  %exitcond.i.i = icmp eq i32 %retry_count.0.i.i, 101
  br i1 %exitcond.i.i, label %do.body.i.i.failout_crit_edge, label %if.end.i.i

do.body.i.i.failout_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %failout

if.end.i.i:                                       ; preds = %do.body.i.i
  %inc.i.i = add nuw nsw i32 %retry_count.0.i.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #8
  %call.i.i.i = tail call zeroext i16 @broadsheet_read_reg(ptr noundef %par, i16 noundef zeroext 10) #8
  %1 = and i16 %call.i.i.i, 1
  %tobool.not.i.i = icmp eq i16 %1, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.do.body.i.i_crit_edge, label %if.end.i

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

if.end.i:                                         ; preds = %if.end.i.i
  %call1.i.i = tail call zeroext i16 @broadsheet_read_reg(ptr noundef %par, i16 noundef zeroext 6) #8
  %2 = and i16 %call1.i.i, -2
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 6, i16 noundef zeroext %2) #8
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 262, i16 noundef zeroext 515) #8
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 516, i16 noundef zeroext 25) #8
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 520, i16 noundef zeroext 1) #8
  %call.i.i = tail call zeroext i16 @broadsheet_read_reg(ptr noundef %par, i16 noundef zeroext 516) #8
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 520, i16 noundef zeroext 0) #8
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 516, i16 noundef zeroext 0) #8
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 516, i16 noundef zeroext 25) #8
  %call.i19.i = tail call fastcc i32 @broadsheet_spiflash_op_on_address(ptr noundef %par, i8 noundef zeroext -85, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call.i19.i, 0
  br i1 %tobool.not.i20.i, label %if.end.i21.i, label %if.end.i.broadsheet_setup_for_wfm_write.exit.thread16_crit_edge

if.end.i.broadsheet_setup_for_wfm_write.exit.thread16_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %broadsheet_setup_for_wfm_write.exit.thread16

if.end.i21.i:                                     ; preds = %if.end.i
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 514, i16 noundef zeroext 0) #8
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %if.end.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end.i21.i
  %timeout.addr.0.i.i.i.i = phi i32 [ 100, %if.end.i21.i ], [ %dec.i.i.i.i, %if.end.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %call.i.i.i.i = tail call zeroext i16 @broadsheet_read_reg(ptr noundef %par, i16 noundef zeroext 518) #8
  %3 = and i16 %call.i.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.i.i.i.i = icmp eq i16 %3, 0
  br i1 %cmp.i.i.i.i, label %if.end4.i.i, label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.body.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #8
  %dec.i.i.i.i = add nsw i32 %timeout.addr.0.i.i.i.i, -1
  %tobool.not.i.i.i.i = icmp eq i32 %timeout.addr.0.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i.broadsheet_setup_for_wfm_write.exit.thread16_crit_edge, label %if.end.i.i.i.i.do.body.i.i.i.i_crit_edge

if.end.i.i.i.i.do.body.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

if.end.i.i.i.i.broadsheet_setup_for_wfm_write.exit.thread16_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %broadsheet_setup_for_wfm_write.exit.thread16

if.end4.i.i:                                      ; preds = %do.body.i.i.i.i
  %call1.i.i.i = tail call zeroext i16 @broadsheet_read_reg(ptr noundef %par, i16 noundef zeroext 512) #8
  %5 = and i16 %call1.i.i.i, 254
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %5)
  %switch.i.i = icmp eq i16 %5, 16
  br i1 %switch.i.i, label %if.end, label %do.end.i22.i

do.end.i22.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par, align 4
  %device.i.i = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.38) #12
  br label %broadsheet_setup_for_wfm_write.exit.thread16

broadsheet_setup_for_wfm_write.exit.thread16:     ; preds = %do.end.i22.i, %if.end.i.i.i.i.broadsheet_setup_for_wfm_write.exit.thread16_crit_edge, %if.end.i.broadsheet_setup_for_wfm_write.exit.thread16_crit_edge
  %err.0.i.i.ph = phi i32 [ -22, %do.end.i22.i ], [ %call.i19.i, %if.end.i.broadsheet_setup_for_wfm_write.exit.thread16_crit_edge ], [ -110, %if.end.i.i.i.i.broadsheet_setup_for_wfm_write.exit.thread16_crit_edge ]
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 520, i16 noundef zeroext 0) #8
  br label %failout

if.end:                                           ; preds = %if.end4.i.i
  %conv2.i.mask.i.i = and i16 %call1.i.i.i, 255
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 520, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %conv2.i.mask.i.i)
  %cond13.i = icmp eq i16 %conv2.i.mask.i.i, 16
  %..i = select i1 %cond13.i, i32 32768, i32 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wfm_size)
  %tobool.not13.i = icmp eq i32 %wfm_size, 0
  br i1 %tobool.not13.i, label %if.end.failout_crit_edge, label %while.body.lr.ph.i

if.end.failout_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %failout

while.body.lr.ph.i:                               ; preds = %if.end
  %sub.i = add nsw i32 %..i, -1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i9.while.body.i_crit_edge, %while.body.lr.ph.i
  %bytecount.addr.015.i = phi i32 [ %wfm_size, %while.body.lr.ph.i ], [ %sub7.i, %if.end.i9.while.body.i_crit_edge ]
  %offset.014.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add6.i, %if.end.i9.while.body.i_crit_edge ]
  %add.i = add i32 %offset.014.i, 2182
  %add2.i = add i32 %add.i, %sub.i
  %10 = srem i32 %add2.i, %..i
  %sub3.i = sub i32 %sub.i, %10
  %11 = tail call i32 @llvm.smin.i32(i32 %bytecount.addr.015.i, i32 %sub3.i) #8
  %add.ptr.i = getelementptr i8, ptr %wfm, i32 %offset.014.i
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %..i, i32 noundef 3520) #11
  %tobool.not.i.i5 = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i5, label %while.body.i.failout_crit_edge, label %if.end.i.i6

while.body.i.failout_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %failout

if.end.i.i6:                                      ; preds = %while.body.i
  %12 = srem i32 %add.i, %..i
  %mul.i.i = sub i32 %add.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i.i, label %if.end.i.i6.if.end6.i.i_crit_edge, label %if.then1.i.i

if.end.i.i6.if.end6.i.i_crit_edge:                ; preds = %if.end.i.i6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i6
  %call2.i.i = tail call fastcc i32 @broadsheet_spiflash_read_range(ptr noundef %par, i32 noundef %mul.i.i, i32 noundef %add.i, ptr noundef nonnull %call9.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.then1.i.i.if.end6.i.i_crit_edge, label %if.then1.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge

if.then1.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge: ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %broadsheet_spiflash_rewrite_sector.exit.thread3.i

if.then1.i.i.if.end6.i.i_crit_edge:               ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then1.i.i.if.end6.i.i_crit_edge, %if.end.i.i6.if.end6.i.i_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 %add.i
  %13 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr.i, i32 %11)
  %add.i.i = add i32 %11, %add.i
  %rem.i.i = srem i32 %add.i.i, %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool7.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end6.i.i.if.end14.i.i_crit_edge, label %if.then8.i.i

if.end6.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i

if.then8.i.i:                                     ; preds = %if.end6.i.i
  %sub.i.i = sub i32 %..i, %rem.i.i
  %add.ptr9.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 %rem.i.i
  %call10.i.i = tail call fastcc i32 @broadsheet_spiflash_read_range(ptr noundef %par, i32 noundef %rem.i.i, i32 noundef %sub.i.i, ptr noundef %add.ptr9.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then8.i.i.if.end14.i.i_crit_edge, label %if.then8.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge

if.then8.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %broadsheet_spiflash_rewrite_sector.exit.thread3.i

if.then8.i.i.if.end14.i.i_crit_edge:              ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then8.i.i.if.end14.i.i_crit_edge, %if.end6.i.i.if.end14.i.i_crit_edge
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 520, i16 noundef zeroext 1) #8
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 514, i16 noundef zeroext 262) #8
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %if.end14.i.i
  %timeout.addr.0.i.i.i.i.i.i = phi i32 [ 100, %if.end14.i.i ], [ %dec.i.i.i.i.i.i, %if.end.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge ]
  %call.i.i.i.i.i.i = tail call zeroext i16 @broadsheet_read_reg(ptr noundef %par, i16 noundef zeroext 518) #8
  %14 = and i16 %call.i.i.i.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.i.i.i.i.i.i = icmp eq i16 %14, 0
  br i1 %cmp.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.broadsheet_spiflash_write_control.exit.i.i.i_crit_edge, label %if.end.i.i.i.i.i.i

do.body.i.i.i.i.i.i.broadsheet_spiflash_write_control.exit.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %broadsheet_spiflash_write_control.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.body.i.i.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #8
  %dec.i.i.i.i.i.i = add nsw i32 %timeout.addr.0.i.i.i.i.i.i, -1
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %timeout.addr.0.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.broadsheet_spiflash_write_control.exit.i.i.i_crit_edge, label %if.end.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

if.end.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i

if.end.i.i.i.i.i.i.broadsheet_spiflash_write_control.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %broadsheet_spiflash_write_control.exit.i.i.i

broadsheet_spiflash_write_control.exit.i.i.i:     ; preds = %if.end.i.i.i.i.i.i.broadsheet_spiflash_write_control.exit.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.broadsheet_spiflash_write_control.exit.i.i.i_crit_edge
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 520, i16 noundef zeroext 0) #8
  %call1.i.i.i7 = tail call fastcc i32 @broadsheet_spiflash_op_on_address(ptr noundef %par, i8 noundef zeroext -40, i32 noundef %mul.i.i) #8
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 520, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i7)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i7, 0
  br i1 %tobool.not.i.i.i, label %broadsheet_spiflash_erase_sector.exit.i.i, label %broadsheet_spiflash_write_control.exit.i.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge

broadsheet_spiflash_write_control.exit.i.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge: ; preds = %broadsheet_spiflash_write_control.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %broadsheet_spiflash_rewrite_sector.exit.thread3.i

broadsheet_spiflash_erase_sector.exit.i.i:        ; preds = %broadsheet_spiflash_write_control.exit.i.i.i
  %call2.i.i.i = tail call fastcc i32 @broadsheet_spiflash_wait_for_status(ptr noundef %par, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool16.not.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool16.not.i.i, label %broadsheet_spiflash_erase_sector.exit.i.i.for.body.i.i.i_crit_edge, label %broadsheet_spiflash_erase_sector.exit.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge

broadsheet_spiflash_erase_sector.exit.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge: ; preds = %broadsheet_spiflash_erase_sector.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %broadsheet_spiflash_rewrite_sector.exit.thread3.i

broadsheet_spiflash_erase_sector.exit.i.i.for.body.i.i.i_crit_edge: ; preds = %broadsheet_spiflash_erase_sector.exit.i.i
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %broadsheet_spiflash_write_page.exit.i.i.i
  %add1.i.i.i = add nuw nsw i32 %i.011.i.i.i, 256
  %cmp.i.i.i = icmp ult i32 %add1.i.i.i, %..i
  br i1 %cmp.i.i.i, label %for.cond.i.i.i.for.body.i.i.i_crit_edge, label %if.end.i9

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %broadsheet_spiflash_erase_sector.exit.i.i.for.body.i.i.i_crit_edge
  %i.011.i.i.i = phi i32 [ %add1.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %broadsheet_spiflash_erase_sector.exit.i.i.for.body.i.i.i_crit_edge ]
  %add.i.i.i = add i32 %i.011.i.i.i, %mul.i.i
  %arrayidx.i.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 %i.011.i.i.i
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 520, i16 noundef zeroext 1) #8
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 514, i16 noundef zeroext 262) #8
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %if.end.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %for.body.i.i.i
  %timeout.addr.0.i.i.i.i.i.i.i = phi i32 [ 100, %for.body.i.i.i ], [ %dec.i.i.i.i.i.i.i, %if.end.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge ]
  %call.i.i.i.i.i.i.i = tail call zeroext i16 @broadsheet_read_reg(ptr noundef %par, i16 noundef zeroext 518) #8
  %16 = and i16 %call.i.i.i.i.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.i.i.i.i.i.i.i = icmp eq i16 %16, 0
  br i1 %cmp.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.broadsheet_spiflash_write_control.exit.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.broadsheet_spiflash_write_control.exit.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %broadsheet_spiflash_write_control.exit.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %do.body.i.i.i.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #8
  %dec.i.i.i.i.i.i.i = add nsw i32 %timeout.addr.0.i.i.i.i.i.i.i, -1
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %timeout.addr.0.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.broadsheet_spiflash_write_control.exit.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

if.end.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i

if.end.i.i.i.i.i.i.i.broadsheet_spiflash_write_control.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %broadsheet_spiflash_write_control.exit.i.i.i.i

broadsheet_spiflash_write_control.exit.i.i.i.i:   ; preds = %if.end.i.i.i.i.i.i.i.broadsheet_spiflash_write_control.exit.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.i.broadsheet_spiflash_write_control.exit.i.i.i.i_crit_edge
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 520, i16 noundef zeroext 0) #8
  %call1.i.i.i.i = tail call fastcc i32 @broadsheet_spiflash_op_on_address(ptr noundef %par, i8 noundef zeroext 2, i32 noundef %add.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i8 = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i8, label %broadsheet_spiflash_write_control.exit.i.i.i.i.for.body.i.i.i.i_crit_edge, label %broadsheet_spiflash_write_control.exit.i.i.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge

broadsheet_spiflash_write_control.exit.i.i.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge: ; preds = %broadsheet_spiflash_write_control.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %broadsheet_spiflash_rewrite_sector.exit.thread3.i

broadsheet_spiflash_write_control.exit.i.i.i.i.for.body.i.i.i.i_crit_edge: ; preds = %broadsheet_spiflash_write_control.exit.i.i.i.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %broadsheet_spiflash_write_control.exit.i.i.i.i.for.body.i.i.i.i_crit_edge
  %i.017.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %broadsheet_spiflash_write_control.exit.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr i8, ptr %arrayidx.i.i.i, i32 %i.017.i.i.i.i
  %18 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv.i.i.i.i.i = zext i8 %19 to i16
  %or.i.i.i.i.i = or i16 %conv.i.i.i.i.i, 256
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 514, i16 noundef zeroext %or.i.i.i.i.i) #8
  br label %do.body.i.i.i.i54.i.i

do.body.i.i.i.i54.i.i:                            ; preds = %if.end.i.i.i.i57.i.i.do.body.i.i.i.i54.i.i_crit_edge, %for.body.i.i.i.i
  %timeout.addr.0.i.i.i.i51.i.i = phi i32 [ 100, %for.body.i.i.i.i ], [ %dec.i.i.i.i55.i.i, %if.end.i.i.i.i57.i.i.do.body.i.i.i.i54.i.i_crit_edge ]
  %call.i.i.i.i52.i.i = tail call zeroext i16 @broadsheet_read_reg(ptr noundef %par, i16 noundef zeroext 518) #8
  %20 = and i16 %call.i.i.i.i52.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.i.i.i.i53.i.i = icmp eq i16 %20, 0
  br i1 %cmp.i.i.i.i53.i.i, label %for.inc.i.i.i.i, label %if.end.i.i.i.i57.i.i

if.end.i.i.i.i57.i.i:                             ; preds = %do.body.i.i.i.i54.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #8
  %dec.i.i.i.i55.i.i = add nsw i32 %timeout.addr.0.i.i.i.i51.i.i, -1
  %tobool.not.i.i.i.i56.i.i = icmp eq i32 %timeout.addr.0.i.i.i.i51.i.i, 0
  br i1 %tobool.not.i.i.i.i56.i.i, label %if.end.i.i.i.i57.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge, label %if.end.i.i.i.i57.i.i.do.body.i.i.i.i54.i.i_crit_edge

if.end.i.i.i.i57.i.i.do.body.i.i.i.i54.i.i_crit_edge: ; preds = %if.end.i.i.i.i57.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i54.i.i

if.end.i.i.i.i57.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge: ; preds = %if.end.i.i.i.i57.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %broadsheet_spiflash_rewrite_sector.exit.thread3.i

for.inc.i.i.i.i:                                  ; preds = %do.body.i.i.i.i54.i.i
  %inc.i.i.i.i = add nuw nsw i32 %i.017.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 256
  br i1 %exitcond.not.i.i.i.i, label %broadsheet_spiflash_write_page.exit.i.i.i, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i

broadsheet_spiflash_write_page.exit.i.i.i:        ; preds = %for.inc.i.i.i.i
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 520, i16 noundef zeroext 0) #8
  %call6.i.i.i.i = tail call fastcc i32 @broadsheet_spiflash_wait_for_status(ptr noundef %par, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i.i)
  %tobool.not.i58.i.i = icmp eq i32 %call6.i.i.i.i, 0
  br i1 %tobool.not.i58.i.i, label %for.cond.i.i.i, label %broadsheet_spiflash_write_page.exit.i.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge

broadsheet_spiflash_write_page.exit.i.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge: ; preds = %broadsheet_spiflash_write_page.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %broadsheet_spiflash_rewrite_sector.exit.thread3.i

broadsheet_spiflash_rewrite_sector.exit.thread3.i: ; preds = %broadsheet_spiflash_write_page.exit.i.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge, %if.end.i.i.i.i57.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge, %broadsheet_spiflash_write_control.exit.i.i.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge, %broadsheet_spiflash_erase_sector.exit.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge, %broadsheet_spiflash_write_control.exit.i.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge, %if.then8.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge, %if.then1.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge
  %err.0.i.ph.i = phi i32 [ -110, %if.end.i.i.i.i57.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge ], [ %call6.i.i.i.i, %broadsheet_spiflash_write_page.exit.i.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge ], [ %call1.i.i.i.i, %broadsheet_spiflash_write_control.exit.i.i.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge ], [ %call1.i.i.i7, %broadsheet_spiflash_write_control.exit.i.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge ], [ %call2.i.i.i, %broadsheet_spiflash_erase_sector.exit.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge ], [ %call10.i.i, %if.then8.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge ], [ %call2.i.i, %if.then1.i.i.broadsheet_spiflash_rewrite_sector.exit.thread3.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #8
  br label %failout

if.end.i9:                                        ; preds = %for.cond.i.i.i
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #8
  %add6.i = add i32 %11, %offset.014.i
  %sub7.i = sub i32 %bytecount.addr.015.i, %11
  %tobool.not.i = icmp eq i32 %sub7.i, 0
  br i1 %tobool.not.i, label %if.end.i9.failout_crit_edge, label %if.end.i9.while.body.i_crit_edge

if.end.i9.while.body.i_crit_edge:                 ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end.i9.failout_crit_edge:                      ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %failout

failout:                                          ; preds = %if.end.i9.failout_crit_edge, %broadsheet_spiflash_rewrite_sector.exit.thread3.i, %while.body.i.failout_crit_edge, %if.end.failout_crit_edge, %broadsheet_setup_for_wfm_write.exit.thread16, %do.body.i.i.failout_crit_edge
  %initial_sfmcd.015 = phi i16 [ %call.i.i, %broadsheet_setup_for_wfm_write.exit.thread16 ], [ %call.i.i, %if.end.failout_crit_edge ], [ %call.i.i, %broadsheet_spiflash_rewrite_sector.exit.thread3.i ], [ %call.i.i, %while.body.i.failout_crit_edge ], [ %call.i.i, %if.end.i9.failout_crit_edge ], [ 0, %do.body.i.i.failout_crit_edge ]
  %err.0 = phi i32 [ %err.0.i.i.ph, %broadsheet_setup_for_wfm_write.exit.thread16 ], [ 0, %if.end.failout_crit_edge ], [ %err.0.i.ph.i, %broadsheet_spiflash_rewrite_sector.exit.thread3.i ], [ 0, %if.end.i9.failout_crit_edge ], [ -12, %while.body.i.failout_crit_edge ], [ -110, %do.body.i.i.failout_crit_edge ]
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 516, i16 noundef zeroext %initial_sfmcd.015)
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @broadsheet_spiflash_op_on_address(ptr noundef %par, i8 noundef zeroext %op, i32 noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 520, i16 noundef zeroext 1)
  %conv.i = zext i8 %op to i16
  %or.i = or i16 %conv.i, 256
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 514, i16 noundef zeroext %or.i) #8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %entry
  %timeout.addr.0.i.i = phi i32 [ 100, %entry ], [ %dec.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %call.i.i = tail call zeroext i16 @broadsheet_read_reg(ptr noundef %par, i16 noundef zeroext 518) #8
  %0 = and i16 %call.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %cmp.i.i = icmp eq i16 %0, 0
  br i1 %cmp.i.i, label %for.body.preheader, label %if.end.i.i

for.body.preheader:                               ; preds = %do.body.i.i
  %shr = lshr i32 %addr, 16
  %1 = trunc i32 %shr to i16
  %conv.i15 = and i16 %1, 255
  %or.i16 = or i16 %conv.i15, 256
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 514, i16 noundef zeroext %or.i16) #8
  br label %do.body.i.i20

if.end.i.i:                                       ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #8
  %dec.i.i = add nsw i32 %timeout.addr.0.i.i, -1
  %tobool.not.i.i = icmp eq i32 %timeout.addr.0.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i.i20:                                    ; preds = %if.end.i.i23.do.body.i.i20_crit_edge, %for.body.preheader
  %timeout.addr.0.i.i17 = phi i32 [ 100, %for.body.preheader ], [ %dec.i.i21, %if.end.i.i23.do.body.i.i20_crit_edge ]
  %call.i.i18 = tail call zeroext i16 @broadsheet_read_reg(ptr noundef %par, i16 noundef zeroext 518) #8
  %3 = and i16 %call.i.i18, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.i.i19 = icmp eq i16 %3, 0
  br i1 %cmp.i.i19, label %for.inc, label %if.end.i.i23

if.end.i.i23:                                     ; preds = %do.body.i.i20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #8
  %dec.i.i21 = add nsw i32 %timeout.addr.0.i.i17, -1
  %tobool.not.i.i22 = icmp eq i32 %timeout.addr.0.i.i17, 0
  br i1 %tobool.not.i.i22, label %if.end.i.i23.cleanup_crit_edge, label %if.end.i.i23.do.body.i.i20_crit_edge

if.end.i.i23.do.body.i.i20_crit_edge:             ; preds = %if.end.i.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i20

if.end.i.i23.cleanup_crit_edge:                   ; preds = %if.end.i.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %do.body.i.i20
  %5 = trunc i32 %addr to i16
  %6 = lshr i16 %5, 8
  %or.i16.1 = or i16 %6, 256
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 514, i16 noundef zeroext %or.i16.1) #8
  br label %do.body.i.i20.1

do.body.i.i20.1:                                  ; preds = %if.end.i.i23.1.do.body.i.i20.1_crit_edge, %for.inc
  %timeout.addr.0.i.i17.1 = phi i32 [ 100, %for.inc ], [ %dec.i.i21.1, %if.end.i.i23.1.do.body.i.i20.1_crit_edge ]
  %call.i.i18.1 = tail call zeroext i16 @broadsheet_read_reg(ptr noundef %par, i16 noundef zeroext 518) #8
  %7 = and i16 %call.i.i18.1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.i.i19.1 = icmp eq i16 %7, 0
  br i1 %cmp.i.i19.1, label %for.inc.1, label %if.end.i.i23.1

if.end.i.i23.1:                                   ; preds = %do.body.i.i20.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #8
  %dec.i.i21.1 = add nsw i32 %timeout.addr.0.i.i17.1, -1
  %tobool.not.i.i22.1 = icmp eq i32 %timeout.addr.0.i.i17.1, 0
  br i1 %tobool.not.i.i22.1, label %if.end.i.i23.1.cleanup_crit_edge, label %if.end.i.i23.1.do.body.i.i20.1_crit_edge

if.end.i.i23.1.do.body.i.i20.1_crit_edge:         ; preds = %if.end.i.i23.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i20.1

if.end.i.i23.1.cleanup_crit_edge:                 ; preds = %if.end.i.i23.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.1:                                        ; preds = %do.body.i.i20.1
  %9 = trunc i32 %addr to i16
  %conv.i15.2 = and i16 %9, 255
  %or.i16.2 = or i16 %conv.i15.2, 256
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 514, i16 noundef zeroext %or.i16.2) #8
  br label %do.body.i.i20.2

do.body.i.i20.2:                                  ; preds = %if.end.i.i23.2.do.body.i.i20.2_crit_edge, %for.inc.1
  %timeout.addr.0.i.i17.2 = phi i32 [ 100, %for.inc.1 ], [ %dec.i.i21.2, %if.end.i.i23.2.do.body.i.i20.2_crit_edge ]
  %call.i.i18.2 = tail call zeroext i16 @broadsheet_read_reg(ptr noundef %par, i16 noundef zeroext 518) #8
  %10 = and i16 %call.i.i18.2, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.i.i19.2 = icmp eq i16 %10, 0
  br i1 %cmp.i.i19.2, label %do.body.i.i20.2.cleanup_crit_edge, label %if.end.i.i23.2

do.body.i.i20.2.cleanup_crit_edge:                ; preds = %do.body.i.i20.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i23.2:                                   ; preds = %do.body.i.i20.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #8
  %dec.i.i21.2 = add nsw i32 %timeout.addr.0.i.i17.2, -1
  %tobool.not.i.i22.2 = icmp eq i32 %timeout.addr.0.i.i17.2, 0
  br i1 %tobool.not.i.i22.2, label %if.end.i.i23.2.cleanup_crit_edge, label %if.end.i.i23.2.do.body.i.i20.2_crit_edge

if.end.i.i23.2.do.body.i.i20.2_crit_edge:         ; preds = %if.end.i.i23.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i20.2

if.end.i.i23.2.cleanup_crit_edge:                 ; preds = %if.end.i.i23.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i23.2.cleanup_crit_edge, %do.body.i.i20.2.cleanup_crit_edge, %if.end.i.i23.1.cleanup_crit_edge, %if.end.i.i23.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.end.i.i23.2.cleanup_crit_edge ], [ 0, %do.body.i.i20.2.cleanup_crit_edge ], [ -110, %if.end.i.i23.1.cleanup_crit_edge ], [ -110, %if.end.i.i23.cleanup_crit_edge ], [ -110, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @broadsheet_spiflash_read_range(ptr noundef %par, i32 noundef %addr, i32 noundef %size, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @broadsheet_spiflash_op_on_address(ptr noundef %par, i8 noundef zeroext 3, i32 noundef %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.failout_crit_edge

entry.failout_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %failout

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp14 = icmp sgt i32 %size, 0
  br i1 %cmp14, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.failout_crit_edge

for.cond.preheader.failout_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %failout

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %data, i32 %i.015
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 514, i16 noundef zeroext 0) #8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %for.body
  %timeout.addr.0.i.i = phi i32 [ 100, %for.body ], [ %dec.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %call.i.i = tail call zeroext i16 @broadsheet_read_reg(ptr noundef %par, i16 noundef zeroext 518) #8
  %0 = and i16 %call.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %cmp.i.i = icmp eq i16 %0, 0
  br i1 %cmp.i.i, label %for.inc, label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #8
  %dec.i.i = add nsw i32 %timeout.addr.0.i.i, -1
  %tobool.not.i.i = icmp eq i32 %timeout.addr.0.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.failout_crit_edge, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

if.end.i.i.failout_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %failout

for.inc:                                          ; preds = %do.body.i.i
  %call1.i = tail call zeroext i16 @broadsheet_read_reg(ptr noundef %par, i16 noundef zeroext 512) #8
  %conv2.i = trunc i16 %call1.i to i8
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv2.i, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.inc.failout_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.failout_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %failout

failout:                                          ; preds = %for.inc.failout_crit_edge, %if.end.i.i.failout_crit_edge, %for.cond.preheader.failout_crit_edge, %entry.failout_crit_edge
  %err.1 = phi i32 [ %call, %entry.failout_crit_edge ], [ 0, %for.cond.preheader.failout_crit_edge ], [ -110, %if.end.i.i.failout_crit_edge ], [ 0, %for.inc.failout_crit_edge ]
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 520, i16 noundef zeroext 0)
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @broadsheet_spiflash_wait_for_status(ptr noundef %par, i32 noundef %timeout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %while.body.preheader.do.body_crit_edge, %entry
  %timeout.addr.0 = phi i32 [ %timeout, %entry ], [ %dec9, %while.body.preheader.do.body_crit_edge ]
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 520, i16 noundef zeroext 1)
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 514, i16 noundef zeroext 261) #8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %do.body
  %timeout.addr.0.i.i = phi i32 [ 100, %do.body ], [ %dec.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %call.i.i = tail call zeroext i16 @broadsheet_read_reg(ptr noundef %par, i16 noundef zeroext 518) #8
  %0 = and i16 %call.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %cmp.i.i = icmp eq i16 %0, 0
  br i1 %cmp.i.i, label %if.end, label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #8
  %dec.i.i = add nsw i32 %timeout.addr.0.i.i, -1
  %tobool.not.i.i = icmp eq i32 %timeout.addr.0.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.failout_crit_edge, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

if.end.i.i.failout_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %failout

if.end:                                           ; preds = %do.body.i.i
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 514, i16 noundef zeroext 0) #8
  br label %do.body.i.i25

do.body.i.i25:                                    ; preds = %if.end.i.i28.do.body.i.i25_crit_edge, %if.end
  %timeout.addr.0.i.i22 = phi i32 [ 100, %if.end ], [ %dec.i.i26, %if.end.i.i28.do.body.i.i25_crit_edge ]
  %call.i.i23 = tail call zeroext i16 @broadsheet_read_reg(ptr noundef %par, i16 noundef zeroext 518) #8
  %2 = and i16 %call.i.i23, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp.i.i24 = icmp eq i16 %2, 0
  br i1 %cmp.i.i24, label %if.end4, label %if.end.i.i28

if.end.i.i28:                                     ; preds = %do.body.i.i25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #8
  %dec.i.i26 = add nsw i32 %timeout.addr.0.i.i22, -1
  %tobool.not.i.i27 = icmp eq i32 %timeout.addr.0.i.i22, 0
  br i1 %tobool.not.i.i27, label %if.end.i.i28.failout_crit_edge, label %if.end.i.i28.do.body.i.i25_crit_edge

if.end.i.i28.do.body.i.i25_crit_edge:             ; preds = %if.end.i.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i25

if.end.i.i28.failout_crit_edge:                   ; preds = %if.end.i.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %failout

if.end4:                                          ; preds = %do.body.i.i25
  %call1.i = tail call zeroext i16 @broadsheet_read_reg(ptr noundef %par, i16 noundef zeroext 512) #8
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 520, i16 noundef zeroext 0)
  %4 = and i16 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool5.not = icmp eq i16 %4, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %while.body.preheader

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.preheader:                             ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #8
  %dec9 = add i32 %timeout.addr.0, -1
  %tobool10.not = icmp eq i32 %timeout.addr.0, 0
  br i1 %tobool10.not, label %do.end13, label %while.body.preheader.do.body_crit_edge

while.body.preheader.do.body_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end13:                                         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 4
  %device = getelementptr inbounds %struct.fb_info, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.40) #12
  br label %cleanup

failout:                                          ; preds = %if.end.i.i28.failout_crit_edge, %if.end.i.i.failout_crit_edge
  tail call void @broadsheet_write_reg(ptr noundef %par, i16 noundef zeroext 520, i16 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %failout, %do.end13, %if.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %failout ], [ -110, %do.end13 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_deferred_io_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95}
!llvm.named.register.sp = !{!96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__initcall__kmod_broadsheetfb__305_1222_broadsheetfb_driver_init6, !1, !"__initcall__kmod_broadsheetfb__305_1222_broadsheetfb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 1222, i32 1}
!2 = !{ptr @__exitcall_broadsheetfb_driver_exit, !1, !"__exitcall_broadsheetfb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description306, !4, !"__UNIQUE_ID_description306", i1 false, i1 false}
!4 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 1224, i32 1}
!5 = !{ptr @__UNIQUE_ID_author307, !6, !"__UNIQUE_ID_author307", i1 false, i1 false}
!6 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 1225, i32 1}
!7 = !{ptr @__UNIQUE_ID_file308, !8, !"__UNIQUE_ID_file308", i1 false, i1 false}
!8 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 1226, i32 1}
!9 = !{ptr @__UNIQUE_ID_license309, !8, !"__UNIQUE_ID_license309", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 1219, i32 11}
!12 = !{ptr @broadsheetfb_driver, !13, !"broadsheetfb_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 1215, i32 31}
!14 = !{ptr @broadsheetfb_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 1130, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @broadsheetfb_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 1132, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 1141, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @broadsheetfb_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @broadsheetfb_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 1174, i32 2}
!30 = !{ptr @broadsheetfb_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @broadsheetfb_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @panel_table, !33, !"panel_table", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 52, i32 26}
!34 = !{ptr @broadsheetfb_ops, !35, !"broadsheetfb_ops", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 1051, i32 28}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!43 = !{ptr @broadsheetfb_var, !44, !"broadsheetfb_var", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 105, i32 33}
!45 = !{ptr @broadsheetfb_fix, !46, !"broadsheetfb_fix", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 94, i32 33}
!47 = !{ptr @broadsheetfb_defio, !48, !"broadsheetfb_defio", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 1060, i32 30}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 848, i32 2}
!51 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @broadsheet_identify._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @broadsheet_identify._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 851, i32 3}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @broadsheet_identify._entry.18, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @broadsheet_identify._entry_ptr.21, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 853, i32 3}
!62 = !{ptr @broadsheet_identify._entry.22, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @broadsheet_identify._entry_ptr.24, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 777, i32 8}
!66 = !{ptr @dev_attr_loadstore_waveform, !65, !"dev_attr_loadstore_waveform", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 745, i32 36}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 747, i32 3}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @broadsheet_loadstore_waveform._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @broadsheet_loadstore_waveform._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 753, i32 3}
!76 = !{ptr @broadsheet_loadstore_waveform._entry.29, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @broadsheet_loadstore_waveform._entry_ptr.31, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 764, i32 3}
!80 = !{ptr @broadsheet_loadstore_waveform._entry.32, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @broadsheet_loadstore_waveform._entry_ptr.34, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 768, i32 2}
!84 = !{ptr @broadsheet_loadstore_waveform._entry.35, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @broadsheet_loadstore_waveform._entry_ptr.37, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 475, i32 3}
!88 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @broadsheet_verify_spiflash._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @broadsheet_verify_spiflash._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/video/fbdev/broadsheetfb.c", i32 429, i32 2}
!93 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @broadsheet_spiflash_wait_for_status._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @broadsheet_spiflash_wait_for_status._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{!"sp"}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"branch_weights", i32 2000, i32 1}
!107 = !{i64 2152989616, i64 2152989641}
!108 = !{i64 5485171}
!109 = !{i64 5485368}
!110 = !{i64 2152970601}
!111 = !{!"auto-init"}
