; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/parade-ps8622.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/parade-ps8622.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ps8622_bridge = type { ptr, %struct.drm_bridge, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_parade_ps8622__307_559_ps8622_driver_init6 = internal global ptr @ps8622_driver_init, section ".initcall6.init", align 4
@ps8622_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ps8622_probe, ptr @ps8622_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ps8622_devices, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ps8622_i2c_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ps8622_driver_exit = internal global ptr @ps8622_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author308 = internal constant [61 x i8] c"parade_ps8622.author=Vincent Palatin <vpalatin@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [73 x i8] c"parade_ps8622.description=Parade ps8622/ps8625 eDP-LVDS converter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [56 x i8] c"parade_ps8622.file=drivers/gpu/drm/bridge/parade-ps8622\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [29 x i8] c"parade_ps8622.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ps8622\00", [25 x i8] zeroinitializer }, align 32
@ps8622_devices = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"parade,ps8622\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"parade,ps8625\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ps8622_i2c_table = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ps8622\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ps8625\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vdd12\00", [26 x i8] zeroinitializer }, align 32
@ps8622_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 475, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no 1.2v regulator found for PS8622\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ps8622_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/bridge/parade-ps8622.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ps8622_probe._entry_ptr = internal global ptr @ps8622_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sleep\00", [26 x i8] zeroinitializer }, align 32
@ps8622_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 482, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot get gpio_slp %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ps8622_probe._entry_ptr.11 = internal global ptr @ps8622_probe._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ps8622_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 493, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot get gpio_rst %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ps8622_probe._entry_ptr.15 = internal global ptr @ps8622_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lane-count\00", [21 x i8] zeroinitializer }, align 32
@ps8622_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 504, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"lane-count property is too high,using max_lane_count\0A\00", [42 x i8] zeroinitializer }, align 32
@ps8622_probe._entry_ptr.19 = internal global ptr @ps8622_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"use-external-pwm\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ps8622-backlight\00", [47 x i8] zeroinitializer }, align 32
@ps8622_backlight_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @ps8622_backlight_update, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register backlight\0A\00", [34 x i8] zeroinitializer }, align 32
@ps8622_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @ps8622_attach, ptr null, ptr null, ptr null, ptr @ps8622_disable, ptr @ps8622_post_disable, ptr null, ptr @ps8622_pre_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ps8622_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014PS8622 I2C write (0x%02x,0x%02x,0x%02x) failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ps8622_set\00", [21 x i8] zeroinitializer }, align 32
@ps8622_set._entry_ptr = internal global ptr @ps8622_set._entry, section ".printk_index", align 4
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fails to enable ps8622->v12\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to send config to bridge (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"ps8622_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 550, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 555, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"ps8622_devices\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 442, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"ps8622_i2c_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 542, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 473, i32 40 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 475, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 479, i32 41 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 482, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 490, i32 41 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 493, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 499, i32 41 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 503, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 508, i32 38 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 509, i32 42 }
@___asan_gen_.96 = private unnamed_addr constant [21 x i8] c"ps8622_backlight_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 341, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 513, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant [20 x i8] c"ps8622_bridge_funcs\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 435, i32 38 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 80, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 358, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [42 x i8] c"../drivers/gpu/drm/bridge/parade-ps8622.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 383, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_ps8622_driver_exit, ptr @__initcall__kmod_parade_ps8622__307_559_ps8622_driver_init6, ptr @ps8622_driver_exit, ptr @ps8622_probe._entry, ptr @ps8622_probe._entry.13, ptr @ps8622_probe._entry.17, ptr @ps8622_probe._entry.8, ptr @ps8622_probe._entry_ptr, ptr @ps8622_probe._entry_ptr.11, ptr @ps8622_probe._entry_ptr.15, ptr @ps8622_probe._entry_ptr.19, ptr @ps8622_set._entry, ptr @ps8622_set._entry_ptr, ptr @ps8622_driver, ptr @.str, ptr @ps8622_devices, ptr @ps8622_i2c_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @ps8622_backlight_ops, ptr @.str.22, ptr @ps8622_bridge_funcs, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8622_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8622_devices to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8622_i2c_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8622_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8622_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8622_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8622_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8622_backlight_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8622_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8622_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ps8622_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ps8622_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ps8622_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @ps8622_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps8622_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %panel = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel) #5
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel, align 4, !annotation !75
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 316, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call2 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %panel, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %panel, align 4
  %call6 = call ptr @devm_drm_panel_bridge_add(ptr noundef %dev1, ptr noundef %4) #5
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %panel_bridge11 = getelementptr inbounds %struct.ps8622_bridge, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %panel_bridge11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %panel_bridge11, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %call.i, align 4
  %call13 = call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #5
  %v12 = getelementptr inbounds %struct.ps8622_bridge, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %v12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13, ptr %v12, align 4
  %cmp.i134 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %do.end, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %9 = ptrtoint ptr %v12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %v12, align 4
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end10.if.end18_crit_edge
  %call19 = call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 7) #5
  %gpio_slp = getelementptr inbounds %struct.ps8622_bridge, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %gpio_slp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call19, ptr %gpio_slp, align 4
  %cmp.i135 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135, label %if.then22, label %if.end28

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %11) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %call29 = call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef 7) #5
  %gpio_rst = getelementptr inbounds %struct.ps8622_bridge, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %gpio_rst to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call29, ptr %gpio_rst, align 4
  %cmp.i136 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %if.then32, label %if.end38

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call29 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %13) #8
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %14 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %driver_data, align 4
  %max_lane_count = getelementptr inbounds %struct.ps8622_bridge, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %max_lane_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %max_lane_count, align 4
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %lane_count = getelementptr inbounds %struct.ps8622_bridge, ptr %call.i, i32 0, i32 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.16, ptr noundef %lane_count, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool41.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool41.not, label %if.else, label %if.end38.if.end54.sink.split_crit_edge

