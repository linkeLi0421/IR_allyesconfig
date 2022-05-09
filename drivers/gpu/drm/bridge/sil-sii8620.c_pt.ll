; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/sil-sii8620.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/sil-sii8620.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.97 = type { i32, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.100 = type { i32, i8, i8, i8 }
%struct.anon.106 = type { i32, i8, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.sii8620 = type { %struct.drm_bridge, ptr, ptr, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], %struct.mutex, i32, i8, i32, i32, i8, [3 x i8], [4 x i8], [16 x i8], [4 x i8], i8, i8, i8, ptr, i8, i32, ptr, %struct.notifier_block, %struct.work_struct, i32, %struct.list_head, %struct.anon.96 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.96 = type { i32, i32, i32, i32, [32 x i8], i32, [32 x i8] }
%struct.sii8620_mt_msg = type { %struct.list_head, [4 x i8], i8, ptr, ptr, ptr }
%union.hdmi_infoframe = type { %struct.hdmi_avi_infoframe }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.edid = type { [8 x i8], [2 x i8], [2 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.est_timings, [8 x %struct.std_timing], [4 x %struct.detailed_timing], i8, i8 }
%struct.est_timings = type { i8, i8, i8 }
%struct.std_timing = type { i8, i8 }
%struct.detailed_timing = type { i16, %union.anon.90 }
%union.anon.90 = type { %struct.detailed_pixel_timing }
%struct.detailed_pixel_timing = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }

@__initcall__kmod_sil_sii8620__315_2389_sii8620_driver_init6 = internal global ptr @sii8620_driver_init, section ".initcall6.init", align 4
@sii8620_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sii8620_probe, ptr @sii8620_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sii8620_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sii8620_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sii8620_driver_exit = internal global ptr @sii8620_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file316 = internal constant [52 x i8] c"sil_sii8620.file=drivers/gpu/drm/bridge/sil-sii8620\00", section ".modinfo", align 1
@__UNIQUE_ID_license317 = internal constant [27 x i8] c"sil_sii8620.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sii8620\00", [24 x i8] zeroinitializer }, align 32
@sii8620_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sil,sii8620\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sii8620_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sii8620\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sii8620_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ctx->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xtal\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get xtal clock from DT\0A\00", [62 x i8] zeroinitializer }, align 32
@sii8620_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2308, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no irq provided\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sii8620_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/bridge/sil-sii8620.c\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sii8620_probe._entry_ptr = internal global ptr @sii8620_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to install IRQ handler\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get reset gpio from DT\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cvcc10\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iovcc18\00", [24 x i8] zeroinitializer }, align 32
@sii8620_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 2333, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize EXTCON\0A\00", [35 x i8] zeroinitializer }, align 32
@sii8620_probe._entry_ptr.16 = internal global ptr @sii8620_probe._entry.14, section ".printk_index", align 4
@sii8620_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @sii8620_attach, ptr @sii8620_detach, ptr @sii8620_mode_valid, ptr @sii8620_mode_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sii8620_irq_thread.irq_vec = internal constant { [10 x %struct.anon.97], [48 x i8] } { [10 x %struct.anon.97] [%struct.anon.97 { i32 28, ptr @sii8620_irq_disc }, %struct.anon.97 { i32 18, ptr @sii8620_irq_g2wb }, %struct.anon.97 { i32 51, ptr @sii8620_irq_coc }, %struct.anon.97 { i32 42, ptr @sii8620_irq_tdm }, %struct.anon.97 { i32 16, ptr @sii8620_irq_msc }, %struct.anon.97 { i32 17, ptr @sii8620_irq_merr }, %struct.anon.97 { i32 30, ptr @sii8620_irq_block }, %struct.anon.97 { i32 14, ptr @sii8620_irq_edid }, %struct.anon.97 { i32 10, ptr @sii8620_irq_ddc }, %struct.anon.97 { i32 11, ptr @sii8620_irq_scdt }], [48 x i8] zeroinitializer }, align 32
@sii8620_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.6, i32 2044, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error during IRQ handling, %d.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sii8620_irq_thread\00", [45 x i8] zeroinitializer }, align 32
@sii8620_irq_thread._entry_ptr = internal global ptr @sii8620_irq_thread._entry, section ".printk_index", align 4
@sii8620_mhl_discover.d = internal constant { [34 x i16], [60 x i8] } { [34 x i16] [i16 1512, i16 20, i16 1507, i16 144, i16 1518, i16 126, i16 823, i16 7, i16 817, i16 192, i16 992, i16 15, i16 818, i16 162, i16 819, i16 3, i16 820, i16 53, i16 822, i16 2, i16 848, i16 2, i16 849, i16 3, i16 1820, i16 255, i16 11, i16 216, i16 1831, i16 3, i16 1429, i16 72, i16 1427, i16 254], [60 x i8] zeroinitializer }, align 32
@sii8620_mhl_init.d.22 = internal constant { [26 x i16], [44 x i8] } { [26 x i16] [i16 187, i16 0, i16 1809, i16 16, i16 1810, i16 24, i16 1823, i16 7, i16 1825, i16 248, i16 1834, i16 97, i16 1835, i16 70, i16 1836, i16 21, i16 1837, i16 1, i16 837, i16 1, i16 838, i16 45, i16 839, i16 249, i16 1476, i16 39], [44 x i8] zeroinitializer }, align 32
@sii8620_set_dev_cap.devcap = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\002\12\01AI\01\00\80\0F\07\00\00\103\00", [16 x i8] zeroinitializer }, align 32
@sii8620_set_dev_cap.xdcap = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\03\07\01\01", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sii8620_mt_msc_cmd_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.6, i32 381, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: command %#x not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sii8620_mt_msc_cmd_send\00", [40 x i8] zeroinitializer }, align 32
@sii8620_mt_msc_cmd_send._entry_ptr = internal global ptr @sii8620_mt_msc_cmd_send._entry, section ".printk_index", align 4
@sii8620_i2c_page = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"9=IM]dYa", [24 x i8] zeroinitializer }, align 32
@sii8620_write_buf.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.6, ptr @.str.30, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sil_sii8620\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sii8620_write_buf\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"write at %04x: %*ph, %d\0A\00", [39 x i8] zeroinitializer }, align 32
@sii8620_write_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.6, i32 222, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Write at %#06x of %*ph failed with code %d.\0A\00", [51 x i8] zeroinitializer }, align 32
@sii8620_write_buf._entry_ptr = internal global ptr @sii8620_write_buf._entry, section ".printk_index", align 4
@sii8620_burst_get_tx_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.6, i32 609, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TX-BLK buffer exhausted\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sii8620_burst_get_tx_buf\00", [39 x i8] zeroinitializer }, align 32
@sii8620_burst_get_tx_buf._entry_ptr = internal global ptr @sii8620_burst_get_tx_buf._entry, section ".printk_index", align 4
@sii8620_mr_devcap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.6, i32 527, ptr @.str.36, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"detected dongle MHL %d.%d, ChipID %02x%02x:%02x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sii8620_mr_devcap\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sii8620_mr_devcap._entry_ptr = internal global ptr @sii8620_mr_devcap._entry, section ".printk_index", align 4
@sii8620_identify_sink.sink_str = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39], [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDMI\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DVI\00", [28 x i8] zeroinitializer }, align 32
@sii8620_identify_sink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.6, i32 497, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cannot fetch EDID\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sii8620_identify_sink\00", [42 x i8] zeroinitializer }, align 32
@sii8620_identify_sink._entry_ptr = internal global ptr @sii8620_identify_sink._entry, section ".printk_index", align 4
@sii8620_identify_sink._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.6, i32 511, ptr @.str.36, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"detected sink(type: %s): %s\0A\00", [35 x i8] zeroinitializer }, align 32
@sii8620_identify_sink._entry_ptr.44 = internal global ptr @sii8620_identify_sink._entry.42, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sii8620_fetch_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.6, i32 836, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"timeout during EDID read\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sii8620_fetch_edid\00", [45 x i8] zeroinitializer }, align 32
@sii8620_fetch_edid._entry_ptr = internal global ptr @sii8620_fetch_edid._entry, section ".printk_index", align 4
@sii8620_set_mode.d.50 = internal constant { [30 x i16], [36 x i8] } { [30 x i16] [i16 279, i16 4, i16 316, i16 4, i16 280, i16 20, i16 317, i16 20, i16 281, i16 24, i16 318, i16 24, i16 14, i16 160, i16 835, i16 189, i16 14, i16 32, i16 1819, i16 1, i16 1808, i16 92, i16 1828, i16 3, i16 1829, i16 128, i16 848, i16 14, i16 850, i16 3], [36 x i8] zeroinitializer }, align 32
@sii8620_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.6, i32 1490, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s mode %d not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sii8620_set_mode\00", [47 x i8] zeroinitializer }, align 32
@sii8620_set_mode._entry_ptr = internal global ptr @sii8620_set_mode._entry, section ".printk_index", align 4
@sii8620_disconnect.d = internal constant { [30 x i16], [36 x i8] } { [30 x i16] [i16 865, i16 0, i16 823, i16 7, i16 1808, i16 64, i16 1500, i16 132, i16 1828, i16 0, i16 1808, i16 64, i16 260, i16 7, i16 823, i16 7, i16 817, i16 192, i16 818, i16 187, i16 820, i16 72, i16 822, i16 63, i16 819, i16 47, i16 848, i16 42, i16 849, i16 3], [36 x i8] zeroinitializer }, align 32
@sii8620_disconnect.d.56 = internal constant { [80 x i16], [32 x i8] } { [80 x i16] [i16 992, i16 15, i16 835, i16 7, i16 1507, i16 16, i16 1511, i16 0, i16 1512, i16 18, i16 111, i16 0, i16 1476, i16 39, i16 1504, i16 37, i16 1517, i16 191, i16 1518, i16 64, i16 1422, i16 255, i16 1423, i16 0, i16 1420, i16 255, i16 1421, i16 0, i16 1830, i16 255, i16 1831, i16 0, i16 356, i16 255, i16 358, i16 0, i16 1426, i16 255, i16 1427, i16 0, i16 1428, i16 255, i16 1429, i16 0, i16 803, i16 255, i16 804, i16 0, i16 812, i16 255, i16 813, i16 0, i16 124, i16 255, i16 126, i16 0, i16 1597, i16 255, i16 1596, i16 0, i16 920, i16 255, i16 921, i16 0, i16 736, i16 255, i16 737, i16 0, i16 115, i16 255, i16 119, i16 0, i16 116, i16 255, i16 120, i16 0, i16 114, i16 255, i16 118, i16 0], [32 x i8] zeroinitializer }, align 32
@sii8620_msc_msg_first._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.6, i32 1808, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unexpected MSC MT response\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sii8620_msc_msg_first\00", [42 x i8] zeroinitializer }, align 32
@sii8620_msc_msg_first._entry_ptr = internal global ptr @sii8620_msc_msg_first._entry, section ".printk_index", align 4
@sii8620_msc_mr_msc_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.6, i32 1849, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s message type %d,%d not supported\00", [60 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sii8620_msc_mr_msc_msg\00", [41 x i8] zeroinitializer }, align 32
@sii8620_msc_mr_msc_msg._entry_ptr = internal global ptr @sii8620_msc_mr_msc_msg._entry, section ".printk_index", align 4
@sii8620_burst_get_rx_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.6, i32 626, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RX-BLK buffer exhausted\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sii8620_burst_get_rx_buf\00", [39 x i8] zeroinitializer }, align 32
@sii8620_burst_get_rx_buf._entry_ptr = internal global ptr @sii8620_burst_get_rx_buf._entry, section ".printk_index", align 4
@sii8620_start_video.clk_spec = internal constant { [3 x %struct.anon.100], [40 x i8] } { [3 x %struct.anon.100] [%struct.anon.100 { i32 150000, i8 2, i8 0, i8 56 }, %struct.anon.100 { i32 300000, i8 1, i8 1, i8 64 }, %struct.anon.100 { i32 600000, i8 0, i8 2, i8 64 }], [40 x i8] zeroinitializer }, align 32
@sii8620_read_buf.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.70, ptr @.str.6, ptr @.str.71, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sii8620_read_buf\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"read at %04x: %*ph, %d\0A\00", [40 x i8] zeroinitializer }, align 32
@sii8620_read_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.6, i32 174, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Read at %#06x of %d bytes failed with code %d.\0A\00", [48 x i8] zeroinitializer }, align 32
@sii8620_read_buf._entry_ptr = internal global ptr @sii8620_read_buf._entry, section ".printk_index", align 4
@sii8620_extcon_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.6, i32 2175, ptr @.str.36, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"no extcon found, switching to 'always on' mode\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sii8620_extcon_init\00", [44 x i8] zeroinitializer }, align 32
@sii8620_extcon_init._entry_ptr = internal global ptr @sii8620_extcon_init._entry, section ".printk_index", align 4
@sii8620_extcon_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.6, i32 2184, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid or missing extcon\0A\00", [37 x i8] zeroinitializer }, align 32
@sii8620_extcon_init._entry_ptr.77 = internal global ptr @sii8620_extcon_init._entry.75, section ".printk_index", align 4
@sii8620_extcon_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&ctx->extcon_wq)\00", [61 x i8] zeroinitializer }, align 32
@sii8620_extcon_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.74, ptr @.str.6, i32 2193, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register notifier for MHL\0A\00", [59 x i8] zeroinitializer }, align 32
@sii8620_extcon_init._entry_ptr.81 = internal global ptr @sii8620_extcon_init._entry.79, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sii8620_init_rcp_input_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.6, i32 2106, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate RC device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sii8620_init_rcp_input_dev\00", [37 x i8] zeroinitializer }, align 32
@sii8620_init_rcp_input_dev._entry_ptr = internal global ptr @sii8620_init_rcp_input_dev._entry, section ".printk_index", align 4
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sii8620/input0\00", [17 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rc-cec\00", [25 x i8] zeroinitializer }, align 32
@sii8620_init_rcp_input_dev._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.83, ptr @.str.6, i32 2121, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register RC device\0A\00", [34 x i8] zeroinitializer }, align 32
@sii8620_init_rcp_input_dev._entry_ptr.88 = internal global ptr @sii8620_init_rcp_input_dev._entry.86, section ".printk_index", align 4
@sii8620_cable_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.6, i32 2060, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error powering on, %d.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sii8620_cable_in\00", [47 x i8] zeroinitializer }, align 32
@sii8620_cable_in._entry_ptr = internal global ptr @sii8620_cable_in._entry, section ".printk_index", align 4
@sii8620_cable_in._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.6, i32 2067, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error accessing I2C bus, %d.\0A\00", [34 x i8] zeroinitializer }, align 32
@sii8620_cable_in._entry_ptr.93 = internal global ptr @sii8620_cable_in._entry.91, section ".printk_index", align 4
@sii8620_cable_in._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.6, i32 2072, ptr @.str.36, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ChipID %02x%02x:%02x%02x rev %02x.\0A\00", [60 x i8] zeroinitializer }, align 32
@sii8620_cable_in._entry_ptr.96 = internal global ptr @sii8620_cable_in._entry.94, section ".printk_index", align 4
@sii8620_cable_in._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.6, i32 2089, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@sii8620_cable_in._entry_ptr.98 = internal global ptr @sii8620_cable_in._entry.97, section ".printk_index", align 4
@sii8620_xtal_set_rate.rates = internal constant { [5 x %struct.anon.106], [56 x i8] } { [5 x %struct.anon.106] [%struct.anon.106 { i32 19200, i8 4, i8 83 }, %struct.anon.106 { i32 20000, i8 4, i8 98 }, %struct.anon.106 { i32 24000, i8 5, i8 117 }, %struct.anon.106 { i32 30000, i8 6, i8 -110 }, %struct.anon.106 { i32 38400, i8 12, i8 -68 }], [56 x i8] zeroinitializer }, align 32
@sii8620_xtal_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.6, i32 928, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"xtal clock rate(%lukHz) not supported, setting MHL for %ukHz.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sii8620_xtal_set_rate\00", [42 x i8] zeroinitializer }, align 32
@sii8620_xtal_set_rate._entry_ptr = internal global ptr @sii8620_xtal_set_rate._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 33]
@__sancov_gen_cov_switch_values.102 = internal global [7 x i64] [i64 5, i64 8, i64 96, i64 97, i64 104, i64 113, i64 224]
@__sancov_gen_cov_switch_values.103 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.105 = private unnamed_addr constant [15 x i8] c"sii8620_driver\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2379, i32 26 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2381, i32 11 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"sii8620_dt_match\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2367, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant [11 x i8] c"sii8620_id\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2373, i32 35 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2299, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2302, i32 36 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2305, i32 10 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2308, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2318, i32 10 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2320, i32 40 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2323, i32 10 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2325, i32 28 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2326, i32 28 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2333, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [21 x i8] c"sii8620_bridge_funcs\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2280, i32 38 }
@___asan_gen_.171 = private unnamed_addr constant [8 x i8] c"irq_vec\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2015, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2044, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1243, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1377, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [7 x i8] c"devcap\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1307, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant [6 x i8] c"xdcap\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1325, i32 18 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 380, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"sii8620_i2c_page\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 120, i32 17 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 218, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 221, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 609, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 523, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [9 x i8] c"sink_str\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 483, i32 28 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 484, i32 17 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 485, i32 17 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 486, i32 16 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 497, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 510, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 836, i32 5 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1456, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1490, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1527, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1548, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1808, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1848, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 626, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant [9 x i8] c"clk_spec\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1180, i32 5 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 170, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 173, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2175, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2184, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2190, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2193, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2106, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2111, i32 23 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2113, i32 21 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2121, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2060, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2067, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2071, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2089, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 912, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.421 = private constant [40 x i8] c"../drivers/gpu/drm/bridge/sil-sii8620.c\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 927, i32 3 }
@llvm.compiler.used = appending global [136 x ptr] [ptr @__UNIQUE_ID_file316, ptr @__UNIQUE_ID_license317, ptr @__exitcall_sii8620_driver_exit, ptr @__initcall__kmod_sil_sii8620__315_2389_sii8620_driver_init6, ptr @sii8620_burst_get_rx_buf._entry, ptr @sii8620_burst_get_rx_buf._entry_ptr, ptr @sii8620_burst_get_tx_buf._entry, ptr @sii8620_burst_get_tx_buf._entry_ptr, ptr @sii8620_cable_in._entry, ptr @sii8620_cable_in._entry.91, ptr @sii8620_cable_in._entry.94, ptr @sii8620_cable_in._entry.97, ptr @sii8620_cable_in._entry_ptr, ptr @sii8620_cable_in._entry_ptr.93, ptr @sii8620_cable_in._entry_ptr.96, ptr @sii8620_cable_in._entry_ptr.98, ptr @sii8620_driver_exit, ptr @sii8620_extcon_init._entry, ptr @sii8620_extcon_init._entry.75, ptr @sii8620_extcon_init._entry.79, ptr @sii8620_extcon_init._entry_ptr, ptr @sii8620_extcon_init._entry_ptr.77, ptr @sii8620_extcon_init._entry_ptr.81, ptr @sii8620_fetch_edid._entry, ptr @sii8620_fetch_edid._entry_ptr, ptr @sii8620_identify_sink._entry, ptr @sii8620_identify_sink._entry.42, ptr @sii8620_identify_sink._entry_ptr, ptr @sii8620_identify_sink._entry_ptr.44, ptr @sii8620_init_rcp_input_dev._entry, ptr @sii8620_init_rcp_input_dev._entry.86, ptr @sii8620_init_rcp_input_dev._entry_ptr, ptr @sii8620_init_rcp_input_dev._entry_ptr.88, ptr @sii8620_irq_thread._entry, ptr @sii8620_irq_thread._entry_ptr, ptr @sii8620_mr_devcap._entry, ptr @sii8620_mr_devcap._entry_ptr, ptr @sii8620_msc_mr_msc_msg._entry, ptr @sii8620_msc_mr_msc_msg._entry_ptr, ptr @sii8620_msc_msg_first._entry, ptr @sii8620_msc_msg_first._entry_ptr, ptr @sii8620_mt_msc_cmd_send._entry, ptr @sii8620_mt_msc_cmd_send._entry_ptr, ptr @sii8620_probe._entry, ptr @sii8620_probe._entry.14, ptr @sii8620_probe._entry_ptr, ptr @sii8620_probe._entry_ptr.16, ptr @sii8620_read_buf._entry, ptr @sii8620_read_buf._entry_ptr, ptr @sii8620_set_mode._entry, ptr @sii8620_set_mode._entry_ptr, ptr @sii8620_write_buf._entry, ptr @sii8620_write_buf._entry_ptr, ptr @sii8620_xtal_set_rate._entry, ptr @sii8620_xtal_set_rate._entry_ptr, ptr @sii8620_driver, ptr @.str, ptr @sii8620_dt_match, ptr @sii8620_id, ptr @sii8620_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @sii8620_bridge_funcs, ptr @sii8620_irq_thread.irq_vec, ptr @.str.17, ptr @.str.18, ptr @sii8620_mhl_discover.d, ptr @sii8620_mhl_init.d.22, ptr @sii8620_set_dev_cap.devcap, ptr @sii8620_set_dev_cap.xdcap, ptr @.str.26, ptr @.str.27, ptr @sii8620_i2c_page, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @sii8620_identify_sink.sink_str, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.47, ptr @sii8620_set_mode.d.50, ptr @.str.53, ptr @.str.54, ptr @sii8620_disconnect.d, ptr @sii8620_disconnect.d.56, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @sii8620_start_video.clk_spec, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @sii8620_extcon_init.__key, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @sii8620_xtal_set_rate.rates, ptr @.str.99, ptr @.str.100], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_irq_thread.irq_vec to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_mhl_discover.d to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_mhl_init.d.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_set_dev_cap.devcap to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_set_dev_cap.xdcap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_mt_msc_cmd_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_i2c_page to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_write_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_burst_get_tx_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_mr_devcap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_identify_sink.sink_str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_identify_sink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_identify_sink._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_fetch_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_set_mode.d.50 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_disconnect.d to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_disconnect.d.56 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_msc_msg_first._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_msc_mr_msc_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_burst_get_rx_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_start_video.clk_spec to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_read_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_extcon_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_extcon_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_extcon_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_extcon_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_init_rcp_input_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_init_rcp_input_dev._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_cable_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_cable_in._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_cable_in._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_cable_in._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_xtal_set_rate.rates to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sii8620_xtal_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sii8620_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sii8620_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sii8620_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @i2c_del_driver(ptr noundef nonnull @sii8620_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sii8620_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 632, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.sii8620, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev2, align 4
  %lock = getelementptr inbounds %struct.sii8620, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sii8620_probe.__key) #11
  %mt_queue = getelementptr inbounds %struct.sii8620, ptr %call.i, i32 0, i32 27
  %1 = ptrtoint ptr %mt_queue to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %mt_queue, ptr %mt_queue, align 4
  %prev.i = getelementptr inbounds %struct.sii8620, ptr %call.i, i32 0, i32 27, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mt_queue, ptr %prev.i, align 4
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  %clk_xtal = getelementptr inbounds %struct.sii8620, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %clk_xtal to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %clk_xtal, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call3 to i32
  %call9 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %4, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not = icmp eq i32 %6, 0
  br i1 %tobool11.not, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #14
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  tail call void @irq_modify_status(i32 noundef %6, i32 noundef 0, i32 noundef 4096) #11
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call19 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %8, ptr noundef null, ptr noundef nonnull @sii8620_irq_thread, i32 noundef 8196, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call19, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %call23 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef 7) #11
  %gpio_reset = getelementptr inbounds %struct.sii8620, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call23, ptr %gpio_reset, align 4
  %cmp.i95 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %if.then26, label %if.end30

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %call23 to i32
  %call29 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %10, ptr noundef nonnull @.str.11) #11
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  %supplies = getelementptr inbounds %struct.sii8620, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.12, ptr %supplies, align 4
  %arrayidx32 = getelementptr %struct.sii8620, ptr %call.i, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.13, ptr %arrayidx32, align 4
  %call35 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %supplies) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  %13 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev2, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node.i, align 8
  %call.i96 = tail call ptr @of_graph_get_remote_node(ptr noundef %16, i32 noundef 1, i32 noundef -1) #11
  %call1.i = tail call ptr @of_get_next_parent(ptr noundef %call.i96) #11
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.73) #14
  br label %if.end46

if.end.i:                                         ; preds = %if.end38
  %call3.i = tail call ptr @extcon_find_edev_by_node(ptr noundef nonnull %call1.i) #11
  tail call void @of_node_put(ptr noundef nonnull %call1.i) #11
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end14.i

if.then5.i:                                       ; preds = %if.end.i
  %cmp.i97 = icmp eq ptr %call3.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i97, label %if.then5.i.do.end44_crit_edge, label %do.end11.i

if.then5.i.do.end44_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end44

do.end11.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %call3.i to i32
  br label %sii8620_extcon_init.exit

if.end14.i:                                       ; preds = %if.end.i
  %extcon.i = getelementptr inbounds %struct.sii8620, ptr %call.i, i32 0, i32 23
  %20 = ptrtoint ptr %extcon.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call3.i, ptr %extcon.i, align 4
  %extcon_nb.i = getelementptr inbounds %struct.sii8620, ptr %call.i, i32 0, i32 24
  %21 = ptrtoint ptr %extcon_nb.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sii8620_extcon_notifier, ptr %extcon_nb.i, align 4
  %extcon_wq.i = getelementptr inbounds %struct.sii8620, ptr %call.i, i32 0, i32 25
  tail call void @__init_work(ptr noundef %extcon_wq.i, i32 noundef 0) #11
  %22 = ptrtoint ptr %extcon_wq.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %extcon_wq.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.sii8620, ptr %call.i, i32 0, i32 25, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.78, ptr noundef nonnull @sii8620_extcon_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry19.i = getelementptr inbounds %struct.sii8620, ptr %call.i, i32 0, i32 25, i32 1
  %23 = ptrtoint ptr %entry19.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry19.i, ptr %entry19.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sii8620, ptr %call.i, i32 0, i32 25, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry19.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.sii8620, ptr %call.i, i32 0, i32 25, i32 2
  %25 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @sii8620_extcon_work, ptr %func.i, align 4
  %call24.i = tail call i32 @extcon_register_notifier(ptr noundef %call3.i, i32 noundef 41, ptr noundef %extcon_nb.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end14.i.if.end46_crit_edge, label %if.end14.i.sii8620_extcon_init.exit_crit_edge

if.end14.i.sii8620_extcon_init.exit_crit_edge:    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_extcon_init.exit

if.end14.i.if.end46_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

sii8620_extcon_init.exit:                         ; preds = %if.end14.i.sii8620_extcon_init.exit_crit_edge, %do.end11.i
  %.str.76.sink = phi ptr [ @.str.76, %do.end11.i ], [ @.str.80, %if.end14.i.sii8620_extcon_init.exit_crit_edge ]
  %retval.0.i = phi i32 [ %19, %do.end11.i ], [ %call24.i, %if.end14.i.sii8620_extcon_init.exit_crit_edge ]
  %26 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull %.str.76.sink) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp40 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp40, label %sii8620_extcon_init.exit.do.end44_crit_edge, label %sii8620_extcon_init.exit.if.end46_crit_edge

sii8620_extcon_init.exit.if.end46_crit_edge:      ; preds = %sii8620_extcon_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

sii8620_extcon_init.exit.do.end44_crit_edge:      ; preds = %sii8620_extcon_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end44

do.end44:                                         ; preds = %sii8620_extcon_init.exit.do.end44_crit_edge, %if.then5.i.do.end44_crit_edge
  %retval.0.i103 = phi i32 [ %retval.0.i, %sii8620_extcon_init.exit.do.end44_crit_edge ], [ -517, %if.then5.i.do.end44_crit_edge ]
  %28 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.15) #14
  br label %cleanup

