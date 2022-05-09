; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.lcd_olinuxino = type { %struct.drm_panel, ptr, ptr, %struct.mutex, i8, i8, ptr, ptr, %struct.lcd_olinuxino_eeprom }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.lcd_olinuxino_eeprom = type { i32, i32, [4 x i8], i32, %struct.lcd_olinuxino_info, i32, [180 x i8], i32 }
%struct.lcd_olinuxino_info = type { [32 x i8], i32, i32, i32, i32, i32 }
%struct.lcd_olinuxino_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_olimex_lcd_olinuxino__302_318_lcd_olinuxino_driver_init6 = internal global ptr @lcd_olinuxino_driver_init, section ".initcall6.init", align 4
@lcd_olinuxino_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lcd_olinuxino_probe, ptr @lcd_olinuxino_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lcd_olinuxino_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lcd_olinuxino_driver_exit = internal global ptr @lcd_olinuxino_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [71 x i8] c"panel_olimex_lcd_olinuxino.author=Stefan Mavrodiev <stefan@olimex.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [60 x i8] c"panel_olimex_lcd_olinuxino.description=LCD-OLinuXino driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [81 x i8] c"panel_olimex_lcd_olinuxino.file=drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [39 x i8] c"panel_olimex_lcd_olinuxino.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lcd_olinuxino\00", [18 x i8] zeroinitializer }, align 32
@lcd_olinuxino_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"olimex,lcd-olinuxino\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lcd_olinuxino_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&lcd->mutex\00", [20 x i8] zeroinitializer }, align 32
@lcd_olinuxino_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 236, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error reading from device at %02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lcd_olinuxino_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lcd_olinuxino_probe._entry_ptr = internal global ptr @lcd_olinuxino_probe._entry, section ".printk_index", align 4
@lcd_olinuxino_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 244, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"configuration checksum does not match!\0A\00", [56 x i8] zeroinitializer }, align 32
@lcd_olinuxino_probe._entry_ptr.9 = internal global ptr @lcd_olinuxino_probe._entry.7, section ".printk_index", align 4
@lcd_olinuxino_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 250, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"magic header does not match\0A\00", [35 x i8] zeroinitializer }, align 32
@lcd_olinuxino_probe._entry_ptr.12 = internal global ptr @lcd_olinuxino_probe._entry.10, section ".printk_index", align 4
@lcd_olinuxino_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 257, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Detected %s, Rev. %s, Serial: %08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lcd_olinuxino_probe._entry_ptr.16 = internal global ptr @lcd_olinuxino_probe._entry.13, section ".printk_index", align 4
@lcd_olinuxino_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 264, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid number of modes, falling back to 4\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@lcd_olinuxino_probe._entry_ptr.20 = internal global ptr @lcd_olinuxino_probe._entry.17, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@lcd_olinuxino_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @lcd_olinuxino_prepare, ptr @lcd_olinuxino_enable, ptr @lcd_olinuxino_disable, ptr @lcd_olinuxino_unprepare, ptr @lcd_olinuxino_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@lcd_olinuxino_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 156, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lcd_olinuxino_get_modes\00", [40 x i8] zeroinitializer }, align 32
@lcd_olinuxino_get_modes._entry_ptr = internal global ptr @lcd_olinuxino_get_modes._entry, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"lcd_olinuxino_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 309, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 311, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [21 x i8] c"lcd_olinuxino_of_ids\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 303, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 225, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 236, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 244, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 250, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 254, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 264, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 271, i32 40 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 275, i32 41 }
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"lcd_olinuxino_funcs\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 197, i32 37 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [54 x i8] c"../drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 153, i32 4 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_lcd_olinuxino_driver_exit, ptr @__initcall__kmod_panel_olimex_lcd_olinuxino__302_318_lcd_olinuxino_driver_init6, ptr @lcd_olinuxino_driver_exit, ptr @lcd_olinuxino_get_modes._entry, ptr @lcd_olinuxino_get_modes._entry_ptr, ptr @lcd_olinuxino_probe._entry, ptr @lcd_olinuxino_probe._entry.10, ptr @lcd_olinuxino_probe._entry.13, ptr @lcd_olinuxino_probe._entry.17, ptr @lcd_olinuxino_probe._entry.7, ptr @lcd_olinuxino_probe._entry_ptr, ptr @lcd_olinuxino_probe._entry_ptr.12, ptr @lcd_olinuxino_probe._entry_ptr.16, ptr @lcd_olinuxino_probe._entry_ptr.20, ptr @lcd_olinuxino_probe._entry_ptr.9, ptr @lcd_olinuxino_driver, ptr @.str, ptr @lcd_olinuxino_of_ids, ptr @lcd_olinuxino_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @lcd_olinuxino_funcs, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_olinuxino_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_olinuxino_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_olinuxino_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_olinuxino_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_olinuxino_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_olinuxino_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_olinuxino_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_olinuxino_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_olinuxino_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcd_olinuxino_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd_olinuxino_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lcd_olinuxino_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lcd_olinuxino_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @lcd_olinuxino_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd_olinuxino_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108865, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 67108865
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 392, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev6 = getelementptr inbounds %struct.lcd_olinuxino, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %dev6, align 4
  %client7 = getelementptr inbounds %struct.lcd_olinuxino, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %client7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %client7, align 4
  %mutex = getelementptr inbounds %struct.lcd_olinuxino, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @lcd_olinuxino_probe.__key) #6
  %eeprom = getelementptr inbounds %struct.lcd_olinuxino, ptr %call.i, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call9 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 32, ptr noundef %eeprom) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp11 = icmp slt i32 %call9, 0
  br i1 %cmp11, label %if.end5.do.end16_crit_edge, label %for.inc