if.end38.if.end54.sink.split_crit_edge:           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54.sink.split

if.else:                                          ; preds = %if.end38
  %19 = ptrtoint ptr %lane_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lane_count, align 4
  %21 = ptrtoint ptr %max_lane_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_lane_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp = icmp ugt i32 %20, %22
  br i1 %cmp, label %do.end50, label %if.else.if.end54_crit_edge

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

do.end50:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.18) #8
  br label %if.end54.sink.split

if.end54.sink.split:                              ; preds = %do.end50, %if.end38.if.end54.sink.split_crit_edge
  %23 = ptrtoint ptr %max_lane_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_lane_count, align 4
  %25 = ptrtoint ptr %lane_count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %lane_count, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.end54.sink.split, %if.else.if.end54_crit_edge
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  %call56 = call ptr @of_find_property(ptr noundef %27, ptr noundef nonnull @.str.20, ptr noundef null) #5
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.then58, label %if.end54.if.end70_crit_edge

if.end54.if.end70_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.then58:                                        ; preds = %if.end54
  %call59 = call ptr @backlight_device_register(ptr noundef nonnull @.str.21, ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull @ps8622_backlight_ops, ptr noundef null) #5
  %bl = getelementptr inbounds %struct.ps8622_bridge, ptr %call.i, i32 0, i32 4
  %28 = ptrtoint ptr %bl to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call59, ptr %bl, align 4
  %cmp.i137 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i137, label %if.then62, label %if.end66

if.then62:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22) #5
  %29 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bl, align 4
  %31 = ptrtoint ptr %30 to i32
  store ptr null, ptr %bl, align 4
  br label %cleanup