if.end46:                                         ; preds = %sii8620_extcon_init.exit.if.end46_crit_edge, %if.end14.i.if.end46_crit_edge, %do.end.i
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 7
  %31 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @sii8620_bridge_funcs, ptr %funcs, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %of_node48 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %of_node48 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %of_node48, align 4
  tail call void @drm_bridge_add(ptr noundef nonnull %call.i) #11
  %extcon = getelementptr inbounds %struct.sii8620, ptr %call.i, i32 0, i32 23
  %35 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %extcon, align 4
  %tobool50.not = icmp eq ptr %36, null
  br i1 %tobool50.not, label %if.then51, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sii8620_cable_in(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.end46.cleanup_crit_edge, %do.end44, %if.end30.cleanup_crit_edge, %if.then26, %if.then20, %do.end15, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then6 ], [ %call21, %if.then20 ], [ %call29, %if.then26 ], [ %retval.0.i103, %do.end44 ], [ -22, %do.end15 ], [ -12, %entry.cleanup_crit_edge ], [ %call35, %if.end30.cleanup_crit_edge ], [ 0, %if.then51 ], [ 0, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sii8620_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %extcon = getelementptr inbounds %struct.sii8620, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extcon, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end5.sink.split_crit_edge, label %if.then

entry.if.end5.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.sink.split

if.then:                                          ; preds = %entry
  %extcon_nb = getelementptr inbounds %struct.sii8620, ptr %1, i32 0, i32 24
  %call2 = tail call i32 @extcon_unregister_notifier(ptr noundef nonnull %3, i32 noundef 41, ptr noundef %extcon_nb) #11
  %extcon_wq = getelementptr inbounds %struct.sii8620, ptr %1, i32 0, i32 25
  %call3 = tail call zeroext i1 @flush_work(ptr noundef %extcon_wq) #11
  %cable_state = getelementptr inbounds %struct.sii8620, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %cable_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cable_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then.if.end5.sink.split_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then.if.end5.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %if.then.if.end5.sink.split_crit_edge, %entry.if.end5.sink.split_crit_edge
  %dev.i13 = getelementptr inbounds %struct.sii8620, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev.i13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i13, align 4
  %irq.i14 = getelementptr i8, ptr %7, i32 932
  %8 = ptrtoint ptr %irq.i14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i14, align 4
  tail call void @disable_irq(i32 noundef %9) #11
  %clk_xtal.i.i15 = getelementptr inbounds %struct.sii8620, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %clk_xtal.i.i15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_xtal.i.i15, align 4
  tail call void @clk_disable(ptr noundef %11) #11
  tail call void @clk_unprepare(ptr noundef %11) #11
  %gpio_reset.i.i = getelementptr inbounds %struct.sii8620, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %gpio_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpio_reset.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef 1) #11
  %supplies.i.i = getelementptr inbounds %struct.sii8620, ptr %1, i32 0, i32 6
  %call.i.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i.i) #11
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %if.then.if.end5_crit_edge
  tail call void @drm_bridge_remove(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sii8620_irq_thread(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %d.i.i = alloca [1 x i8], align 1
  %stats = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %stats) #11
  %lock = getelementptr inbounds %struct.sii8620, ptr %data, i32 0, i32 7
  %0 = call ptr @memset(ptr %stats, i32 255, i32 7)
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  call fastcc void @sii8620_read_buf(ptr noundef %data, i16 noundef zeroext 95, ptr noundef nonnull %stats, i32 noundef 7)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.024 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [10 x %struct.anon.97], ptr @sii8620_irq_thread.irq_vec, i32 0, i32 %i.024
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %div2.i = lshr i32 %2, 3
  %arrayidx.i = getelementptr i8, ptr %stats, i32 %div2.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %4 to i32
  %rem.i = and i32 %2, 7
  %5 = shl nuw nsw i32 1, %rem.i
  %6 = and i32 %5, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %handler = getelementptr [10 x %struct.anon.97], ptr @sii8620_irq_thread.irq_vec, i32 0, i32 %i.024, i32 1
  %7 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handler, align 4
  call void %8(ptr noundef %data) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %burst.i = getelementptr inbounds %struct.sii8620, ptr %data, i32 0, i32 28
  %rx_count.i = getelementptr inbounds %struct.sii8620, ptr %data, i32 0, i32 28, i32 3
  %9 = ptrtoint ptr %rx_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp17.i = icmp sgt i32 %10, 0
  br i1 %cmp17.i, label %while.body.preheader.i, label %for.end.sii8620_burst_rx_all.exit_crit_edge

for.end.sii8620_burst_rx_all.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_burst_rx_all.exit

while.body.preheader.i:                           ; preds = %for.end
  %rx_buf.i = getelementptr inbounds %struct.sii8620, ptr %data, i32 0, i32 28, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %while.body.preheader.i
  %d.019.i = phi ptr [ %add.ptr.i, %sw.epilog.i.while.body.i_crit_edge ], [ %rx_buf.i, %while.body.preheader.i ]
  %count.018.i = phi i32 [ %sub.i, %sw.epilog.i.while.body.i_crit_edge ], [ %10, %while.body.preheader.i ]
  %incdec.ptr.i = getelementptr i8, ptr %d.019.i, i32 1
  %11 = ptrtoint ptr %d.019.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %d.019.i, align 1
  %conv.i20 = zext i8 %12 to i32
  %13 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %incdec.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 99, i16 %14)
  %cond.i = icmp eq i16 %14, 99
  br i1 %cond.i, label %sw.bb.i, label %while.body.i.sw.epilog.i_crit_edge

while.body.i.sw.epilog.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx3.i = getelementptr i8, ptr %d.019.i, i32 3
  %15 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %arrayidx3.i, align 1
  %17 = call i16 @llvm.bswap.i16(i16 %16) #11
  %conv5.i = zext i16 %17 to i32
  %18 = ptrtoint ptr %burst.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv5.i, ptr %burst.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %while.body.i.sw.epilog.i_crit_edge
  %19 = xor i32 %conv.i20, -1
  %sub.i = add i32 %count.018.i, %19
  %add.ptr.i = getelementptr i8, ptr %incdec.ptr.i, i32 %conv.i20
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %sw.epilog.i.while.body.i_crit_edge, label %sw.epilog.i.sii8620_burst_rx_all.exit_crit_edge

sw.epilog.i.sii8620_burst_rx_all.exit_crit_edge:  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_burst_rx_all.exit

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

sii8620_burst_rx_all.exit:                        ; preds = %sw.epilog.i.sii8620_burst_rx_all.exit_crit_edge, %for.end.sii8620_burst_rx_all.exit_crit_edge
  %20 = ptrtoint ptr %rx_count.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %rx_count.i, align 4
  %error.i = getelementptr inbounds %struct.sii8620, ptr %data, i32 0, i32 8
  %21 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.end.i, label %sii8620_burst_rx_all.exit.sii8620_mt_work.exit_crit_edge

sii8620_burst_rx_all.exit.sii8620_mt_work.exit_crit_edge: ; preds = %sii8620_burst_rx_all.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_mt_work.exit

if.end.i:                                         ; preds = %sii8620_burst_rx_all.exit
  %mt_state.i = getelementptr inbounds %struct.sii8620, ptr %data, i32 0, i32 22
  %23 = ptrtoint ptr %mt_state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mt_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i21 = icmp eq i32 %24, 1
  br i1 %cmp.i21, label %if.end.i.sii8620_mt_work.exit_crit_edge, label %lor.lhs.false.i

if.end.i.sii8620_mt_work.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_mt_work.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %mt_queue.i = getelementptr inbounds %struct.sii8620, ptr %data, i32 0, i32 27
  %25 = ptrtoint ptr %mt_queue.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %mt_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %26, %mt_queue.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.sii8620_mt_work.exit_crit_edge, label %if.end3.i

lor.lhs.false.i.sii8620_mt_work.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_mt_work.exit

if.end3.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp5.i = icmp eq i32 %24, 2
  br i1 %cmp5.i, label %if.then6.i, label %if.end3.i.if.end17.i_crit_edge

if.end3.i.if.end17.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then6.i:                                       ; preds = %if.end3.i
  %27 = ptrtoint ptr %mt_state.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %mt_state.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %26) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then6.i.list_del.exit.i_crit_edge

if.then6.i.list_del.exit.i_crit_edge:             ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %26, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then6.i.list_del.exit.i_crit_edge
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %recv.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %26, i32 0, i32 4
  %36 = ptrtoint ptr %recv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %recv.i, align 4
  %tobool9.not.i = icmp eq ptr %37, null
  br i1 %tobool9.not.i, label %list_del.exit.i.if.end12.i_crit_edge, label %if.then10.i

list_del.exit.i.if.end12.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i

if.then10.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %37(ptr noundef %data, ptr noundef %26) #11
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %list_del.exit.i.if.end12.i_crit_edge
  %continuation.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %26, i32 0, i32 5
  %38 = ptrtoint ptr %continuation.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %continuation.i, align 4
  %tobool13.not.i = icmp eq ptr %39, null
  br i1 %tobool13.not.i, label %if.end12.i.if.end16.i_crit_edge, label %if.then14.i

if.end12.i.if.end16.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %ret.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %26, i32 0, i32 2
  %40 = ptrtoint ptr %ret.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ret.i, align 4
  %conv.i22 = zext i8 %41 to i32
  call void %39(ptr noundef %data, i32 noundef %conv.i22) #11
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end12.i.if.end16.i_crit_edge
  call void @kfree(ptr noundef %26) #11
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end16.i, %if.end3.i.if.end17.i_crit_edge
  %42 = ptrtoint ptr %mt_state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mt_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp19.not.i = icmp eq i32 %43, 0
  br i1 %cmp19.not.i, label %lor.lhs.false21.i, label %if.end17.i.sii8620_mt_work.exit_crit_edge

if.end17.i.sii8620_mt_work.exit_crit_edge:        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_mt_work.exit

lor.lhs.false21.i:                                ; preds = %if.end17.i
  %44 = ptrtoint ptr %mt_queue.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %mt_queue.i, align 4
  %cmp.i61.not.i = icmp eq ptr %45, %mt_queue.i
  br i1 %cmp.i61.not.i, label %lor.lhs.false21.i.sii8620_mt_work.exit_crit_edge, label %if.end26.i

lor.lhs.false21.i.sii8620_mt_work.exit_crit_edge: ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_mt_work.exit

if.end26.i:                                       ; preds = %lor.lhs.false21.i
  %46 = ptrtoint ptr %mt_state.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %mt_state.i, align 4
  %send.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %45, i32 0, i32 3
  %47 = ptrtoint ptr %send.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %send.i, align 4
  %tobool33.not.i = icmp eq ptr %48, null
  br i1 %tobool33.not.i, label %if.end26.i.sii8620_mt_work.exit_crit_edge, label %if.then34.i

if.end26.i.sii8620_mt_work.exit_crit_edge:        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_mt_work.exit

if.then34.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  call void %48(ptr noundef %data, ptr noundef %45) #11
  br label %sii8620_mt_work.exit

sii8620_mt_work.exit:                             ; preds = %if.then34.i, %if.end26.i.sii8620_mt_work.exit_crit_edge, %lor.lhs.false21.i.sii8620_mt_work.exit_crit_edge, %if.end17.i.sii8620_mt_work.exit_crit_edge, %lor.lhs.false.i.sii8620_mt_work.exit_crit_edge, %if.end.i.sii8620_mt_work.exit_crit_edge, %sii8620_burst_rx_all.exit.sii8620_mt_work.exit_crit_edge
  call fastcc void @sii8620_burst_send(ptr noundef %data)
  %49 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %error.i, align 4
  store i32 0, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not = icmp eq i32 %50, 0
  br i1 %tobool.not, label %sii8620_mt_work.exit.if.end5_crit_edge, label %do.end

sii8620_mt_work.exit.if.end5_crit_edge:           ; preds = %sii8620_mt_work.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

do.end:                                           ; preds = %sii8620_mt_work.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.sii8620, ptr %data, i32 0, i32 1
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.17, i32 noundef %50) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i) #11
  %53 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 16, ptr %d.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %data, i16 noundef zeroext 1507, ptr noundef nonnull %d.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i) #11
  %54 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -128, ptr %d.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %data, i16 noundef zeroext 1479, ptr noundef nonnull %d.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i) #11
  call fastcc void @sii8620_disconnect(ptr noundef %data) #11
  br label %if.end5

if.end5:                                          ; preds = %do.end, %sii8620_mt_work.exit.if.end5_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %stats) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sii8620_cable_in(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  %d.i50 = alloca [1 x i8], align 1
  %d.i = alloca [1 x i8], align 1
  %d12.i = alloca [1 x i8], align 1
  %ver = alloca [5 x i8], align 1
  %d = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %ver) #11
  %2 = getelementptr inbounds [5 x i8], ptr %ver, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %ver, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %ver, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %ver, i32 0, i32 4
  %supplies.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 6
  %6 = call ptr @memset(ptr %ver, i32 255, i32 5)
  %call.i = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #11
  %clk_xtal.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 3
  %7 = ptrtoint ptr %clk_xtal.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk_xtal.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i.i:                                       ; preds = %if.end.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %8) #11
  br label %do.end

do.end:                                           ; preds = %if.then3.i.i, %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i, %if.end.i.do.end_crit_edge ], [ %call1.i.i, %if.then3.i.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.89, i32 noundef %retval.0.i.ph) #14
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  tail call void @msleep(i32 noundef 100) #11
  %gpio_reset.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 4
  %9 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpio_reset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 0) #11
  tail call void @msleep(i32 noundef 100) #11
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 0, ptr noundef nonnull %ver, i32 noundef 5)
  %error.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %11 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error.i, align 4
  store i32 0, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  br i1 %tobool3.not, label %do.end11, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.92, i32 noundef %12) #14
  br label %cleanup

do.end11:                                         ; preds = %if.end
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %2, align 1
  %conv = zext i8 %14 to i32
  %15 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ver, align 1
  %conv13 = zext i8 %16 to i32
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %4, align 1
  %conv15 = zext i8 %18 to i32
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %3, align 1
  %conv17 = zext i8 %20 to i32
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %5, align 1
  %conv19 = zext i8 %22 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.95, i32 noundef %conv, i32 noundef %conv13, i32 noundef %conv15, i32 noundef %conv17, i32 noundef %conv19) #14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #11
  %23 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -48, ptr %d, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 11, ptr noundef nonnull %d, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #11
  %24 = ptrtoint ptr %clk_xtal.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_xtal.i, align 4
  %call.i49 = call i32 @clk_get_rate(ptr noundef %25) #11
  %div.i = udiv i32 %call.i49, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 19200999, i32 %call.i49)
  %cmp2.not.i = icmp ugt i32 %call.i49, 19200999
  br i1 %cmp2.not.i, label %for.inc.i, label %do.end11.for.end.i_crit_edge

do.end11.for.end.i_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.i:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000999, i32 %call.i49)
  %cmp2.not.1.i = icmp ugt i32 %call.i49, 20000999
  br i1 %cmp2.not.1.i, label %for.inc.1.i, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000999, i32 %call.i49)
  %cmp2.not.2.i = icmp ugt i32 %call.i49, 24000999
  br i1 %cmp2.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.end.i_crit_edge

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000999, i32 %call.i49)
  %cmp2.not.3.i = icmp ugt i32 %call.i49, 30000999
  %spec.select.i = select i1 %cmp2.not.3.i, i32 4, i32 3
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.2.i, %for.inc.1.i.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %do.end11.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %do.end11.for.end.i_crit_edge ], [ 1, %for.inc.i.for.end.i_crit_edge ], [ 2, %for.inc.1.i.for.end.i_crit_edge ], [ %spec.select.i, %for.inc.2.i ]
  %arrayidx3.i = getelementptr [5 x %struct.anon.106], ptr @sii8620_xtal_set_rate.rates, i32 0, i32 %i.0.lcssa.i
  %26 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %27)
  %cmp5.not.i = icmp eq i32 %div.i, %27
  br i1 %cmp5.not.i, label %for.end.i.sii8620_xtal_set_rate.exit_crit_edge, label %do.end.i

for.end.i.sii8620_xtal_set_rate.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_xtal_set_rate.exit

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.99, i32 noundef %div.i, i32 noundef %27) #14
  br label %sii8620_xtal_set_rate.exit

sii8620_xtal_set_rate.exit:                       ; preds = %do.end.i, %for.end.i.sii8620_xtal_set_rate.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %div11.i = getelementptr [5 x %struct.anon.106], ptr @sii8620_xtal_set_rate.rates, i32 0, i32 %i.0.lcssa.i, i32 1
  %30 = ptrtoint ptr %div11.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %div11.i, align 4
  %32 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1010, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d12.i) #11
  %tp1.i = getelementptr [5 x %struct.anon.106], ptr @sii8620_xtal_set_rate.rates, i32 0, i32 %i.0.lcssa.i, i32 2
  %33 = ptrtoint ptr %tp1.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tp1.i, align 1
  %35 = ptrtoint ptr %d12.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %d12.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 948, ptr noundef nonnull %d12.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d12.i) #11
  call fastcc void @sii8620_disconnect(ptr noundef %ctx)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i50) #11
  %36 = ptrtoint ptr %d.i50 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 2, ptr %d.i50, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 832, ptr noundef nonnull %d.i50, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i50) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i50) #11
  %37 = ptrtoint ptr %d.i50 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 4, ptr %d.i50, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 833, ptr noundef nonnull %d.i50, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i50) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i50) #11
  %38 = ptrtoint ptr %d.i50 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -48, ptr %d.i50, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 11, ptr noundef nonnull %d.i50, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i50) #11
  %39 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %error.i, align 4
  store i32 0, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool22.not = icmp eq i32 %40, 0
  br i1 %tobool22.not, label %if.end27, label %do.end26

do.end26:                                         ; preds = %sii8620_xtal_set_rate.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.92, i32 noundef %40) #14
  br label %cleanup

if.end27:                                         ; preds = %sii8620_xtal_set_rate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev1, align 4
  %irq = getelementptr i8, ptr %42, i32 932
  %43 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %44) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end26, %do.end7, %do.end
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %ver) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii8620_irq_disc(ptr noundef %ctx) #2 align 64 {
entry:
  %d.i.i56.i = alloca [1 x i8], align 1
  %d.i46.i = alloca [1 x i8], align 1
  %d.i.i.i.i = alloca [1 x i8], align 1
  %d.i.i45.i = alloca [1 x i8], align 1
  %d.i35.i = alloca [1 x i8], align 1
  %d.i25.i = alloca [1 x i8], align 1
  %ret.i.i.i = alloca i8, align 1
  %d.i24.i = alloca [1 x i8], align 1
  %d.i14.i = alloca [1 x i8], align 1
  %d.i2.i.i = alloca [1 x i8], align 1
  %ret.i.i.i.i = alloca i8, align 1
  %d.i.i.i = alloca [1 x i8], align 1
  %d.i.i28 = alloca [1 x i8], align 1
  %d.i = alloca [1 x i8], align 1
  %d.i.i27 = alloca [1 x i8], align 1
  %ret.i26 = alloca i8, align 1
  %d.i.i = alloca [1 x i8], align 1
  %ret.i = alloca i8, align 1
  %d = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i) #11
  %0 = ptrtoint ptr %ret.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ret.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 1517, ptr noundef nonnull %ret.i, i32 noundef 1) #11
  %1 = ptrtoint ptr %ret.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ret.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i) #11
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i) #11
  %3 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 16, ptr %d.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1507, ptr noundef nonnull %d.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i) #11
  %4 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -128, ptr %d.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1479, ptr noundef nonnull %d.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i) #11
  call fastcc void @sii8620_disconnect(ptr noundef %ctx) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i26) #11
  %5 = ptrtoint ptr %ret.i26 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ret.i26, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 1516, ptr noundef nonnull %ret.i26, i32 noundef 1) #11
  %6 = ptrtoint ptr %ret.i26 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ret.i26, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i26) #11
  %8 = and i8 %7, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp = icmp eq i8 %8, 2
  br i1 %cmp, label %if.then4.for.body.i.i_crit_edge, label %for.body.i.preheader

if.then4.for.body.i.i_crit_edge:                  ; preds = %if.then4
  br label %for.body.i.i

for.body.i.preheader:                             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %9 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 26, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1512, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %10 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 120, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1518, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  br label %if.end11

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then4.for.body.i.i_crit_edge
  %i.08.i.i = phi i32 [ %add2.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then4.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i27) #11
  %add.i.i = or i32 %i.08.i.i, 1
  %arrayidx.i.i = getelementptr i16, ptr @sii8620_mhl_discover.d, i32 %add.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = trunc i16 %12 to i8
  %13 = ptrtoint ptr %d.i.i27 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i.i, ptr %d.i.i27, align 1
  %arrayidx1.i.i = getelementptr i16, ptr @sii8620_mhl_discover.d, i32 %i.08.i.i
  %14 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx1.i.i, align 2
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext %15, ptr noundef nonnull %d.i.i27, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i27) #11
  %add2.i.i = add nuw nsw i32 %i.08.i.i, 2
  %cmp.i.i = icmp ult i32 %i.08.i.i, 32
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end11_crit_edge

for.body.i.i.if.end11_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.end11:                                         ; preds = %for.body.i.i.if.end11_crit_edge, %for.body.i.preheader, %if.end.if.end11_crit_edge
  %and13 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end11.if.end16_crit_edge, label %if.then15

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i28) #11
  %16 = ptrtoint ptr %d.i.i28 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 16, ptr %d.i.i28, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1507, ptr noundef nonnull %d.i.i28, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i28) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i28) #11
  %17 = ptrtoint ptr %d.i.i28 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -128, ptr %d.i.i28, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1479, ptr noundef nonnull %d.i.i28, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i28) #11
  call fastcc void @sii8620_peer_specific_init(ptr noundef %ctx) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i.i.i.i) #11
  %18 = ptrtoint ptr %ret.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %ret.i.i.i.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 739, ptr noundef nonnull %ret.i.i.i.i, i32 noundef 1) #11
  %19 = ptrtoint ptr %ret.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ret.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i.i.i.i) #11
  %and4.i.i.i = and i8 %20, 127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i.i) #11
  %21 = ptrtoint ptr %d.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %and4.i.i.i, ptr %d.i.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 739, ptr noundef nonnull %d.i.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i2.i.i) #11
  %22 = ptrtoint ptr %d.i2.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 16, ptr %d.i2.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 121, ptr noundef nonnull %d.i2.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i2.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i2.i.i) #11
  %23 = ptrtoint ptr %d.i2.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %d.i2.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 126, ptr noundef nonnull %d.i2.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i2.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i14.i) #11
  %24 = ptrtoint ptr %d.i14.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 16, ptr %d.i14.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 739, ptr noundef nonnull %d.i14.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i14.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i14.i) #11
  %25 = ptrtoint ptr %d.i14.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 18, ptr %d.i14.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1512, ptr noundef nonnull %d.i14.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i14.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i14.i) #11
  %26 = ptrtoint ptr %d.i14.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -112, ptr %d.i14.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 528, ptr noundef nonnull %d.i14.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i14.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i14.i) #11
  %27 = ptrtoint ptr %d.i14.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %d.i14.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 529, ptr noundef nonnull %d.i14.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i14.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i14.i) #11
  %28 = ptrtoint ptr %d.i14.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 17, ptr %d.i14.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 530, ptr noundef nonnull %d.i14.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i14.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i14.i) #11
  %29 = ptrtoint ptr %d.i14.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -121, ptr %d.i14.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 533, ptr noundef nonnull %d.i14.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i14.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i14.i) #11
  %30 = ptrtoint ptr %d.i14.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -24, ptr %d.i14.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 588, ptr noundef nonnull %d.i14.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i14.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i14.i) #11
  %31 = ptrtoint ptr %d.i14.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 4, ptr %d.i14.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 589, ptr noundef nonnull %d.i14.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i14.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i.i.i) #11
  %32 = ptrtoint ptr %ret.i.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %ret.i.i.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 199, ptr noundef nonnull %ret.i.i.i, i32 noundef 1) #11
  %33 = ptrtoint ptr %ret.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ret.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i.i.i) #11
  %and4.i.i = and i8 %34, 127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i24.i) #11
  %35 = ptrtoint ptr %d.i24.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %and4.i.i, ptr %d.i24.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 199, ptr noundef nonnull %d.i24.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i24.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i25.i) #11
  %36 = ptrtoint ptr %d.i25.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 118, ptr %d.i25.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1723, ptr noundef nonnull %d.i25.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i25.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i25.i) #11
  %37 = ptrtoint ptr %d.i25.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 16, ptr %d.i25.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 128, ptr noundef nonnull %d.i25.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i25.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i25.i) #11
  %38 = ptrtoint ptr %d.i25.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 79, ptr %d.i25.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1538, ptr noundef nonnull %d.i25.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i25.i) #11
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1024, ptr noundef nonnull @sii8620_set_dev_cap.devcap, i32 noundef 16) #11
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1152, ptr noundef nonnull @sii8620_set_dev_cap.xdcap, i32 noundef 4) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i35.i) #11
  %39 = ptrtoint ptr %d.i35.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 100, ptr %d.i35.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1413, ptr noundef nonnull %d.i35.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i35.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i35.i) #11
  %40 = ptrtoint ptr %d.i35.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 3, ptr %d.i35.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1416, ptr noundef nonnull %d.i35.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i35.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i35.i) #11
  %41 = ptrtoint ptr %d.i35.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %d.i35.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1419, ptr noundef nonnull %d.i35.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i35.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i35.i) #11
  %42 = ptrtoint ptr %d.i35.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 100, ptr %d.i35.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1412, ptr noundef nonnull %d.i35.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i35.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i35.i) #11
  %43 = ptrtoint ptr %d.i35.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 29, ptr %d.i35.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1447, ptr noundef nonnull %d.i35.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i35.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i45.i) #11
  %44 = ptrtoint ptr %d.i.i45.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -25, ptr %d.i.i45.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1423, ptr noundef nonnull %d.i.i45.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i45.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i45.i) #11
  %45 = ptrtoint ptr %d.i.i45.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 13, ptr %d.i.i45.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1421, ptr noundef nonnull %d.i.i45.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i45.i) #11
  %gen2_write_burst.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 21
  %46 = ptrtoint ptr %gen2_write_burst.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.i.i.i = load i8, ptr %gen2_write_burst.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then15.for.body.i54.i.preheader_crit_edge

if.then15.for.body.i54.i.preheader_crit_edge:     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i54.i.preheader

if.end.i.i.i:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %mode.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 10
  %47 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mode.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp.i2.i.i = icmp ugt i32 %48, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i.i.i) #11
  %49 = ptrtoint ptr %d.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 100, ptr %d.i.i.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1412, ptr noundef nonnull %d.i.i.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i.i.i) #11
  %conv.i.1.i.i.i = select i1 %cmp.i2.i.i, i8 -64, i8 -128
  %50 = ptrtoint ptr %d.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i.1.i.i.i, ptr %d.i.i.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1414, ptr noundef nonnull %d.i.i.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i.i.i) #11
  %51 = ptrtoint ptr %gen2_write_burst.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load8.i.i.i = load i8, ptr %gen2_write_burst.i.i.i, align 4
  %bf.set.i.i.i = or i8 %bf.load8.i.i.i, -128
  store i8 %bf.set.i.i.i, ptr %gen2_write_burst.i.i.i, align 4
  br label %for.body.i54.i.preheader

for.body.i54.i.preheader:                         ; preds = %if.end.i.i.i, %if.then15.for.body.i54.i.preheader_crit_edge
  br label %for.body.i54.i

for.body.i54.i:                                   ; preds = %for.body.i54.i.for.body.i54.i_crit_edge, %for.body.i54.i.preheader
  %i.08.i47.i = phi i32 [ %add2.i52.i, %for.body.i54.i.for.body.i54.i_crit_edge ], [ 0, %for.body.i54.i.preheader ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i46.i) #11
  %add.i48.i = or i32 %i.08.i47.i, 1
  %arrayidx.i49.i = getelementptr i16, ptr @sii8620_mhl_init.d.22, i32 %add.i48.i
  %52 = ptrtoint ptr %arrayidx.i49.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.i49.i, align 2
  %conv.i50.i = trunc i16 %53 to i8
  %54 = ptrtoint ptr %d.i46.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv.i50.i, ptr %d.i46.i, align 1
  %arrayidx1.i51.i = getelementptr i16, ptr @sii8620_mhl_init.d.22, i32 %i.08.i47.i
  %55 = ptrtoint ptr %arrayidx1.i51.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx1.i51.i, align 2
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext %56, ptr noundef nonnull %d.i46.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i46.i) #11
  %add2.i52.i = add nuw nsw i32 %i.08.i47.i, 2
  %cmp.i53.i = icmp ult i32 %i.08.i47.i, 24
  br i1 %cmp.i53.i, label %for.body.i54.i.for.body.i54.i_crit_edge, label %__sii8620_write_seq.exit55.i

for.body.i54.i.for.body.i54.i_crit_edge:          ; preds = %for.body.i54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i54.i

__sii8620_write_seq.exit55.i:                     ; preds = %for.body.i54.i
  %57 = ptrtoint ptr %gen2_write_burst.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load.i.i = load i8, ptr %gen2_write_burst.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %__sii8620_write_seq.exit55.i.sii8620_disable_gen2_write_burst.exit.i_crit_edge, label %for.body.i.preheader.i.i

__sii8620_write_seq.exit55.i.sii8620_disable_gen2_write_burst.exit.i_crit_edge: ; preds = %__sii8620_write_seq.exit55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_disable_gen2_write_burst.exit.i

for.body.i.preheader.i.i:                         ; preds = %__sii8620_write_seq.exit55.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i56.i) #11
  %58 = ptrtoint ptr %d.i.i56.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %d.i.i56.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1416, ptr noundef nonnull %d.i.i56.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i56.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i56.i) #11
  %59 = ptrtoint ptr %d.i.i56.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %d.i.i56.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1414, ptr noundef nonnull %d.i.i56.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i56.i) #11
  %60 = ptrtoint ptr %gen2_write_burst.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load2.i.i = load i8, ptr %gen2_write_burst.i.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load2.i.i, 127
  store i8 %bf.clear.i.i, ptr %gen2_write_burst.i.i.i, align 4
  br label %sii8620_disable_gen2_write_burst.exit.i

sii8620_disable_gen2_write_burst.exit.i:          ; preds = %for.body.i.preheader.i.i, %__sii8620_write_seq.exit55.i.sii8620_disable_gen2_write_burst.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i.i.i = icmp eq ptr %call7.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %sii8620_mt_msg_new.exit.i.i.i, label %if.else.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %sii8620_disable_gen2_write_burst.exit.i
  %mt_queue.i.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %prev.i.i.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27, i32 1
  %62 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i.i, ptr noundef %63, ptr noundef %mt_queue.i.i.i.i) #11
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.else.i.i.i.i.if.end.i.i57.i_crit_edge

if.else.i.i.i.i.if.end.i.i57.i_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i57.i

if.end.i.i.i.i.i.i:                               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i.i.i.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %65 = ptrtoint ptr %call7.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %mt_queue.i.i.i.i, ptr %call7.i.i.i.i.i.i, align 8
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev3.i.i.i.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %call7.i.i.i.i.i.i, ptr %63, align 4
  br label %if.end.i.i57.i

sii8620_mt_msg_new.exit.i.i.i:                    ; preds = %sii8620_disable_gen2_write_burst.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %error.i.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %68 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -12, ptr %error.i.i.i.i, align 4
  br label %sii8620_mt_write_stat.exit.i

if.end.i.i57.i:                                   ; preds = %if.end.i.i.i.i.i.i, %if.else.i.i.i.i.if.end.i.i57.i_crit_edge
  %reg.i.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -32, ptr %reg.i.i.i, align 8
  %arrayidx2.i.i.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 50, ptr %arrayidx2.i.i.i, align 1
  %arrayidx4.i.i.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i, i32 0, i32 1, i32 2
  %71 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 50, ptr %arrayidx4.i.i.i, align 2
  %send.i.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i, i32 0, i32 3
  %72 = ptrtoint ptr %send.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @sii8620_mt_msc_cmd_send, ptr %send.i.i.i, align 8
  br label %sii8620_mt_write_stat.exit.i

sii8620_mt_write_stat.exit.i:                     ; preds = %if.end.i.i57.i, %sii8620_mt_msg_new.exit.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i58.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i.i59.i = icmp eq ptr %call7.i.i.i.i.i58.i, null
  br i1 %tobool.not.i.i.i59.i, label %sii8620_mt_msg_new.exit.i.i67.i, label %if.else.i.i.i63.i

if.else.i.i.i63.i:                                ; preds = %sii8620_mt_write_stat.exit.i
  %mt_queue.i.i.i60.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %prev.i.i.i.i61.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27, i32 1
  %74 = ptrtoint ptr %prev.i.i.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i.i.i61.i, align 4
  %call.i.i.i.i.i62.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i58.i, ptr noundef %75, ptr noundef %mt_queue.i.i.i60.i) #11
  br i1 %call.i.i.i.i.i62.i, label %if.end.i.i.i.i.i65.i, label %if.else.i.i.i63.i.if.end.i.i72.i_crit_edge