if.end5.do.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

do.end16:                                         ; preds = %for.inc.6.do.end16_crit_edge, %for.inc.5.do.end16_crit_edge, %for.inc.4.do.end16_crit_edge, %for.inc.3.do.end16_crit_edge, %for.inc.2.do.end16_crit_edge, %for.inc.1.do.end16_crit_edge, %for.inc.do.end16_crit_edge, %if.end5.do.end16_crit_edge
  %i.0127.lcssa = phi i32 [ 0, %if.end5.do.end16_crit_edge ], [ 32, %for.inc.do.end16_crit_edge ], [ 64, %for.inc.1.do.end16_crit_edge ], [ 96, %for.inc.2.do.end16_crit_edge ], [ 128, %for.inc.3.do.end16_crit_edge ], [ 160, %for.inc.4.do.end16_crit_edge ], [ 192, %for.inc.5.do.end16_crit_edge ], [ 224, %for.inc.6.do.end16_crit_edge ]
  %call9.lcssa = phi i32 [ %call9, %if.end5.do.end16_crit_edge ], [ %call9.1, %for.inc.do.end16_crit_edge ], [ %call9.2, %for.inc.1.do.end16_crit_edge ], [ %call9.3, %for.inc.2.do.end16_crit_edge ], [ %call9.4, %for.inc.3.do.end16_crit_edge ], [ %call9.5, %for.inc.4.do.end16_crit_edge ], [ %call9.6, %for.inc.5.do.end16_crit_edge ], [ %call9.7, %for.inc.6.do.end16_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %i.0127.lcssa) #9
  br label %cleanup

for.inc:                                          ; preds = %if.end5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %add.ptr.1 = getelementptr %struct.lcd_olinuxino, ptr %call.i, i32 0, i32 8, i32 4, i32 0, i32 16
  %call9.1 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext 32, i8 noundef zeroext 32, ptr noundef %add.ptr.1) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1)
  %cmp11.1 = icmp slt i32 %call9.1, 0
  br i1 %cmp11.1, label %for.inc.do.end16_crit_edge, label %for.inc.1

for.inc.do.end16_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

for.inc.1:                                        ; preds = %for.inc
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %add.ptr.2 = getelementptr %struct.lcd_olinuxino, ptr %call.i, i32 0, i32 8, i32 4, i32 5
  %call9.2 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext 64, i8 noundef zeroext 32, ptr noundef %add.ptr.2) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.2)
  %cmp11.2 = icmp slt i32 %call9.2, 0
  br i1 %cmp11.2, label %for.inc.1.do.end16_crit_edge, label %for.inc.2

for.inc.1.do.end16_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