if.end66:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  %max_brightness = getelementptr inbounds %struct.backlight_properties, ptr %call59, i32 0, i32 1
  %32 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 255, ptr %max_brightness, align 4
  %33 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bl, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 255, ptr %34, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.end66, %if.end54.if.end70_crit_edge
  %bridge = getelementptr inbounds %struct.ps8622_bridge, ptr %call.i, i32 0, i32 1
  %funcs = getelementptr inbounds %struct.ps8622_bridge, ptr %call.i, i32 0, i32 1, i32 7
  %36 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ps8622_bridge_funcs, ptr %funcs, align 4
  %type = getelementptr inbounds %struct.ps8622_bridge, ptr %call.i, i32 0, i32 1, i32 10
  %37 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 7, ptr %type, align 4
  %38 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node, align 8
  %of_node74 = getelementptr inbounds %struct.ps8622_bridge, ptr %call.i, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %of_node74 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %of_node74, align 4
  call void @drm_bridge_add(ptr noundef %bridge) #5
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %41 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then62, %if.then32, %if.then22, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then8 ], [ %11, %if.then22 ], [ %13, %if.then32 ], [ 0, %if.end70 ], [ %31, %if.then62 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps8622_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bl = getelementptr inbounds %struct.ps8622_bridge, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bl, align 4
  tail call void @backlight_device_unregister(ptr noundef %3) #5
  %bridge = getelementptr inbounds %struct.ps8622_bridge, ptr %1, i32 0, i32 1
  tail call void @drm_bridge_remove(ptr noundef %bridge) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps8622_backlight_update(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %data.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bl, align 8
  %state = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %and = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %brightness.0 = phi i32 [ 0, %if.then ], [ %5, %lor.lhs.false.if.end_crit_edge ]
  %enabled = getelementptr inbounds %struct.ps8622_bridge, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %conv = trunc i32 %brightness.0 to i8
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 196607, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #5
  %16 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -89, ptr %data.i, align 1
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %16, align 1
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr.i, align 2
  %conv2.i = add i16 %20, 1
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv2.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %data.i, ptr %buf.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end6.ps8622_set.exit_crit_edge, label %do.end.i

if.end6.ps8622_set.exit_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %ps8622_set.exit

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addr.i, align 2
  %conv6.i = zext i16 %25 to i32
  %add8.i = add nuw nsw i32 %conv6.i, 1
  %conv10.i = and i32 %brightness.0, 255
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %add8.i, i32 noundef 167, i32 noundef %conv10.i, i32 noundef %call.i) #8
  br label %ps8622_set.exit

ps8622_set.exit:                                  ; preds = %do.end.i, %if.end6.ps8622_set.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp12.i = icmp ne i32 %call.i, 1
  %lnot.ext.i = zext i1 %cmp12.i to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  br label %cleanup

cleanup:                                          ; preds = %ps8622_set.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext.i, %ps8622_set.exit ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ps8622_set(ptr nocapture noundef readonly %client, i8 noundef zeroext %page, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #5
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %4 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %reg, ptr %data, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %val, ptr %4, align 1
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr, align 2
  %9 = zext i8 %page to i16
  %conv2 = add i16 %8, %9
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv2, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data, ptr %buf, align 4
  %call = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %msg, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv1 = zext i8 %page to i32
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr, align 2
  %conv6 = zext i16 %15 to i32
  %add8 = add nuw nsw i32 %conv6, %conv1
  %conv9 = zext i8 %reg to i32
  %conv10 = zext i8 %val to i32
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %add8, i32 noundef %conv9, i32 noundef %conv10, i32 noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp12 = icmp ne i32 %call, 1
  %lnot.ext = zext i1 %cmp12 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps8622_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr i8, ptr %bridge, i32 128
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %panel_bridge = getelementptr i8, ptr %bridge, i32 280
  %2 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel_bridge, align 4
  %call3 = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %3, ptr noundef %bridge, i32 noundef %flags) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ps8622_disable(ptr nocapture noundef readnone %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msleep(i32 noundef 200) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ps8622_post_disable(ptr nocapture noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr i8, ptr %bridge, i32 308
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %enabled, align 4
  %gpio_slp = getelementptr i8, ptr %bridge, i32 292
  %3 = ptrtoint ptr %gpio_slp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpio_slp, align 4
  tail call void @gpiod_set_value(ptr noundef %4, i32 noundef 0) #5
  %v12 = getelementptr i8, ptr %bridge, i32 284
  %5 = ptrtoint ptr %v12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %v12, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @regulator_disable(ptr noundef nonnull %6) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #5
  %gpio_rst = getelementptr i8, ptr %bridge, i32 296
  %7 = ptrtoint ptr %gpio_rst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpio_rst, align 4
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 500) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ps8622_pre_enable(ptr nocapture noundef %bridge) #2 align 64 {
entry:
  %msg.i44 = alloca %struct.i2c_msg, align 4
  %data.i45 = alloca [2 x i8], align 1
  %msg.i26 = alloca %struct.i2c_msg, align 4
  %data.i27 = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %data.i = alloca [2 x i8], align 1
  %msg.i308.i = alloca %struct.i2c_msg, align 4
  %data.i309.i = alloca [2 x i8], align 1
  %msg.i291.i = alloca %struct.i2c_msg, align 4
  %data.i292.i = alloca [2 x i8], align 1
  %msg.i274.i = alloca %struct.i2c_msg, align 4
  %data.i275.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -4
  %enabled = getelementptr i8, ptr %bridge, i32 308
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpio_rst = getelementptr i8, ptr %bridge, i32 296
  %2 = ptrtoint ptr %gpio_rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_rst, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #5
  %v12 = getelementptr i8, ptr %bridge, i32 284
  %4 = ptrtoint ptr %v12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v12, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %call4 = tail call i32 @regulator_enable(ptr noundef nonnull %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.if.end8_crit_edge, label %if.then6

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %gpio_slp = getelementptr i8, ptr %bridge, i32 292
  %6 = ptrtoint ptr %gpio_slp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpio_slp, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 13000, i32 noundef 30010, i32 noundef 2) #5
  %8 = ptrtoint ptr %gpio_rst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio_rst, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 30000, i32 noundef 2) #5
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #5
  %14 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 196607, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i) #5
  %16 = getelementptr inbounds [2 x i8], ptr %data.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -95, ptr %data.i.i, align 1
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %16, align 1
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr.i.i, align 2
  %conv2.i.i = add i16 %20, 2
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv2.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %data.i.i, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end.i, label %ps8622_set.exit.i

ps8622_set.exit.i:                                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addr.i.i, align 2
  %conv6.i.i = zext i16 %25 to i32
  %add8.i.i = add nuw nsw i32 %conv6.i.i, 2
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %add8.i.i, i32 noundef 161, i32 noundef 1, i32 noundef %call.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  br label %if.then12

if.end.i:                                         ; preds = %if.end8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  %26 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i274.i) #5
  %28 = getelementptr inbounds i8, ptr %msg.i274.i, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 196607, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i275.i) #5
  %30 = getelementptr inbounds [2 x i8], ptr %data.i275.i, i32 0, i32 1
  %31 = ptrtoint ptr %data.i275.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 20, ptr %data.i275.i, align 1
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %30, align 1
  %33 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %addr.i.i, align 2
  %conv2.i278.i = add i16 %34, 4
  %35 = ptrtoint ptr %msg.i274.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv2.i278.i, ptr %msg.i274.i, align 4
  %flags.i279.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i274.i, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i279.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i279.i, align 2
  %buf.i281.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i274.i, i32 0, i32 3
  %37 = ptrtoint ptr %buf.i281.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %data.i275.i, ptr %buf.i281.i, align 4
  %call.i282.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i274.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i282.i)
  %cmp.not.i283.i = icmp eq i32 %call.i282.i, 1
  br i1 %cmp.not.i283.i, label %if.end4.i, label %ps8622_set.exit290.i

