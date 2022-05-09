; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-nec-nl8048hl11.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-nec-nl8048hl11.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.72 = type { i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.nl8048_panel = type { %struct.drm_panel, ptr, ptr }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.71 }
%union.anon.71 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_nec_nl8048hl11__248_251_nl8048_driver_init6 = internal global ptr @nl8048_driver_init, section ".initcall6.init", align 4
@nl8048_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @nl8048_ids, ptr @nl8048_probe, ptr @nl8048_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nl8048_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nl8048_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_nl8048_driver_exit = internal global ptr @nl8048_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author249 = internal constant [63 x i8] c"panel_nec_nl8048hl11.author=Erik Gilling <konkers@android.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [55 x i8] c"panel_nec_nl8048hl11.description=NEC-NL8048HL11 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [69 x i8] c"panel_nec_nl8048hl11.file=drivers/gpu/drm/panel/panel-nec-nl8048hl11\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [33 x i8] c"panel_nec_nl8048hl11.license=GPL\00", section ".modinfo", align 1
@nl8048_ids = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"nl8048hl11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"panel-nec-nl8048hl11\00", [43 x i8] zeroinitializer }, align 32
@nl8048_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nec,nl8048hl11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@nl8048_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @nl8048_suspend, ptr @nl8048_resume, ptr @nl8048_suspend, ptr @nl8048_resume, ptr @nl8048_suspend, ptr @nl8048_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@nl8048_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 190, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to parse reset gpio\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nl8048_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/panel/panel-nec-nl8048hl11.c\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nl8048_probe._entry_ptr = internal global ptr @nl8048_probe._entry, section ".printk_index", align 4
@nl8048_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 199, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to setup SPI: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@nl8048_probe._entry_ptr.9 = internal global ptr @nl8048_probe._entry.7, section ".printk_index", align 4
@nl8048_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr null, ptr @nl8048_enable, ptr @nl8048_disable, ptr null, ptr @nl8048_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@nl8048_init.nl8048_init_seq = internal constant { [81 x %struct.anon.72], [62 x i8] } { [81 x %struct.anon.72] [%struct.anon.72 { i8 3, i8 1 }, %struct.anon.72 zeroinitializer, %struct.anon.72 { i8 1, i8 1 }, %struct.anon.72 { i8 4, i8 0 }, %struct.anon.72 { i8 5, i8 20 }, %struct.anon.72 { i8 6, i8 36 }, %struct.anon.72 { i8 16, i8 -41 }, %struct.anon.72 { i8 17, i8 0 }, %struct.anon.72 { i8 18, i8 0 }, %struct.anon.72 { i8 19, i8 85 }, %struct.anon.72 { i8 20, i8 1 }, %struct.anon.72 { i8 21, i8 112 }, %struct.anon.72 { i8 22, i8 30 }, %struct.anon.72 { i8 23, i8 37 }, %struct.anon.72 { i8 24, i8 37 }, %struct.anon.72 { i8 25, i8 2 }, %struct.anon.72 { i8 26, i8 2 }, %struct.anon.72 { i8 27, i8 -96 }, %struct.anon.72 { i8 32, i8 47 }, %struct.anon.72 { i8 33, i8 15 }, %struct.anon.72 { i8 34, i8 15 }, %struct.anon.72 { i8 35, i8 15 }, %struct.anon.72 { i8 36, i8 15 }, %struct.anon.72 { i8 37, i8 15 }, %struct.anon.72 { i8 38, i8 15 }, %struct.anon.72 { i8 39, i8 0 }, %struct.anon.72 { i8 40, i8 2 }, %struct.anon.72 { i8 41, i8 2 }, %struct.anon.72 { i8 42, i8 2 }, %struct.anon.72 { i8 43, i8 15 }, %struct.anon.72 { i8 44, i8 15 }, %struct.anon.72 { i8 45, i8 15 }, %struct.anon.72 { i8 46, i8 15 }, %struct.anon.72 { i8 47, i8 15 }, %struct.anon.72 { i8 48, i8 15 }, %struct.anon.72 { i8 49, i8 15 }, %struct.anon.72 { i8 50, i8 0 }, %struct.anon.72 { i8 51, i8 2 }, %struct.anon.72 { i8 52, i8 2 }, %struct.anon.72 { i8 53, i8 2 }, %struct.anon.72 { i8 80, i8 12 }, %struct.anon.72 { i8 83, i8 66 }, %struct.anon.72 { i8 84, i8 66 }, %struct.anon.72 { i8 85, i8 65 }, %struct.anon.72 { i8 86, i8 20 }, %struct.anon.72 { i8 89, i8 -120 }, %struct.anon.72 { i8 90, i8 1 }, %struct.anon.72 { i8 91, i8 0 }, %struct.anon.72 { i8 92, i8 2 }, %struct.anon.72 { i8 93, i8 12 }, %struct.anon.72 { i8 94, i8 28 }, %struct.anon.72 { i8 95, i8 39 }, %struct.anon.72 { i8 98, i8 73 }, %struct.anon.72 { i8 99, i8 39 }, %struct.anon.72 { i8 102, i8 118 }, %struct.anon.72 { i8 103, i8 39 }, %struct.anon.72 { i8 112, i8 1 }, %struct.anon.72 { i8 113, i8 14 }, %struct.anon.72 { i8 114, i8 2 }, %struct.anon.72 { i8 115, i8 12 }, %struct.anon.72 { i8 118, i8 12 }, %struct.anon.72 { i8 121, i8 48 }, %struct.anon.72 { i8 -126, i8 0 }, %struct.anon.72 { i8 -125, i8 0 }, %struct.anon.72 { i8 -124, i8 -4 }, %struct.anon.72 { i8 -122, i8 0 }, %struct.anon.72 { i8 -120, i8 0 }, %struct.anon.72 { i8 -118, i8 0 }, %struct.anon.72 { i8 -117, i8 0 }, %struct.anon.72 { i8 -116, i8 0 }, %struct.anon.72 { i8 -115, i8 -4 }, %struct.anon.72 { i8 -113, i8 0 }, %struct.anon.72 { i8 -111, i8 0 }, %struct.anon.72 { i8 -109, i8 0 }, %struct.anon.72 { i8 -108, i8 0 }, %struct.anon.72 { i8 -107, i8 0 }, %struct.anon.72 { i8 -106, i8 -4 }, %struct.anon.72 { i8 -104, i8 0 }, %struct.anon.72 { i8 -102, i8 0 }, %struct.anon.72 { i8 -100, i8 0 }, %struct.anon.72 { i8 -99, i8 0 }], [62 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@nl8048_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 41, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SPI write to %u failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nl8048_write\00", [19 x i8] zeroinitializer }, align 32
@nl8048_write._entry_ptr = internal global ptr @nl8048_write._entry, section ".printk_index", align 4
@nl8048_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 23800, i16 800, i16 806, i16 807, i16 811, i16 0, i16 480, i16 483, i16 484, i16 488, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 89, i16 53, i8 72, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"nl8048_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 240, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant [11 x i8] c"nl8048_ids\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 233, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 245, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"nl8048_of_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 226, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"nl8048_pm_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 174, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 188, i32 46 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 190, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 199, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"nl8048_funcs\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 146, i32 37 }
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"nl8048_init_seq\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 51, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 40, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"nl8048_mode\00", align 1
@___asan_gen_.70 = private constant [48 x i8] c"../drivers/gpu/drm/panel/panel-nec-nl8048hl11.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 108, i32 38 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_nl8048_driver_exit, ptr @__initcall__kmod_panel_nec_nl8048hl11__248_251_nl8048_driver_init6, ptr @nl8048_driver_exit, ptr @nl8048_probe._entry, ptr @nl8048_probe._entry.7, ptr @nl8048_probe._entry_ptr, ptr @nl8048_probe._entry_ptr.9, ptr @nl8048_write._entry, ptr @nl8048_write._entry_ptr, ptr @nl8048_driver, ptr @nl8048_ids, ptr @.str, ptr @nl8048_of_match, ptr @nl8048_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @nl8048_funcs, ptr @nl8048_init.nl8048_init_seq, ptr @.str.10, ptr @.str.11, ptr @nl8048_mode], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl8048_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl8048_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl8048_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl8048_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl8048_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl8048_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl8048_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl8048_init.nl8048_init_seq to i32), i32 162, i32 224, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl8048_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl8048_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nl8048_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @nl8048_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nl8048_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @nl8048_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl8048_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 32, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.nl8048_panel, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %spi1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spi, ptr %spi1, align 4
  %call3 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef 3) #5
  %reset_gpio = getelementptr inbounds %struct.nl8048_panel, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2) #8
  %3 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reset_gpio, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mode, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %7 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 32, ptr %bits_per_word, align 1
  %call11 = tail call i32 @spi_setup(ptr noundef %spi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.8, i32 noundef %call11) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %call18 = tail call fastcc i32 @nl8048_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi1, align 4
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %9, ptr noundef nonnull @nl8048_funcs, i32 noundef 17) #5
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end17.cleanup_crit_edge, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end ], [ %call11, %do.end15 ], [ 0, %if.end21 ], [ -12, %entry.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl8048_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_panel_remove(ptr noundef %1) #5
  %call2 = tail call i32 @drm_panel_disable(ptr noundef %1) #5
  %call4 = tail call i32 @drm_panel_unprepare(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nl8048_init(ptr nocapture noundef readonly %lcd) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i10 = alloca %struct.spi_message, align 4
  %t.i.i11 = alloca %struct.spi_transfer, align 4
  %data.i12 = alloca [4 x i8], align 1
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %data.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 3
  %spi.i = getelementptr inbounds %struct.nl8048_panel, ptr %lcd, i32 0, i32 1
  %3 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %4 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.028 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [81 x %struct.anon.72], ptr @nl8048_init.nl8048_init_seq, i32 0, i32 %i.028
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %data = getelementptr [81 x %struct.anon.72], ptr @nl8048_init.nl8048_init_seq, i32 0, i32 %i.028, i32 1
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #5
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %data.i, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %0, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %6, ptr %1, align 1
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %2, align 1
  %13 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spi.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %15 = call ptr @memset(ptr %3, i32 0, i32 92)
  %16 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %data.i, ptr %t.i.i, align 4
  %17 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %18 = call ptr @memset(ptr %4, i32 0, i32 40)
  %19 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %for.body.spi_write.exit.i_crit_edge

for.body.spi_write.exit.i_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %for.body.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %14, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %nl8048_write.exit.thread, label %nl8048_write.exit

nl8048_write.exit.thread:                         ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #5
  br label %for.inc

nl8048_write.exit:                                ; preds = %spi_write.exit.i
  %27 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spi.i, align 4
  %conv.i = zext i8 %6 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.10, i32 noundef %conv.i, i32 noundef %call.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp2 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp2, label %nl8048_write.exit.cleanup_crit_edge, label %nl8048_write.exit.for.inc_crit_edge

nl8048_write.exit.for.inc_crit_edge:              ; preds = %nl8048_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

nl8048_write.exit.cleanup_crit_edge:              ; preds = %nl8048_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %nl8048_write.exit.for.inc_crit_edge, %nl8048_write.exit.thread
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 81
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 4294960) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i12) #5
  %30 = getelementptr inbounds [4 x i8], ptr %data.i12, i32 0, i32 1
  %31 = getelementptr inbounds [4 x i8], ptr %data.i12, i32 0, i32 2
  %32 = getelementptr inbounds [4 x i8], ptr %data.i12, i32 0, i32 3
  %33 = ptrtoint ptr %data.i12 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %data.i12, align 1
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %30, align 1
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %31, align 1
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %32, align 1
  %37 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spi.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i11) #5
  %39 = getelementptr inbounds i8, ptr %t.i.i11, i32 4
  %40 = call ptr @memset(ptr %39, i32 0, i32 92)
  %41 = ptrtoint ptr %t.i.i11 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %data.i12, ptr %t.i.i11, align 4
  %len1.i.i14 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i11, i32 0, i32 2
  %42 = ptrtoint ptr %len1.i.i14 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %len1.i.i14, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i10) #5
  %43 = getelementptr inbounds i8, ptr %msg.i.i.i10, i32 8
  %44 = call ptr @memset(ptr %43, i32 0, i32 40)
  %45 = ptrtoint ptr %msg.i.i.i10 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %msg.i.i.i10, ptr %msg.i.i.i10, align 4
  %prev.i.i.i.i.i.i.i15 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i10, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i.i.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i.i10, ptr %prev.i.i.i.i.i.i.i15, align 4
  %resources.i.i.i.i.i.i16 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i10, i32 0, i32 10
  %47 = ptrtoint ptr %resources.i.i.i.i.i.i16 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %resources.i.i.i.i.i.i16, ptr %resources.i.i.i.i.i.i16, align 4
  %prev.i2.i.i.i.i.i.i17 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i10, i32 0, i32 10, i32 1
  %48 = ptrtoint ptr %prev.i2.i.i.i.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %resources.i.i.i.i.i.i16, ptr %prev.i2.i.i.i.i.i.i17, align 4
  %transfer_list.i.i.i.i.i18 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i11, i32 0, i32 18
  %call.i.i.i.i.i.i.i19 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i18, ptr noundef nonnull %msg.i.i.i10, ptr noundef nonnull %msg.i.i.i10) #5
  br i1 %call.i.i.i.i.i.i.i19, label %if.end.i.i.i.i.i.i.i21, label %for.end.spi_write.exit.i24_crit_edge