for.inc.2:                                        ; preds = %for.inc.1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %add.ptr.3 = getelementptr %struct.lcd_olinuxino, ptr %call.i, i32 0, i32 8, i32 6, i32 24
  %call9.3 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext 96, i8 noundef zeroext 32, ptr noundef %add.ptr.3) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.3)
  %cmp11.3 = icmp slt i32 %call9.3, 0
  br i1 %cmp11.3, label %for.inc.2.do.end16_crit_edge, label %for.inc.3

for.inc.2.do.end16_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

for.inc.3:                                        ; preds = %for.inc.2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %add.ptr.4 = getelementptr %struct.lcd_olinuxino, ptr %call.i, i32 0, i32 8, i32 6, i32 56
  %call9.4 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext -128, i8 noundef zeroext 32, ptr noundef %add.ptr.4) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.4)
  %cmp11.4 = icmp slt i32 %call9.4, 0
  br i1 %cmp11.4, label %for.inc.3.do.end16_crit_edge, label %for.inc.4

for.inc.3.do.end16_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

for.inc.4:                                        ; preds = %for.inc.3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %add.ptr.5 = getelementptr %struct.lcd_olinuxino, ptr %call.i, i32 0, i32 8, i32 6, i32 88
  %call9.5 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext -96, i8 noundef zeroext 32, ptr noundef %add.ptr.5) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.5)
  %cmp11.5 = icmp slt i32 %call9.5, 0
  br i1 %cmp11.5, label %for.inc.4.do.end16_crit_edge, label %for.inc.5

for.inc.4.do.end16_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

for.inc.5:                                        ; preds = %for.inc.4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %add.ptr.6 = getelementptr %struct.lcd_olinuxino, ptr %call.i, i32 0, i32 8, i32 6, i32 120
  %call9.6 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext -64, i8 noundef zeroext 32, ptr noundef %add.ptr.6) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.6)
  %cmp11.6 = icmp slt i32 %call9.6, 0
  br i1 %cmp11.6, label %for.inc.5.do.end16_crit_edge, label %for.inc.6

for.inc.5.do.end16_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

for.inc.6:                                        ; preds = %for.inc.5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %add.ptr.7 = getelementptr %struct.lcd_olinuxino, ptr %call.i, i32 0, i32 8, i32 6, i32 152
  %call9.7 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext -32, i8 noundef zeroext 32, ptr noundef %add.ptr.7) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.7)
  %cmp11.7 = icmp slt i32 %call9.7, 0
  br i1 %cmp11.7, label %for.inc.6.do.end16_crit_edge, label %for.inc.7

for.inc.6.do.end16_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

for.inc.7:                                        ; preds = %for.inc.6
  %call19 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %eeprom, i32 noundef 252) #10
  %neg = xor i32 %call19, -1
  %checksum21 = getelementptr inbounds %struct.lcd_olinuxino, ptr %call.i, i32 0, i32 8, i32 7
  %9 = ptrtoint ptr %checksum21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %checksum21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %neg)
  %cmp22.not = icmp eq i32 %10, %neg
  br i1 %cmp22.not, label %if.end28, label %do.end27

do.end27:                                         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end28:                                         ; preds = %for.inc.7
  %11 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eeprom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1330427687, i32 %12)
  %cmp30.not = icmp eq i32 %12, 1330427687
  br i1 %cmp30.not, label %do.end39, label %do.end35

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %cleanup

do.end39:                                         ; preds = %if.end28
  %info = getelementptr inbounds %struct.lcd_olinuxino, ptr %call.i, i32 0, i32 8, i32 4
  %revision = getelementptr inbounds %struct.lcd_olinuxino, ptr %call.i, i32 0, i32 8, i32 2
  %serial = getelementptr inbounds %struct.lcd_olinuxino, ptr %call.i, i32 0, i32 8, i32 3
  %13 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %serial, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.14, ptr noundef %info, ptr noundef %revision, i32 noundef %14) #9
  %num_modes = getelementptr inbounds %struct.lcd_olinuxino, ptr %call.i, i32 0, i32 8, i32 5
  %15 = ptrtoint ptr %num_modes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_modes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp45 = icmp ugt i32 %16, 4
  br i1 %cmp45, label %do.end50, label %do.end39.if.end53_crit_edge

do.end39.if.end53_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

do.end50:                                         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  %17 = ptrtoint ptr %num_modes to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %num_modes, align 4
  br label %if.end53