ps8622_set.exit290.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %addr.i.i, align 2
  %conv6.i284.i = zext i16 %39 to i32
  %add8.i285.i = add nuw nsw i32 %conv6.i284.i, 4
  %call11.i286.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %add8.i285.i, i32 noundef 20, i32 noundef 1, i32 noundef %call.i282.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i275.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i274.i) #5
  br label %if.then12

if.end4.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i275.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i274.i) #5
  %40 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i291.i) #5
  %42 = getelementptr inbounds i8, ptr %msg.i291.i, i32 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 196607, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i292.i) #5
  %44 = getelementptr inbounds [2 x i8], ptr %data.i292.i, i32 0, i32 1
  %45 = ptrtoint ptr %data.i292.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -29, ptr %data.i292.i, align 1
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 32, ptr %44, align 1
  %47 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %addr.i.i, align 2
  %conv2.i295.i = add i16 %48, 4
  %49 = ptrtoint ptr %msg.i291.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv2.i295.i, ptr %msg.i291.i, align 4
  %flags.i296.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i291.i, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i296.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i296.i, align 2
  %buf.i298.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i291.i, i32 0, i32 3
  %51 = ptrtoint ptr %buf.i298.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %data.i292.i, ptr %buf.i298.i, align 4
  %call.i299.i = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i291.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i299.i)
  %cmp.not.i300.i = icmp eq i32 %call.i299.i, 1
  br i1 %cmp.not.i300.i, label %if.end8.i, label %ps8622_set.exit307.i

ps8622_set.exit307.i:                             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %addr.i.i, align 2
  %conv6.i301.i = zext i16 %53 to i32
  %add8.i302.i = add nuw nsw i32 %conv6.i301.i, 4
  %call11.i303.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %add8.i302.i, i32 noundef 227, i32 noundef 32, i32 noundef %call.i299.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i292.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i291.i) #5
  br label %if.then12

if.end8.i:                                        ; preds = %if.end4.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i292.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i291.i) #5
  %54 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %adapter.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i308.i) #5
  %56 = getelementptr inbounds i8, ptr %msg.i308.i, i32 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 196607, ptr %56, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i309.i) #5
  %58 = getelementptr inbounds [2 x i8], ptr %data.i309.i, i32 0, i32 1
  %59 = ptrtoint ptr %data.i309.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -30, ptr %data.i309.i, align 1
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -128, ptr %58, align 1
  %61 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %addr.i.i, align 2
  %conv2.i312.i = add i16 %62, 4
  %63 = ptrtoint ptr %msg.i308.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv2.i312.i, ptr %msg.i308.i, align 4
  %flags.i313.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i308.i, i32 0, i32 1
  %64 = ptrtoint ptr %flags.i313.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %flags.i313.i, align 2
  %buf.i315.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i308.i, i32 0, i32 3
  %65 = ptrtoint ptr %buf.i315.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %data.i309.i, ptr %buf.i315.i, align 4
  %call.i316.i = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %msg.i308.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i316.i)
  %cmp.not.i317.i = icmp eq i32 %call.i316.i, 1
  br i1 %cmp.not.i317.i, label %if.end12.i, label %ps8622_set.exit324.i

ps8622_set.exit324.i:                             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %addr.i.i, align 2
  %conv6.i318.i = zext i16 %67 to i32
  %add8.i319.i = add nuw nsw i32 %conv6.i318.i, 4
  %call11.i320.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %add8.i319.i, i32 noundef 226, i32 noundef 128, i32 noundef %call.i316.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i309.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i308.i) #5
  br label %if.then12

if.end12.i:                                       ; preds = %if.end8.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i309.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i308.i) #5
  %68 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adapter.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i44) #5
  %70 = getelementptr inbounds i8, ptr %msg.i44, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %70, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i45) #5
  %72 = getelementptr inbounds [2 x i8], ptr %data.i45, i32 0, i32 1
  %73 = ptrtoint ptr %data.i45 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -118, ptr %data.i45, align 1
  %74 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 12, ptr %72, align 1
  %75 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %addr.i.i, align 2
  %conv2.i48 = add i16 %76, 4
  %77 = ptrtoint ptr %msg.i44 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv2.i48, ptr %msg.i44, align 4
  %flags.i49 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44, i32 0, i32 1
  %78 = ptrtoint ptr %flags.i49 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %flags.i49, align 2
  %79 = ptrtoint ptr %70 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 2, ptr %70, align 4
  %buf.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44, i32 0, i32 3
  %80 = ptrtoint ptr %buf.i51 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %data.i45, ptr %buf.i51, align 4
  %call.i52 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %msg.i44, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i52)
  %cmp.not.i53 = icmp eq i32 %call.i52, 1
  br i1 %cmp.not.i53, label %if.end16.i, label %ps8622_set.exit61