if.else.i.i.i63.i.if.end.i.i72.i_crit_edge:       ; preds = %if.else.i.i.i63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i72.i

if.end.i.i.i.i.i65.i:                             ; preds = %if.else.i.i.i63.i
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %prev.i.i.i.i61.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i.i.i.i58.i, ptr %prev.i.i.i.i61.i, align 4
  %77 = ptrtoint ptr %call7.i.i.i.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %mt_queue.i.i.i60.i, ptr %call7.i.i.i.i.i58.i, align 8
  %prev3.i.i.i.i.i64.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i58.i, i32 0, i32 1
  %78 = ptrtoint ptr %prev3.i.i.i.i.i64.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev3.i.i.i.i.i64.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %call7.i.i.i.i.i58.i, ptr %75, align 4
  br label %if.end.i.i72.i

sii8620_mt_msg_new.exit.i.i67.i:                  ; preds = %sii8620_mt_write_stat.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %error.i.i.i66.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %80 = ptrtoint ptr %error.i.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -12, ptr %error.i.i.i66.i, align 4
  br label %sii8620_mt_write_stat.exit73.i

if.end.i.i72.i:                                   ; preds = %if.end.i.i.i.i.i65.i, %if.else.i.i.i63.i.if.end.i.i72.i_crit_edge
  %reg.i.i68.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i58.i, i32 0, i32 1
  %81 = ptrtoint ptr %reg.i.i68.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -32, ptr %reg.i.i68.i, align 8
  %arrayidx2.i.i69.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i58.i, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %arrayidx2.i.i69.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 48, ptr %arrayidx2.i.i69.i, align 1
  %arrayidx4.i.i70.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i58.i, i32 0, i32 1, i32 2
  %83 = ptrtoint ptr %arrayidx4.i.i70.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 7, ptr %arrayidx4.i.i70.i, align 2
  %send.i.i71.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i58.i, i32 0, i32 3
  %84 = ptrtoint ptr %send.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @sii8620_mt_msc_cmd_send, ptr %send.i.i71.i, align 8
  br label %sii8620_mt_write_stat.exit73.i

sii8620_mt_write_stat.exit73.i:                   ; preds = %if.end.i.i72.i, %sii8620_mt_msg_new.exit.i.i67.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %85 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i74.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %85, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i.i75.i = icmp eq ptr %call7.i.i.i.i.i74.i, null
  br i1 %tobool.not.i.i.i75.i, label %sii8620_mt_msg_new.exit.i.i83.i, label %if.else.i.i.i79.i

if.else.i.i.i79.i:                                ; preds = %sii8620_mt_write_stat.exit73.i
  %mt_queue.i.i.i76.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %prev.i.i.i.i77.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27, i32 1
  %86 = ptrtoint ptr %prev.i.i.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i.i.i77.i, align 4
  %call.i.i.i.i.i78.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i74.i, ptr noundef %87, ptr noundef %mt_queue.i.i.i76.i) #11
  br i1 %call.i.i.i.i.i78.i, label %if.end.i.i.i.i.i81.i, label %if.else.i.i.i79.i.if.end.i.i88.i_crit_edge

if.else.i.i.i79.i.if.end.i.i88.i_crit_edge:       ; preds = %if.else.i.i.i79.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i88.i

if.end.i.i.i.i.i81.i:                             ; preds = %if.else.i.i.i79.i
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %prev.i.i.i.i77.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call7.i.i.i.i.i74.i, ptr %prev.i.i.i.i77.i, align 4
  %89 = ptrtoint ptr %call7.i.i.i.i.i74.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %mt_queue.i.i.i76.i, ptr %call7.i.i.i.i.i74.i, align 8
  %prev3.i.i.i.i.i80.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i74.i, i32 0, i32 1
  %90 = ptrtoint ptr %prev3.i.i.i.i.i80.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev3.i.i.i.i.i80.i, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %call7.i.i.i.i.i74.i, ptr %87, align 4
  br label %if.end.i.i88.i

sii8620_mt_msg_new.exit.i.i83.i:                  ; preds = %sii8620_mt_write_stat.exit73.i
  call void @__sanitizer_cov_trace_pc() #13
  %error.i.i.i82.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %92 = ptrtoint ptr %error.i.i.i82.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -12, ptr %error.i.i.i82.i, align 4
  br label %if.end16

if.end.i.i88.i:                                   ; preds = %if.end.i.i.i.i.i81.i, %if.else.i.i.i79.i.if.end.i.i88.i_crit_edge
  %reg.i.i84.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i74.i, i32 0, i32 1
  %93 = ptrtoint ptr %reg.i.i84.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 96, ptr %reg.i.i84.i, align 8
  %arrayidx2.i.i85.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i74.i, i32 0, i32 1, i32 1
  %94 = ptrtoint ptr %arrayidx2.i.i85.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 32, ptr %arrayidx2.i.i85.i, align 1
  %arrayidx4.i.i86.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i74.i, i32 0, i32 1, i32 2
  %95 = ptrtoint ptr %arrayidx4.i.i86.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %arrayidx4.i.i86.i, align 2
  %send.i.i87.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i74.i, i32 0, i32 3
  %96 = ptrtoint ptr %send.i.i87.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @sii8620_mt_msc_cmd_send, ptr %send.i.i87.i, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end.i.i88.i, %sii8620_mt_msg_new.exit.i.i83.i, %if.end11.if.end16_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #11
  %97 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %2, ptr %d, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1517, ptr noundef nonnull %d, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii8620_irq_g2wb(ptr noundef %ctx) #2 align 64 {
entry:
  %ret.i.i = alloca i8, align 1
  %buf.i = alloca [17 x i8], align 1
  %d.i = alloca [1 x i8], align 1
  %ret.i = alloca i8, align 1
  %d = alloca [1 x i8], align 1
  %d14 = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i) #11
  %0 = ptrtoint ptr %ret.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ret.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 1420, ptr noundef nonnull %ret.i, i32 noundef 1) #11
  %1 = ptrtoint ptr %ret.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ret.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i) #11
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %entry
  %mode.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 10
  %3 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i = icmp ugt i32 %4, 2
  br i1 %cmp.i, label %if.then2, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %sii8620_mt_msg_new.exit.i.i, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %if.then2
  %mt_queue.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %prev.i.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27, i32 1
  %6 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %7, ptr noundef %mt_queue.i.i.i) #11
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.else.i.i.i.if.end.i.i_crit_edge

if.else.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i.i.i.i, ptr %prev.i.i.i.i, align 4
  %9 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mt_queue.i.i.i, ptr %call7.i.i.i.i.i, align 8
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call7.i.i.i.i.i, ptr %7, align 4
  br label %if.end.i.i

sii8620_mt_msg_new.exit.i.i:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %error.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %12 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -12, ptr %error.i.i.i, align 4
  br label %if.end3

if.end.i.i:                                       ; preds = %if.end.i.i.i.i.i, %if.else.i.i.i.if.end.i.i_crit_edge
  %reg.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 96, ptr %reg.i.i, align 8
  %arrayidx2.i.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 32, ptr %arrayidx2.i.i, align 1
  %arrayidx4.i.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 64, ptr %arrayidx4.i.i, align 2
  %send.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %send.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sii8620_mt_msc_cmd_send, ptr %send.i.i, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.end.i.i, %sii8620_mt_msg_new.exit.i.i, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %and5 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end3.if.end8_crit_edge, label %if.then7

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %buf.i) #11
  %17 = call ptr @memset(ptr %buf.i, i32 255, i32 17)
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 1415, ptr noundef nonnull %buf.i, i32 noundef 17) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %18 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -63, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1414, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i.i) #11
  %19 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %ret.i.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 1418, ptr noundef nonnull %ret.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i.i) #11
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buf.i) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end3.if.end8_crit_edge
  %and10 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end13_crit_edge, label %if.then12

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #11
  %20 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %d, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1416, ptr noundef nonnull %d, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end8.if.end13_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d14) #11
  %21 = ptrtoint ptr %d14 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %2, ptr %d14, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1420, ptr noundef nonnull %d14, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d14) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii8620_irq_coc(ptr nocapture noundef %ctx) #2 align 64 {
entry:
  %d.i = alloca [1 x i8], align 1
  %ret.i14 = alloca i8, align 1
  %ret.i = alloca i8, align 1
  %d = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i) #11
  %0 = ptrtoint ptr %ret.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ret.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 1830, ptr noundef nonnull %ret.i, i32 noundef 1) #11
  %1 = ptrtoint ptr %ret.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ret.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i) #11
  %3 = and i8 %2, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i14) #11
  %4 = ptrtoint ptr %ret.i14 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ret.i14, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 1792, ptr noundef nonnull %ret.i14, i32 noundef 1) #11
  %5 = ptrtoint ptr %ret.i14 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ret.i14, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i14) #11
  %7 = and i8 %6, -113
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %7)
  %cmp = icmp eq i8 %7, -126
  br i1 %cmp, label %for.body.i.preheader, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

for.body.i.preheader:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %8 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1819, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %9 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 358, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  br label %if.end8

if.end8:                                          ; preds = %for.body.i.preheader, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #11
  %10 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %2, ptr %d, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1830, ptr noundef nonnull %d, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii8620_irq_tdm(ptr noundef %ctx) #2 align 64 {
entry:
  %d.i = alloca [1 x i8], align 1
  %ret.i13 = alloca i8, align 1
  %ret.i = alloca i8, align 1
  %d = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i) #11
  %0 = ptrtoint ptr %ret.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ret.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 356, ptr noundef nonnull %ret.i, i32 noundef 1) #11
  %1 = ptrtoint ptr %ret.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ret.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i13) #11
  %3 = ptrtoint ptr %ret.i13 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %ret.i13, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 348, ptr noundef nonnull %ret.i13, i32 noundef 1) #11
  %4 = ptrtoint ptr %ret.i13 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ret.i13, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i13) #11
  %6 = and i8 %5, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %6)
  %cmp = icmp eq i8 %6, -128
  br i1 %cmp, label %if.then, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %7 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 825, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %8 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -128, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 825, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  br label %if.end

if.then:                                          ; preds = %entry
  %mode = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 10
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %mode, align 4
  %burst = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 28
  %rx_ack = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 28, i32 2
  %10 = ptrtoint ptr %rx_ack to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rx_ack, align 4
  %11 = ptrtoint ptr %burst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 288, ptr %burst, align 4
  %tx_count.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 28, i32 5
  %12 = ptrtoint ptr %tx_count.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_count.i.i, align 4
  %add4.i.i = add i32 %13, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add4.i.i)
  %cmp.i.i = icmp ugt i32 %add4.i.i, 32
  br i1 %cmp.i.i, label %sii8620_burst_get_tx_buf.exit.thread.i, label %sii8620_burst_get_tx_buf.exit.i

sii8620_burst_get_tx_buf.exit.thread.i:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.32) #14
  %error.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %16 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -22, ptr %error.i.i, align 4
  br label %sii8620_burst_tx_rbuf_info.exit

sii8620_burst_get_tx_buf.exit.i:                  ; preds = %if.then
  %arrayidx.i.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 28, i32 6, i32 %13
  %17 = ptrtoint ptr %tx_count.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add4.i.i, ptr %tx_count.i.i, align 4
  %arrayidx8.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 1
  %18 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %arrayidx8.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 2
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %sii8620_burst_get_tx_buf.exit.i.sii8620_burst_tx_rbuf_info.exit_crit_edge, label %if.end.i

sii8620_burst_get_tx_buf.exit.i.sii8620_burst_tx_rbuf_info.exit_crit_edge: ; preds = %sii8620_burst_get_tx_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_burst_tx_rbuf_info.exit

if.end.i:                                         ; preds = %sii8620_burst_get_tx_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 99, ptr %add.ptr.i.i, align 1
  %size1.i = getelementptr i8, ptr %arrayidx.i.i, i32 4
  %20 = ptrtoint ptr %size1.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 8193, ptr %size1.i, align 1
  br label %sii8620_burst_tx_rbuf_info.exit

sii8620_burst_tx_rbuf_info.exit:                  ; preds = %if.end.i, %sii8620_burst_get_tx_buf.exit.i.sii8620_burst_tx_rbuf_info.exit_crit_edge, %sii8620_burst_get_tx_buf.exit.thread.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %sii8620_mt_msg_new.exit.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %sii8620_burst_tx_rbuf_info.exit
  %mt_queue.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %prev.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %23, ptr noundef %mt_queue.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.else.i.i.if.end.i15_crit_edge

if.else.i.i.if.end.i15_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i15

if.end.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %mt_queue.i.i, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i.i.i.i, ptr %23, align 4
  br label %if.end.i15

sii8620_mt_msg_new.exit.i:                        ; preds = %sii8620_burst_tx_rbuf_info.exit
  call void @__sanitizer_cov_trace_pc() #13
  %error.i.i14 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %28 = ptrtoint ptr %error.i.i14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -12, ptr %error.i.i14, align 4
  br label %sii8620_mt_read_devcap.exit

if.end.i15:                                       ; preds = %if.end.i.i.i.i, %if.else.i.i.if.end.i15_crit_edge
  %reg.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 117, ptr %reg.i, align 8
  %send.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %send.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @sii8620_mt_read_devcap_send, ptr %send.i, align 8
  %recv.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %recv.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @sii8620_mt_read_devcap_recv, ptr %recv.i, align 4
  br label %sii8620_mt_read_devcap.exit

sii8620_mt_read_devcap.exit:                      ; preds = %if.end.i15, %sii8620_mt_msg_new.exit.i
  %error.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %32 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i16 = icmp eq i32 %33, 0
  br i1 %tobool.not.i16, label %if.end.i17, label %sii8620_mt_read_devcap.exit.if.end_crit_edge

sii8620_mt_read_devcap.exit.if.end_crit_edge:     ; preds = %sii8620_mt_read_devcap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i17:                                       ; preds = %sii8620_mt_read_devcap.exit
  %mt_queue.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %34 = ptrtoint ptr %mt_queue.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %mt_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %35, %mt_queue.i
  br i1 %cmp.i.not.i, label %if.then2.i, label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -22, ptr %error.i, align 4
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i, align 4
  %continuation.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %continuation.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @sii8620_got_xdevcap, ptr %continuation.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end4.i, %if.then2.i, %sii8620_mt_read_devcap.exit.if.end_crit_edge, %for.body.i.preheader
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #11
  %40 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %2, ptr %d, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 356, ptr noundef nonnull %d, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii8620_irq_msc(ptr noundef %ctx) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %ret.i.i = alloca i8, align 1
  %d.i2.i.i82 = alloca [1 x i8], align 1
  %ret.i.i.i.i83 = alloca i8, align 1
  %d.i.i.i84 = alloca [1 x i8], align 1
  %buf.i.i = alloca [16 x i8], align 2
  %d.i.i85 = alloca [1 x i8], align 1
  %ints.i = alloca [2 x i8], align 1
  %d.i2.i.i = alloca [1 x i8], align 1
  %ret.i.i.i.i = alloca i8, align 1
  %d.i.i.i = alloca [1 x i8], align 1
  %d.i.i = alloca [1 x i8], align 1
  %st.i = alloca [3 x i8], align 1
  %xst.i = alloca [4 x i8], align 4
  %ret.i81 = alloca i8, align 1
  %ret.i = alloca i8, align 1
  %d = alloca [1 x i8], align 1
  %d14 = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i) #11
  %0 = ptrtoint ptr %ret.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ret.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 1426, ptr noundef nonnull %ret.i, i32 noundef 1) #11
  %1 = ptrtoint ptr %ret.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ret.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i) #11
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 251
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #11
  %conv3 = trunc i32 %and to i8
  %3 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %d, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1426, ptr noundef nonnull %d, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and5 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end24_crit_edge, label %if.then7

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then7:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i81) #11
  %4 = ptrtoint ptr %ret.i81 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ret.i81, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 1425, ptr noundef nonnull %ret.i81, i32 noundef 1) #11
  %5 = ptrtoint ptr %ret.i81 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ret.i81, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i81) #11
  %cbus_status = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 12
  %7 = ptrtoint ptr %cbus_status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cbus_status, align 4
  %xor80 = xor i8 %8, %6
  %9 = and i8 %xor80, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d14) #11
  %10 = ptrtoint ptr %d14 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %d14, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1426, ptr noundef nonnull %d14, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d14) #11
  br label %if.end22

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %xor17 = xor i8 %2, 4
  %11 = xor i8 %6, 4
  %.pre138 = zext i8 %xor17 to i32
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then13
  %.pre.pre-phi = phi i32 [ %.pre138, %if.else ], [ %conv, %if.then13 ]
  %cbus_stat.0 = phi i8 [ %11, %if.else ], [ %6, %if.then13 ]
  %12 = ptrtoint ptr %cbus_status to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %cbus_stat.0, ptr %cbus_status, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %if.end.if.end24_crit_edge
  %conv25.pre-phi = phi i32 [ %.pre.pre-phi, %if.end22 ], [ %conv, %if.end.if.end24_crit_edge ]
  %and26 = and i32 %conv25.pre-phi, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end29_crit_edge, label %if.then28

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then28:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %st.i) #11
  %13 = ptrtoint ptr %st.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %st.i, align 1, !annotation !262
  %14 = getelementptr inbounds [3 x i8], ptr %st.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %14, align 1, !annotation !262
  %16 = getelementptr inbounds [3 x i8], ptr %st.i, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %16, align 1, !annotation !262
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xst.i) #11
  %18 = getelementptr inbounds [4 x i8], ptr %xst.i, i32 0, i32 1
  %19 = ptrtoint ptr %xst.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %xst.i, align 4
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 1072, ptr noundef nonnull %st.i, i32 noundef 3) #11
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 1168, ptr noundef nonnull %xst.i, i32 noundef 4) #11
  %stat.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 13
  %20 = ptrtoint ptr %stat.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %stat.i, align 1
  %22 = ptrtoint ptr %st.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %st.i, align 1
  %xor10.i.i = xor i8 %23, %21
  store i8 %xor10.i.i, ptr %st.i, align 1
  %incdec.ptr4.i.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 13, i32 1
  store i8 %23, ptr %stat.i, align 1
  %24 = ptrtoint ptr %incdec.ptr4.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr4.i.i, align 1
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %14, align 1
  %xor10.i.1.i = xor i8 %27, %25
  store i8 %xor10.i.1.i, ptr %14, align 1
  %incdec.ptr4.i.1.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 13, i32 2
  store i8 %27, ptr %incdec.ptr4.i.i, align 1
  %28 = ptrtoint ptr %incdec.ptr4.i.1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr4.i.1.i, align 1
  %30 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %16, align 1
  %xor10.i.2.i = xor i8 %31, %29
  store i8 %xor10.i.2.i, ptr %16, align 1
  store i8 %31, ptr %incdec.ptr4.i.1.i, align 1
  %xstat.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 14
  %32 = ptrtoint ptr %xstat.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %xstat.i, align 1
  %34 = ptrtoint ptr %xst.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %xst.i, align 4
  %xor10.i30.i = xor i8 %35, %33
  store i8 %xor10.i30.i, ptr %xst.i, align 4
  %incdec.ptr4.i32.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 14, i32 1
  store i8 %35, ptr %xstat.i, align 1
  %36 = ptrtoint ptr %incdec.ptr4.i32.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr4.i32.i, align 1
  %38 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %18, align 1
  %xor10.i30.1.i = xor i8 %39, %37
  store i8 %xor10.i30.1.i, ptr %18, align 1
  %incdec.ptr.i31.1.i = getelementptr inbounds [4 x i8], ptr %xst.i, i32 0, i32 2
  %incdec.ptr4.i32.1.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 14, i32 2
  store i8 %39, ptr %incdec.ptr4.i32.i, align 1
  %40 = ptrtoint ptr %incdec.ptr4.i32.1.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %incdec.ptr4.i32.1.i, align 1
  %42 = ptrtoint ptr %incdec.ptr.i31.1.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %incdec.ptr.i31.1.i, align 2
  %xor10.i30.2.i = xor i8 %43, %41
  store i8 %xor10.i30.2.i, ptr %incdec.ptr.i31.1.i, align 2
  %incdec.ptr.i31.2.i = getelementptr inbounds [4 x i8], ptr %xst.i, i32 0, i32 3
  %incdec.ptr4.i32.2.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 14, i32 3
  store i8 %43, ptr %incdec.ptr4.i32.1.i, align 1
  %44 = ptrtoint ptr %incdec.ptr4.i32.2.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %incdec.ptr4.i32.2.i, align 1
  %46 = ptrtoint ptr %incdec.ptr.i31.2.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %incdec.ptr.i31.2.i, align 1
  %xor10.i30.3.i = xor i8 %47, %45
  store i8 %xor10.i30.3.i, ptr %incdec.ptr.i31.2.i, align 1
  store i8 %47, ptr %incdec.ptr4.i32.2.i, align 1
  %and26.i = and i8 %23, 1
  %48 = and i8 %and26.i, %xor10.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i, label %if.then28.if.end11.i_crit_edge, label %if.then.i

if.then28.if.end11.i_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %31)
  %cmp.i38.i = icmp ugt i8 %31, 47
  %cond.i.i = select i1 %cmp.i38.i, i32 3, i32 2
  %mode2.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 10
  %49 = ptrtoint ptr %mode2.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mode2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %50)
  %cmp3.i.i = icmp ugt i32 %cond.i.i, %50
  br i1 %cmp3.i.i, label %if.then.i.i, label %if.then.i.sii8620_status_dcap_ready.exit.i_crit_edge

if.then.i.sii8620_status_dcap_ready.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_status_dcap_ready.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @sii8620_set_mode(ptr noundef %ctx, i32 noundef %cond.i.i) #11
  br label %sii8620_status_dcap_ready.exit.i

sii8620_status_dcap_ready.exit.i:                 ; preds = %if.then.i.i, %if.then.i.sii8620_status_dcap_ready.exit.i_crit_edge
  call fastcc void @sii8620_peer_specific_init(ptr noundef %ctx) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i) #11
  %51 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 112, ptr %d.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 737, ptr noundef nonnull %d.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i) #11
  %52 = ptrtoint ptr %mode2.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mode2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp.i39.i = icmp ugt i32 %53, 2
  br i1 %cmp.i39.i, label %sii8620_status_dcap_ready.exit.i.if.end11.i_crit_edge, label %if.then10.i

sii8620_status_dcap_ready.exit.i.if.end11.i_crit_edge: ; preds = %sii8620_status_dcap_ready.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then10.i:                                      ; preds = %sii8620_status_dcap_ready.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %sii8620_mt_msg_new.exit.i.i, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %if.then10.i
  %mt_queue.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %prev.i.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27, i32 1
  %55 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %56, ptr noundef %mt_queue.i.i.i) #11
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.else.i.i.i.if.end.i.i_crit_edge

if.else.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.i.i.i.i, ptr %prev.i.i.i.i, align 4
  %58 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %mt_queue.i.i.i, ptr %call7.i.i.i.i.i, align 8
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev3.i.i.i.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %call7.i.i.i.i.i, ptr %56, align 4
  br label %if.end.i.i

sii8620_mt_msg_new.exit.i.i:                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  %error.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %61 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -12, ptr %error.i.i.i, align 4
  br label %if.end11.i

if.end.i.i:                                       ; preds = %if.end.i.i.i.i.i, %if.else.i.i.i.if.end.i.i_crit_edge
  %reg.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 116, ptr %reg.i.i, align 8
  %send.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %send.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @sii8620_mt_read_devcap_send, ptr %send.i.i, align 8
  %recv.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i, i32 0, i32 4
  %64 = ptrtoint ptr %recv.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @sii8620_mt_read_devcap_recv, ptr %recv.i.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i.i, %sii8620_mt_msg_new.exit.i.i, %sii8620_status_dcap_ready.exit.i.if.end11.i_crit_edge, %if.then28.if.end11.i_crit_edge
  %65 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %14, align 1
  %67 = and i8 %66, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool15.not.i = icmp eq i8 %67, 0
  br i1 %tobool15.not.i, label %if.end11.i.sii8620_msc_mr_write_stat.exit_crit_edge, label %if.then16.i

if.end11.i.sii8620_msc_mr_write_stat.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_msc_mr_write_stat.exit

if.then16.i:                                      ; preds = %if.end11.i
  %use_packed_pixel.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 9
  %68 = ptrtoint ptr %use_packed_pixel.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load.i.i = load i8, ptr %use_packed_pixel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %..i.i = select i1 %tobool.not.i.i, i8 3, i8 2
  %69 = ptrtoint ptr %incdec.ptr4.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %incdec.ptr4.i.i, align 1
  %71 = and i8 %70, 8
  %72 = or i8 %71, %..i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i.i.i.i = icmp eq ptr %call7.i.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %sii8620_mt_msg_new.exit.i.i.i.i, label %if.else.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then16.i
  %mt_queue.i.i.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27, i32 1
  %74 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i.i.i, ptr noundef %75, ptr noundef %mt_queue.i.i.i.i.i) #11
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end.i.i.i.i_crit_edge

if.else.i.i.i.i.i.if.end.i.i.i.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %77 = ptrtoint ptr %call7.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %mt_queue.i.i.i.i.i, ptr %call7.i.i.i.i.i.i.i, align 8
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev3.i.i.i.i.i.i.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %call7.i.i.i.i.i.i.i, ptr %75, align 4
  br label %if.end.i.i.i.i

sii8620_mt_msg_new.exit.i.i.i.i:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  %error.i.i.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %80 = ptrtoint ptr %error.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -12, ptr %error.i.i.i.i.i, align 4
  br label %sii8620_msc_mr_write_stat.exit

if.end.i.i.i.i:                                   ; preds = %if.end.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.if.end.i.i.i.i_crit_edge
  %reg.i.i.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %reg.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -32, ptr %reg.i.i.i.i, align 8
  %arrayidx2.i.i.i.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 49, ptr %arrayidx2.i.i.i.i, align 1
  %arrayidx4.i.i.i.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 1, i32 2
  %83 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %72, ptr %arrayidx4.i.i.i.i, align 2
  %send.i.i.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i.i, i32 0, i32 3
  %84 = ptrtoint ptr %send.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @sii8620_mt_msc_cmd_send, ptr %send.i.i.i.i, align 8
  br label %sii8620_msc_mr_write_stat.exit

sii8620_msc_mr_write_stat.exit:                   ; preds = %if.end.i.i.i.i, %sii8620_mt_msg_new.exit.i.i.i.i, %if.end11.i.sii8620_msc_mr_write_stat.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xst.i) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %st.i) #11
  br label %if.end29

if.end29:                                         ; preds = %sii8620_msc_mr_write_stat.exit, %if.end24.if.end29_crit_edge
  %and31 = and i32 %conv25.pre-phi, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end41_crit_edge, label %if.then33

if.end29.if.end41_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then33:                                        ; preds = %if.end29
  %cbus_status34 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 12
  %85 = ptrtoint ptr %cbus_status34 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %cbus_status34, align 4
  %87 = and i8 %86, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool37.not = icmp eq i8 %87, 0
  br i1 %tobool37.not, label %if.else39, label %if.then38

if.then38:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %sink_detected = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 19
  %88 = ptrtoint ptr %sink_detected to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %sink_detected, align 2
  call fastcc void @sii8620_identify_sink(ptr noundef %ctx)
  br label %if.end41

if.else39:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i.i.i.i) #11
  %89 = ptrtoint ptr %ret.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %ret.i.i.i.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 739, ptr noundef nonnull %ret.i.i.i.i, i32 noundef 1) #11
  %90 = ptrtoint ptr %ret.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ret.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i.i.i.i) #11
  %and4.i.i.i = and i8 %91, 127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i.i) #11
  %92 = ptrtoint ptr %d.i.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %and4.i.i.i, ptr %d.i.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 739, ptr noundef nonnull %d.i.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i2.i.i) #11
  %93 = ptrtoint ptr %d.i2.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 16, ptr %d.i2.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 121, ptr noundef nonnull %d.i2.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i2.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i2.i.i) #11
  %94 = ptrtoint ptr %d.i2.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %d.i2.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 126, ptr noundef nonnull %d.i2.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i2.i.i) #11
  %sink_type.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 11
  %95 = ptrtoint ptr %sink_type.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %sink_type.i, align 4
  %sink_detected.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 19
  %96 = ptrtoint ptr %sink_detected.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %sink_detected.i, align 2
  %feature_complete.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 17
  %97 = ptrtoint ptr %feature_complete.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %feature_complete.i, align 4
  %edid.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 20
  %98 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %edid.i, align 4
  call void @kfree(ptr noundef %99) #11
  %100 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %edid.i, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.then38, %if.end29.if.end41_crit_edge
  %and43 = and i32 %conv25.pre-phi, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end41.if.end46_crit_edge, label %if.then45

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then45:                                        ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ints.i) #11
  %101 = ptrtoint ptr %ints.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -1, ptr %ints.i, align 1, !annotation !262
  %102 = getelementptr inbounds [2 x i8], ptr %ints.i, i32 0, i32 1
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -1, ptr %102, align 1, !annotation !262
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 1056, ptr noundef nonnull %ints.i, i32 noundef 2) #11
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1056, ptr noundef nonnull %ints.i, i32 noundef 2) #11
  %104 = ptrtoint ptr %ints.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %ints.i, align 1
  %106 = and i8 %105, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i86 = icmp eq i8 %106, 0
  br i1 %tobool.not.i86, label %if.then45.if.end.i_crit_edge, label %if.then.i87

if.then45.if.end.i_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i87:                                      ; preds = %if.then45
  %mode.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 10
  %107 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %mode.i, align 4
  %109 = zext i32 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values)
  switch i32 %108, label %if.then.i87.if.end.i_crit_edge [
    i32 3, label %sw.bb.i
    i32 4, label %sw.bb2.i
  ]

if.then.i87.if.end.i_crit_edge:                   ; preds = %if.then.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

sw.bb.i:                                          ; preds = %if.then.i87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %110 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %110, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i.i.i = icmp eq ptr %call7.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %sii8620_mt_msg_new.exit.i.i.i, label %if.else.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %sw.bb.i
  %mt_queue.i.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %prev.i.i.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27, i32 1
  %111 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i.i, ptr noundef %112, ptr noundef %mt_queue.i.i.i.i) #11
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.else.i.i.i.i.if.end.i.i.i_crit_edge