for.end.spi_write.exit.i24_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit.i24

if.end.i.i.i.i.i.i.i21:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %prev.i.i.i.i.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %transfer_list.i.i.i.i.i18, ptr %prev.i.i.i.i.i.i.i15, align 4
  %50 = ptrtoint ptr %transfer_list.i.i.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg.i.i.i10, ptr %transfer_list.i.i.i.i.i18, align 4
  %prev3.i.i.i.i.i.i.i20 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i11, i32 0, i32 18, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i.i.i.i.i20 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg.i.i.i10, ptr %prev3.i.i.i.i.i.i.i20, align 4
  %52 = ptrtoint ptr %msg.i.i.i10 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %transfer_list.i.i.i.i.i18, ptr %msg.i.i.i10, align 4
  br label %spi_write.exit.i24

spi_write.exit.i24:                               ; preds = %if.end.i.i.i.i.i.i.i21, %for.end.spi_write.exit.i24_crit_edge
  %call.i.i.i22 = call i32 @spi_sync(ptr noundef %38, ptr noundef nonnull %msg.i.i.i10) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i10) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i22)
  %tobool.not.i23 = icmp eq i32 %call.i.i.i22, 0
  br i1 %tobool.not.i23, label %spi_write.exit.i24.nl8048_write.exit26_crit_edge, label %do.end.i25