ps8622_set.exit61:                                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %addr.i.i, align 2
  %conv6.i54 = zext i16 %82 to i32
  %add8.i55 = add nuw nsw i32 %conv6.i54, 4
  %call11.i56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %add8.i55, i32 noundef 138, i32 noundef 12, i32 noundef %call.i52) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i45) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i44) #5
  br label %if.then12

if.end16.i:                                       ; preds = %if.end12.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i45) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i44) #5
  %83 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %adapter.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i26) #5
  %85 = getelementptr inbounds i8, ptr %msg.i26, i32 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %85, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i27) #5
  %87 = getelementptr inbounds [2 x i8], ptr %data.i27, i32 0, i32 1
  %88 = ptrtoint ptr %data.i27 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -119, ptr %data.i27, align 1
  %89 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 8, ptr %87, align 1
  %90 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %addr.i.i, align 2
  %conv2.i30 = add i16 %91, 4
  %92 = ptrtoint ptr %msg.i26 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv2.i30, ptr %msg.i26, align 4
  %flags.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 0, i32 1
  %93 = ptrtoint ptr %flags.i31 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %flags.i31, align 2
  %94 = ptrtoint ptr %85 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 2, ptr %85, align 4
  %buf.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 0, i32 3
  %95 = ptrtoint ptr %buf.i33 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %data.i27, ptr %buf.i33, align 4
  %call.i34 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %msg.i26, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i34)
  %cmp.not.i35 = icmp eq i32 %call.i34, 1
  br i1 %cmp.not.i35, label %if.end20.i, label %ps8622_set.exit43

ps8622_set.exit43:                                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  %96 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %addr.i.i, align 2
  %conv6.i36 = zext i16 %97 to i32
  %add8.i37 = add nuw nsw i32 %conv6.i36, 4
  %call11.i38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %add8.i37, i32 noundef 137, i32 noundef 8, i32 noundef %call.i34) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i27) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i26) #5
  br label %if.then12

if.end20.i:                                       ; preds = %if.end16.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i27) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i26) #5
  %98 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %adapter.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %100 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %100, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #5
  %102 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %103 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 113, ptr %data.i, align 1
  %104 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 45, ptr %102, align 1
  %105 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %addr.i.i, align 2
  %conv2.i = add i16 %106, 4
  %107 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv2.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %108 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %flags.i, align 2
  %109 = ptrtoint ptr %100 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 2, ptr %100, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %110 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %data.i, ptr %buf.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end24.i, label %ps8622_set.exit

ps8622_set.exit:                                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %111 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %addr.i.i, align 2
  %conv6.i = zext i16 %112 to i32
  %add8.i = add nuw nsw i32 %conv6.i, 4
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %add8.i, i32 noundef 113, i32 noundef 45, i32 noundef %call.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  br label %if.then12

if.end24.i:                                       ; preds = %if.end20.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  %call25.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 4, i8 noundef zeroext 125, i8 noundef zeroext 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end24.i.if.then12_crit_edge

if.end24.i.if.then12_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end28.i:                                       ; preds = %if.end24.i
  %call29.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 4, i8 noundef zeroext 123, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end28.i.if.then12_crit_edge

if.end28.i.if.then12_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end32.i:                                       ; preds = %if.end28.i
  %call33.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 4, i8 noundef zeroext 122, i8 noundef zeroext -3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end32.i.if.then12_crit_edge

if.end32.i.if.then12_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end36.i:                                       ; preds = %if.end32.i
  %call37.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 4, i8 noundef zeroext -64, i8 noundef zeroext 18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end36.i.if.then12_crit_edge

if.end36.i.if.then12_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end40.i:                                       ; preds = %if.end36.i
  %call41.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 4, i8 noundef zeroext -63, i8 noundef zeroext -110) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.end40.i.if.then12_crit_edge

if.end40.i.if.then12_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end44.i:                                       ; preds = %if.end40.i
  %call45.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 4, i8 noundef zeroext -62, i8 noundef zeroext 28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %if.end44.i.if.then12_crit_edge

if.end44.i.if.then12_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end48.i:                                       ; preds = %if.end44.i
  %call49.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 4, i8 noundef zeroext 50, i8 noundef zeroext -128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %if.end48.i.if.then12_crit_edge

if.end48.i.if.then12_crit_edge:                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end52.i:                                       ; preds = %if.end48.i
  %call53.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext -80) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.end56.i, label %if.end52.i.if.then12_crit_edge

if.end52.i.if.then12_crit_edge:                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end56.i:                                       ; preds = %if.end52.i
  %call57.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 4, i8 noundef zeroext 21, i8 noundef zeroext 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %if.end56.i.if.then12_crit_edge

if.end56.i.if.then12_crit_edge:                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end60.i:                                       ; preds = %if.end56.i
  %call61.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 4, i8 noundef zeroext 84, i8 noundef zeroext 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end64.i, label %if.end60.i.if.then12_crit_edge