if.else.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %113 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call7.i.i.i.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %114 = ptrtoint ptr %call7.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %mt_queue.i.i.i.i, ptr %call7.i.i.i.i.i.i, align 8
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %112, ptr %prev3.i.i.i.i.i.i, align 4
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %call7.i.i.i.i.i.i, ptr %112, align 4
  br label %if.end.i.i.i

sii8620_mt_msg_new.exit.i.i.i:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %error.i.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %117 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 -12, ptr %error.i.i.i.i, align 4
  br label %sii8620_mt_read_xdevcap_reg.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i.i.i.i.i.i, %if.else.i.i.i.i.if.end.i.i.i_crit_edge
  %reg3.i.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i, i32 0, i32 1
  %118 = ptrtoint ptr %reg3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 113, ptr %reg3.i.i.i, align 8
  %arrayidx5.i.i.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i, i32 0, i32 1, i32 1
  %119 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -128, ptr %arrayidx5.i.i.i, align 1
  %send.i.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i, i32 0, i32 3
  %120 = ptrtoint ptr %send.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @sii8620_mt_msc_cmd_send, ptr %send.i.i.i, align 8
  %recv.i.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i, i32 0, i32 4
  %121 = ptrtoint ptr %recv.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @sii8620_mt_read_devcap_reg_recv, ptr %recv.i.i.i, align 4
  br label %sii8620_mt_read_xdevcap_reg.exit.i

sii8620_mt_read_xdevcap_reg.exit.i:               ; preds = %if.end.i.i.i, %sii8620_mt_msg_new.exit.i.i.i
  %error.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %122 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool.not.i.i88 = icmp eq i32 %123, 0
  br i1 %tobool.not.i.i88, label %if.end.i.i89, label %sii8620_mt_read_xdevcap_reg.exit.i.if.end.i_crit_edge

sii8620_mt_read_xdevcap_reg.exit.i.if.end.i_crit_edge: ; preds = %sii8620_mt_read_xdevcap_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i.i89:                                     ; preds = %sii8620_mt_read_xdevcap_reg.exit.i
  %mt_queue.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %124 = ptrtoint ptr %mt_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile ptr, ptr %mt_queue.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %125, %mt_queue.i.i
  br i1 %cmp.i.not.i.i, label %if.then2.i.i, label %if.end4.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i89
  call void @__sanitizer_cov_trace_pc() #13
  %126 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -22, ptr %error.i.i, align 4
  br label %if.end.i

if.end4.i.i:                                      ; preds = %if.end.i.i89
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27, i32 1
  %127 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %prev.i.i, align 4
  %continuation.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %128, i32 0, i32 5
  %129 = ptrtoint ptr %continuation.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @sii8620_got_ecbus_speed, ptr %continuation.i.i, align 4
  br label %if.end.i

sw.bb2.i:                                         ; preds = %if.then.i87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %130 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i90 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %130, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i.i91 = icmp eq ptr %call7.i.i.i.i.i90, null
  br i1 %tobool.not.i.i.i91, label %sii8620_mt_msg_new.exit.i.i99, label %if.else.i.i.i95

if.else.i.i.i95:                                  ; preds = %sw.bb2.i
  %mt_queue.i.i.i92 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %prev.i.i.i.i93 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27, i32 1
  %131 = ptrtoint ptr %prev.i.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %prev.i.i.i.i93, align 4
  %call.i.i.i.i.i94 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i90, ptr noundef %132, ptr noundef %mt_queue.i.i.i92) #11
  br i1 %call.i.i.i.i.i94, label %if.end.i.i.i.i.i97, label %if.else.i.i.i95.if.end.i27.i_crit_edge

if.else.i.i.i95.if.end.i27.i_crit_edge:           ; preds = %if.else.i.i.i95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i27.i

if.end.i.i.i.i.i97:                               ; preds = %if.else.i.i.i95
  call void @__sanitizer_cov_trace_pc() #13
  %133 = ptrtoint ptr %prev.i.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call7.i.i.i.i.i90, ptr %prev.i.i.i.i93, align 4
  %134 = ptrtoint ptr %call7.i.i.i.i.i90 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %mt_queue.i.i.i92, ptr %call7.i.i.i.i.i90, align 8
  %prev3.i.i.i.i.i96 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i90, i32 0, i32 1
  %135 = ptrtoint ptr %prev3.i.i.i.i.i96 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %132, ptr %prev3.i.i.i.i.i96, align 4
  %136 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile ptr %call7.i.i.i.i.i90, ptr %132, align 4
  br label %if.end.i27.i

sii8620_mt_msg_new.exit.i.i99:                    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #13
  %error.i.i.i98 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %137 = ptrtoint ptr %error.i.i.i98 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -12, ptr %error.i.i.i98, align 4
  br label %if.end.i

if.end.i27.i:                                     ; preds = %if.end.i.i.i.i.i97, %if.else.i.i.i95.if.end.i27.i_crit_edge
  %reg.i.i100 = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i90, i32 0, i32 1
  %138 = ptrtoint ptr %reg.i.i100 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 117, ptr %reg.i.i100, align 8
  %send.i.i101 = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i90, i32 0, i32 3
  %139 = ptrtoint ptr %send.i.i101 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @sii8620_mt_read_devcap_send, ptr %send.i.i101, align 8
  %recv.i.i102 = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i90, i32 0, i32 4
  %140 = ptrtoint ptr %recv.i.i102 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @sii8620_mt_read_devcap_recv, ptr %recv.i.i102, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i27.i, %sii8620_mt_msg_new.exit.i.i99, %if.end4.i.i, %if.then2.i.i, %sii8620_mt_read_xdevcap_reg.exit.i.if.end.i_crit_edge, %if.then.i87.if.end.i_crit_edge, %if.then45.if.end.i_crit_edge
  %141 = ptrtoint ptr %ints.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %ints.i, align 1
  %143 = and i8 %142, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool6.not.i = icmp eq i8 %143, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then7.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i.i) #11
  %144 = getelementptr inbounds [16 x i8], ptr %buf.i.i, i32 0, i32 3
  %145 = getelementptr inbounds [16 x i8], ptr %buf.i.i, i32 0, i32 4
  %146 = getelementptr inbounds [16 x i8], ptr %buf.i.i, i32 0, i32 5
  %147 = getelementptr inbounds [16 x i8], ptr %buf.i.i, i32 0, i32 6
  %148 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %149 = call ptr @memset(ptr %148, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i85) #11
  %150 = ptrtoint ptr %d.i.i85 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 -96, ptr %d.i.i85, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1416, ptr noundef nonnull %d.i.i85, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i85) #11
  %151 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 97, ptr %buf.i.i, align 2
  %152 = ptrtoint ptr %144 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 1, ptr %144, align 1
  %153 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 1, ptr %145, align 2
  %154 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %146, align 1
  %155 = ptrtoint ptr %147 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 98, ptr %147, align 2
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1417, ptr noundef nonnull %buf.i.i, i32 noundef 16) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i.i) #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end.i.if.end8.i_crit_edge
  %156 = ptrtoint ptr %ints.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %ints.i, align 1
  %158 = and i8 %157, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool12.not.i = icmp eq i8 %158, 0
  br i1 %tobool12.not.i, label %if.end8.i.sii8620_msc_mr_set_int.exit_crit_edge, label %if.then13.i

if.end8.i.sii8620_msc_mr_set_int.exit_crit_edge:  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_msc_mr_set_int.exit

if.then13.i:                                      ; preds = %if.end8.i
  %feature_complete.i103 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 17
  %159 = ptrtoint ptr %feature_complete.i103 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 1, ptr %feature_complete.i103, align 4
  %edid.i104 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 20
  %160 = ptrtoint ptr %edid.i104 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %edid.i104, align 4
  %tobool14.not.i = icmp eq ptr %161, null
  br i1 %tobool14.not.i, label %if.then13.i.sii8620_msc_mr_set_int.exit_crit_edge, label %if.then15.i

if.then13.i.sii8620_msc_mr_set_int.exit_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_msc_mr_set_int.exit

if.then15.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i.i.i.i83) #11
  %162 = ptrtoint ptr %ret.i.i.i.i83 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %ret.i.i.i.i83, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 672, ptr noundef nonnull %ret.i.i.i.i83, i32 noundef 1) #11
  %163 = ptrtoint ptr %ret.i.i.i.i83 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %ret.i.i.i.i83, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i.i.i.i83) #11
  %or.i.i.i = or i8 %164, 12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i.i84) #11
  %165 = ptrtoint ptr %d.i.i.i84 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %or.i.i.i, ptr %d.i.i.i84, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 672, ptr noundef nonnull %d.i.i.i84, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i.i84) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i2.i.i82) #11
  %166 = ptrtoint ptr %d.i2.i.i82 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 48, ptr %d.i2.i.i82, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 121, ptr noundef nonnull %d.i2.i.i82, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i2.i.i82) #11
  br label %sii8620_msc_mr_set_int.exit

sii8620_msc_mr_set_int.exit:                      ; preds = %if.then15.i, %if.then13.i.sii8620_msc_mr_set_int.exit_crit_edge, %if.end8.i.sii8620_msc_mr_set_int.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ints.i) #11
  br label %if.end46

if.end46:                                         ; preds = %sii8620_msc_mr_set_int.exit, %if.end41.if.end46_crit_edge
  %and48 = and i32 %conv25.pre-phi, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end46.if.end51_crit_edge, label %if.then50

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then50:                                        ; preds = %if.end46
  %dev1.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 1
  %167 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev1.i.i, align 4
  %mt_queue.i.i105 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %169 = ptrtoint ptr %mt_queue.i.i105 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile ptr, ptr %mt_queue.i.i105, align 4
  %cmp.i.not.i.i106 = icmp eq ptr %170, %mt_queue.i.i105
  br i1 %cmp.i.not.i.i106, label %sii8620_msc_msg_first.exit.thread.i, label %sii8620_msc_msg_first.exit.i

sii8620_msc_msg_first.exit.thread.i:              ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.59) #14
  br label %if.end51

sii8620_msc_msg_first.exit.i:                     ; preds = %if.then50
  %tobool.not.i107 = icmp eq ptr %170, null
  br i1 %tobool.not.i107, label %sii8620_msc_msg_first.exit.i.if.end51_crit_edge, label %if.end.i109

sii8620_msc_msg_first.exit.i.if.end51_crit_edge:  ; preds = %sii8620_msc_msg_first.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.end.i109:                                      ; preds = %sii8620_msc_msg_first.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i.i) #11
  %171 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 0, ptr %ret.i.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 1468, ptr noundef nonnull %ret.i.i, i32 noundef 1) #11
  %172 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %ret.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i.i) #11
  %ret.i108 = getelementptr inbounds %struct.sii8620_mt_msg, ptr %170, i32 0, i32 2
  %174 = ptrtoint ptr %ret.i108 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %ret.i108, align 4
  %mt_state.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 22
  %175 = ptrtoint ptr %mt_state.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 2, ptr %mt_state.i, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end.i109, %sii8620_msc_msg_first.exit.i.if.end51_crit_edge, %sii8620_msc_msg_first.exit.thread.i, %if.end46.if.end51_crit_edge
  %and53 = and i32 %conv25.pre-phi, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end51.if.end56_crit_edge, label %if.then55

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

if.then55:                                        ; preds = %if.end51
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #11
  %176 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 -1, ptr %buf.i, align 1, !annotation !262
  %177 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 -1, ptr %177, align 1, !annotation !262
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 1471, ptr noundef nonnull %buf.i, i32 noundef 2) #11
  %179 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %buf.i, align 1
  %181 = zext i8 %180 to i64
  call void @__sanitizer_cov_trace_switch(i64 %181, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %180, label %do.end.i [
    i8 33, label %sw.bb.i113
    i8 16, label %sw.bb2.i120
  ]

sw.bb.i113:                                       ; preds = %if.then55
  %dev1.i.i110 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 1
  %182 = ptrtoint ptr %dev1.i.i110 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev1.i.i110, align 4
  %mt_queue.i.i111 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %184 = ptrtoint ptr %mt_queue.i.i111 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile ptr, ptr %mt_queue.i.i111, align 4
  %cmp.i.not.i.i112 = icmp eq ptr %185, %mt_queue.i.i111
  br i1 %cmp.i.not.i.i112, label %sii8620_msc_msg_first.exit.thread.i114, label %sii8620_msc_msg_first.exit.i116

sii8620_msc_msg_first.exit.thread.i114:           ; preds = %sw.bb.i113
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %183, ptr noundef nonnull @.str.59) #14
  br label %sii8620_msc_mr_msc_msg.exit

sii8620_msc_msg_first.exit.i116:                  ; preds = %sw.bb.i113
  %tobool.not.i115 = icmp eq ptr %185, null
  br i1 %tobool.not.i115, label %sii8620_msc_msg_first.exit.i116.sii8620_msc_mr_msc_msg.exit_crit_edge, label %if.end.i119

sii8620_msc_msg_first.exit.i116.sii8620_msc_mr_msc_msg.exit_crit_edge: ; preds = %sii8620_msc_msg_first.exit.i116
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_msc_mr_msc_msg.exit

if.end.i119:                                      ; preds = %sii8620_msc_msg_first.exit.i116
  call void @__sanitizer_cov_trace_pc() #13
  %186 = ptrtoint ptr %177 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %177, align 1
  %ret.i117 = getelementptr inbounds %struct.sii8620_mt_msg, ptr %185, i32 0, i32 2
  %188 = ptrtoint ptr %ret.i117 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %ret.i117, align 4
  %mt_state.i118 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 22
  %189 = ptrtoint ptr %mt_state.i118 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 2, ptr %mt_state.i118, align 4
  br label %sii8620_msc_mr_msc_msg.exit

sw.bb2.i120:                                      ; preds = %if.then55
  %190 = ptrtoint ptr %177 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %177, align 1
  %and2.i.i = and i8 %191, 127
  %rc_dev.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 2
  %192 = ptrtoint ptr %rc_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %rc_dev.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %193, null
  br i1 %tobool4.not.i.i, label %if.then5.i, label %if.end.i.i122

if.end.i.i122:                                    ; preds = %sw.bb2.i120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %191)
  %tobool.not.i.i121 = icmp sgt i8 %191, -1
  br i1 %tobool.not.i.i121, label %if.then6.i.i, label %if.else.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i122
  call void @__sanitizer_cov_trace_pc() #13
  %conv8.i.i = zext i8 %and2.i.i to i64
  call void @rc_keydown(ptr noundef nonnull %193, i32 noundef 22, i64 noundef %conv8.i.i, i8 noundef zeroext 0) #11
  br label %if.end6.i

if.else.i.i:                                      ; preds = %if.end.i.i122
  call void @__sanitizer_cov_trace_pc() #13
  call void @rc_keyup(ptr noundef nonnull %193) #11
  br label %if.end6.i

if.then5.i:                                       ; preds = %sw.bb2.i120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %194 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i.i.i123 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %194, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i.i.i.i124 = icmp eq ptr %call7.i.i.i.i.i.i.i123, null
  br i1 %tobool.not.i.i.i.i.i124, label %sii8620_mt_msg_new.exit.i.i.i.i132, label %if.else.i.i.i.i.i128

if.else.i.i.i.i.i128:                             ; preds = %if.then5.i
  %mt_queue.i.i.i.i.i125 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %prev.i.i.i.i.i.i126 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27, i32 1
  %195 = ptrtoint ptr %prev.i.i.i.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %prev.i.i.i.i.i.i126, align 4
  %call.i.i.i.i.i.i.i127 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i.i.i123, ptr noundef %196, ptr noundef %mt_queue.i.i.i.i.i125) #11
  br i1 %call.i.i.i.i.i.i.i127, label %if.end.i.i.i.i.i.i.i130, label %if.else.i.i.i.i.i128.if.end.i.i.i.i137_crit_edge

if.else.i.i.i.i.i128.if.end.i.i.i.i137_crit_edge: ; preds = %if.else.i.i.i.i.i128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i.i137

if.end.i.i.i.i.i.i.i130:                          ; preds = %if.else.i.i.i.i.i128
  call void @__sanitizer_cov_trace_pc() #13
  %197 = ptrtoint ptr %prev.i.i.i.i.i.i126 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call7.i.i.i.i.i.i.i123, ptr %prev.i.i.i.i.i.i126, align 4
  %198 = ptrtoint ptr %call7.i.i.i.i.i.i.i123 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %mt_queue.i.i.i.i.i125, ptr %call7.i.i.i.i.i.i.i123, align 8
  %prev3.i.i.i.i.i.i.i129 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i.i.i123, i32 0, i32 1
  %199 = ptrtoint ptr %prev3.i.i.i.i.i.i.i129 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %196, ptr %prev3.i.i.i.i.i.i.i129, align 4
  %200 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %200)
  store volatile ptr %call7.i.i.i.i.i.i.i123, ptr %196, align 4
  br label %if.end.i.i.i.i137

sii8620_mt_msg_new.exit.i.i.i.i132:               ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %error.i.i.i.i.i131 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %201 = ptrtoint ptr %error.i.i.i.i.i131 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 -12, ptr %error.i.i.i.i.i131, align 4
  br label %if.end6.i

if.end.i.i.i.i137:                                ; preds = %if.end.i.i.i.i.i.i.i130, %if.else.i.i.i.i.i128.if.end.i.i.i.i137_crit_edge
  %reg.i.i.i.i133 = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i.i123, i32 0, i32 1
  %202 = ptrtoint ptr %reg.i.i.i.i133 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 104, ptr %reg.i.i.i.i133, align 8
  %arrayidx2.i.i.i.i134 = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i.i123, i32 0, i32 1, i32 1
  %203 = ptrtoint ptr %arrayidx2.i.i.i.i134 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 18, ptr %arrayidx2.i.i.i.i134, align 1
  %arrayidx4.i.i.i.i135 = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i.i123, i32 0, i32 1, i32 2
  %204 = ptrtoint ptr %arrayidx4.i.i.i.i135 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 1, ptr %arrayidx4.i.i.i.i135, align 2
  %send.i.i.i.i136 = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i.i123, i32 0, i32 3
  %205 = ptrtoint ptr %send.i.i.i.i136 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr @sii8620_mt_msc_cmd_send, ptr %send.i.i.i.i136, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i.i.i.i137, %sii8620_mt_msg_new.exit.i.i.i.i132, %if.else.i.i, %if.then6.i.i
  %206 = ptrtoint ptr %177 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %177, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %208 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i.i20.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %208, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i.i.i21.i = icmp eq ptr %call7.i.i.i.i.i.i20.i, null
  br i1 %tobool.not.i.i.i.i21.i, label %sii8620_mt_msg_new.exit.i.i.i29.i, label %if.else.i.i.i.i25.i

if.else.i.i.i.i25.i:                              ; preds = %if.end6.i
  %mt_queue.i.i.i.i22.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %prev.i.i.i.i.i23.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27, i32 1
  %209 = ptrtoint ptr %prev.i.i.i.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %prev.i.i.i.i.i23.i, align 4
  %call.i.i.i.i.i.i24.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i.i20.i, ptr noundef %210, ptr noundef %mt_queue.i.i.i.i22.i) #11
  br i1 %call.i.i.i.i.i.i24.i, label %if.end.i.i.i.i.i.i27.i, label %if.else.i.i.i.i25.i.if.end.i.i.i34.i_crit_edge

if.else.i.i.i.i25.i.if.end.i.i.i34.i_crit_edge:   ; preds = %if.else.i.i.i.i25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i34.i

if.end.i.i.i.i.i.i27.i:                           ; preds = %if.else.i.i.i.i25.i
  call void @__sanitizer_cov_trace_pc() #13
  %211 = ptrtoint ptr %prev.i.i.i.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %call7.i.i.i.i.i.i20.i, ptr %prev.i.i.i.i.i23.i, align 4
  %212 = ptrtoint ptr %call7.i.i.i.i.i.i20.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %mt_queue.i.i.i.i22.i, ptr %call7.i.i.i.i.i.i20.i, align 8
  %prev3.i.i.i.i.i.i26.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i.i20.i, i32 0, i32 1
  %213 = ptrtoint ptr %prev3.i.i.i.i.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %210, ptr %prev3.i.i.i.i.i.i26.i, align 4
  %214 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %214)
  store volatile ptr %call7.i.i.i.i.i.i20.i, ptr %210, align 4
  br label %if.end.i.i.i34.i

sii8620_mt_msg_new.exit.i.i.i29.i:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %error.i.i.i.i28.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %215 = ptrtoint ptr %error.i.i.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 -12, ptr %error.i.i.i.i28.i, align 4
  br label %sii8620_msc_mr_msc_msg.exit

if.end.i.i.i34.i:                                 ; preds = %if.end.i.i.i.i.i.i27.i, %if.else.i.i.i.i25.i.if.end.i.i.i34.i_crit_edge
  %reg.i.i.i30.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i20.i, i32 0, i32 1
  %216 = ptrtoint ptr %reg.i.i.i30.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 104, ptr %reg.i.i.i30.i, align 8
  %arrayidx2.i.i.i31.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i20.i, i32 0, i32 1, i32 1
  %217 = ptrtoint ptr %arrayidx2.i.i.i31.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 17, ptr %arrayidx2.i.i.i31.i, align 1
  %arrayidx4.i.i.i32.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i20.i, i32 0, i32 1, i32 2
  %218 = ptrtoint ptr %arrayidx4.i.i.i32.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %207, ptr %arrayidx4.i.i.i32.i, align 2
  %send.i.i.i33.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i20.i, i32 0, i32 3
  %219 = ptrtoint ptr %send.i.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr @sii8620_mt_msc_cmd_send, ptr %send.i.i.i33.i, align 8
  br label %sii8620_msc_mr_msc_msg.exit

do.end.i:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %180 to i32
  %dev.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 1
  %220 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %dev.i, align 4
  %222 = ptrtoint ptr %177 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %177, align 1
  %conv11.i = zext i8 %223 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %221, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %conv.i, i32 noundef %conv11.i) #14
  br label %sii8620_msc_mr_msc_msg.exit

sii8620_msc_mr_msc_msg.exit:                      ; preds = %do.end.i, %if.end.i.i.i34.i, %sii8620_mt_msg_new.exit.i.i.i29.i, %if.end.i119, %sii8620_msc_msg_first.exit.i116.sii8620_msc_mr_msc_msg.exit_crit_edge, %sii8620_msc_msg_first.exit.thread.i114
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #11
  br label %if.end56

if.end56:                                         ; preds = %sii8620_msc_mr_msc_msg.exit, %if.end51.if.end56_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii8620_irq_merr(ptr nocapture noundef %ctx) #2 align 64 {
entry:
  %ret.i = alloca i8, align 1
  %d = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i) #11
  %0 = ptrtoint ptr %ret.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ret.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 1428, ptr noundef nonnull %ret.i, i32 noundef 1) #11
  %1 = ptrtoint ptr %ret.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ret.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #11
  %3 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %d, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1428, ptr noundef nonnull %d, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii8620_irq_block(ptr noundef %ctx) #2 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 2
  %ret.i11 = alloca i8, align 1
  %ret.i = alloca i8, align 1
  %d = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i) #11
  %0 = ptrtoint ptr %ret.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ret.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 803, ptr noundef nonnull %ret.i, i32 noundef 1) #11
  %1 = ptrtoint ptr %ret.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ret.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i) #11
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i11) #11
  %4 = ptrtoint ptr %ret.i11 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ret.i11, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 802, ptr noundef nonnull %ret.i11, i32 noundef 1) #11
  %5 = ptrtoint ptr %ret.i11 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ret.i11, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i11) #11
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then5

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #11
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %buf.i, align 2, !annotation !262
  %9 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !262
  %11 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %11, align 2, !annotation !262
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 794, ptr noundef nonnull %buf.i, i32 noundef 2) #11
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %buf.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp54.not.i = icmp eq i16 %14, 0
  br i1 %cmp54.not.i, label %if.then5.sii8620_burst_receive.exit_crit_edge, label %while.body.lr.ph.i

if.then5.sii8620_burst_receive.exit_crit_edge:    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_burst_receive.exit

while.body.lr.ph.i:                               ; preds = %if.then5
  %15 = call i16 @llvm.bswap.i16(i16 %14) #11
  %conv.i = zext i16 %15 to i32
  %rx_ack.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 28, i32 2
  %r_count.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 28, i32 1
  %tx_count.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 28, i32 5
  %rx_count.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 28, i32 3
  %dev.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 1
  %error.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %count.055.i = phi i32 [ %conv.i, %while.body.lr.ph.i ], [ %count.1.i, %cleanup.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count.055.i)
  %cmp3.i = icmp ult i32 %count.055.i, 3
  %16 = call i32 @llvm.umin.i32(i32 %count.055.i, i32 3) #11
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 811, ptr noundef nonnull %buf.i, i32 noundef %16) #11
  %sub.i = sub nsw i32 %count.055.i, %16
  %sub6.i = add nsw i32 %16, -1
  %17 = ptrtoint ptr %rx_ack.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_ack.i, align 4
  %add.i = add i32 %sub6.i, %18
  store i32 %add.i, ptr %rx_ack.i, align 4
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %9, align 1
  %conv7.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %r_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %r_count.i, align 4
  %sub9.i = sub i32 %22, %conv7.i
  %23 = call i32 @llvm.smax.i32(i32 %sub9.i, i32 0) #11
  %24 = ptrtoint ptr %r_count.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %r_count.i, align 4
  br i1 %cmp3.i, label %while.body.i.cleanup.i_crit_edge, label %lor.lhs.false.i

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %while.body.i
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %11, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.cleanup.i_crit_edge, label %if.end20.i

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end20.i:                                       ; preds = %lor.lhs.false.i
  %conv22.i = zext i8 %26 to i32
  %add.i.i = add nuw nsw i32 %conv22.i, 1
  %27 = ptrtoint ptr %tx_count.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_count.i.i, align 4
  %add3.i.i = add i32 %28, %add.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add3.i.i)
  %cmp.i.i = icmp ugt i32 %add3.i.i, 32
  br i1 %cmp.i.i, label %sii8620_burst_get_rx_buf.exit.thread.i, label %sii8620_burst_get_rx_buf.exit.i

sii8620_burst_get_rx_buf.exit.thread.i:           ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.63) #14
  %31 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -22, ptr %error.i.i, align 4
  br label %cleanup.i

sii8620_burst_get_rx_buf.exit.i:                  ; preds = %if.end20.i
  %32 = ptrtoint ptr %rx_count.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_count.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 28, i32 4, i32 %33
  %add6.i.i = add i32 %33, %add.i.i
  store i32 %add6.i.i, ptr %rx_count.i.i, align 4
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %26, ptr %arrayidx.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 1
  %tobool24.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool24.not.i, label %sii8620_burst_get_rx_buf.exit.i.cleanup.i_crit_edge, label %if.end26.i

sii8620_burst_get_rx_buf.exit.i.cleanup.i_crit_edge: ; preds = %sii8620_burst_get_rx_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end26.i:                                       ; preds = %sii8620_burst_get_rx_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 811, ptr noundef nonnull %add.ptr.i.i, i32 noundef %conv22.i) #11
  %sub27.i = sub nsw i32 %sub.i, %conv22.i
  %35 = ptrtoint ptr %rx_ack.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_ack.i, align 4
  %add30.i = add i32 %36, %conv22.i
  store i32 %add30.i, ptr %rx_ack.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end26.i, %sii8620_burst_get_rx_buf.exit.i.cleanup.i_crit_edge, %sii8620_burst_get_rx_buf.exit.thread.i, %lor.lhs.false.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  %count.1.i = phi i32 [ %sub27.i, %if.end26.i ], [ %sub.i, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %sub.i, %while.body.i.cleanup.i_crit_edge ], [ %sub.i, %sii8620_burst_get_rx_buf.exit.i.cleanup.i_crit_edge ], [ %sub.i, %sii8620_burst_get_rx_buf.exit.thread.i ]
  %cmp.i = icmp sgt i32 %count.1.i, 0
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.sii8620_burst_receive.exit_crit_edge

cleanup.i.sii8620_burst_receive.exit_crit_edge:   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_burst_receive.exit

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

sii8620_burst_receive.exit:                       ; preds = %cleanup.i.sii8620_burst_receive.exit_crit_edge, %if.then5.sii8620_burst_receive.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #11
  br label %if.end6

if.end6:                                          ; preds = %sii8620_burst_receive.exit, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #11
  %37 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %2, ptr %d, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 803, ptr noundef nonnull %d, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii8620_irq_edid(ptr nocapture noundef %ctx) #2 align 64 {
entry:
  %ret.i = alloca i8, align 1
  %d = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i) #11
  %0 = ptrtoint ptr %ret.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ret.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 736, ptr noundef nonnull %ret.i, i32 noundef 1) #11
  %1 = ptrtoint ptr %ret.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ret.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #11
  %3 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %d, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 736, ptr noundef nonnull %d, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #11
  %4 = and i8 %2, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mt_state = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 22
  %5 = ptrtoint ptr %mt_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %mt_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii8620_irq_ddc(ptr noundef %ctx) #2 align 64 {
entry:
  %d.i2.i = alloca [1 x i8], align 1
  %ret.i.i.i = alloca i8, align 1
  %d.i.i = alloca [1 x i8], align 1
  %ret.i = alloca i8, align 1
  %d = alloca [1 x i8], align 1
  %d6 = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i) #11
  %0 = ptrtoint ptr %ret.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ret.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 115, ptr noundef nonnull %ret.i, i32 noundef 1) #11
  %1 = ptrtoint ptr %ret.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ret.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i) #11
  %3 = and i8 %2, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #11
  %4 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %d, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 119, ptr noundef nonnull %d, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #11
  %mode.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 10
  %5 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp ugt i32 %6, 2
  br i1 %cmp.i, label %land.lhs.true, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %feature_complete = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 17
  %7 = ptrtoint ptr %feature_complete to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %feature_complete, align 4, !range !263
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then4:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %sii8620_mt_msg_new.exit.i.i, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %if.then4
  %mt_queue.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %prev.i.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %11, ptr noundef %mt_queue.i.i.i) #11
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.else.i.i.i.if.end.i.i_crit_edge

if.else.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i.i.i, ptr %prev.i.i.i.i, align 4
  %13 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mt_queue.i.i.i, ptr %call7.i.i.i.i.i, align 8
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call7.i.i.i.i.i, ptr %11, align 4
  br label %if.end.i.i

sii8620_mt_msg_new.exit.i.i:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %error.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %16 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -12, ptr %error.i.i.i, align 4
  br label %if.end5