spi_write.exit.i24.nl8048_write.exit26_crit_edge: ; preds = %spi_write.exit.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %nl8048_write.exit26

do.end.i25:                                       ; preds = %spi_write.exit.i24
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.10, i32 noundef 2, i32 noundef %call.i.i.i22) #8
  br label %nl8048_write.exit26

nl8048_write.exit26:                              ; preds = %do.end.i25, %spi_write.exit.i24.nl8048_write.exit26_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i12) #5
  br label %cleanup

cleanup:                                          ; preds = %nl8048_write.exit26, %nl8048_write.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i22, %nl8048_write.exit26 ], [ %call.i.i.i, %nl8048_write.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl8048_enable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_gpio = getelementptr inbounds %struct.nl8048_panel, ptr %panel, i32 0, i32 2
  %0 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl8048_disable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_gpio = getelementptr inbounds %struct.nl8048_panel, ptr %panel, i32 0, i32 2
  %0 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 0) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl8048_get_modes(ptr nocapture noundef readnone %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @nl8048_mode) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #5
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #5
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %2 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 89, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %3 = ptrtoint ptr %height_mm to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 53, ptr %height_mm, align 4
  %bus_flags = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 8
  %4 = ptrtoint ptr %bus_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 70, ptr %bus_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl8048_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %data.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #5
  %2 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 3
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %data.i, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %2, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %4, align 1
  %spi.i = getelementptr inbounds %struct.nl8048_panel, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %11 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 92)
  %13 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %15 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 40)
  %17 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.spi_write.exit.i_crit_edge