if.end60.i.if.then12_crit_edge:                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end64.i:                                       ; preds = %if.end60.i
  %max_lane_count.i = getelementptr i8, ptr %bridge, i32 300
  %113 = ptrtoint ptr %max_lane_count.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %max_lane_count.i, align 4
  %115 = trunc i32 %114 to i8
  %conv.i = or i8 %115, -128
  %call65.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext 2, i8 noundef zeroext %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end68.i, label %if.end64.i.if.then12_crit_edge

if.end64.i.if.then12_crit_edge:                   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end68.i:                                       ; preds = %if.end64.i
  %lane_count.i = getelementptr i8, ptr %bridge, i32 304
  %116 = ptrtoint ptr %lane_count.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %lane_count.i, align 4
  %118 = trunc i32 %117 to i8
  %conv70.i = or i8 %118, -128
  %call71.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext 33, i8 noundef zeroext %conv70.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.end74.i, label %if.end68.i.if.then12_crit_edge

if.end68.i.if.then12_crit_edge:                   ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end74.i:                                       ; preds = %if.end68.i
  %call75.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 0, i8 noundef zeroext 82, i8 noundef zeroext 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %if.end78.i, label %if.end74.i.if.then12_crit_edge

if.end74.i.if.then12_crit_edge:                   ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end78.i:                                       ; preds = %if.end74.i
  %call79.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 0, i8 noundef zeroext -15, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %if.end82.i, label %if.end78.i.if.then12_crit_edge

if.end78.i.if.then12_crit_edge:                   ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end82.i:                                       ; preds = %if.end78.i
  %call83.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 0, i8 noundef zeroext 98, i8 noundef zeroext 65) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.not.i, label %if.end86.i, label %if.end82.i.if.then12_crit_edge

if.end82.i.if.then12_crit_edge:                   ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end86.i:                                       ; preds = %if.end82.i
  %call87.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 0, i8 noundef zeroext -10, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %tobool88.not.i = icmp eq i32 %call87.i, 0
  br i1 %tobool88.not.i, label %if.end90.i, label %if.end86.i.if.then12_crit_edge

if.end86.i.if.then12_crit_edge:                   ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end90.i:                                       ; preds = %if.end86.i
  %call91.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 0, i8 noundef zeroext 119, i8 noundef zeroext 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i)
  %tobool92.not.i = icmp eq i32 %call91.i, 0
  br i1 %tobool92.not.i, label %if.end94.i, label %if.end90.i.if.then12_crit_edge

if.end90.i.if.then12_crit_edge:                   ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end94.i:                                       ; preds = %if.end90.i
  %call95.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 0, i8 noundef zeroext 76, i8 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %tobool96.not.i = icmp eq i32 %call95.i, 0
  br i1 %tobool96.not.i, label %if.end98.i, label %if.end94.i.if.then12_crit_edge

if.end94.i.if.then12_crit_edge:                   ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end98.i:                                       ; preds = %if.end94.i
  %call99.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext -64, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i)
  %tobool100.not.i = icmp eq i32 %call99.i, 0
  br i1 %tobool100.not.i, label %if.end102.i, label %if.end98.i.if.then12_crit_edge

if.end98.i.if.then12_crit_edge:                   ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end102.i:                                      ; preds = %if.end98.i
  %call103.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext -63, i8 noundef zeroext 28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103.i)
  %tobool104.not.i = icmp eq i32 %call103.i, 0
  br i1 %tobool104.not.i, label %if.end106.i, label %if.end102.i.if.then12_crit_edge

if.end102.i.if.then12_crit_edge:                  ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end106.i:                                      ; preds = %if.end102.i
  %call107.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext -62, i8 noundef zeroext -8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.i)
  %tobool108.not.i = icmp eq i32 %call107.i, 0
  br i1 %tobool108.not.i, label %if.end110.i, label %if.end106.i.if.then12_crit_edge

if.end106.i.if.then12_crit_edge:                  ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end110.i:                                      ; preds = %if.end106.i
  %call111.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext -61, i8 noundef zeroext 68) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111.i)
  %tobool112.not.i = icmp eq i32 %call111.i, 0
  br i1 %tobool112.not.i, label %if.end114.i, label %if.end110.i.if.then12_crit_edge

if.end110.i.if.then12_crit_edge:                  ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end114.i:                                      ; preds = %if.end110.i
  %call115.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext -60, i8 noundef zeroext 50) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %tobool116.not.i = icmp eq i32 %call115.i, 0
  br i1 %tobool116.not.i, label %if.end118.i, label %if.end114.i.if.then12_crit_edge

if.end114.i.if.then12_crit_edge:                  ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end118.i:                                      ; preds = %if.end114.i
  %call119.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext -59, i8 noundef zeroext 83) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119.i)
  %tobool120.not.i = icmp eq i32 %call119.i, 0
  br i1 %tobool120.not.i, label %if.end122.i, label %if.end118.i.if.then12_crit_edge