if.end.i.i:                                       ; preds = %if.end.i.i.i.i.i, %if.else.i.i.i.if.end.i.i_crit_edge
  %reg.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 96, ptr %reg.i.i, align 8
  %arrayidx2.i.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 32, ptr %arrayidx2.i.i, align 1
  %arrayidx4.i.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 32, ptr %arrayidx4.i.i, align 2
  %send.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %send.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @sii8620_mt_msc_cmd_send, ptr %send.i.i, align 8
  br label %if.end5

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i.i.i) #11
  %21 = ptrtoint ptr %ret.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %ret.i.i.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 672, ptr noundef nonnull %ret.i.i.i, i32 noundef 1) #11
  %22 = ptrtoint ptr %ret.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ret.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i.i.i) #11
  %or.i.i = or i8 %23, 12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i) #11
  %24 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %or.i.i, ptr %d.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 672, ptr noundef nonnull %d.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i2.i) #11
  %25 = ptrtoint ptr %d.i2.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 48, ptr %d.i2.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 121, ptr noundef nonnull %d.i2.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i2.i) #11
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end.i.i, %sii8620_mt_msg_new.exit.i.i, %entry.if.end5_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d6) #11
  %26 = ptrtoint ptr %d6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %2, ptr %d6, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 115, ptr noundef nonnull %d6, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d6) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii8620_irq_scdt(ptr noundef %ctx) #2 align 64 {
entry:
  %frm.i.i = alloca %union.hdmi_infoframe, align 4
  %buf.i.i = alloca [31 x i8], align 1
  %d.i137.i = alloca [1 x i8], align 1
  %d16.i.i = alloca [2 x i8], align 2
  %d19.i.i = alloca [2 x i8], align 2
  %d21.i.i = alloca [1 x i8], align 1
  %d.i111.i = alloca [1 x i8], align 1
  %ret.i.i107.i = alloca i8, align 1
  %d.i108.i = alloca [1 x i8], align 1
  %ret.i.i.i = alloca i8, align 1
  %d.i106.i = alloca [1 x i8], align 1
  %d.i96.i = alloca [1 x i8], align 1
  %d.i3.i.i = alloca [1 x i8], align 1
  %d.i.i92.i = alloca [1 x i8], align 1
  %d.i39.i.i = alloca [1 x i8], align 1
  %d.i29.i.i = alloca [1 x i8], align 1
  %d.i27.i.i = alloca [1 x i8], align 1
  %ret.i.i.i.i = alloca i8, align 1
  %d.i.i88.i = alloca [1 x i8], align 1
  %d.i86.i = alloca [1 x i8], align 1
  %d.i.i.i = alloca [1 x i8], align 1
  %d.i.i = alloca [1 x i8], align 1
  %d.i = alloca [1 x i8], align 1
  %d3.i = alloca [1 x i8], align 1
  %ret.i11 = alloca i8, align 1
  %ret.i = alloca i8, align 1
  %d = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i) #11
  %0 = ptrtoint ptr %ret.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ret.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 116, ptr noundef nonnull %ret.i, i32 noundef 1) #11
  %1 = ptrtoint ptr %ret.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ret.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i) #11
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i11) #11
  %4 = ptrtoint ptr %ret.i11 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ret.i11, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 672, ptr noundef nonnull %ret.i11, i32 noundef 1) #11
  %5 = ptrtoint ptr %ret.i11 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ret.i11, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i11) #11
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then5

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %if.then
  %encoder.i = getelementptr inbounds %struct.drm_bridge, ptr %ctx, i32 0, i32 2
  %8 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %encoder.i, align 4
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc.i, align 4
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state.i, align 4
  %adjusted_mode.i = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 7
  %mode.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 10
  %14 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i.i = icmp ugt i32 %15, 2
  br i1 %cmp.i.i, label %if.then5.if.end.i_crit_edge, label %if.then.i

if.then5.if.end.i_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i.i) #11
  %16 = ptrtoint ptr %d.i.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %d.i.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1596, ptr noundef nonnull %d.i.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i.i) #11
  %17 = ptrtoint ptr %d.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %d.i.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 921, ptr noundef nonnull %d.i.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i.i) #11
  %18 = ptrtoint ptr %d.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %d.i.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1578, ptr noundef nonnull %d.i.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i.i) #11
  %19 = ptrtoint ptr %d.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %d.i.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1597, ptr noundef nonnull %d.i.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i.i) #11
  %sink_type.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 11
  %20 = ptrtoint ptr %sink_type.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sink_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cond.i.i = icmp eq i32 %21, 2
  %..i.i = select i1 %cond.i.i, i8 24, i8 25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i) #11
  %22 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %..i.i, ptr %d.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1562, ptr noundef nonnull %d.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then5.if.end.i_crit_edge
  %sink_type.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 11
  %23 = ptrtoint ptr %sink_type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sink_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.i = icmp eq i32 %24, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %25 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.i85.i = icmp ugt i32 %26, 2
  br i1 %cmp.i85.i, label %land.lhs.true.i.if.end5.i_crit_edge, label %if.then2.i

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then2.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %27 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 48, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 675, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d3.i) #11
  %28 = ptrtoint ptr %d3.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %d3.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1562, ptr noundef nonnull %d3.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d3.i) #11
  br label %if.end6

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i86.i) #11
  %29 = ptrtoint ptr %d.i86.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 56, ptr %d.i86.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 675, ptr noundef nonnull %d.i86.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i86.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i86.i) #11
  %30 = ptrtoint ptr %d.i86.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -64, ptr %d.i86.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 81, ptr noundef nonnull %d.i86.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i86.i) #11
  %31 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp.i.i.i = icmp ugt i32 %32, 2
  %use_packed_pixel.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 9
  %33 = ptrtoint ptr %use_packed_pixel.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i.i = load i8, ptr %use_packed_pixel.i.i, align 4
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = lshr i8 %bf.load.i.i, 6
  %35 = and i8 %34, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i.i.i.i) #11
  %36 = ptrtoint ptr %ret.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %ret.i.i.i.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 993, ptr noundef nonnull %ret.i.i.i.i, i32 noundef 1) #11
  %37 = ptrtoint ptr %ret.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ret.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i.i.i.i) #11
  %and4.i.i.i = and i8 %38, -3
  %or.i.i.i = or i8 %and4.i.i.i, %35
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i88.i) #11
  %39 = ptrtoint ptr %d.i.i88.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %or.i.i.i, ptr %d.i.i88.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 993, ptr noundef nonnull %d.i.i88.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i88.i) #11
  br label %sii8620_set_format.exit.i

if.else.i.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool5.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool5.not.i.i, label %for.body.i37.preheader.i.i, label %for.body.i.preheader.i.i

for.body.i.preheader.i.i:                         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i27.i.i) #11
  %40 = ptrtoint ptr %d.i27.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 64, ptr %d.i27.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 74, ptr noundef nonnull %d.i27.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i27.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i27.i.i) #11
  %41 = ptrtoint ptr %d.i27.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 65, ptr %d.i27.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 816, ptr noundef nonnull %d.i27.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i27.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i27.i.i) #11
  %42 = ptrtoint ptr %d.i27.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 96, ptr %d.i27.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 645, ptr noundef nonnull %d.i27.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i27.i.i) #11
  br label %sii8620_set_format.exit.i

for.body.i37.preheader.i.i:                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i29.i.i) #11
  %43 = ptrtoint ptr %d.i29.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %d.i29.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 74, ptr noundef nonnull %d.i29.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i29.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i29.i.i) #11
  %44 = ptrtoint ptr %d.i29.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %d.i29.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 816, ptr noundef nonnull %d.i29.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i29.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i29.i.i) #11
  %45 = ptrtoint ptr %d.i29.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -96, ptr %d.i29.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 645, ptr noundef nonnull %d.i29.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i29.i.i) #11
  br label %sii8620_set_format.exit.i

sii8620_set_format.exit.i:                        ; preds = %for.body.i37.preheader.i.i, %for.body.i.preheader.i.i, %if.then.i.i
  %46 = ptrtoint ptr %use_packed_pixel.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load10.i.i = load i8, ptr %use_packed_pixel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load10.i.i)
  %tobool13.not.i.i = icmp sgt i8 %bf.load10.i.i, -1
  %..i89.i = select i1 %tobool13.not.i.i, i8 8, i8 10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i39.i.i) #11
  %47 = ptrtoint ptr %d.i39.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 8, ptr %d.i39.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1545, ptr noundef nonnull %d.i39.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i39.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i39.i.i) #11
  %48 = ptrtoint ptr %d.i39.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %..i89.i, ptr %d.i39.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1546, ptr noundef nonnull %d.i39.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i39.i.i) #11
  %49 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.i91.i = icmp ugt i32 %50, 2
  br i1 %cmp.i91.i, label %if.else14.i, label %if.then7.i

if.then7.i:                                       ; preds = %sii8620_set_format.exit.i
  %51 = ptrtoint ptr %use_packed_pixel.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i = load i8, ptr %use_packed_pixel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  %..i = select i1 %tobool.not.i, i8 11, i8 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %52 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i.i.i = icmp eq ptr %call7.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %sii8620_mt_msg_new.exit.i.i.i, label %if.else.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then7.i
  %mt_queue.i.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %prev.i.i.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27, i32 1
  %53 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i.i, ptr noundef %54, ptr noundef %mt_queue.i.i.i.i) #11
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.else.i.i.i.i.if.end.i.i.i_crit_edge

if.else.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call7.i.i.i.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %56 = ptrtoint ptr %call7.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %mt_queue.i.i.i.i, ptr %call7.i.i.i.i.i.i, align 8
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i.i.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %call7.i.i.i.i.i.i, ptr %54, align 4
  br label %if.end.i.i.i

sii8620_mt_msg_new.exit.i.i.i:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  %error.i.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %59 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -12, ptr %error.i.i.i.i, align 4
  br label %sii8620_mt_write_stat.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i.i.i.i.i.i, %if.else.i.i.i.i.if.end.i.i.i_crit_edge
  %reg.i.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -32, ptr %reg.i.i.i, align 8
  %arrayidx2.i.i.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 49, ptr %arrayidx2.i.i.i, align 1
  %arrayidx4.i.i.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i, i32 0, i32 1, i32 2
  %62 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %..i, ptr %arrayidx4.i.i.i, align 2
  %send.i.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %send.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @sii8620_mt_msc_cmd_send, ptr %send.i.i.i, align 8
  br label %sii8620_mt_write_stat.exit.i

sii8620_mt_write_stat.exit.i:                     ; preds = %if.end.i.i.i, %sii8620_mt_msg_new.exit.i.i.i
  %64 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp.not.i.i = icmp eq i32 %65, 2
  br i1 %cmp.not.i.i, label %for.body.i11.preheader.i.i, label %for.body.i.preheader.i94.i

for.body.i.preheader.i94.i:                       ; preds = %sii8620_mt_write_stat.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i92.i) #11
  %66 = ptrtoint ptr %d.i.i92.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %d.i.i92.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 865, ptr noundef nonnull %d.i.i92.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i92.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i92.i) #11
  %67 = ptrtoint ptr %d.i.i92.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 7, ptr %d.i.i92.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 823, ptr noundef nonnull %d.i.i92.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i92.i) #11
  br label %if.end50.i

for.body.i11.preheader.i.i:                       ; preds = %sii8620_mt_write_stat.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i3.i.i) #11
  %68 = ptrtoint ptr %d.i3.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 8, ptr %d.i3.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 865, ptr noundef nonnull %d.i3.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i3.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i3.i.i) #11
  %69 = ptrtoint ptr %d.i3.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 5, ptr %d.i3.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 823, ptr noundef nonnull %d.i3.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i3.i.i) #11
  br label %if.end50.i

if.else14.i:                                      ; preds = %sii8620_set_format.exit.i
  %70 = ptrtoint ptr %adjusted_mode.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %adjusted_mode.i, align 4
  %72 = ptrtoint ptr %use_packed_pixel.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load16.i = load i8, ptr %use_packed_pixel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load16.i)
  %tobool19.not.i = icmp sgt i8 %bf.load16.i, -1
  %cond.i = select i1 %tobool19.not.i, i32 3, i32 2
  %mul.i = mul i32 %cond.i, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %mul.i)
  %cmp22.i = icmp slt i32 %mul.i, 150000
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %mul.i)
  %cmp22.1.i = icmp ult i32 %mul.i, 300000
  %spec.select151.i = select i1 %cmp22.1.i, i32 1, i32 2
  %i.0.lcssa.i = select i1 %cmp22.i, i32 0, i32 %spec.select151.i
  %mul26.i = mul i32 %mul.i, 100
  %arrayidx27.i = getelementptr [3 x %struct.anon.100], ptr @sii8620_start_video.clk_spec, i32 0, i32 %i.0.lcssa.i
  %73 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx27.i, align 4
  %mul29.i = mul i32 %74, 98
  call void @__sanitizer_cov_trace_cmp4(i32 %mul26.i, i32 %mul29.i)
  %cmp30.not.i = icmp slt i32 %mul26.i, %mul29.i
  %spec.select.i = select i1 %cmp30.not.i, i8 1, i8 9
  %bf.lshr39.neg150.i = ashr i8 %bf.load16.i, 7
  %bf.lshr39.i = lshr i8 %bf.load16.i, 7
  %tx_count.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 28, i32 5
  %75 = ptrtoint ptr %tx_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx_count.i.i.i, align 4
  %add4.i.i.i = add i32 %76, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add4.i.i.i)
  %cmp.i.i95.i = icmp ugt i32 %add4.i.i.i, 32
  br i1 %cmp.i.i95.i, label %sii8620_burst_get_tx_buf.exit.thread.i.i, label %sii8620_burst_get_tx_buf.exit.i.i

sii8620_burst_get_tx_buf.exit.thread.i.i:         ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 1
  %77 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.32) #14
  %error.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %79 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -22, ptr %error.i.i.i, align 4
  br label %sii8620_burst_tx_bits_per_pixel_fmt.exit.i

sii8620_burst_get_tx_buf.exit.i.i:                ; preds = %if.else14.i
  %arrayidx.i.i.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 28, i32 6, i32 %76
  %80 = ptrtoint ptr %tx_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add4.i.i.i, ptr %tx_count.i.i.i, align 4
  %arrayidx8.i.i.i = getelementptr i8, ptr %arrayidx.i.i.i, i32 1
  %81 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 8, ptr %arrayidx8.i.i.i, align 1
  %add.ptr.i.i.i = getelementptr i8, ptr %arrayidx.i.i.i, i32 2
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i, label %sii8620_burst_get_tx_buf.exit.i.i.sii8620_burst_tx_bits_per_pixel_fmt.exit.i_crit_edge, label %if.end.i.i

sii8620_burst_get_tx_buf.exit.i.i.sii8620_burst_tx_bits_per_pixel_fmt.exit.i_crit_edge: ; preds = %sii8620_burst_get_tx_buf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_burst_tx_bits_per_pixel_fmt.exit.i

if.end.i.i:                                       ; preds = %sii8620_burst_get_tx_buf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 100, ptr %add.ptr.i.i.i, align 1
  %total_entries.i.i.i = getelementptr i8, ptr %arrayidx.i.i.i, i32 5
  %83 = ptrtoint ptr %total_entries.i.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %total_entries.i.i.i, align 1
  %sequence_index.i.i.i = getelementptr i8, ptr %arrayidx.i.i.i, i32 6
  %84 = ptrtoint ptr %sequence_index.i.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %sequence_index.i.i.i, align 1
  %num_entries.i.i = getelementptr i8, ptr %arrayidx.i.i.i, i32 7
  %85 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %num_entries.i.i, align 1
  %desc.i.i = getelementptr i8, ptr %arrayidx.i.i.i, i32 8
  %86 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %desc.i.i, align 1
  %pixel_format.i.i = getelementptr i8, ptr %arrayidx.i.i.i, i32 9
  %87 = ptrtoint ptr %pixel_format.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %bf.lshr39.i, ptr %pixel_format.i.i, align 1
  %incdec.ptr.i.1.i.i = getelementptr i8, ptr %arrayidx.i.i.i, i32 4
  %sub.i.i = add nsw i8 %bf.lshr39.neg150.i, -103
  %88 = ptrtoint ptr %incdec.ptr.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %sub.i.i, ptr %incdec.ptr.i.1.i.i, align 1
  br label %sii8620_burst_tx_bits_per_pixel_fmt.exit.i

sii8620_burst_tx_bits_per_pixel_fmt.exit.i:       ; preds = %if.end.i.i, %sii8620_burst_get_tx_buf.exit.i.i.sii8620_burst_tx_bits_per_pixel_fmt.exit.i_crit_edge, %sii8620_burst_get_tx_buf.exit.thread.i.i
  call fastcc void @sii8620_burst_send(ptr noundef %ctx) #11
  %zone.i = getelementptr [3 x %struct.anon.100], ptr @sii8620_start_video.clk_spec, i32 0, i32 %i.0.lcssa.i, i32 1
  %89 = ptrtoint ptr %zone.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %zone.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i96.i) #11
  %91 = ptrtoint ptr %d.i96.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -16, ptr %d.i96.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 817, ptr noundef nonnull %d.i96.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i96.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i96.i) #11
  %92 = ptrtoint ptr %d.i96.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %90, ptr %d.i96.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 868, ptr noundef nonnull %d.i96.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i96.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i.i.i) #11
  %93 = ptrtoint ptr %ret.i.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %ret.i.i.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 993, ptr noundef nonnull %ret.i.i.i, i32 noundef 1) #11
  %94 = ptrtoint ptr %ret.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %ret.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i.i.i) #11
  %and4.i.i = and i8 %95, -10
  %or.i.i = or i8 %and4.i.i, %spec.select.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i106.i) #11
  %96 = ptrtoint ptr %d.i106.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %or.i.i, ptr %d.i106.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 993, ptr noundef nonnull %d.i106.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i106.i) #11
  %rrp_decode.i = getelementptr [3 x %struct.anon.100], ptr @sii8620_start_video.clk_spec, i32 0, i32 %i.0.lcssa.i, i32 3
  %97 = ptrtoint ptr %rrp_decode.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %rrp_decode.i, align 2
  %and10.i.i = and i8 %98, -8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i.i107.i) #11
  %99 = ptrtoint ptr %ret.i.i107.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %ret.i.i107.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 994, ptr noundef nonnull %ret.i.i107.i, i32 noundef 1) #11
  %100 = ptrtoint ptr %ret.i.i107.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %ret.i.i107.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i.i107.i) #11
  %and4.i109.i = and i8 %101, 7
  %or.i110.i = or i8 %and4.i109.i, %and10.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i108.i) #11
  %102 = ptrtoint ptr %d.i108.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %or.i110.i, ptr %d.i108.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 994, ptr noundef nonnull %d.i108.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i108.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i111.i) #11
  %103 = ptrtoint ptr %d.i111.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 31, ptr %d.i111.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 992, ptr noundef nonnull %d.i111.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i111.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i111.i) #11
  %104 = ptrtoint ptr %d.i111.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 15, ptr %d.i111.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 992, ptr noundef nonnull %d.i111.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i111.i) #11
  %link_rate.i = getelementptr [3 x %struct.anon.100], ptr @sii8620_start_video.clk_spec, i32 0, i32 %i.0.lcssa.i, i32 2
  %105 = ptrtoint ptr %link_rate.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %link_rate.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %107 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i121.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %107, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i.i122.i = icmp eq ptr %call7.i.i.i.i.i121.i, null
  br i1 %tobool.not.i.i.i122.i, label %sii8620_mt_msg_new.exit.i.i130.i, label %if.else.i.i.i126.i

if.else.i.i.i126.i:                               ; preds = %sii8620_burst_tx_bits_per_pixel_fmt.exit.i
  %mt_queue.i.i.i123.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %prev.i.i.i.i124.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27, i32 1
  %108 = ptrtoint ptr %prev.i.i.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev.i.i.i.i124.i, align 4
  %call.i.i.i.i.i125.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i121.i, ptr noundef %109, ptr noundef %mt_queue.i.i.i123.i) #11
  br i1 %call.i.i.i.i.i125.i, label %if.end.i.i.i.i.i128.i, label %if.else.i.i.i126.i.if.end.i.i135.i_crit_edge

if.else.i.i.i126.i.if.end.i.i135.i_crit_edge:     ; preds = %if.else.i.i.i126.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i135.i

if.end.i.i.i.i.i128.i:                            ; preds = %if.else.i.i.i126.i
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %prev.i.i.i.i124.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call7.i.i.i.i.i121.i, ptr %prev.i.i.i.i124.i, align 4
  %111 = ptrtoint ptr %call7.i.i.i.i.i121.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %mt_queue.i.i.i123.i, ptr %call7.i.i.i.i.i121.i, align 8
  %prev3.i.i.i.i.i127.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i121.i, i32 0, i32 1
  %112 = ptrtoint ptr %prev3.i.i.i.i.i127.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %109, ptr %prev3.i.i.i.i.i127.i, align 4
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %call7.i.i.i.i.i121.i, ptr %109, align 4
  br label %if.end.i.i135.i

sii8620_mt_msg_new.exit.i.i130.i:                 ; preds = %sii8620_burst_tx_bits_per_pixel_fmt.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %error.i.i.i129.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %114 = ptrtoint ptr %error.i.i.i129.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -12, ptr %error.i.i.i129.i, align 4
  br label %if.end50.i

if.end.i.i135.i:                                  ; preds = %if.end.i.i.i.i.i128.i, %if.else.i.i.i126.i.if.end.i.i135.i_crit_edge
  %reg.i.i131.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i121.i, i32 0, i32 1
  %115 = ptrtoint ptr %reg.i.i131.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 -32, ptr %reg.i.i131.i, align 8
  %arrayidx2.i.i132.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i121.i, i32 0, i32 1, i32 1
  %116 = ptrtoint ptr %arrayidx2.i.i132.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 -110, ptr %arrayidx2.i.i132.i, align 1
  %arrayidx4.i.i133.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i121.i, i32 0, i32 1, i32 2
  %117 = ptrtoint ptr %arrayidx4.i.i133.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %106, ptr %arrayidx4.i.i133.i, align 2
  %send.i.i134.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i121.i, i32 0, i32 3
  %118 = ptrtoint ptr %send.i.i134.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @sii8620_mt_msc_cmd_send, ptr %send.i.i134.i, align 8
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.end.i.i135.i, %sii8620_mt_msg_new.exit.i.i130.i, %for.body.i11.preheader.i.i, %for.body.i.preheader.i94.i
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frm.i.i) #11
  %119 = call ptr @memset(ptr %frm.i.i, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %buf.i.i) #11
  %120 = getelementptr inbounds [31 x i8], ptr %buf.i.i, i32 0, i32 1
  %121 = getelementptr inbounds [31 x i8], ptr %buf.i.i, i32 0, i32 2
  %122 = getelementptr inbounds [31 x i8], ptr %buf.i.i, i32 0, i32 3
  %123 = getelementptr inbounds [31 x i8], ptr %buf.i.i, i32 0, i32 4
  %124 = getelementptr inbounds [31 x i8], ptr %buf.i.i, i32 0, i32 5
  %125 = getelementptr inbounds [31 x i8], ptr %buf.i.i, i32 0, i32 6
  %126 = getelementptr inbounds [31 x i8], ptr %buf.i.i, i32 0, i32 7
  %127 = call ptr @memset(ptr %buf.i.i, i32 255, i32 31)
  %call.i.i = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %frm.i.i, ptr noundef null, ptr noundef %adjusted_mode.i) #11
  %128 = ptrtoint ptr %use_packed_pixel.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load.i139.i = load i8, ptr %use_packed_pixel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i139.i)
  %tobool.not.i140.i = icmp sgt i8 %bf.load.i139.i, -1
  br i1 %tobool.not.i140.i, label %if.end50.i.if.end.i142.i_crit_edge, label %if.then.i141.i

if.end50.i.if.end.i142.i_crit_edge:               ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i142.i

if.then.i141.i:                                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  %colorspace.i.i = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %frm.i.i, i32 0, i32 3
  %129 = ptrtoint ptr %colorspace.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %colorspace.i.i, align 4
  br label %if.end.i142.i

if.end.i142.i:                                    ; preds = %if.then.i141.i, %if.end50.i.if.end.i142.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then2.i.i, label %if.end.i142.i.if.end4.i.i_crit_edge

if.end.i142.i.if.end4.i.i_crit_edge:              ; preds = %if.end.i142.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i

if.then2.i.i:                                     ; preds = %if.end.i142.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i.i = call i32 @hdmi_avi_infoframe_pack(ptr noundef nonnull %frm.i.i, ptr noundef nonnull %buf.i.i, i32 noundef 31) #11
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then2.i.i, %if.end.i142.i.if.end4.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i, %if.end.i142.i.if.end4.i.i_crit_edge ], [ %call3.i.i, %if.then2.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp.i143.i = icmp sgt i32 %ret.0.i.i, 0
  br i1 %cmp.i143.i, label %if.then5.i.i, label %if.end4.i.i.if.end7.i.i_crit_edge

if.end4.i.i.if.end7.i.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i.i

if.then5.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i144.i = add nsw i32 %ret.0.i.i, -3
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1548, ptr noundef %122, i32 noundef %sub.i144.i) #11
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i.i, %if.end4.i.i.if.end7.i.i_crit_edge
  %130 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %131)
  %cmp.i.i146.i = icmp ugt i32 %131, 2
  br i1 %cmp.i.i146.i, label %lor.lhs.false.i.i, label %if.end7.i.i.if.then14.i.i_crit_edge

if.end7.i.i.if.then14.i.i_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i

lor.lhs.false.i.i:                                ; preds = %if.end7.i.i
  %132 = ptrtoint ptr %use_packed_pixel.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %bf.load10.i147.i = load i8, ptr %use_packed_pixel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load10.i147.i)
  %tobool13.not.i148.i = icmp sgt i8 %bf.load10.i147.i, -1
  br i1 %tobool13.not.i148.i, label %lor.lhs.false.i.i.if.then14.i.i_crit_edge, label %mhl3_infoframe_pack.exit.i.i

lor.lhs.false.i.i.if.then14.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14.i.i

if.then14.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then14.i.i_crit_edge, %if.end7.i.i.if.then14.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i137.i) #11
  %133 = ptrtoint ptr %d.i137.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %d.i137.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1562, ptr noundef nonnull %d.i137.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i137.i) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d16.i.i) #11
  %134 = ptrtoint ptr %d16.i.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 -24318, ptr %d16.i.i, align 2
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 656, ptr noundef nonnull %d16.i.i, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d16.i.i) #11
  br label %sii8620_set_infoframes.exit.i

mhl3_infoframe_pack.exit.i.i:                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d19.i.i) #11
  %135 = ptrtoint ptr %d19.i.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 -23165, ptr %d19.i.i, align 2
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 656, ptr noundef nonnull %d19.i.i, i32 noundef 2) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d19.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d21.i.i) #11
  %136 = ptrtoint ptr %d21.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 -58, ptr %d21.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1727, ptr noundef nonnull %d21.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d21.i.i) #11
  %137 = getelementptr inbounds [31 x i8], ptr %buf.i.i, i32 0, i32 8
  %138 = call ptr @memset(ptr %137, i32 0, i32 23)
  %139 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 -127, ptr %buf.i.i, align 1
  %140 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 3, ptr %120, align 1
  %141 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 15, ptr %121, align 1
  %142 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 29, ptr %123, align 1
  %143 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 -90, ptr %124, align 1
  %144 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 124, ptr %125, align 1
  %145 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %126, align 1
  %146 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 46, ptr %122, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1728, ptr noundef nonnull %buf.i.i, i32 noundef 19) #11
  br label %sii8620_set_infoframes.exit.i

sii8620_set_infoframes.exit.i:                    ; preds = %mhl3_infoframe_pack.exit.i.i, %if.then14.i.i
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %buf.i.i) #11
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frm.i.i) #11
  br label %if.end6

if.end6:                                          ; preds = %sii8620_set_infoframes.exit.i, %if.then2.i, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #11
  %147 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %2, ptr %d, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 116, ptr noundef nonnull %d, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sii8620_read_buf(ptr nocapture noundef %ctx, i16 noundef zeroext %addr, ptr noundef %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %data = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #11
  %conv = trunc i16 %addr to i8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %data, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #11
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %conv3 = zext i16 %addr to i32
  %5 = lshr i32 %conv3, 8
  %arrayidx = getelementptr [8 x i8], ptr @sii8620_i2c_page, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv4, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr, align 8
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %flags, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %12 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len6, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %13 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data, ptr %buf7, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %14 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv4, ptr %arrayinit.element, align 4
  %flags13 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %15 = load i16, ptr %add.ptr, align 8
  %16 = or i16 %15, 1
  %17 = ptrtoint ptr %flags13 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %flags13, align 2
  %len17 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %conv18 = trunc i32 %len to i16
  %18 = ptrtoint ptr %len17 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv18, ptr %len17, align 4
  %buf19 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %19 = ptrtoint ptr %buf19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf, ptr %buf19, align 4
  %error = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %20 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %adapter = getelementptr i8, ptr %1, i32 -8
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg, i32 noundef 2) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii8620_read_buf.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii8620_read_buf, %if.then25)) #11
          to label %do.end [label %if.then25], !srcloc !264

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii8620_read_buf.__UNIQUE_ID_ddebug307, ptr noundef %1, ptr noundef nonnull @.str.71, i32 noundef %conv3, i32 noundef %len, ptr noundef %buf, i32 noundef %call) #11
  br label %do.end