entry.spi_write.exit.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %entry.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %spi_write.exit.i.nl8048_write.exit_crit_edge, label %do.end.i

spi_write.exit.i.nl8048_write.exit_crit_edge:     ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nl8048_write.exit

do.end.i:                                         ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.10, i32 noundef 2, i32 noundef %call.i.i.i) #8
  br label %nl8048_write.exit

nl8048_write.exit:                                ; preds = %do.end.i, %spi_write.exit.i.nl8048_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #5
  call void @msleep(i32 noundef 40) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nl8048_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %data.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spi = getelementptr inbounds %struct.nl8048_panel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %call1 = tail call i32 @spi_setup(ptr noundef %3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #5
  %4 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %data.i, i32 0, i32 3
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %data.i, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %4, align 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %5, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %6, align 1
  %11 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #5
  %13 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 92)
  %15 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %data.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  %17 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 40)
  %19 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.spi_write.exit.i_crit_edge

entry.spi_write.exit.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %entry.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %12, ptr noundef nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %spi_write.exit.i.nl8048_write.exit_crit_edge, label %do.end.i

spi_write.exit.i.nl8048_write.exit_crit_edge:     ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nl8048_write.exit

do.end.i:                                         ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.10, i32 noundef 2, i32 noundef %call.i.i.i) #8
  br label %nl8048_write.exit