if.end118.i.if.then12_crit_edge:                  ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end122.i:                                      ; preds = %if.end118.i
  %call123.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext -58, i8 noundef zeroext 76) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.i)
  %tobool124.not.i = icmp eq i32 %call123.i, 0
  br i1 %tobool124.not.i, label %if.end126.i, label %if.end122.i.if.then12_crit_edge

if.end122.i.if.then12_crit_edge:                  ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end126.i:                                      ; preds = %if.end122.i
  %call127.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext -57, i8 noundef zeroext 86) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127.i)
  %tobool128.not.i = icmp eq i32 %call127.i, 0
  br i1 %tobool128.not.i, label %if.end130.i, label %if.end126.i.if.then12_crit_edge

if.end126.i.if.then12_crit_edge:                  ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end130.i:                                      ; preds = %if.end126.i
  %call131.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext -56, i8 noundef zeroext 53) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131.i)
  %tobool132.not.i = icmp eq i32 %call131.i, 0
  br i1 %tobool132.not.i, label %if.end134.i, label %if.end130.i.if.then12_crit_edge

if.end130.i.if.then12_crit_edge:                  ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end134.i:                                      ; preds = %if.end130.i
  %call135.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext -54, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135.i)
  %tobool136.not.i = icmp eq i32 %call135.i, 0
  br i1 %tobool136.not.i, label %if.end138.i, label %if.end134.i.if.then12_crit_edge

if.end134.i.if.then12_crit_edge:                  ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end138.i:                                      ; preds = %if.end134.i
  %call139.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext -53, i8 noundef zeroext 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.i)
  %tobool140.not.i = icmp eq i32 %call139.i, 0
  br i1 %tobool140.not.i, label %if.end142.i, label %if.end138.i.if.then12_crit_edge

if.end138.i.if.then12_crit_edge:                  ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end142.i:                                      ; preds = %if.end138.i
  %bl.i = getelementptr i8, ptr %bridge, i32 288
  %119 = ptrtoint ptr %bl.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bl.i, align 4
  %tobool143.not.i = icmp eq ptr %120, null
  br i1 %tobool143.not.i, label %if.else.i, label %if.then144.i

if.then144.i:                                     ; preds = %if.end142.i
  %call145.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext -91, i8 noundef zeroext -96) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.i)
  %tobool146.not.i = icmp eq i32 %call145.i, 0
  br i1 %tobool146.not.i, label %if.end148.i, label %if.then144.i.if.then12_crit_edge

if.then144.i.if.then12_crit_edge:                 ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end148.i:                                      ; preds = %if.then144.i
  %121 = ptrtoint ptr %bl.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bl.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %122, align 8
  %conv150.i = trunc i32 %124 to i8
  %call151.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext -89, i8 noundef zeroext %conv150.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151.i)
  %tobool152.not.i = icmp eq i32 %call151.i, 0
  br i1 %tobool152.not.i, label %if.end148.i.if.end159.i_crit_edge, label %if.end148.i.if.then12_crit_edge

if.end148.i.if.then12_crit_edge:                  ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end148.i.if.end159.i_crit_edge:                ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end159.i

if.else.i:                                        ; preds = %if.end142.i
  %call155.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext -91, i8 noundef zeroext -128) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155.i)
  %tobool156.not.i = icmp eq i32 %call155.i, 0
  br i1 %tobool156.not.i, label %if.else.i.if.end159.i_crit_edge, label %if.else.i.if.then12_crit_edge

if.else.i.if.then12_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.else.i.if.end159.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end159.i

if.end159.i:                                      ; preds = %if.else.i.if.end159.i_crit_edge, %if.end148.i.if.end159.i_crit_edge
  %call160.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 1, i8 noundef zeroext -52, i8 noundef zeroext 19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160.i)
  %tobool161.not.i = icmp eq i32 %call160.i, 0
  br i1 %tobool161.not.i, label %if.end163.i, label %if.end159.i.if.then12_crit_edge

if.end159.i.if.then12_crit_edge:                  ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end163.i:                                      ; preds = %if.end159.i
  %call164.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 2, i8 noundef zeroext -79, i8 noundef zeroext 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164.i)
  %tobool165.not.i = icmp eq i32 %call164.i, 0
  br i1 %tobool165.not.i, label %if.end167.i, label %if.end163.i.if.then12_crit_edge

if.end163.i.if.then12_crit_edge:                  ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end167.i:                                      ; preds = %if.end163.i
  %call168.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 4, i8 noundef zeroext 16, i8 noundef zeroext 22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168.i)
  %tobool169.not.i = icmp eq i32 %call168.i, 0
  br i1 %tobool169.not.i, label %if.end171.i, label %if.end167.i.if.then12_crit_edge

if.end167.i.if.then12_crit_edge:                  ; preds = %if.end167.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end171.i:                                      ; preds = %if.end167.i
  %call172.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 4, i8 noundef zeroext 89, i8 noundef zeroext 96) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172.i)
  %tobool173.not.i = icmp eq i32 %call172.i, 0
  br i1 %tobool173.not.i, label %if.end175.i, label %if.end171.i.if.then12_crit_edge