do.end:                                           ; preds = %if.then25, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %do.end.cleanup_crit_edge, label %do.end32

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end32:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.72, i32 noundef %conv3, i32 noundef %len, i32 noundef %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp34 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp34, i32 %call, i32 -5
  %24 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sii8620_burst_send(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  %b = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %burst = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 28
  %tx_count = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 28, i32 5
  %0 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp99 = icmp sgt i32 %1, 0
  br i1 %cmp99, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tx_buf = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 28, i32 6
  %r_count = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 28, i32 1
  %rx_ack = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 28, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %tx_left.0101 = phi i32 [ %1, %while.body.lr.ph ], [ %sub19, %cleanup.while.body_crit_edge ]
  %d.0100 = phi ptr [ %tx_buf, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %d.0100, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 2
  %4 = ptrtoint ptr %r_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r_count, align 4
  %add3 = add i32 %add, %5
  %6 = ptrtoint ptr %burst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %burst, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %7)
  %cmp5 = icmp sgt i32 %add3, %7
  br i1 %cmp5, label %while.body.while.end_crit_edge, label %cleanup

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

cleanup:                                          ; preds = %while.body
  %8 = ptrtoint ptr %rx_ack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_ack, align 4
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 255)
  %conv10 = trunc i32 %10 to i8
  %11 = ptrtoint ptr %d.0100 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10, ptr %d.0100, align 1
  %conv13 = and i32 %10, 255
  %12 = ptrtoint ptr %rx_ack to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_ack, align 4
  %sub = sub i32 %13, %conv13
  store i32 %sub, ptr %rx_ack, align 4
  tail call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 810, ptr noundef %d.0100, i32 noundef %add)
  %14 = ptrtoint ptr %r_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %r_count, align 4
  %add18 = add i32 %15, %add
  store i32 %add18, ptr %r_count, align 4
  %sub19 = sub nsw i32 %tx_left.0101, %add
  %add.ptr = getelementptr i8, ptr %d.0100, i32 %add
  %cmp = icmp sgt i32 %sub19, 0
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %tx_left.0.lcssa = phi i32 [ %1, %entry.while.end_crit_edge ], [ %tx_left.0101, %while.body.while.end_crit_edge ], [ %sub19, %cleanup.while.end_crit_edge ]
  %16 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %tx_left.0.lcssa, ptr %tx_count, align 4
  %rx_ack24 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 28, i32 2
  %17 = ptrtoint ptr %rx_ack24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_ack24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp25103 = icmp sgt i32 %18, 0
  br i1 %cmp25103, label %while.body27.lr.ph, label %while.end.while.end59_crit_edge

while.end.while.end59_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end59

while.body27.lr.ph:                               ; preds = %while.end
  %19 = getelementptr inbounds [2 x i8], ptr %b, i32 0, i32 1
  %r_count39 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 28, i32 1
  br label %while.body27

while.body27:                                     ; preds = %cleanup56.while.body27_crit_edge, %while.body27.lr.ph
  %20 = phi i32 [ %18, %while.body27.lr.ph ], [ %32, %cleanup56.while.body27_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b) #11
  %21 = call i32 @llvm.umin.i32(i32 %20, i32 255)
  %conv37 = trunc i32 %21 to i8
  %22 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv37, ptr %b, align 1
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %19, align 1
  %24 = ptrtoint ptr %r_count39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %r_count39, align 4
  %add40 = add i32 %25, 2
  %26 = ptrtoint ptr %burst to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %burst, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add40, i32 %27)
  %cmp43 = icmp sgt i32 %add40, %27
  br i1 %cmp43, label %cleanup56.thread, label %cleanup56

cleanup56.thread:                                 ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b) #11
  br label %while.end59

cleanup56:                                        ; preds = %while.body27
  %sub51 = sub nsw i32 %20, %21
  %28 = ptrtoint ptr %rx_ack24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub51, ptr %rx_ack24, align 4
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 810, ptr noundef nonnull %b, i32 noundef 2)
  %29 = ptrtoint ptr %r_count39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %r_count39, align 4
  %add55 = add i32 %30, 2
  store i32 %add55, ptr %r_count39, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b) #11
  %31 = ptrtoint ptr %rx_ack24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_ack24, align 4
  %cmp25 = icmp sgt i32 %32, 0
  br i1 %cmp25, label %cleanup56.while.body27_crit_edge, label %cleanup56.while.end59_crit_edge

cleanup56.while.end59_crit_edge:                  ; preds = %cleanup56
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end59

cleanup56.while.body27_crit_edge:                 ; preds = %cleanup56
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body27

while.end59:                                      ; preds = %cleanup56.while.end59_crit_edge, %cleanup56.thread, %while.end.while.end59_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sii8620_mhl_disconnected(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  %d.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %0 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 16, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1507, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %1 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -128, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1479, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  call fastcc void @sii8620_disconnect(ptr noundef %ctx)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sii8620_write_buf(ptr nocapture noundef %ctx, i16 noundef zeroext %addr, ptr noundef %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #11
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data, align 1, !annotation !262
  %3 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !262
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #11
  %5 = getelementptr inbounds i8, ptr %msg, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 -1, ptr %5, align 4
  %conv = zext i16 %addr to i32
  %7 = lshr i32 %conv, 8
  %arrayidx = getelementptr [8 x i8], ptr @sii8620_i2c_page, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv3, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr, align 8
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %flags, align 2
  %len5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %add = add i32 %len, 1
  %conv6 = trunc i32 %add to i16
  %14 = ptrtoint ptr %len5 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv6, ptr %len5, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %error = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %15 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp = icmp sgt i32 %len, 1
  br i1 %cmp, label %if.end8.i, label %if.else

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #16
  %17 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i, ptr %buf7, align 4
  %tobool13.not = icmp eq ptr %call9.i, null
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -12, ptr %error, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr18 = getelementptr i8, ptr %call9.i, i32 1
  %19 = call ptr @memcpy(ptr %add.ptr18, ptr %buf, i32 %len)
  br label %if.end22

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %data, ptr %buf7, align 4
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %buf, align 1
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %3, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end16
  %conv23 = trunc i16 %addr to i8
  %24 = ptrtoint ptr %buf7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf7, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv23, ptr %25, align 1
  %adapter = getelementptr i8, ptr %1, i32 -8
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 8
  %call26 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg, i32 noundef 1) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sii8620_write_buf.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sii8620_write_buf, %if.then32)) #11
          to label %do.end [label %if.then32], !srcloc !264

if.then32:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sii8620_write_buf.__UNIQUE_ID_ddebug308, ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef %conv, i32 noundef %len, ptr noundef %buf, i32 noundef %call26) #11
  br label %do.end

do.end:                                           ; preds = %if.then32, %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call26)
  %cmp35.not = icmp eq i32 %call26, 1
  br i1 %cmp35.not, label %do.end.if.end44_crit_edge, label %do.end40

do.end.if.end44_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

do.end40:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %conv, i32 noundef %len, ptr noundef %buf, i32 noundef %call26) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool42.not = icmp eq i32 %call26, 0
  %. = select i1 %tobool42.not, i32 -5, i32 %call26
  %29 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %., ptr %error, align 4
  br label %if.end44

if.end44:                                         ; preds = %do.end40, %do.end.if.end44_crit_edge
  br i1 %cmp, label %if.then47, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %buf7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf7, align 4
  call void @kfree(ptr noundef %31) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end44.cleanup_crit_edge, %if.then14, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sii8620_peer_specific_init(ptr nocapture noundef %ctx) unnamed_addr #2 align 64 {
entry:
  %d.i4 = alloca [1 x i8], align 1
  %d.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 10
  %0 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp ugt i32 %1, 2
  br i1 %cmp.i, label %for.body.i.preheader, label %for.body.i12.preheader

for.body.i12.preheader:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i4) #11
  %2 = ptrtoint ptr %d.i4 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %d.i4, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 921, ptr noundef nonnull %d.i4, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i4) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i4) #11
  %3 = ptrtoint ptr %d.i4 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %d.i4, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 813, ptr noundef nonnull %d.i4, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i4) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i4) #11
  %4 = ptrtoint ptr %d.i4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %d.i4, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 920, ptr noundef nonnull %d.i4, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i4) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i4) #11
  %5 = ptrtoint ptr %d.i4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %d.i4, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 113, ptr noundef nonnull %d.i4, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i4) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i4) #11
  %6 = ptrtoint ptr %d.i4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 18, ptr %d.i4, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 8, ptr noundef nonnull %d.i4, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i4) #11
  br label %if.end

for.body.i.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %7 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 8, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %8 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 813, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  br label %if.end

if.end:                                           ; preds = %for.body.i.preheader, %for.body.i12.preheader
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii8620_mt_msc_cmd_send(ptr nocapture noundef %ctx, ptr noundef %msg) #2 align 64 {
entry:
  %d.i.i48 = alloca [1 x i8], align 1
  %d.i.i = alloca [1 x i8], align 1
  %d = alloca [1 x i8], align 1
  %d21 = alloca [1 x i8], align 1
  %d24 = alloca [1 x i8], align 1
  %d28 = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.sii8620_mt_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %1)
  %cmp = icmp eq i8 %1, 96
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %arrayidx3 = getelementptr %struct.sii8620_mt_msg, ptr %msg, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %3)
  %cmp5 = icmp eq i8 %3, 32
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true7:                                   ; preds = %land.lhs.true
  %arrayidx9 = getelementptr %struct.sii8620_mt_msg, ptr %msg, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %5)
  %cmp11 = icmp eq i8 %5, 32
  br i1 %cmp11, label %if.then, label %land.lhs.true7.if.else_crit_edge

land.lhs.true7.if.else_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true7
  %gen2_write_burst.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 21
  %6 = ptrtoint ptr %gen2_write_burst.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %gen2_write_burst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %mode.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 10
  %7 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp ugt i32 %8, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i) #11
  %9 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 100, ptr %d.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1412, ptr noundef nonnull %d.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i) #11
  %conv.i.1.i = select i1 %cmp.i, i8 -64, i8 -128
  %10 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i.1.i, ptr %d.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1414, ptr noundef nonnull %d.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i) #11
  %11 = ptrtoint ptr %gen2_write_burst.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load8.i = load i8, ptr %gen2_write_burst.i, align 4
  %bf.set.i = or i8 %bf.load8.i, -128
  store i8 %bf.set.i, ptr %gen2_write_burst.i, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true7.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %gen2_write_burst.i49 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 21
  %12 = ptrtoint ptr %gen2_write_burst.i49 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i50 = load i8, ptr %gen2_write_burst.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i50)
  %tobool.not.i51 = icmp sgt i8 %bf.load.i50, -1
  br i1 %tobool.not.i51, label %if.else.if.end_crit_edge, label %for.body.i.preheader.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i.preheader.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i48) #11
  %13 = ptrtoint ptr %d.i.i48 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %d.i.i48, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1416, ptr noundef nonnull %d.i.i48, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i48) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i48) #11
  %14 = ptrtoint ptr %d.i.i48 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %d.i.i48, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1414, ptr noundef nonnull %d.i.i48, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i48) #11
  %15 = ptrtoint ptr %gen2_write_burst.i49 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load2.i = load i8, ptr %gen2_write_burst.i49, align 4
  %bf.clear.i = and i8 %bf.load2.i, 127
  store i8 %bf.clear.i, ptr %gen2_write_burst.i49, align 4
  br label %if.end

if.end:                                           ; preds = %for.body.i.preheader.i, %if.else.if.end_crit_edge, %if.end.i, %if.then.if.end_crit_edge
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg, align 4
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %17, label %do.end [
    i8 -32, label %if.end.sw.bb_crit_edge
    i8 96, label %if.end.sw.bb_crit_edge52
    i8 104, label %sw.bb18
    i8 97, label %if.end.sw.bb23_crit_edge
    i8 113, label %if.end.sw.bb23_crit_edge53
  ]

if.end.sw.bb23_crit_edge53:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb23

if.end.sw.bb23_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb23

if.end.sw.bb_crit_edge52:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge52
  %add.ptr = getelementptr %struct.sii8620_mt_msg, ptr %msg, i32 0, i32 1, i32 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1465, ptr noundef %add.ptr, i32 noundef 2)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #11
  %19 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 8, ptr %d, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1464, ptr noundef nonnull %d, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #11
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1465, ptr noundef %reg, i32 noundef 3)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d21) #11
  %20 = ptrtoint ptr %d21 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %d21, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1464, ptr noundef nonnull %d21, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d21) #11
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end.sw.bb23_crit_edge, %if.end.sw.bb23_crit_edge53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d24) #11
  %arrayidx26 = getelementptr %struct.sii8620_mt_msg, ptr %msg, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx26, align 1
  %23 = ptrtoint ptr %d24 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %d24, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1465, ptr noundef nonnull %d24, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d24) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d28) #11
  %24 = ptrtoint ptr %d28 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 4, ptr %d28, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1464, ptr noundef nonnull %d28, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d28) #11
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv15 = zext i8 %17 to i32
  %dev = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 1
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %conv15) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb23, %sw.bb18, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii8620_got_xdevcap(ptr noundef %ctx, i32 noundef %ret) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret)
  %cmp = icmp slt i32 %ret, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %sii8620_mt_msg_new.exit.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %if.end
  %mt_queue.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %prev.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27, i32 1
  %1 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %2, ptr noundef %mt_queue.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.else.i.i.if.end.i_crit_edge

if.else.i.i.if.end.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mt_queue.i.i, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev3.i.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call7.i.i.i.i, ptr %2, align 4
  br label %if.end.i

sii8620_mt_msg_new.exit.i:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %error.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %7 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -12, ptr %error.i.i, align 4
  br label %return

if.end.i:                                         ; preds = %if.end.i.i.i.i, %if.else.i.i.if.end.i_crit_edge
  %reg.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 116, ptr %reg.i, align 8
  %send.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %send.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sii8620_mt_read_devcap_send, ptr %send.i, align 8
  %recv.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %recv.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sii8620_mt_read_devcap_recv, ptr %recv.i, align 4
  br label %return

return:                                           ; preds = %if.end.i, %sii8620_mt_msg_new.exit.i, %entry.return_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii8620_mt_read_devcap_send(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  %d.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.sii8620_mt_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 117, i8 %1)
  %cmp = icmp eq i8 %1, 117
  %spec.select = select i1 %cmp, i8 113, i8 49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %2 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 16, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 737, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %3 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %spec.select, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 739, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %4 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 738, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii8620_mt_read_devcap_recv(ptr noundef %ctx, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  %dcap.i = alloca [16 x i8], align 1
  %d.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.sii8620_mt_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 117, i8 %1)
  %cmp = icmp eq i8 %1, 117
  %spec.select = select i1 %cmp, i8 113, i8 49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %2 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 112, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 737, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %3 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %spec.select, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 739, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %4 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 745, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 117, i8 %6)
  %cmp12 = icmp eq i8 %6, 117
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %xdevcap.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 16
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 748, ptr noundef %xdevcap.i, i32 noundef 4) #11
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dcap.i) #11
  %dev1.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 1
  %7 = call ptr @memset(ptr %dcap.i, i32 255, i32 16)
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 4
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 748, ptr noundef nonnull %dcap.i, i32 noundef 16) #11
  %error.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %10 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i20 = icmp slt i32 %11, 0
  br i1 %cmp.i20, label %if.else.sii8620_mr_devcap.exit_crit_edge, label %do.end.i

if.else.sii8620_mr_devcap.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_mr_devcap.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %12 = getelementptr inbounds [16 x i8], ptr %dcap.i, i32 0, i32 12
  %13 = getelementptr inbounds [16 x i8], ptr %dcap.i, i32 0, i32 11
  %14 = getelementptr inbounds [16 x i8], ptr %dcap.i, i32 0, i32 4
  %15 = getelementptr inbounds [16 x i8], ptr %dcap.i, i32 0, i32 3
  %16 = getelementptr inbounds [16 x i8], ptr %dcap.i, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  %conv.i21 = zext i8 %18 to i32
  %div20.i = lshr i32 %conv.i21, 4
  %rem.i = and i32 %conv.i21, 15
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %15, align 1
  %conv5.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %14, align 1
  %conv7.i = zext i8 %22 to i32
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %13, align 1
  %conv9.i = zext i8 %24 to i32
  %25 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %12, align 1
  %conv11.i = zext i8 %26 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.34, i32 noundef %div20.i, i32 noundef %rem.i, i32 noundef %conv5.i, i32 noundef %conv7.i, i32 noundef %conv9.i, i32 noundef %conv11.i) #14
  %devcap.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 15
  %27 = ptrtoint ptr %devcap.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %devcap.i, align 1
  %29 = ptrtoint ptr %dcap.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dcap.i, align 1
  %xor10.i.i = xor i8 %30, %28
  store i8 %xor10.i.i, ptr %dcap.i, align 1
  %incdec.ptr4.i.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 15, i32 1
  store i8 %30, ptr %devcap.i, align 1
  %31 = ptrtoint ptr %incdec.ptr4.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr4.i.i, align 1
  %33 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %16, align 1
  %xor10.i.1.i = xor i8 %34, %32
  store i8 %xor10.i.1.i, ptr %16, align 1
  %incdec.ptr.i.1.i = getelementptr inbounds [16 x i8], ptr %dcap.i, i32 0, i32 2
  %incdec.ptr4.i.1.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 15, i32 2
  store i8 %34, ptr %incdec.ptr4.i.i, align 1
  %35 = ptrtoint ptr %incdec.ptr4.i.1.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %incdec.ptr4.i.1.i, align 1
  %37 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr.i.1.i, align 1
  %xor10.i.2.i = xor i8 %38, %36
  store i8 %xor10.i.2.i, ptr %incdec.ptr.i.1.i, align 1
  %incdec.ptr4.i.2.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 15, i32 3
  store i8 %38, ptr %incdec.ptr4.i.1.i, align 1
  %39 = ptrtoint ptr %incdec.ptr4.i.2.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %incdec.ptr4.i.2.i, align 1
  %41 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %15, align 1
  %xor10.i.3.i = xor i8 %42, %40
  store i8 %xor10.i.3.i, ptr %15, align 1
  %incdec.ptr4.i.3.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 15, i32 4
  store i8 %42, ptr %incdec.ptr4.i.2.i, align 1
  %43 = ptrtoint ptr %incdec.ptr4.i.3.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %incdec.ptr4.i.3.i, align 1
  %45 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %14, align 1
  %xor10.i.4.i = xor i8 %46, %44
  store i8 %xor10.i.4.i, ptr %14, align 1
  %incdec.ptr.i.4.i = getelementptr inbounds [16 x i8], ptr %dcap.i, i32 0, i32 5
  %incdec.ptr4.i.4.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 15, i32 5
  store i8 %46, ptr %incdec.ptr4.i.3.i, align 1
  %47 = ptrtoint ptr %incdec.ptr4.i.4.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %incdec.ptr4.i.4.i, align 1
  %49 = ptrtoint ptr %incdec.ptr.i.4.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %incdec.ptr.i.4.i, align 1
  %xor10.i.5.i = xor i8 %50, %48
  store i8 %xor10.i.5.i, ptr %incdec.ptr.i.4.i, align 1
  %incdec.ptr.i.5.i = getelementptr inbounds [16 x i8], ptr %dcap.i, i32 0, i32 6
  %incdec.ptr4.i.5.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 15, i32 6
  store i8 %50, ptr %incdec.ptr4.i.4.i, align 1
  %51 = ptrtoint ptr %incdec.ptr4.i.5.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %incdec.ptr4.i.5.i, align 1
  %53 = ptrtoint ptr %incdec.ptr.i.5.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %incdec.ptr.i.5.i, align 1
  %xor10.i.6.i = xor i8 %54, %52
  store i8 %xor10.i.6.i, ptr %incdec.ptr.i.5.i, align 1
  %incdec.ptr.i.6.i = getelementptr inbounds [16 x i8], ptr %dcap.i, i32 0, i32 7
  %incdec.ptr4.i.6.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 15, i32 7
  store i8 %54, ptr %incdec.ptr4.i.5.i, align 1
  %55 = ptrtoint ptr %incdec.ptr4.i.6.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %incdec.ptr4.i.6.i, align 1
  %57 = ptrtoint ptr %incdec.ptr.i.6.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %incdec.ptr.i.6.i, align 1
  %xor10.i.7.i = xor i8 %58, %56
  store i8 %xor10.i.7.i, ptr %incdec.ptr.i.6.i, align 1
  %incdec.ptr.i.7.i = getelementptr inbounds [16 x i8], ptr %dcap.i, i32 0, i32 8
  %incdec.ptr4.i.7.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 15, i32 8
  store i8 %58, ptr %incdec.ptr4.i.6.i, align 1
  %59 = ptrtoint ptr %incdec.ptr4.i.7.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %incdec.ptr4.i.7.i, align 1
  %61 = ptrtoint ptr %incdec.ptr.i.7.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %incdec.ptr.i.7.i, align 1
  %xor10.i.8.i = xor i8 %62, %60
  store i8 %xor10.i.8.i, ptr %incdec.ptr.i.7.i, align 1
  %incdec.ptr.i.8.i = getelementptr inbounds [16 x i8], ptr %dcap.i, i32 0, i32 9
  %incdec.ptr4.i.8.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 15, i32 9
  store i8 %62, ptr %incdec.ptr4.i.7.i, align 1
  %63 = ptrtoint ptr %incdec.ptr4.i.8.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %incdec.ptr4.i.8.i, align 1
  %65 = ptrtoint ptr %incdec.ptr.i.8.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %incdec.ptr.i.8.i, align 1
  %xor10.i.9.i = xor i8 %66, %64
  store i8 %xor10.i.9.i, ptr %incdec.ptr.i.8.i, align 1
  %incdec.ptr.i.9.i = getelementptr inbounds [16 x i8], ptr %dcap.i, i32 0, i32 10
  %incdec.ptr4.i.9.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 15, i32 10
  store i8 %66, ptr %incdec.ptr4.i.8.i, align 1
  %67 = ptrtoint ptr %incdec.ptr4.i.9.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %incdec.ptr4.i.9.i, align 1
  %69 = ptrtoint ptr %incdec.ptr.i.9.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %incdec.ptr.i.9.i, align 1
  %xor10.i.10.i = xor i8 %70, %68
  store i8 %xor10.i.10.i, ptr %incdec.ptr.i.9.i, align 1
  %incdec.ptr4.i.10.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 15, i32 11
  store i8 %70, ptr %incdec.ptr4.i.9.i, align 1
  %71 = ptrtoint ptr %incdec.ptr4.i.10.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %incdec.ptr4.i.10.i, align 1
  %73 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %13, align 1
  %xor10.i.11.i = xor i8 %74, %72
  store i8 %xor10.i.11.i, ptr %13, align 1
  %incdec.ptr4.i.11.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 15, i32 12
  store i8 %74, ptr %incdec.ptr4.i.10.i, align 1
  %75 = ptrtoint ptr %incdec.ptr4.i.11.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %incdec.ptr4.i.11.i, align 1
  %77 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %12, align 1
  %xor10.i.12.i = xor i8 %78, %76
  store i8 %xor10.i.12.i, ptr %12, align 1
  %incdec.ptr.i.12.i = getelementptr inbounds [16 x i8], ptr %dcap.i, i32 0, i32 13
  %incdec.ptr4.i.12.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 15, i32 13
  store i8 %78, ptr %incdec.ptr4.i.11.i, align 1
  %79 = ptrtoint ptr %incdec.ptr4.i.12.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %incdec.ptr4.i.12.i, align 1
  %81 = ptrtoint ptr %incdec.ptr.i.12.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %incdec.ptr.i.12.i, align 1
  %xor10.i.13.i = xor i8 %82, %80
  store i8 %xor10.i.13.i, ptr %incdec.ptr.i.12.i, align 1
  %incdec.ptr.i.13.i = getelementptr inbounds [16 x i8], ptr %dcap.i, i32 0, i32 14
  %incdec.ptr4.i.13.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 15, i32 14
  store i8 %82, ptr %incdec.ptr4.i.12.i, align 1
  %83 = ptrtoint ptr %incdec.ptr4.i.13.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %incdec.ptr4.i.13.i, align 1
  %85 = ptrtoint ptr %incdec.ptr.i.13.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %incdec.ptr.i.13.i, align 1
  %xor10.i.14.i = xor i8 %86, %84
  store i8 %xor10.i.14.i, ptr %incdec.ptr.i.13.i, align 1
  %incdec.ptr.i.14.i = getelementptr inbounds [16 x i8], ptr %dcap.i, i32 0, i32 15
  %incdec.ptr4.i.14.i = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 15, i32 15
  store i8 %86, ptr %incdec.ptr4.i.13.i, align 1
  %87 = ptrtoint ptr %incdec.ptr4.i.14.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %incdec.ptr4.i.14.i, align 1
  %89 = ptrtoint ptr %incdec.ptr.i.14.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %incdec.ptr.i.14.i, align 1
  %xor10.i.15.i = xor i8 %90, %88
  store i8 %xor10.i.15.i, ptr %incdec.ptr.i.14.i, align 1
  store i8 %90, ptr %incdec.ptr4.i.14.i, align 1
  %devcap_read.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 18
  %91 = ptrtoint ptr %devcap_read.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %devcap_read.i, align 1
  call fastcc void @sii8620_identify_sink(ptr noundef %ctx) #11
  br label %sii8620_mr_devcap.exit

sii8620_mr_devcap.exit:                           ; preds = %do.end.i, %if.else.sii8620_mr_devcap.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dcap.i) #11
  br label %if.end15

if.end15:                                         ; preds = %sii8620_mr_devcap.exit, %if.then14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sii8620_identify_sink(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  %d.i200.i = alloca [1 x i8], align 1
  %ret.i199.i = alloca i8, align 1
  %ret.i198.i = alloca i8, align 1
  %ret.i197.i = alloca i8, align 1
  %d.i187.i = alloca [1 x i8], align 1
  %d.i177.i = alloca [1 x i8], align 1
  %ret.i176.i = alloca i8, align 1
  %ret.i175.i = alloca i8, align 1
  %d.i.i = alloca [1 x i8], align 1
  %ret.i174.i = alloca i8, align 1
  %ret.i173.i = alloca i8, align 1
  %ret.i.i = alloca i8, align 1
  %d15.i = alloca [1 x i8], align 1
  %d17.i = alloca [1 x i8], align 1
  %sink_name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sink_name) #11
  %dev1 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 1
  %0 = call ptr @memset(ptr %sink_name, i32 255, i32 20)
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %sink_detected = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 19
  %3 = ptrtoint ptr %sink_detected to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sink_detected, align 2, !range !263
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %devcap_read = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 18
  %5 = ptrtoint ptr %devcap_read to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %devcap_read, align 1, !range !263
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i.i) #11
  %7 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %ret.i.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 1425, ptr noundef nonnull %ret.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i173.i) #11
  %8 = ptrtoint ptr %ret.i173.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ret.i173.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 199, ptr noundef nonnull %ret.i173.i, i32 noundef 1) #11
  %9 = ptrtoint ptr %ret.i173.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ret.i173.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i173.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i174.i) #11
  %11 = ptrtoint ptr %ret.i174.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %ret.i174.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 243, ptr noundef nonnull %ret.i174.i, i32 noundef 1) #11
  %12 = ptrtoint ptr %ret.i174.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ret.i174.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i174.i) #11
  %14 = or i8 %10, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i) #11
  %15 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %d.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 737, ptr noundef nonnull %d.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i) #11
  %16 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 16, ptr %d.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 739, ptr noundef nonnull %d.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i) #11
  %17 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 113, ptr %d.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 913, ptr noundef nonnull %d.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i) #11
  %18 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %d.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 928, ptr noundef nonnull %d.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i) #11
  %19 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %14, ptr %d.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 199, ptr noundef nonnull %d.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i) #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.0219.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i175.i) #11
  %20 = ptrtoint ptr %ret.i175.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %ret.i175.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 242, ptr noundef nonnull %ret.i175.i, i32 noundef 1) #11
  %21 = ptrtoint ptr %ret.i175.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ret.i175.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i175.i) #11
  %23 = and i8 %22, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d15.i) #11
  %24 = ptrtoint ptr %d15.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 4, ptr %d15.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 242, ptr noundef nonnull %d15.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d15.i) #11
  %inc.i = add nuw nsw i32 %i.0219.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d17.i) #11
  %25 = ptrtoint ptr %d17.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -96, ptr %d17.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 237, ptr noundef nonnull %d17.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d17.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 128) #15
  %tobool20.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not.i, label %if.then21.i, label %for.cond23.preheader.i

for.cond23.preheader.i:                           ; preds = %for.end.i
  %27 = or i8 %13, 15
  %28 = or i8 %13, 9
  %29 = or i8 %13, 4
  br label %for.body26.i

if.then21.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %error.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %30 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -12, ptr %error.i, align 4
  br label %sii8620_fetch_edid.exit

for.body26.i:                                     ; preds = %for.inc107.i.for.body26.i_crit_edge, %for.cond23.preheader.i
  %edid.0225.i = phi ptr [ %call7.i.i, %for.cond23.preheader.i ], [ %edid.4.i, %for.inc107.i.for.body26.i_crit_edge ]
  %edid_len.0224.i = phi i32 [ 128, %for.cond23.preheader.i ], [ %edid_len.3.i, %for.inc107.i.for.body26.i_crit_edge ]
  %fetched.0223.i = phi i32 [ 0, %for.cond23.preheader.i ], [ %add86.i, %for.inc107.i.for.body26.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i176.i) #11
  %31 = ptrtoint ptr %ret.i176.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %ret.i176.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 242, ptr noundef nonnull %ret.i176.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i176.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i177.i) #11
  %32 = ptrtoint ptr %d.i177.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %27, ptr %d.i177.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 243, ptr noundef nonnull %d.i177.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i177.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i177.i) #11
  %33 = ptrtoint ptr %d.i177.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %28, ptr %d.i177.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 243, ptr noundef nonnull %d.i177.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i177.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i177.i) #11
  %34 = ptrtoint ptr %d.i177.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 4, ptr %d.i177.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 242, ptr noundef nonnull %d.i177.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i177.i) #11
  %35 = lshr i32 %fetched.0223.i, 8
  %36 = trunc i32 %fetched.0223.i to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i187.i) #11
  %conv.i191.i = trunc i32 %35 to i8
  %37 = ptrtoint ptr %d.i187.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i191.i, ptr %d.i187.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 238, ptr noundef nonnull %d.i187.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i187.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i187.i) #11
  %38 = ptrtoint ptr %d.i187.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %36, ptr %d.i187.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 239, ptr noundef nonnull %d.i187.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i187.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i187.i) #11
  %39 = ptrtoint ptr %d.i187.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 16, ptr %d.i187.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 240, ptr noundef nonnull %d.i187.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i187.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i187.i) #11
  %40 = ptrtoint ptr %d.i187.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %d.i187.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 241, ptr noundef nonnull %d.i187.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i187.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i187.i) #11
  %41 = ptrtoint ptr %d.i187.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %29, ptr %d.i187.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 243, ptr noundef nonnull %d.i187.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i187.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %42, 20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i197.i) #11
  %43 = ptrtoint ptr %ret.i197.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %ret.i197.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 1425, ptr noundef nonnull %ret.i197.i, i32 noundef 1) #11
  %44 = ptrtoint ptr %ret.i197.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ret.i197.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i197.i) #11
  %46 = and i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool65.not.not220.i = icmp eq i8 %46, 0
  br i1 %tobool65.not.not220.i, label %for.body26.i.if.then66.i_crit_edge, label %for.body26.i.if.end67.i_crit_edge