nl8048_write.exit:                                ; preds = %do.end.i, %spi_write.exit.i.nl8048_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #5
  %call3 = call fastcc i32 @nl8048_init(ptr noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_panel_nec_nl8048hl11__248_251_nl8048_driver_init6, !1, !"__initcall__kmod_panel_nec_nl8048hl11__248_251_nl8048_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-nec-nl8048hl11.c", i32 251, i32 1}
!2 = !{ptr @__exitcall_nl8048_driver_exit, !1, !"__exitcall_nl8048_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author249, !4, !"__UNIQUE_ID_author249", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-nec-nl8048hl11.c", i32 253, i32 1}
!5 = !{ptr @__UNIQUE_ID_description250, !6, !"__UNIQUE_ID_description250", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-nec-nl8048hl11.c", i32 254, i32 1}
!7 = !{ptr @__UNIQUE_ID_file251, !8, !"__UNIQUE_ID_file251", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-nec-nl8048hl11.c", i32 255, i32 1}
!9 = !{ptr @__UNIQUE_ID_license252, !8, !"__UNIQUE_ID_license252", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-nec-nl8048hl11.c", i32 245, i32 11}
!12 = !{ptr @nl8048_driver, !13, !"nl8048_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-nec-nl8048hl11.c", i32 240, i32 26}
!14 = !{ptr @nl8048_ids, !15, !"nl8048_ids", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-nec-nl8048hl11.c", i32 233, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-nec-nl8048hl11.c", i32 188, i32 46}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-nec-nl8048hl11.c", i32 190, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nl8048_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @nl8048_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-nec-nl8048hl11.c", i32 199, i32 3}
!28 = !{ptr @nl8048_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @nl8048_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @nl8048_init.nl8048_init_seq, !31, !"nl8048_init_seq", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-nec-nl8048hl11.c", i32 51, i32 4}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-nec-nl8048hl11.c", i32 40, i32 3}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @nl8048_write._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @nl8048_write._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @nl8048_funcs, !38, !"nl8048_funcs", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/panel/panel-nec-nl8048hl11.c", i32 146, i32 37}
!39 = !{ptr @nl8048_mode, !40, !"nl8048_mode", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/panel/panel-nec-nl8048hl11.c", i32 108, i32 38}
!41 = !{ptr @nl8048_of_match, !42, !"nl8048_of_match", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/panel/panel-nec-nl8048hl11.c", i32 226, i32 34}
!43 = !{ptr @nl8048_pm_ops, !44, !"nl8048_pm_ops", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/panel/panel-nec-nl8048hl11.c", i32 174, i32 8}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