if.end171.i.if.then12_crit_edge:                  ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end175.i:                                      ; preds = %if.end171.i
  %call176.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 4, i8 noundef zeroext 84, i8 noundef zeroext 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176.i)
  %tobool177.not.i = icmp eq i32 %call176.i, 0
  br i1 %tobool177.not.i, label %if.end179.i, label %if.end175.i.if.then12_crit_edge

if.end175.i.if.then12_crit_edge:                  ; preds = %if.end175.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end179.i:                                      ; preds = %if.end175.i
  %call180.i = call fastcc i32 @ps8622_set(ptr noundef %11, i8 noundef zeroext 2, i8 noundef zeroext -95, i8 noundef zeroext -111) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180.i)
  %phi.cmp.i = icmp eq i32 %call180.i, 0
  br i1 %phi.cmp.i, label %if.end13, label %if.end179.i.if.then12_crit_edge

if.end179.i.if.then12_crit_edge:                  ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.then12:                                        ; preds = %if.end179.i.if.then12_crit_edge, %if.end175.i.if.then12_crit_edge, %if.end171.i.if.then12_crit_edge, %if.end167.i.if.then12_crit_edge, %if.end163.i.if.then12_crit_edge, %if.end159.i.if.then12_crit_edge, %if.else.i.if.then12_crit_edge, %if.end148.i.if.then12_crit_edge, %if.then144.i.if.then12_crit_edge, %if.end138.i.if.then12_crit_edge, %if.end134.i.if.then12_crit_edge, %if.end130.i.if.then12_crit_edge, %if.end126.i.if.then12_crit_edge, %if.end122.i.if.then12_crit_edge, %if.end118.i.if.then12_crit_edge, %if.end114.i.if.then12_crit_edge, %if.end110.i.if.then12_crit_edge, %if.end106.i.if.then12_crit_edge, %if.end102.i.if.then12_crit_edge, %if.end98.i.if.then12_crit_edge, %if.end94.i.if.then12_crit_edge, %if.end90.i.if.then12_crit_edge, %if.end86.i.if.then12_crit_edge, %if.end82.i.if.then12_crit_edge, %if.end78.i.if.then12_crit_edge, %if.end74.i.if.then12_crit_edge, %if.end68.i.if.then12_crit_edge, %if.end64.i.if.then12_crit_edge, %if.end60.i.if.then12_crit_edge, %if.end56.i.if.then12_crit_edge, %if.end52.i.if.then12_crit_edge, %if.end48.i.if.then12_crit_edge, %if.end44.i.if.then12_crit_edge, %if.end40.i.if.then12_crit_edge, %if.end36.i.if.then12_crit_edge, %if.end32.i.if.then12_crit_edge, %if.end28.i.if.then12_crit_edge, %if.end24.i.if.then12_crit_edge, %ps8622_set.exit, %ps8622_set.exit43, %ps8622_set.exit61, %ps8622_set.exit324.i, %ps8622_set.exit307.i, %ps8622_set.exit290.i, %ps8622_set.exit.i
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26, i32 noundef -5) #5
  br label %cleanup

if.end13:                                         ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #7
  %125 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_parade_ps8622__307_559_ps8622_driver_init6, !1, !"__initcall__kmod_parade_ps8622__307_559_ps8622_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 559, i32 1}
!2 = !{ptr @__exitcall_ps8622_driver_exit, !1, !"__exitcall_ps8622_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author308, !4, !"__UNIQUE_ID_author308", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 561, i32 1}
!5 = !{ptr @__UNIQUE_ID_description309, !6, !"__UNIQUE_ID_description309", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 562, i32 1}
!7 = !{ptr @__UNIQUE_ID_file310, !8, !"__UNIQUE_ID_file310", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 563, i32 1}
!9 = !{ptr @__UNIQUE_ID_license311, !8, !"__UNIQUE_ID_license311", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 555, i32 11}
!12 = !{ptr @ps8622_driver, !13, !"ps8622_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 550, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 473, i32 40}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 475, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ps8622_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ps8622_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 479, i32 41}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 482, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ps8622_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @ps8622_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 490, i32 41}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 493, i32 3}
!35 = !{ptr @ps8622_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ps8622_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 499, i32 41}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 503, i32 3}
!41 = !{ptr @ps8622_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ps8622_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 508, i32 38}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 509, i32 42}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 513, i32 4}
!49 = !{ptr @ps8622_backlight_ops, !50, !"ps8622_backlight_ops", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 341, i32 35}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 80, i32 3}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ps8622_set._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @ps8622_set._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @ps8622_bridge_funcs, !57, !"ps8622_bridge_funcs", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 435, i32 38}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 358, i32 4}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 383, i32 3}
!62 = !{ptr @ps8622_devices, !63, !"ps8622_devices", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 442, i32 34}
!64 = !{ptr @ps8622_i2c_table, !65, !"ps8622_i2c_table", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/bridge/parade-ps8622.c", i32 542, i32 35}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
!76 = !{i8 0, i8 2}