for.body26.i.if.end67.i_crit_edge:                ; preds = %for.body26.i
  br label %if.end67.i

for.body26.i.if.then66.i_crit_edge:               ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then66.i

if.then66.i:                                      ; preds = %if.end84.i.if.then66.i_crit_edge, %for.body26.i.if.then66.i_crit_edge
  call void @kfree(ptr noundef %edid.0225.i) #11
  br label %end.i

if.end67.i:                                       ; preds = %if.end84.i.if.end67.i_crit_edge, %for.body26.i.if.end67.i_crit_edge
  %int3.0221.i = phi i8 [ %int3.1.i, %if.end84.i.if.end67.i_crit_edge ], [ 0, %for.body26.i.if.end67.i_crit_edge ]
  %47 = and i8 %int3.0221.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool70.not.i = icmp eq i8 %47, 0
  br i1 %tobool70.not.i, label %if.else.i, label %if.then71.i

if.then71.i:                                      ; preds = %if.end67.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i198.i) #11
  %48 = ptrtoint ptr %ret.i198.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %ret.i198.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 245, ptr noundef nonnull %ret.i198.i, i32 noundef 1) #11
  %49 = ptrtoint ptr %ret.i198.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ret.i198.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i198.i) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %50)
  %cmp74.i = icmp ugt i8 %50, 15
  br i1 %cmp74.i, label %for.end85.i, label %if.then71.i.if.end79.i_crit_edge

if.then71.i.if.end79.i_crit_edge:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79.i

if.else.i:                                        ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i199.i) #11
  %51 = ptrtoint ptr %ret.i199.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %ret.i199.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 115, ptr noundef nonnull %ret.i199.i, i32 noundef 1) #11
  %52 = ptrtoint ptr %ret.i199.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ret.i199.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i199.i) #11
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.else.i, %if.then71.i.if.end79.i_crit_edge
  %int3.1.i = phi i8 [ %int3.0221.i, %if.then71.i.if.end79.i_crit_edge ], [ %53, %if.else.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp80.i = icmp slt i32 %sub.i, 0
  br i1 %cmp80.i, label %if.then82.i, label %if.end84.i

if.then82.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #13
  %error83.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %55 = ptrtoint ptr %error83.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -110, ptr %error83.i, align 4
  %56 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.46) #14
  call void @kfree(ptr noundef %edid.0225.i) #11
  br label %end.i

if.end84.i:                                       ; preds = %if.end79.i
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i197.i) #11
  %58 = ptrtoint ptr %ret.i197.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %ret.i197.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 1425, ptr noundef nonnull %ret.i197.i, i32 noundef 1) #11
  %59 = ptrtoint ptr %ret.i197.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ret.i197.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i197.i) #11
  %61 = and i8 %60, 1
  %tobool65.not.not.i = icmp eq i8 %61, 0
  br i1 %tobool65.not.not.i, label %if.end84.i.if.then66.i_crit_edge, label %if.end84.i.if.end67.i_crit_edge

if.end84.i.if.end67.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67.i

if.end84.i.if.then66.i_crit_edge:                 ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then66.i

for.end85.i:                                      ; preds = %if.then71.i
  %add.ptr.i = getelementptr i8, ptr %edid.0225.i, i32 %fetched.0223.i
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 244, ptr noundef %add.ptr.i, i32 noundef 16) #11
  %add86.i = add i32 %fetched.0223.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add86.i)
  %cmp87.i = icmp eq i32 %add86.i, 128
  br i1 %cmp87.i, label %if.then89.i, label %for.end85.i.for.inc107.i_crit_edge

for.end85.i.for.inc107.i_crit_edge:               ; preds = %for.end85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc107.i

if.then89.i:                                      ; preds = %for.end85.i
  %extensions.i = getelementptr inbounds %struct.edid, ptr %edid.0225.i, i32 0, i32 26
  %62 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %extensions.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool90.not.i = icmp eq i8 %63, 0
  br i1 %tobool90.not.i, label %if.then89.i.for.inc107.i_crit_edge, label %if.then91.i

if.then89.i.for.inc107.i_crit_edge:               ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc107.i

if.then91.i:                                      ; preds = %if.then89.i
  %conv92.i = zext i8 %63 to i32
  %mul.i = shl nuw nsw i32 %conv92.i, 7
  %add93.i = add i32 %mul.i, %edid_len.0224.i
  %call94.i = call noalias ptr @krealloc(ptr noundef %edid.0225.i, i32 noundef %add93.i, i32 noundef 3264) #17
  %tobool95.not.i = icmp eq ptr %call94.i, null
  br i1 %tobool95.not.i, label %cleanup103.i, label %if.then91.i.for.inc107.i_crit_edge

if.then91.i.for.inc107.i_crit_edge:               ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc107.i

cleanup103.i:                                     ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef %edid.0225.i) #11
  %error97.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %64 = ptrtoint ptr %error97.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -12, ptr %error97.i, align 4
  br label %sii8620_fetch_edid.exit

for.inc107.i:                                     ; preds = %if.then91.i.for.inc107.i_crit_edge, %if.then89.i.for.inc107.i_crit_edge, %for.end85.i.for.inc107.i_crit_edge
  %edid_len.3.i = phi i32 [ %edid_len.0224.i, %for.end85.i.for.inc107.i_crit_edge ], [ %add93.i, %if.then91.i.for.inc107.i_crit_edge ], [ %edid_len.0224.i, %if.then89.i.for.inc107.i_crit_edge ]
  %edid.4.i = phi ptr [ %edid.0225.i, %for.end85.i.for.inc107.i_crit_edge ], [ %call94.i, %if.then91.i.for.inc107.i_crit_edge ], [ %edid.0225.i, %if.then89.i.for.inc107.i_crit_edge ]
  %cmp24.i = icmp slt i32 %add86.i, %edid_len.3.i
  br i1 %cmp24.i, label %for.inc107.i.for.body26.i_crit_edge, label %for.end109.i

for.inc107.i.for.body26.i_crit_edge:              ; preds = %for.inc107.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body26.i

for.end109.i:                                     ; preds = %for.inc107.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i200.i) #11
  %65 = ptrtoint ptr %d.i200.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 8, ptr %d.i200.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 119, ptr noundef nonnull %d.i200.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i200.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i200.i) #11
  %66 = ptrtoint ptr %d.i200.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %10, ptr %d.i200.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 199, ptr noundef nonnull %d.i200.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i200.i) #11
  br label %end.i

end.i:                                            ; preds = %for.end109.i, %if.then82.i, %if.then66.i
  %edid.5.i = phi ptr [ null, %if.then66.i ], [ null, %if.then82.i ], [ %edid.4.i, %for.end109.i ]
  %edid117.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 20
  %67 = ptrtoint ptr %edid117.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %edid117.i, align 4
  call void @kfree(ptr noundef %68) #11
  %69 = ptrtoint ptr %edid117.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %edid.5.i, ptr %edid117.i, align 4
  br label %sii8620_fetch_edid.exit

sii8620_fetch_edid.exit:                          ; preds = %end.i, %cleanup103.i, %if.then21.i
  %edid = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 20
  %70 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %edid, align 4
  %tobool3.not = icmp eq ptr %71, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %sii8620_fetch_edid.exit
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.40) #14
  call fastcc void @sii8620_mhl_disconnected(ptr noundef %ctx)
  br label %cleanup

if.end6:                                          ; preds = %sii8620_fetch_edid.exit
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @sii8620_set_upstream_edid(ptr noundef %ctx)
  %74 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %edid, align 4
  %call = call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %75) #11
  %spec.select = select i1 %call, i32 1, i32 2
  %76 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 11
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %spec.select, ptr %76, align 4
  %78 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %edid, align 4
  call void @drm_edid_get_monitor_name(ptr noundef %79, ptr noundef nonnull %sink_name, i32 noundef 20) #11
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %76, align 4
  %arrayidx = getelementptr [3 x ptr], ptr @sii8620_identify_sink.sink_str, i32 0, i32 %81
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.43, ptr noundef %83, ptr noundef nonnull %sink_name) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sink_name) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sii8620_set_upstream_edid(ptr nocapture noundef %ctx) unnamed_addr #2 align 64 {
entry:
  %d.i24 = alloca [1 x i8], align 1
  %d.i14 = alloca [1 x i8], align 1
  %ret.i.i10 = alloca i8, align 1
  %d.i11 = alloca [1 x i8], align 1
  %d.i9 = alloca [1 x i8], align 1
  %ret.i.i = alloca i8, align 1
  %d.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i.i) #11
  %0 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ret.i.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 11, ptr noundef nonnull %ret.i.i, i32 noundef 1) #11
  %1 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ret.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i.i) #11
  %or.i = or i8 %2, 38
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %3 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %or.i, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 11, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i9) #11
  %4 = ptrtoint ptr %d.i9 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %d.i9, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 676, ptr noundef nonnull %d.i9, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i9) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i9) #11
  %5 = ptrtoint ptr %d.i9 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %d.i9, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 656, ptr noundef nonnull %d.i9, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i9) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i9) #11
  %6 = ptrtoint ptr %d.i9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %d.i9, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 657, ptr noundef nonnull %d.i9, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i9) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i9) #11
  %7 = ptrtoint ptr %d.i9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 6, ptr %d.i9, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 561, ptr noundef nonnull %d.i9, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i9) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i.i10) #11
  %8 = ptrtoint ptr %ret.i.i10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ret.i.i10, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 684, ptr noundef nonnull %ret.i.i10, i32 noundef 1) #11
  %9 = ptrtoint ptr %ret.i.i10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ret.i.i10, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i.i10) #11
  %or.i13 = or i8 %10, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i11) #11
  %11 = ptrtoint ptr %d.i11 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %or.i13, ptr %d.i11, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 684, ptr noundef nonnull %d.i11, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i11) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i14) #11
  %12 = ptrtoint ptr %d.i14 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 17, ptr %d.i14, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 739, ptr noundef nonnull %d.i14, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i14) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i14) #11
  %13 = ptrtoint ptr %d.i14 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %d.i14, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 745, ptr noundef nonnull %d.i14, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i14) #11
  %edid = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 20
  %14 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %edid, align 4
  %extensions = getelementptr inbounds %struct.edid, ptr %15, i32 0, i32 26
  %16 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %extensions, align 1
  %conv = zext i8 %17 to i32
  %add = shl nuw nsw i32 %conv, 7
  %mul = add nuw nsw i32 %add, 128
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 746, ptr noundef %15, i32 noundef %mul)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i24) #11
  %18 = ptrtoint ptr %d.i24 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -111, ptr %d.i24, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 739, ptr noundef nonnull %d.i24, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i24) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i24) #11
  %19 = ptrtoint ptr %d.i24 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %d.i24, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 120, ptr noundef nonnull %d.i24, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i24) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i24) #11
  %20 = ptrtoint ptr %d.i24 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %d.i24, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 737, ptr noundef nonnull %d.i24, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i24) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_edid_get_monitor_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sii8620_set_mode(ptr noundef %ctx, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  %d.i.i98 = alloca [1 x i8], align 1
  %d.i.i95 = alloca [1 x i8], align 1
  %d.i96 = alloca [1 x i8], align 1
  %d.i93 = alloca [1 x i8], align 1
  %d1.i94 = alloca [1 x i8], align 1
  %d.i83 = alloca [1 x i8], align 1
  %d.i2.i.i = alloca [1 x i8], align 1
  %ret.i.i.i.i = alloca i8, align 1
  %d.i.i.i = alloca [1 x i8], align 1
  %d.i73 = alloca [1 x i8], align 1
  %d.i61 = alloca [1 x i8], align 1
  %d.i3.i = alloca [1 x i8], align 1
  %d.i.i59 = alloca [1 x i8], align 1
  %d.i49 = alloca [1 x i8], align 1
  %ret.i.i46 = alloca i8, align 1
  %d.i36 = alloca [1 x i8], align 1
  %ret.i.i = alloca i8, align 1
  %ret.i.i11.i = alloca i8, align 1
  %d.i12.i = alloca [1 x i8], align 1
  %ret.i.i8.i = alloca i8, align 1
  %d.i9.i = alloca [1 x i8], align 1
  %ret.i.i.i = alloca i8, align 1
  %d.i.i = alloca [1 x i8], align 1
  %d.i35 = alloca [1 x i8], align 1
  %d1.i = alloca [1 x i8], align 1
  %d.i = alloca [1 x i8], align 1
  %d = alloca [1 x i8], align 1
  %d7 = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 10
  %0 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mode)
  %cmp = icmp eq i32 %1, %mode
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %mode, label %sw.epilog [
    i32 2, label %sw.epilog.thread102
    i32 3, label %sw.bb3
    i32 4, label %sw.bb5
    i32 0, label %sw.epilog.thread
  ]

sw.epilog.thread102:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %3 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1479, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %4 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 992, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %5 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -48, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 11, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %6 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1831, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  %7 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %mode1, align 4
  br label %sii8620_set_auto_zone.exit

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #11
  %8 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 15, ptr %d, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 992, ptr noundef nonnull %d, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #11
  %9 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %mode1, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i.i.i) #11
  %10 = ptrtoint ptr %ret.i.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %ret.i.i.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 768, ptr noundef nonnull %ret.i.i.i, i32 noundef 1) #11
  %11 = ptrtoint ptr %ret.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ret.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i.i.i) #11
  %or.i.i = or i8 %12, 13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i) #11
  %13 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %or.i.i, ptr %d.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 768, ptr noundef nonnull %d.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i.i8.i) #11
  %14 = ptrtoint ptr %ret.i.i8.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %ret.i.i8.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 768, ptr noundef nonnull %ret.i.i8.i, i32 noundef 1) #11
  %15 = ptrtoint ptr %ret.i.i8.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ret.i.i8.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i.i8.i) #11
  %and4.i10.i = and i8 %16, -13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i9.i) #11
  %17 = ptrtoint ptr %d.i9.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %and4.i10.i, ptr %d.i9.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 768, ptr noundef nonnull %d.i9.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i9.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i.i11.i) #11
  %18 = ptrtoint ptr %ret.i.i11.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %ret.i.i11.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 773, ptr noundef nonnull %ret.i.i11.i, i32 noundef 1) #11
  %19 = ptrtoint ptr %ret.i.i11.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ret.i.i11.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i.i11.i) #11
  %or.i14.i = or i8 %20, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i12.i) #11
  %21 = ptrtoint ptr %d.i12.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %or.i14.i, ptr %d.i12.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 773, ptr noundef nonnull %d.i12.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i12.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i.i) #11
  %22 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %ret.i.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 803, ptr noundef nonnull %ret.i.i, i32 noundef 1) #11
  %23 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ret.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i35) #11
  %25 = ptrtoint ptr %d.i35 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %d.i35, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 803, ptr noundef nonnull %d.i35, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i35) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d1.i) #11
  %26 = ptrtoint ptr %d1.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %d1.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 804, ptr noundef nonnull %d1.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d1.i) #11
  br label %for.body.i44

for.body.i44:                                     ; preds = %for.body.i44.for.body.i44_crit_edge, %sw.bb5
  %i.08.i37 = phi i32 [ %add2.i42, %for.body.i44.for.body.i44_crit_edge ], [ 0, %sw.bb5 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i36) #11
  %add.i38 = or i32 %i.08.i37, 1
  %arrayidx.i39 = getelementptr i16, ptr @sii8620_set_mode.d.50, i32 %add.i38
  %27 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.i39, align 2
  %conv.i40 = trunc i16 %28 to i8
  %29 = ptrtoint ptr %d.i36 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i40, ptr %d.i36, align 1
  %arrayidx1.i41 = getelementptr i16, ptr @sii8620_set_mode.d.50, i32 %i.08.i37
  %30 = ptrtoint ptr %arrayidx1.i41 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx1.i41, align 2
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext %31, ptr noundef nonnull %d.i36, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i36) #11
  %add2.i42 = add nuw nsw i32 %i.08.i37, 2
  %cmp.i43 = icmp ult i32 %i.08.i37, 28
  br i1 %cmp.i43, label %for.body.i44.for.body.i44_crit_edge, label %for.body.i44.for.body.i48_crit_edge

for.body.i44.for.body.i48_crit_edge:              ; preds = %for.body.i44
  br label %for.body.i48

for.body.i44.for.body.i44_crit_edge:              ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i44

for.body.i48:                                     ; preds = %for.inc.i.for.body.i48_crit_edge, %for.body.i44.for.body.i48_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.inc.i.for.body.i48_crit_edge ], [ 0, %for.body.i44.for.body.i48_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i.i46) #11
  %32 = ptrtoint ptr %ret.i.i46 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %ret.i.i46, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 1792, ptr noundef nonnull %ret.i.i46, i32 noundef 1) #11
  %33 = ptrtoint ptr %ret.i.i46 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ret.i.i46, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i.i46) #11
  %conv.i47 = zext i8 %34 to i32
  %and.i = and i32 %conv.i47, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 3
  %and5.i = and i32 %conv.i47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i = icmp eq i32 %and5.i, 0
  %or.cond = or i1 %cmp2.i, %tobool.not.i
  br i1 %or.cond, label %sii8620_wait_for_fsm_state.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i48
  call void @usleep_range_state(i32 noundef 4000, i32 noundef 6000, i32 noundef 2) #11
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %if.else.critedge, label %for.inc.i.for.body.i48_crit_edge

for.inc.i.for.body.i48_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i48

sii8620_wait_for_fsm_state.exit:                  ; preds = %for.body.i48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i49) #11
  %35 = ptrtoint ptr %d.i49 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %d.i49, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1828, ptr noundef nonnull %d.i49, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i49) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i49) #11
  %36 = ptrtoint ptr %d.i49 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -128, ptr %d.i49, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1829, ptr noundef nonnull %d.i49, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i49) #11
  br i1 %cmp2.i, label %if.then6, label %sii8620_wait_for_fsm_state.exit.if.else_crit_edge

sii8620_wait_for_fsm_state.exit.if.else_crit_edge: ; preds = %sii8620_wait_for_fsm_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then6:                                         ; preds = %sii8620_wait_for_fsm_state.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d7) #11
  %37 = ptrtoint ptr %d7 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -123, ptr %d7, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1500, ptr noundef nonnull %d7, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d7) #11
  br label %cleanup

if.else.critedge:                                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i49) #11
  %38 = ptrtoint ptr %d.i49 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %d.i49, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1828, ptr noundef nonnull %d.i49, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i49) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i49) #11
  %39 = ptrtoint ptr %d.i49 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -128, ptr %d.i49, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1829, ptr noundef nonnull %d.i49, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i49) #11
  br label %if.else

if.else:                                          ; preds = %if.else.critedge, %sii8620_wait_for_fsm_state.exit.if.else_crit_edge
  %gen2_write_burst.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 21
  %40 = ptrtoint ptr %gen2_write_burst.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i = load i8, ptr %gen2_write_burst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i99 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i99, label %if.else.sii8620_disable_gen2_write_burst.exit_crit_edge, label %for.body.i.preheader.i100

if.else.sii8620_disable_gen2_write_burst.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_disable_gen2_write_burst.exit

for.body.i.preheader.i100:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i98) #11
  %41 = ptrtoint ptr %d.i.i98 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %d.i.i98, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1416, ptr noundef nonnull %d.i.i98, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i98) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i98) #11
  %42 = ptrtoint ptr %d.i.i98 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %d.i.i98, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1414, ptr noundef nonnull %d.i.i98, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i98) #11
  %43 = ptrtoint ptr %gen2_write_burst.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load2.i = load i8, ptr %gen2_write_burst.i, align 4
  %bf.clear.i = and i8 %bf.load2.i, 127
  store i8 %bf.clear.i, ptr %gen2_write_burst.i, align 4
  br label %sii8620_disable_gen2_write_burst.exit

sii8620_disable_gen2_write_burst.exit:            ; preds = %for.body.i.preheader.i100, %if.else.sii8620_disable_gen2_write_burst.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i95) #11
  %44 = ptrtoint ptr %d.i.i95 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %d.i.i95, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1596, ptr noundef nonnull %d.i.i95, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i95) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i95) #11
  %45 = ptrtoint ptr %d.i.i95 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %d.i.i95, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 921, ptr noundef nonnull %d.i.i95, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i95) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i95) #11
  %46 = ptrtoint ptr %d.i.i95 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %d.i.i95, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1578, ptr noundef nonnull %d.i.i95, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i95) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i95) #11
  %47 = ptrtoint ptr %d.i.i95 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %d.i.i95, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1597, ptr noundef nonnull %d.i.i95, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i95) #11
  %sink_type.i97 = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 11
  %48 = ptrtoint ptr %sink_type.i97 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sink_type.i97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cond.i = icmp eq i32 %49, 2
  %..i = select i1 %cond.i, i8 24, i8 25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i96) #11
  %50 = ptrtoint ptr %d.i96 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %..i, ptr %d.i96, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1562, ptr noundef nonnull %d.i96, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i96) #11
  call void @msleep(i32 noundef 100) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i93) #11
  %51 = ptrtoint ptr %d.i93 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 40, ptr %d.i93, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 14, ptr noundef nonnull %d.i93, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i93) #11
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d1.i94) #11
  %52 = ptrtoint ptr %d1.i94 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 32, ptr %d1.i94, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 14, ptr noundef nonnull %d1.i94, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d1.i94) #11
  call fastcc void @sii8620_set_mode(ptr noundef %ctx, i32 noundef 0) #11
  br label %for.body.i91

for.body.i91:                                     ; preds = %for.body.i91.for.body.i91_crit_edge, %sii8620_disable_gen2_write_burst.exit
  %i.08.i84 = phi i32 [ %add2.i89, %for.body.i91.for.body.i91_crit_edge ], [ 0, %sii8620_disable_gen2_write_burst.exit ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i83) #11
  %add.i85 = or i32 %i.08.i84, 1
  %arrayidx.i86 = getelementptr i16, ptr @sii8620_disconnect.d, i32 %add.i85
  %53 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx.i86, align 2
  %conv.i87 = trunc i16 %54 to i8
  %55 = ptrtoint ptr %d.i83 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv.i87, ptr %d.i83, align 1
  %arrayidx1.i88 = getelementptr i16, ptr @sii8620_disconnect.d, i32 %i.08.i84
  %56 = ptrtoint ptr %arrayidx1.i88 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx1.i88, align 2
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext %57, ptr noundef nonnull %d.i83, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i83) #11
  %add2.i89 = add nuw nsw i32 %i.08.i84, 2
  %cmp.i90 = icmp ult i32 %i.08.i84, 28
  br i1 %cmp.i90, label %for.body.i91.for.body.i91_crit_edge, label %__sii8620_write_seq.exit92

for.body.i91.for.body.i91_crit_edge:              ; preds = %for.body.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i91

__sii8620_write_seq.exit92:                       ; preds = %for.body.i91
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i.i.i.i) #11
  %58 = ptrtoint ptr %ret.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %ret.i.i.i.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 739, ptr noundef nonnull %ret.i.i.i.i, i32 noundef 1) #11
  %59 = ptrtoint ptr %ret.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ret.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i.i.i.i) #11
  %and4.i.i.i = and i8 %60, 127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i.i) #11
  %61 = ptrtoint ptr %d.i.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %and4.i.i.i, ptr %d.i.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 739, ptr noundef nonnull %d.i.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i2.i.i) #11
  %62 = ptrtoint ptr %d.i2.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 16, ptr %d.i2.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 121, ptr noundef nonnull %d.i2.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i2.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i2.i.i) #11
  %63 = ptrtoint ptr %d.i2.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %d.i2.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 126, ptr noundef nonnull %d.i2.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i2.i.i) #11
  %64 = ptrtoint ptr %sink_type.i97 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %sink_type.i97, align 4
  %sink_detected.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 19
  %65 = ptrtoint ptr %sink_detected.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %sink_detected.i, align 2
  %feature_complete.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 17
  %66 = ptrtoint ptr %feature_complete.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %feature_complete.i, align 4
  %edid.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 20
  %67 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %edid.i, align 4
  call void @kfree(ptr noundef %68) #11
  %69 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %edid.i, align 4
  br label %for.body.i81

for.body.i81:                                     ; preds = %for.body.i81.for.body.i81_crit_edge, %__sii8620_write_seq.exit92
  %i.08.i74 = phi i32 [ %add2.i79, %for.body.i81.for.body.i81_crit_edge ], [ 0, %__sii8620_write_seq.exit92 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i73) #11
  %add.i75 = or i32 %i.08.i74, 1
  %arrayidx.i76 = getelementptr i16, ptr @sii8620_disconnect.d.56, i32 %add.i75
  %70 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx.i76, align 2
  %conv.i77 = trunc i16 %71 to i8
  %72 = ptrtoint ptr %d.i73 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv.i77, ptr %d.i73, align 1
  %arrayidx1.i78 = getelementptr i16, ptr @sii8620_disconnect.d.56, i32 %i.08.i74
  %73 = ptrtoint ptr %arrayidx1.i78 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx1.i78, align 2
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext %74, ptr noundef nonnull %d.i73, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i73) #11
  %add2.i79 = add nuw nsw i32 %i.08.i74, 2
  %cmp.i80 = icmp ult i32 %i.08.i74, 78
  br i1 %cmp.i80, label %for.body.i81.for.body.i81_crit_edge, label %__sii8620_write_seq.exit82

for.body.i81.for.body.i81_crit_edge:              ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i81

__sii8620_write_seq.exit82:                       ; preds = %for.body.i81
  %devcap_read.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 18
  %75 = ptrtoint ptr %devcap_read.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %devcap_read.i, align 1
  %cbus_status.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 12
  %mt_queue.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %76 = call ptr @memset(ptr %cbus_status.i, i32 0, i32 28)
  %77 = ptrtoint ptr %mt_queue.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mt_queue.i, align 4
  %cmp.not19.i = icmp eq ptr %78, %mt_queue.i
  br i1 %cmp.not19.i, label %__sii8620_write_seq.exit82.sii8620_mt_cleanup.exit_crit_edge, label %__sii8620_write_seq.exit82.for.body.i71_crit_edge

__sii8620_write_seq.exit82.for.body.i71_crit_edge: ; preds = %__sii8620_write_seq.exit82
  br label %for.body.i71

__sii8620_write_seq.exit82.sii8620_mt_cleanup.exit_crit_edge: ; preds = %__sii8620_write_seq.exit82
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_mt_cleanup.exit

for.body.i71:                                     ; preds = %list_del.exit.i.for.body.i71_crit_edge, %__sii8620_write_seq.exit82.for.body.i71_crit_edge
  %msg.020.i = phi ptr [ %n.0.i, %list_del.exit.i.for.body.i71_crit_edge ], [ %78, %__sii8620_write_seq.exit82.for.body.i71_crit_edge ]
  %79 = ptrtoint ptr %msg.020.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %n.0.i = load ptr, ptr %msg.020.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %msg.020.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i71.list_del.exit.i_crit_edge

for.body.i71.list_del.exit.i_crit_edge:           ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.020.i, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev.i.i.i, align 4
  %82 = ptrtoint ptr %msg.020.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %msg.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %prev1.i.i.i.i, align 4
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %83, ptr %81, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i71.list_del.exit.i_crit_edge
  %86 = ptrtoint ptr %msg.020.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 256 to ptr), ptr %msg.020.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %msg.020.i, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %msg.020.i) #11
  %cmp.not.i72 = icmp eq ptr %n.0.i, %mt_queue.i
  br i1 %cmp.not.i72, label %list_del.exit.i.sii8620_mt_cleanup.exit_crit_edge, label %list_del.exit.i.for.body.i71_crit_edge

list_del.exit.i.for.body.i71_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i71

list_del.exit.i.sii8620_mt_cleanup.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_mt_cleanup.exit

sii8620_mt_cleanup.exit:                          ; preds = %list_del.exit.i.sii8620_mt_cleanup.exit_crit_edge, %__sii8620_write_seq.exit82.sii8620_mt_cleanup.exit_crit_edge
  %mt_state.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 22
  %88 = ptrtoint ptr %mt_state.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %mt_state.i, align 4
  br label %cleanup

sw.epilog.thread:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %mode1, align 4
  br label %sii8620_set_auto_zone.exit.thread

sw.epilog:                                        ; preds = %if.end
  %dev = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 1
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %mode) #14
  %92 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pr = load i32, ptr %mode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %phi.cmp = icmp eq i32 %.pr, 2
  br i1 %phi.cmp, label %sw.epilog.sii8620_set_auto_zone.exit_crit_edge, label %sw.epilog.sii8620_set_auto_zone.exit.thread_crit_edge

sw.epilog.sii8620_set_auto_zone.exit.thread_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_set_auto_zone.exit.thread

sw.epilog.sii8620_set_auto_zone.exit_crit_edge:   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_set_auto_zone.exit

sii8620_set_auto_zone.exit.thread:                ; preds = %sw.epilog.sii8620_set_auto_zone.exit.thread_crit_edge, %sw.epilog.thread
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i59) #11
  %93 = ptrtoint ptr %d.i.i59 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %d.i.i59, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 865, ptr noundef nonnull %d.i.i59, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i59) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i59) #11
  %94 = ptrtoint ptr %d.i.i59 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 7, ptr %d.i.i59, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 823, ptr noundef nonnull %d.i.i59, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i59) #11
  br label %cleanup

sii8620_set_auto_zone.exit:                       ; preds = %sw.epilog.sii8620_set_auto_zone.exit_crit_edge, %sw.epilog.thread102
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i3.i) #11
  %95 = ptrtoint ptr %d.i3.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 8, ptr %d.i3.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 865, ptr noundef nonnull %d.i3.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i3.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i3.i) #11
  %96 = ptrtoint ptr %d.i3.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 5, ptr %d.i3.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 823, ptr noundef nonnull %d.i3.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i3.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp12.not = icmp eq i32 %mode, 2
  br i1 %cmp12.not, label %for.body.i69.preheader, label %sii8620_set_auto_zone.exit.cleanup_crit_edge