if.end53:                                         ; preds = %do.end50, %do.end39.if.end53_crit_edge
  %enabled = getelementptr inbounds %struct.lcd_olinuxino, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %enabled, align 1
  %prepared = getelementptr inbounds %struct.lcd_olinuxino, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %prepared, align 4
  %call54 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.21) #6
  %supply = getelementptr inbounds %struct.lcd_olinuxino, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call54, ptr %supply, align 4
  %cmp.i124 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.then57, label %if.end60

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call54 to i32
  br label %cleanup

if.end60:                                         ; preds = %if.end53
  %call61 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef 3) #6
  %enable_gpio = getelementptr inbounds %struct.lcd_olinuxino, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call61, ptr %enable_gpio, align 4
  %cmp.i125 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125, label %if.then64, label %if.end67

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call61 to i32
  br label %cleanup

if.end67:                                         ; preds = %if.end60
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev1, ptr noundef nonnull @lcd_olinuxino_funcs, i32 noundef 17) #6
  %call69 = tail call i32 @drm_panel_of_backlight(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end72:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.end67.cleanup_crit_edge, %if.then64, %if.then57, %do.end35, %do.end27, %do.end16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9.lcssa, %do.end16 ], [ -22, %do.end27 ], [ -22, %do.end35 ], [ %21, %if.then57 ], [ %23, %if.then64 ], [ 0, %if.end72 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call69, %if.end67.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd_olinuxino_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_panel_remove(ptr noundef %1) #6
  %call3 = tail call i32 @drm_panel_disable(ptr noundef %1) #6
  %call5 = tail call i32 @drm_panel_unprepare(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd_olinuxino_prepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.lcd_olinuxino, ptr %panel, i32 0, i32 4
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %supply = getelementptr inbounds %struct.lcd_olinuxino, ptr %panel, i32 0, i32 6
  %2 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %supply, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %enable_gpio = getelementptr inbounds %struct.lcd_olinuxino, ptr %panel, i32 0, i32 7
  %4 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #6
  %6 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lcd_olinuxino_enable(ptr nocapture noundef %panel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.lcd_olinuxino, ptr %panel, i32 0, i32 5
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lcd_olinuxino_disable(ptr nocapture noundef %panel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.lcd_olinuxino, ptr %panel, i32 0, i32 5
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd_olinuxino_unprepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.lcd_olinuxino, ptr %panel, i32 0, i32 4
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %enable_gpio = getelementptr inbounds %struct.lcd_olinuxino, ptr %panel, i32 0, i32 7
  %2 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #6
  %supply = getelementptr inbounds %struct.lcd_olinuxino, ptr %panel, i32 0, i32 6
  %4 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %supply, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %5) #6
  %6 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lcd_olinuxino_get_modes(ptr noundef %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_modes = getelementptr inbounds %struct.lcd_olinuxino, ptr %panel, i32 0, i32 8, i32 5
  %0 = ptrtoint ptr %num_modes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_modes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp114.not = icmp eq i32 %1, 0
  br i1 %cmp114.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %num.0117 = phi i32 [ %num.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.0115 = phi i32 [ %inc47, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = mul i32 %i.0115, 44
  %arrayidx = getelementptr %struct.lcd_olinuxino, ptr %panel, i32 0, i32 8, i32 6, i32 %mul
  %2 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector, align 8
  %call3 = tail call ptr @drm_mode_create(ptr noundef %3) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  %hactive = getelementptr inbounds %struct.lcd_olinuxino_mode, ptr %arrayidx, i32 0, i32 1
  %6 = ptrtoint ptr %hactive to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hactive, align 4
  %vactive = getelementptr inbounds %struct.lcd_olinuxino_mode, ptr %arrayidx, i32 0, i32 5
  %8 = ptrtoint ptr %vactive to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vactive, align 4
  %refresh = getelementptr inbounds %struct.lcd_olinuxino_mode, ptr %arrayidx, i32 0, i32 9
  %10 = ptrtoint ptr %refresh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %refresh, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.23, i32 noundef %7, i32 noundef %9, i32 noundef %11) #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %call3, align 4
  %hactive5 = getelementptr inbounds %struct.lcd_olinuxino_mode, ptr %arrayidx, i32 0, i32 1
  %15 = ptrtoint ptr %hactive5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hactive5, align 4
  %conv = trunc i32 %16 to i16
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 1
  %17 = ptrtoint ptr %hdisplay to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %hdisplay, align 4
  %18 = load i32, ptr %hactive5, align 4
  %hfp = getelementptr inbounds %struct.lcd_olinuxino_mode, ptr %arrayidx, i32 0, i32 2
  %19 = ptrtoint ptr %hfp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hfp, align 4
  %add = add i32 %20, %18
  %conv7 = trunc i32 %add to i16
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 2
  %21 = ptrtoint ptr %hsync_start to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv7, ptr %hsync_start, align 2
  %22 = load i32, ptr %hactive5, align 4
  %23 = load i32, ptr %hfp, align 4
  %add10 = add i32 %23, %22
  %hpw = getelementptr inbounds %struct.lcd_olinuxino_mode, ptr %arrayidx, i32 0, i32 4
  %24 = ptrtoint ptr %hpw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hpw, align 4
  %add11 = add i32 %add10, %25
  %conv12 = trunc i32 %add11 to i16
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 3
  %26 = ptrtoint ptr %hsync_end to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv12, ptr %hsync_end, align 4
  %27 = load i32, ptr %hactive5, align 4
  %28 = load i32, ptr %hfp, align 4
  %add15 = add i32 %28, %27
  %29 = load i32, ptr %hpw, align 4
  %add17 = add i32 %add15, %29
  %hbp = getelementptr inbounds %struct.lcd_olinuxino_mode, ptr %arrayidx, i32 0, i32 3
  %30 = ptrtoint ptr %hbp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hbp, align 4
  %add18 = add i32 %add17, %31
  %conv19 = trunc i32 %add18 to i16
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 4
  %32 = ptrtoint ptr %htotal to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv19, ptr %htotal, align 2
  %vactive20 = getelementptr inbounds %struct.lcd_olinuxino_mode, ptr %arrayidx, i32 0, i32 5
  %33 = ptrtoint ptr %vactive20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vactive20, align 4
  %conv21 = trunc i32 %34 to i16
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 6
  %35 = ptrtoint ptr %vdisplay to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv21, ptr %vdisplay, align 2
  %36 = load i32, ptr %vactive20, align 4
  %vfp = getelementptr inbounds %struct.lcd_olinuxino_mode, ptr %arrayidx, i32 0, i32 6
  %37 = ptrtoint ptr %vfp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vfp, align 4
  %add23 = add i32 %38, %36
  %conv24 = trunc i32 %add23 to i16
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 7
  %39 = ptrtoint ptr %vsync_start to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv24, ptr %vsync_start, align 4
  %40 = load i32, ptr %vactive20, align 4
  %41 = load i32, ptr %vfp, align 4
  %add27 = add i32 %41, %40
  %vpw = getelementptr inbounds %struct.lcd_olinuxino_mode, ptr %arrayidx, i32 0, i32 8
  %42 = ptrtoint ptr %vpw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vpw, align 4
  %add28 = add i32 %add27, %43
  %conv29 = trunc i32 %add28 to i16
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 8
  %44 = ptrtoint ptr %vsync_end to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv29, ptr %vsync_end, align 2
  %45 = load i32, ptr %vactive20, align 4
  %46 = load i32, ptr %vfp, align 4
  %add32 = add i32 %46, %45
  %47 = load i32, ptr %vpw, align 4
  %add34 = add i32 %add32, %47
  %vbp = getelementptr inbounds %struct.lcd_olinuxino_mode, ptr %arrayidx, i32 0, i32 7
  %48 = ptrtoint ptr %vbp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vbp, align 4
  %add35 = add i32 %add34, %49
  %conv36 = trunc i32 %add35 to i16
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 9
  %50 = ptrtoint ptr %vtotal to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv36, ptr %vtotal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0115)
  %cmp37 = icmp eq i32 %i.0115, 0
  br i1 %cmp37, label %if.then39, label %if.end.if.end42_crit_edge

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then39:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 28
  %51 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %type, align 2
  %53 = or i8 %52, 8
  store i8 %53, ptr %type, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end.if.end42_crit_edge
  %type43 = getelementptr inbounds %struct.drm_display_mode, ptr %call3, i32 0, i32 28
  %54 = ptrtoint ptr %type43 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %type43, align 2
  %56 = or i8 %55, 64
  store i8 %56, ptr %type43, align 2
  tail call void @drm_mode_set_name(ptr noundef nonnull %call3) #6
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call3) #6
  %inc = add i32 %num.0117, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end42, %do.end
  %num.1 = phi i32 [ %inc, %if.end42 ], [ %num.0117, %do.end ]
  %inc47 = add nuw i32 %i.0115, 1
  %57 = ptrtoint ptr %num_modes to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_modes, align 4
  %cmp = icmp ult i32 %inc47, %58
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %num.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %num.1, %for.inc.for.end_crit_edge ]
  %width_mm = getelementptr inbounds %struct.lcd_olinuxino, ptr %panel, i32 0, i32 8, i32 4, i32 1
  %59 = ptrtoint ptr %width_mm to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %width_mm, align 1
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %61 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.lcd_olinuxino, ptr %panel, i32 0, i32 8, i32 4, i32 2
  %62 = ptrtoint ptr %height_mm to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %height_mm, align 1
  %height_mm50 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %64 = ptrtoint ptr %height_mm50 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %height_mm50, align 4
  %bpc = getelementptr inbounds %struct.lcd_olinuxino, ptr %panel, i32 0, i32 8, i32 4, i32 3
  %65 = ptrtoint ptr %bpc to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %bpc, align 1
  %bpc52 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %67 = ptrtoint ptr %bpc52 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %bpc52, align 8
  %bus_format = getelementptr inbounds %struct.lcd_olinuxino, ptr %panel, i32 0, i32 8, i32 4, i32 4
  %68 = ptrtoint ptr %bus_format to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %bus_format, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool53.not = icmp eq i32 %69, 0
  br i1 %tobool53.not, label %for.end.if.end58_crit_edge, label %if.then54

for.end.if.end58_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then54:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call57 = tail call i32 @drm_display_info_set_bus_formats(ptr noundef %display_info, ptr noundef %bus_format, i32 noundef 1) #6
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %for.end.if.end58_crit_edge
  %bus_flag = getelementptr inbounds %struct.lcd_olinuxino, ptr %panel, i32 0, i32 8, i32 4, i32 5
  %70 = ptrtoint ptr %bus_flag to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %bus_flag, align 1
  %bus_flags = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 8
  %72 = ptrtoint ptr %bus_flags to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %bus_flags, align 8
  ret i32 %num.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_display_info_set_bus_formats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !47, !49, !51, !52, !53, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_panel_olimex_lcd_olinuxino__302_318_lcd_olinuxino_driver_init6, !1, !"__initcall__kmod_panel_olimex_lcd_olinuxino__302_318_lcd_olinuxino_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c", i32 318, i32 1}
!2 = !{ptr @__exitcall_lcd_olinuxino_driver_exit, !1, !"__exitcall_lcd_olinuxino_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c", i32 320, i32 1}
!5 = !{ptr @__UNIQUE_ID_description304, !6, !"__UNIQUE_ID_description304", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c", i32 321, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c", i32 322, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c", i32 311, i32 11}
!12 = !{ptr @lcd_olinuxino_driver, !13, !"lcd_olinuxino_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c", i32 309, i32 26}
!14 = !{ptr @lcd_olinuxino_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c", i32 225, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c", i32 236, i32 4}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @lcd_olinuxino_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @lcd_olinuxino_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c", i32 244, i32 3}
!27 = !{ptr @lcd_olinuxino_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @lcd_olinuxino_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c", i32 250, i32 3}
!31 = !{ptr @lcd_olinuxino_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @lcd_olinuxino_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c", i32 254, i32 2}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @lcd_olinuxino_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @lcd_olinuxino_probe._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c", i32 264, i32 3}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @lcd_olinuxino_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @lcd_olinuxino_probe._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c", i32 271, i32 40}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c", i32 275, i32 41}
!47 = !{ptr @lcd_olinuxino_funcs, !48, !"lcd_olinuxino_funcs", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c", i32 197, i32 37}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c", i32 153, i32 4}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @lcd_olinuxino_get_modes._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @lcd_olinuxino_get_modes._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @lcd_olinuxino_of_ids, !55, !"lcd_olinuxino_of_ids", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/panel/panel-olimex-lcd-olinuxino.c", i32 303, i32 34}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i8 0, i8 2}