sii8620_set_auto_zone.exit.cleanup_crit_edge:     ; preds = %sii8620_set_auto_zone.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i69.preheader:                           ; preds = %sii8620_set_auto_zone.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i61) #11
  %97 = ptrtoint ptr %d.i61 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -68, ptr %d.i61, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 817, ptr noundef nonnull %d.i61, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i61) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i61) #11
  %98 = ptrtoint ptr %d.i61 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -69, ptr %d.i61, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 818, ptr noundef nonnull %d.i61, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i61) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i61) #11
  %99 = ptrtoint ptr %d.i61 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 72, ptr %d.i61, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 820, ptr noundef nonnull %d.i61, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i61) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i61) #11
  %100 = ptrtoint ptr %d.i61 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 57, ptr %d.i61, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 822, ptr noundef nonnull %d.i61, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i61) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i61) #11
  %101 = ptrtoint ptr %d.i61 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 42, ptr %d.i61, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 819, ptr noundef nonnull %d.i61, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i61) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i61) #11
  %102 = ptrtoint ptr %d.i61 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 42, ptr %d.i61, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 848, ptr noundef nonnull %d.i61, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i61) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i61) #11
  %103 = ptrtoint ptr %d.i61 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 8, ptr %d.i61, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 849, ptr noundef nonnull %d.i61, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i61) #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.i69.preheader, %sii8620_set_auto_zone.exit.cleanup_crit_edge, %sii8620_set_auto_zone.exit.thread, %sii8620_mt_cleanup.exit, %if.then6, %sw.bb3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sii8620_disconnect(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  %d.i21 = alloca [1 x i8], align 1
  %d.i2.i.i = alloca [1 x i8], align 1
  %ret.i.i.i.i = alloca i8, align 1
  %d.i.i.i = alloca [1 x i8], align 1
  %d.i19 = alloca [1 x i8], align 1
  %d.i18 = alloca [1 x i8], align 1
  %d1.i = alloca [1 x i8], align 1
  %d.i.i17 = alloca [1 x i8], align 1
  %d.i = alloca [1 x i8], align 1
  %d.i.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gen2_write_burst.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 21
  %0 = ptrtoint ptr %gen2_write_burst.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %gen2_write_burst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.sii8620_disable_gen2_write_burst.exit_crit_edge, label %for.body.i.preheader.i

entry.sii8620_disable_gen2_write_burst.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_disable_gen2_write_burst.exit

for.body.i.preheader.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i) #11
  %1 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %d.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1416, ptr noundef nonnull %d.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i) #11
  %2 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %d.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1414, ptr noundef nonnull %d.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i) #11
  %3 = ptrtoint ptr %gen2_write_burst.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load2.i = load i8, ptr %gen2_write_burst.i, align 4
  %bf.clear.i = and i8 %bf.load2.i, 127
  store i8 %bf.clear.i, ptr %gen2_write_burst.i, align 4
  br label %sii8620_disable_gen2_write_burst.exit

sii8620_disable_gen2_write_burst.exit:            ; preds = %for.body.i.preheader.i, %entry.sii8620_disable_gen2_write_burst.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i17) #11
  %4 = ptrtoint ptr %d.i.i17 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %d.i.i17, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1596, ptr noundef nonnull %d.i.i17, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i17) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i17) #11
  %5 = ptrtoint ptr %d.i.i17 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %d.i.i17, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 921, ptr noundef nonnull %d.i.i17, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i17) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i17) #11
  %6 = ptrtoint ptr %d.i.i17 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %d.i.i17, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1578, ptr noundef nonnull %d.i.i17, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i17) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i17) #11
  %7 = ptrtoint ptr %d.i.i17 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %d.i.i17, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1597, ptr noundef nonnull %d.i.i17, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i17) #11
  %sink_type.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 11
  %8 = ptrtoint ptr %sink_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sink_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cond.i = icmp eq i32 %9, 2
  %..i = select i1 %cond.i, i8 24, i8 25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i) #11
  %10 = ptrtoint ptr %d.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %..i, ptr %d.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 1562, ptr noundef nonnull %d.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i) #11
  call void @msleep(i32 noundef 100) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i18) #11
  %11 = ptrtoint ptr %d.i18 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 40, ptr %d.i18, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 14, ptr noundef nonnull %d.i18, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i18) #11
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d1.i) #11
  %12 = ptrtoint ptr %d1.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 32, ptr %d1.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 14, ptr noundef nonnull %d1.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d1.i) #11
  call fastcc void @sii8620_set_mode(ptr noundef %ctx, i32 noundef 0)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sii8620_disable_gen2_write_burst.exit
  %i.08.i = phi i32 [ %add2.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sii8620_disable_gen2_write_burst.exit ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i19) #11
  %add.i = or i32 %i.08.i, 1
  %arrayidx.i = getelementptr i16, ptr @sii8620_disconnect.d, i32 %add.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i, align 2
  %conv.i = trunc i16 %14 to i8
  %15 = ptrtoint ptr %d.i19 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %d.i19, align 1
  %arrayidx1.i = getelementptr i16, ptr @sii8620_disconnect.d, i32 %i.08.i
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx1.i, align 2
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext %17, ptr noundef nonnull %d.i19, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i19) #11
  %add2.i = add nuw nsw i32 %i.08.i, 2
  %cmp.i = icmp ult i32 %i.08.i, 28
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %__sii8620_write_seq.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

__sii8620_write_seq.exit:                         ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ret.i.i.i.i) #11
  %18 = ptrtoint ptr %ret.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %ret.i.i.i.i, align 1
  call fastcc void @sii8620_read_buf(ptr noundef %ctx, i16 noundef zeroext 739, ptr noundef nonnull %ret.i.i.i.i, i32 noundef 1) #11
  %19 = ptrtoint ptr %ret.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ret.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ret.i.i.i.i) #11
  %and4.i.i.i = and i8 %20, 127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i.i.i) #11
  %21 = ptrtoint ptr %d.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %and4.i.i.i, ptr %d.i.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 739, ptr noundef nonnull %d.i.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i2.i.i) #11
  %22 = ptrtoint ptr %d.i2.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 16, ptr %d.i2.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 121, ptr noundef nonnull %d.i2.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i2.i.i) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i2.i.i) #11
  %23 = ptrtoint ptr %d.i2.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %d.i2.i.i, align 1
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext 126, ptr noundef nonnull %d.i2.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i2.i.i) #11
  %24 = ptrtoint ptr %sink_type.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %sink_type.i, align 4
  %sink_detected.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 19
  %25 = ptrtoint ptr %sink_detected.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %sink_detected.i, align 2
  %feature_complete.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 17
  %26 = ptrtoint ptr %feature_complete.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %feature_complete.i, align 4
  %edid.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 20
  %27 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %edid.i, align 4
  call void @kfree(ptr noundef %28) #11
  %29 = ptrtoint ptr %edid.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %edid.i, align 4
  br label %for.body.i29

for.body.i29:                                     ; preds = %for.body.i29.for.body.i29_crit_edge, %__sii8620_write_seq.exit
  %i.08.i22 = phi i32 [ %add2.i27, %for.body.i29.for.body.i29_crit_edge ], [ 0, %__sii8620_write_seq.exit ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d.i21) #11
  %add.i23 = or i32 %i.08.i22, 1
  %arrayidx.i24 = getelementptr i16, ptr @sii8620_disconnect.d.56, i32 %add.i23
  %30 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.i24, align 2
  %conv.i25 = trunc i16 %31 to i8
  %32 = ptrtoint ptr %d.i21 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i25, ptr %d.i21, align 1
  %arrayidx1.i26 = getelementptr i16, ptr @sii8620_disconnect.d.56, i32 %i.08.i22
  %33 = ptrtoint ptr %arrayidx1.i26 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx1.i26, align 2
  call fastcc void @sii8620_write_buf(ptr noundef %ctx, i16 noundef zeroext %34, ptr noundef nonnull %d.i21, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d.i21) #11
  %add2.i27 = add nuw nsw i32 %i.08.i22, 2
  %cmp.i28 = icmp ult i32 %i.08.i22, 78
  br i1 %cmp.i28, label %for.body.i29.for.body.i29_crit_edge, label %__sii8620_write_seq.exit30

for.body.i29.for.body.i29_crit_edge:              ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i29

__sii8620_write_seq.exit30:                       ; preds = %for.body.i29
  %devcap_read = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 18
  %35 = ptrtoint ptr %devcap_read to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %devcap_read, align 1
  %cbus_status = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 12
  %mt_queue.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %36 = call ptr @memset(ptr %cbus_status, i32 0, i32 28)
  %37 = ptrtoint ptr %mt_queue.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mt_queue.i, align 4
  %cmp.not19.i = icmp eq ptr %38, %mt_queue.i
  br i1 %cmp.not19.i, label %__sii8620_write_seq.exit30.sii8620_mt_cleanup.exit_crit_edge, label %__sii8620_write_seq.exit30.for.body.i31_crit_edge

__sii8620_write_seq.exit30.for.body.i31_crit_edge: ; preds = %__sii8620_write_seq.exit30
  br label %for.body.i31

__sii8620_write_seq.exit30.sii8620_mt_cleanup.exit_crit_edge: ; preds = %__sii8620_write_seq.exit30
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_mt_cleanup.exit

for.body.i31:                                     ; preds = %list_del.exit.i.for.body.i31_crit_edge, %__sii8620_write_seq.exit30.for.body.i31_crit_edge
  %msg.020.i = phi ptr [ %n.0.i, %list_del.exit.i.for.body.i31_crit_edge ], [ %38, %__sii8620_write_seq.exit30.for.body.i31_crit_edge ]
  %39 = ptrtoint ptr %msg.020.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %n.0.i = load ptr, ptr %msg.020.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %msg.020.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i31.list_del.exit.i_crit_edge

for.body.i31.list_del.exit.i_crit_edge:           ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.020.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i, align 4
  %42 = ptrtoint ptr %msg.020.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %msg.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i31.list_del.exit.i_crit_edge
  %46 = ptrtoint ptr %msg.020.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %msg.020.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %msg.020.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %msg.020.i) #11
  %cmp.not.i = icmp eq ptr %n.0.i, %mt_queue.i
  br i1 %cmp.not.i, label %list_del.exit.i.sii8620_mt_cleanup.exit_crit_edge, label %list_del.exit.i.for.body.i31_crit_edge

list_del.exit.i.for.body.i31_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i31

list_del.exit.i.sii8620_mt_cleanup.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sii8620_mt_cleanup.exit

sii8620_mt_cleanup.exit:                          ; preds = %list_del.exit.i.sii8620_mt_cleanup.exit_crit_edge, %__sii8620_write_seq.exit30.sii8620_mt_cleanup.exit_crit_edge
  %mt_state.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 22
  %48 = ptrtoint ptr %mt_state.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %mt_state.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii8620_got_ecbus_speed(ptr noundef %ctx, i32 noundef %ret) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret)
  %cmp = icmp slt i32 %ret, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %sii8620_mt_msg_new.exit.i.i, label %if.else.i.i.i

if.else.i.i.i:                                    ; preds = %if.end
  %mt_queue.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %prev.i.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27, i32 1
  %1 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %2, ptr noundef %mt_queue.i.i.i) #11
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.else.i.i.i.if.end.i.i_crit_edge

if.else.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i.i.i, ptr %prev.i.i.i.i, align 4
  %4 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mt_queue.i.i.i, ptr %call7.i.i.i.i.i, align 8
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev3.i.i.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call7.i.i.i.i.i, ptr %2, align 4
  br label %if.end.i.i

sii8620_mt_msg_new.exit.i.i:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %error.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %7 = ptrtoint ptr %error.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -12, ptr %error.i.i.i, align 4
  br label %sii8620_mt_write_stat.exit

if.end.i.i:                                       ; preds = %if.end.i.i.i.i.i, %if.else.i.i.i.if.end.i.i_crit_edge
  %reg.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -32, ptr %reg.i.i, align 8
  %arrayidx2.i.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -112, ptr %arrayidx2.i.i, align 1
  %arrayidx4.i.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %arrayidx4.i.i, align 2
  %send.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %send.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sii8620_mt_msc_cmd_send, ptr %send.i.i, align 8
  br label %sii8620_mt_write_stat.exit

sii8620_mt_write_stat.exit:                       ; preds = %if.end.i.i, %sii8620_mt_msg_new.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not.i.i.i.i = icmp eq ptr %call7.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %sii8620_mt_msg_new.exit.i.i.i, label %if.else.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %sii8620_mt_write_stat.exit
  %mt_queue.i.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %prev.i.i.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27, i32 1
  %13 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i.i, ptr noundef %14, ptr noundef %mt_queue.i.i.i.i) #11
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.else.i.i.i.i.if.end.i.i.i_crit_edge

if.else.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i.i.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %call7.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mt_queue.i.i.i.i, ptr %call7.i.i.i.i.i.i, align 8
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %call7.i.i.i.i.i.i, ptr %14, align 4
  br label %if.end.i.i.i

sii8620_mt_msg_new.exit.i.i.i:                    ; preds = %sii8620_mt_write_stat.exit
  call void @__sanitizer_cov_trace_pc() #13
  %error.i.i.i.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %19 = ptrtoint ptr %error.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -12, ptr %error.i.i.i.i, align 4
  br label %sii8620_mt_rap.exit

if.end.i.i.i:                                     ; preds = %if.end.i.i.i.i.i.i, %if.else.i.i.i.i.if.end.i.i.i_crit_edge
  %reg.i.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 104, ptr %reg.i.i.i, align 8
  %arrayidx2.i.i.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 32, ptr %arrayidx2.i.i.i, align 1
  %arrayidx4.i.i.i = getelementptr %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 33, ptr %arrayidx4.i.i.i, align 2
  %send.i.i.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %call7.i.i.i.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %send.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @sii8620_mt_msc_cmd_send, ptr %send.i.i.i, align 8
  br label %sii8620_mt_rap.exit

sii8620_mt_rap.exit:                              ; preds = %if.end.i.i.i, %sii8620_mt_msg_new.exit.i.i.i
  %error.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 8
  %24 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end.i, label %sii8620_mt_rap.exit.return_crit_edge

sii8620_mt_rap.exit.return_crit_edge:             ; preds = %sii8620_mt_rap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %sii8620_mt_rap.exit
  %mt_queue.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27
  %26 = ptrtoint ptr %mt_queue.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %mt_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %27, %mt_queue.i
  br i1 %cmp.i.not.i, label %if.then2.i, label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -22, ptr %error.i, align 4
  br label %return

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i = getelementptr inbounds %struct.sii8620, ptr %ctx, i32 0, i32 27, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i, align 4
  %continuation.i = getelementptr inbounds %struct.sii8620_mt_msg, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %continuation.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @sii8620_ecbus_up, ptr %continuation.i, align 4
  br label %return

return:                                           ; preds = %if.end4.i, %if.then2.i, %sii8620_mt_rap.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sii8620_mt_read_devcap_reg_recv(ptr nocapture noundef writeonly %ctx, ptr nocapture noundef readonly %msg) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sii8620_mt_msg, ptr %msg, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %and = and i8 %1, 127
  %ret8 = getelementptr inbounds %struct.sii8620_mt_msg, ptr %msg, i32 0, i32 2
  %2 = ptrtoint ptr %ret8 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ret8, align 4
  %idxprom9 = zext i8 %and to i32
  %arrayidx10 = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 15, i32 %idxprom9
  %arrayidx7 = getelementptr %struct.sii8620, ptr %ctx, i32 0, i32 16, i32 %idxprom9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not16 = icmp slt i8 %1, 0
  %arrayidx10.sink = select i1 %tobool.not16, ptr %arrayidx7, ptr %arrayidx10
  %4 = ptrtoint ptr %arrayidx10.sink to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %arrayidx10.sink, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii8620_ecbus_up(ptr noundef %ctx, i32 noundef %ret) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret)
  %cmp = icmp slt i32 %ret, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sii8620_set_mode(ptr noundef %ctx, i32 noundef 4)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keyup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_find_edev_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sii8620_extcon_notifier(ptr noundef %self, i32 noundef %event, ptr nocapture noundef readnone %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %extcon_wq = getelementptr i8, ptr %self, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %extcon_wq) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii8620_extcon_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -492
  %extcon = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extcon, align 4
  %call = tail call i32 @extcon_get_state(ptr noundef %1, i32 noundef 41) #11
  %cable_state = getelementptr i8, ptr %work, i32 44
  %2 = ptrtoint ptr %cable_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cable_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %3)
  %cmp = icmp eq i32 %call, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %cable_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %cable_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp sgt i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @sii8620_cable_in(ptr noundef %add.ptr)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr i8, ptr %work, i32 -212
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %irq.i = getelementptr i8, ptr %6, i32 932
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %8) #11
  %clk_xtal.i.i = getelementptr i8, ptr %work, i32 -204
  %9 = ptrtoint ptr %clk_xtal.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_xtal.i.i, align 4
  tail call void @clk_disable(ptr noundef %10) #11
  tail call void @clk_unprepare(ptr noundef %10) #11
  %gpio_reset.i.i = getelementptr i8, ptr %work, i32 -200
  %11 = ptrtoint ptr %gpio_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpio_reset.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %12, i32 noundef 1) #11
  %supplies.i.i = getelementptr i8, ptr %work, i32 -192
  %call.i.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_register_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sii8620_attach(ptr nocapture noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @rc_allocate_device(i32 noundef 0) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.sii8620, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.82) #14
  %error.i = getelementptr inbounds %struct.sii8620, ptr %bridge, i32 0, i32 8
  %2 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -12, ptr %error.i, align 4
  br label %sii8620_init_rcp_input_dev.exit

if.end.i:                                         ; preds = %entry
  %input_phys.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %input_phys.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.84, ptr %input_phys.i, align 4
  %input_id.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %input_id.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 6, ptr %input_id.i, align 8
  %map_name.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %map_name.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.85, ptr %map_name.i, align 4
  %allowed_protocols.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 16
  %6 = ptrtoint ptr %allowed_protocols.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 4194304, ptr %allowed_protocols.i, align 8
  %driver_name.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %driver_name.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str, ptr %driver_name.i, align 8
  %device_name.i = getelementptr inbounds %struct.rc_dev, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %device_name.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str, ptr %device_name.i, align 8
  %call1.i = tail call i32 @rc_register_device(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end10.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev7.i = getelementptr inbounds %struct.sii8620, ptr %bridge, i32 0, i32 1
  %9 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev7.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.87) #14
  %error8.i = getelementptr inbounds %struct.sii8620, ptr %bridge, i32 0, i32 8
  %11 = ptrtoint ptr %error8.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call1.i, ptr %error8.i, align 4
  %rc_dev9.i = getelementptr inbounds %struct.sii8620, ptr %bridge, i32 0, i32 2
  %12 = ptrtoint ptr %rc_dev9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rc_dev9.i, align 4
  tail call void @rc_free_device(ptr noundef %13) #11
  br label %sii8620_init_rcp_input_dev.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %rc_dev11.i = getelementptr inbounds %struct.sii8620, ptr %bridge, i32 0, i32 2
  %14 = ptrtoint ptr %rc_dev11.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %rc_dev11.i, align 4
  br label %sii8620_init_rcp_input_dev.exit

sii8620_init_rcp_input_dev.exit:                  ; preds = %if.end10.i, %do.end6.i, %do.end.i
  %error.i3 = getelementptr inbounds %struct.sii8620, ptr %bridge, i32 0, i32 8
  %15 = ptrtoint ptr %error.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error.i3, align 4
  store i32 0, ptr %error.i3, align 4
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sii8620_detach(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rc_dev = getelementptr inbounds %struct.sii8620, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rc_dev, align 4
  tail call void @rc_unregister_device(ptr noundef %1) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sii8620_mode_valid(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode.i.i = getelementptr inbounds %struct.sii8620, ptr %bridge, i32 0, i32 10
  %0 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.i = icmp ugt i32 %1, 2
  %..i = select i1 %cmp.i.i, i32 200000, i32 75000
  %.9.i = select i1 %cmp.i.i, i32 300000, i32 150000
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %..i)
  %cmp.i = icmp slt i32 %3, %..i
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %.9.i)
  %cmp4.i = icmp slt i32 %3, %.9.i
  %.10.i = select i1 %cmp4.i, i32 1, i32 -1
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %.10.i
  %4 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %retval.0.i, label %sw.default [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.sii8620, ptr %bridge, i32 0, i32 15, i32 5
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = and i8 %6, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond = select i1 %tobool.not, i32 15, i32 0
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 15, %sw.default ], [ %cond, %sw.bb2 ], [ %retval.0.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sii8620_mode_fixup(ptr noundef %bridge, ptr nocapture noundef readnone %mode, ptr nocapture noundef readonly %adjusted_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sii8620, ptr %bridge, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %mode.i.i = getelementptr inbounds %struct.sii8620, ptr %bridge, i32 0, i32 10
  %0 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i.i = icmp ugt i32 %1, 2
  %..i = select i1 %cmp.i.i, i32 200000, i32 75000
  %2 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %adjusted_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %..i)
  %cmp.i.not = icmp slt i32 %3, %..i
  %use_packed_pixel = getelementptr inbounds %struct.sii8620, ptr %bridge, i32 0, i32 9
  %4 = ptrtoint ptr %use_packed_pixel to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %use_packed_pixel, align 4
  %bf.shl = select i1 %cmp.i.not, i8 0, i8 -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %use_packed_pixel, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_unregister_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !38, !39, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !104, !105, !107, !109, !111, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !131, !133, !135, !137, !139, !141, !142, !143, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !177, !179, !181, !183, !185, !186, !187, !189, !190, !191, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !207, !208, !209, !211, !213, !214, !215, !216, !218, !220, !222, !223, !224, !226, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !241, !242, !244, !246, !247, !248, !249, !251}
!llvm.module.flags = !{!253, !254, !255, !256, !257, !258, !259, !260}
!llvm.ident = !{!261}

!0 = !{ptr @__initcall__kmod_sil_sii8620__315_2389_sii8620_driver_init6, !1, !"__initcall__kmod_sil_sii8620__315_2389_sii8620_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2389, i32 1}
!2 = !{ptr @__exitcall_sii8620_driver_exit, !1, !"__exitcall_sii8620_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file316, !4, !"__UNIQUE_ID_file316", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2390, i32 1}
!5 = !{ptr @__UNIQUE_ID_license317, !4, !"__UNIQUE_ID_license317", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2381, i32 11}
!8 = !{ptr @sii8620_driver, !9, !"sii8620_driver", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2379, i32 26}
!10 = !{ptr @sii8620_probe.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2299, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2302, i32 36}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2305, i32 10}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2308, i32 3}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sii8620_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @sii8620_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2318, i32 10}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2320, i32 40}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2323, i32 10}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2325, i32 28}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2326, i32 28}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2333, i32 3}
!37 = !{ptr @sii8620_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @sii8620_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @sii8620_irq_thread.irq_vec, !40, !"irq_vec", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2015, i32 4}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2044, i32 3}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @sii8620_irq_thread._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @sii8620_irq_thread._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = distinct !{null, !47, !"d", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1623, i32 4}
!48 = !{ptr @sii8620_mhl_discover.d, !49, !"d", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1243, i32 2}
!50 = distinct !{null, !51, !"d", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1340, i32 2}
!52 = distinct !{null, !53, !"d", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1350, i32 2}
!54 = distinct !{null, !55, !"d", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1362, i32 2}
!56 = distinct !{null, !57, !"d", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1368, i32 2}
!58 = !{ptr @sii8620_mhl_init.d.22, !59, !"d", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1377, i32 2}
!60 = distinct !{null, !61, !"d", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1285, i32 3}
!62 = distinct !{null, !63, !"d", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1291, i32 3}
!64 = distinct !{null, !65, !"d", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1224, i32 2}
!66 = !{ptr @sii8620_set_dev_cap.devcap, !67, !"devcap", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1307, i32 18}
!68 = !{ptr @sii8620_set_dev_cap.xdcap, !69, !"xdcap", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1325, i32 18}
!70 = distinct !{null, !71, !"d", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 339, i32 2}
!72 = distinct !{null, !73, !"d", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 330, i32 2}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 380, i32 3}
!76 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @sii8620_mt_msc_cmd_send._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @sii8620_mt_msc_cmd_send._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 218, i32 2}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @sii8620_write_buf.__UNIQUE_ID_ddebug308, !80, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 221, i32 3}
!86 = !{ptr @sii8620_write_buf._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @sii8620_write_buf._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @sii8620_i2c_page, !89, !"sii8620_i2c_page", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 120, i32 17}
!90 = distinct !{null, !91, !"d", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1903, i32 4}
!92 = distinct !{null, !93, !"d", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1966, i32 3}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 609, i32 3}
!96 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @sii8620_burst_get_tx_buf._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @sii8620_burst_get_tx_buf._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 523, i32 2}
!101 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @sii8620_mr_devcap._entry, !100, !"_entry", i1 false, i1 false}
!104 = !{ptr @sii8620_mr_devcap._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 484, i32 17}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 485, i32 17}
!109 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 486, i32 16}
!111 = !{ptr @sii8620_identify_sink.sink_str, !112, !"sink_str", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 483, i32 28}
!113 = !{ptr @.str.40, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 497, i32 3}
!115 = !{ptr @.str.41, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @sii8620_identify_sink._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @sii8620_identify_sink._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 510, i32 2}
!120 = !{ptr @sii8620_identify_sink._entry.42, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @sii8620_identify_sink._entry_ptr.44, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 836, i32 5}
!124 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @sii8620_fetch_edid._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @sii8620_fetch_edid._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = distinct !{null, !128, !"d", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 878, i32 2}
!129 = distinct !{null, !130, !"d", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 888, i32 2}
!131 = distinct !{null, !132, !"d", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 897, i32 2}
!133 = distinct !{null, !134, !"d", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1441, i32 3}
!135 = !{ptr @sii8620_set_mode.d.50, !136, !"d", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1456, i32 3}
!137 = distinct !{null, !138, !"d", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1477, i32 3}
!139 = !{ptr @.str.53, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1490, i32 3}
!141 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @sii8620_set_mode._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @sii8620_set_mode._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = distinct !{null, !145, !"d", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1499, i32 2}
!146 = !{ptr @sii8620_disconnect.d, !147, !"d", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1527, i32 2}
!148 = !{ptr @sii8620_disconnect.d.56, !149, !"d", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1548, i32 2}
!150 = distinct !{null, !151, !"d", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 991, i32 2}
!152 = distinct !{null, !153, !"d", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 972, i32 3}
!154 = distinct !{null, !155, !"d", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 979, i32 3}
!156 = distinct !{null, !157, !"d", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1235, i32 2}
!158 = !{ptr @.str.59, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1808, i32 3}
!160 = !{ptr @.str.60, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @sii8620_msc_msg_first._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @sii8620_msc_msg_first._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.61, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1848, i32 3}
!165 = !{ptr @.str.62, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @sii8620_msc_mr_msc_msg._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @sii8620_msc_mr_msc_msg._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.63, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 626, i32 3}
!170 = !{ptr @.str.64, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @sii8620_burst_get_rx_buf._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @sii8620_burst_get_rx_buf._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = distinct !{null, !174, !"d", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1157, i32 2}
!175 = !{ptr @sii8620_start_video.clk_spec, !176, !"clk_spec", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1180, i32 5}
!177 = distinct !{null, !178, !"d", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1209, i32 3}
!179 = distinct !{null, !180, !"d", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1024, i32 4}
!181 = distinct !{null, !182, !"d", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1030, i32 4}
!183 = !{ptr @.str.70, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 170, i32 2}
!185 = !{ptr @.str.71, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @sii8620_read_buf.__UNIQUE_ID_ddebug307, !184, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!187 = !{ptr @.str.72, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 173, i32 3}
!189 = !{ptr @sii8620_read_buf._entry, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @sii8620_read_buf._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!191 = distinct !{null, !192, !"d", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 1602, i32 2}
!193 = !{ptr @.str.73, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2175, i32 3}
!195 = !{ptr @.str.74, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @sii8620_extcon_init._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @sii8620_extcon_init._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.76, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2184, i32 3}
!200 = !{ptr @sii8620_extcon_init._entry.75, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @sii8620_extcon_init._entry_ptr.77, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @sii8620_extcon_init.__key, !203, !"__key", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2190, i32 2}
!204 = !{ptr @.str.78, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.80, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2193, i32 3}
!207 = !{ptr @sii8620_extcon_init._entry.79, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @sii8620_extcon_init._entry_ptr.81, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @sii8620_bridge_funcs, !210, !"sii8620_bridge_funcs", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2280, i32 38}
!211 = !{ptr @.str.82, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2106, i32 3}
!213 = !{ptr @.str.83, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @sii8620_init_rcp_input_dev._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @sii8620_init_rcp_input_dev._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.84, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2111, i32 23}
!218 = !{ptr @.str.85, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2113, i32 21}
!220 = !{ptr @.str.87, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2121, i32 3}
!222 = !{ptr @sii8620_init_rcp_input_dev._entry.86, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @sii8620_init_rcp_input_dev._entry_ptr.88, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.89, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2060, i32 3}
!226 = !{ptr @.str.90, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @sii8620_cable_in._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @sii8620_cable_in._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.92, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2067, i32 3}
!231 = !{ptr @sii8620_cable_in._entry.91, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @sii8620_cable_in._entry_ptr.93, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.95, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2071, i32 2}
!235 = !{ptr @sii8620_cable_in._entry.94, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @sii8620_cable_in._entry_ptr.96, !234, !"_entry_ptr", i1 false, i1 false}
!237 = distinct !{null, !238, !"d", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2080, i32 2}
!239 = !{ptr @sii8620_cable_in._entry.97, !240, !"_entry", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2089, i32 3}
!241 = !{ptr @sii8620_cable_in._entry_ptr.98, !240, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @sii8620_xtal_set_rate.rates, !243, !"rates", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 912, i32 4}
!244 = !{ptr @.str.99, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 927, i32 3}
!246 = !{ptr @.str.100, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @sii8620_xtal_set_rate._entry, !245, !"_entry", i1 false, i1 false}
!248 = !{ptr @sii8620_xtal_set_rate._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @sii8620_dt_match, !250, !"sii8620_dt_match", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2367, i32 34}
!251 = !{ptr @sii8620_id, !252, !"sii8620_id", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/bridge/sil-sii8620.c", i32 2373, i32 35}
!253 = !{i32 1, !"wchar_size", i32 2}
!254 = !{i32 1, !"min_enum_size", i32 4}
!255 = !{i32 8, !"branch-target-enforcement", i32 0}
!256 = !{i32 8, !"sign-return-address", i32 0}
!257 = !{i32 8, !"sign-return-address-all", i32 0}
!258 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!259 = !{i32 7, !"uwtable", i32 1}
!260 = !{i32 7, !"frame-pointer", i32 2}
!261 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!262 = !{!"auto-init"}
!263 = !{i8 0, i8 2}
!264 = !{i64 2148416808, i64 2148416813, i64 2148416826, i64 2148416870, i64 2148416904, i64 2148416925}
