; ModuleID = '/llk/IR_all_yes/sound/hda/hdac_sysfs.c_pt.bc'
source_filename = "../sound/hda/hdac_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.widget_attribute = type { %struct.attribute, ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.hdac_widget_tree = type { ptr, ptr, ptr }

@hdac_dev_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @hdac_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@hdac_dev_attr_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @hdac_dev_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@widget_node_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @widget_node_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@hdac_dev_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @dev_attr_type, ptr @dev_attr_vendor_id, ptr @dev_attr_subsystem_id, ptr @dev_attr_revision_id, ptr @dev_attr_afg, ptr @dev_attr_mfg, ptr @dev_attr_vendor_name, ptr @dev_attr_chip_name, ptr @dev_attr_modalias, ptr null], [56 x i8] zeroinitializer }, align 32
@dev_attr_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vendor_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vendor_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_subsystem_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @subsystem_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_revision_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @revision_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_afg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @afg_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mfg = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mfg_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vendor_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vendor_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_chip_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @chip_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_modalias = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @modalias_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vendor_id\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"subsystem_id\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"revision_id\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"afg\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mfg\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vendor_name\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"chip_name\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"modalias\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"widgets\00", [24 x i8] zeroinitializer }, align 32
@widget_afg_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @widget_afg_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@widget_afg_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @wid_attr_pcm_caps, ptr @wid_attr_pcm_formats, ptr @wid_attr_amp_in_caps, ptr @wid_attr_amp_out_caps, ptr @wid_attr_power_caps, ptr @wid_attr_gpio_caps, ptr null], [36 x i8] zeroinitializer }, align 32
@wid_attr_pcm_caps = internal global { %struct.widget_attribute, [36 x i8] } { %struct.widget_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcm_caps_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@wid_attr_pcm_formats = internal global { %struct.widget_attribute, [36 x i8] } { %struct.widget_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcm_formats_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@wid_attr_amp_in_caps = internal global { %struct.widget_attribute, [36 x i8] } { %struct.widget_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amp_in_caps_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@wid_attr_amp_out_caps = internal global { %struct.widget_attribute, [36 x i8] } { %struct.widget_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @amp_out_caps_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@wid_attr_power_caps = internal global { %struct.widget_attribute, [36 x i8] } { %struct.widget_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @power_caps_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@wid_attr_gpio_caps = internal global { %struct.widget_attribute, [36 x i8] } { %struct.widget_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gpio_caps_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcm_caps\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcm_formats\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"amp_in_caps\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"amp_out_caps\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"power_caps\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio_caps\00", [22 x i8] zeroinitializer }, align 32
@widget_node_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @wid_attr_caps, ptr @wid_attr_pin_caps, ptr @wid_attr_pin_cfg, ptr @wid_attr_pcm_caps, ptr @wid_attr_pcm_formats, ptr @wid_attr_amp_in_caps, ptr @wid_attr_amp_out_caps, ptr @wid_attr_power_caps, ptr @wid_attr_connections, ptr null], [56 x i8] zeroinitializer }, align 32
@wid_attr_caps = internal global { %struct.widget_attribute, [36 x i8] } { %struct.widget_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @caps_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@wid_attr_pin_caps = internal global { %struct.widget_attribute, [36 x i8] } { %struct.widget_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pin_caps_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@wid_attr_pin_cfg = internal global { %struct.widget_attribute, [36 x i8] } { %struct.widget_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pin_cfg_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@wid_attr_connections = internal global { %struct.widget_attribute, [36 x i8] } { %struct.widget_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @connections_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"caps\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pin_caps\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pin_cfg\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"connections\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s0x%02x\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@widget_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @widget_release, ptr @widget_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@widget_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @widget_attr_show, ptr @widget_attr_store }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"hdac_dev_attr_group\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 69, i32 37 }
@___asan_gen_.31 = private unnamed_addr constant [21 x i8] c"hdac_dev_attr_groups\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 73, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"widget_node_group\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 303, i32 37 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"hdac_dev_attrs\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 56, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"dev_attr_type\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"dev_attr_vendor_id\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"dev_attr_subsystem_id\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [21 x i8] c"dev_attr_revision_id\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"dev_attr_afg\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"dev_attr_mfg\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"dev_attr_vendor_name\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"dev_attr_chip_name\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"dev_attr_modalias\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 40, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 41, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 42, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 43, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 44, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 45, i32 1 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 46, i32 1 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 47, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 54, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 371, i32 38 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"widget_afg_group\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 307, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"widget_afg_attrs\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 293, i32 26 }
@___asan_gen_.112 = private unnamed_addr constant [18 x i8] c"wid_attr_pcm_caps\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [21 x i8] c"wid_attr_pcm_formats\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [21 x i8] c"wid_attr_amp_in_caps\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"wid_attr_amp_out_caps\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c"wid_attr_power_caps\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [19 x i8] c"wid_attr_gpio_caps\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 272, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 206, i32 22 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 273, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 274, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 275, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 276, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 277, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant [18 x i8] c"widget_node_attrs\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 280, i32 26 }
@___asan_gen_.154 = private unnamed_addr constant [14 x i8] c"wid_attr_caps\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [18 x i8] c"wid_attr_pin_caps\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"wid_attr_pin_cfg\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [21 x i8] c"wid_attr_connections\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 269, i32 8 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 270, i32 8 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 271, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 278, i32 8 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 264, i32 29 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 264, i32 45 }
@___asan_gen_.184 = private unnamed_addr constant [13 x i8] c"widget_ktype\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 151, i32 25 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 348, i32 34 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"widget_sysfs_ops\00", align 1
@___asan_gen_.191 = private constant [26 x i8] c"../sound/hda/hdac_sysfs.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 141, i32 31 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @hdac_dev_attr_group, ptr @hdac_dev_attr_groups, ptr @widget_node_group, ptr @hdac_dev_attrs, ptr @dev_attr_type, ptr @dev_attr_vendor_id, ptr @dev_attr_subsystem_id, ptr @dev_attr_revision_id, ptr @dev_attr_afg, ptr @dev_attr_mfg, ptr @dev_attr_vendor_name, ptr @dev_attr_chip_name, ptr @dev_attr_modalias, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @widget_afg_group, ptr @widget_afg_attrs, ptr @wid_attr_pcm_caps, ptr @wid_attr_pcm_formats, ptr @wid_attr_amp_in_caps, ptr @wid_attr_amp_out_caps, ptr @wid_attr_power_caps, ptr @wid_attr_gpio_caps, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @widget_node_attrs, ptr @wid_attr_caps, ptr @wid_attr_pin_caps, ptr @wid_attr_pin_cfg, ptr @wid_attr_connections, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @widget_ktype, ptr @.str.27, ptr @widget_sysfs_ops], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_dev_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_dev_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @widget_node_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdac_dev_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vendor_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_subsystem_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_revision_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_afg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vendor_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chip_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_modalias to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @widget_afg_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @widget_afg_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wid_attr_pcm_caps to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wid_attr_pcm_formats to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wid_attr_amp_in_caps to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wid_attr_amp_out_caps to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wid_attr_power_caps to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wid_attr_gpio_caps to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @widget_node_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wid_attr_caps to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wid_attr_pin_caps to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wid_attr_pin_cfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wid_attr_connections to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @widget_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @widget_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_widget_sysfs_init(ptr noundef %codec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %widgets = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 22
  %0 = ptrtoint ptr %widgets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %widgets, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #11
  %3 = ptrtoint ptr %widgets to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i, ptr %widgets, align 8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then1_crit_edge, label %if.end.i

if.end.if.then1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.12, ptr noundef %codec) #8
  %4 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i, ptr %call7.i.i.i, align 8
  %tobool3.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.then1_crit_edge, label %if.end5.i

if.end.i.if.then1_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1

if.end5.i:                                        ; preds = %if.end.i
  %num_nodes.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %5 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_nodes.i, align 8
  %add.i = add i32 %6, 1
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 4) #8
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !99

kcalloc.exit.thread.i:                            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %nodes70.i = getelementptr inbounds %struct.hdac_widget_tree, ptr %call7.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %nodes70.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %nodes70.i, align 8
  br label %if.then1

if.end7.i.i.i:                                    ; preds = %if.end5.i
  %10 = extractvalue { i32, i1 } %7, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #12
  %nodes.i = getelementptr inbounds %struct.hdac_widget_tree, ptr %call7.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %nodes.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i.i.i, ptr %nodes.i, align 8
  %tobool8.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool8.not.i, label %if.end7.i.i.i.if.then1_crit_edge, label %if.end10.i

if.end7.i.i.i.if.then1_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1

if.end10.i:                                       ; preds = %if.end7.i.i.i
  %12 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_nodes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp82.not.i = icmp eq i32 %13, 0
  br i1 %cmp82.not.i, label %if.end10.i.for.end.i_crit_edge, label %for.body.preheader.i

if.end10.i.for.end.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end10.i
  %start_nid.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %14 = ptrtoint ptr %start_nid.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %start_nid.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %nid.084.i = phi i16 [ %inc18.i, %for.inc.i.for.body.i_crit_edge ], [ %15, %for.body.preheader.i ]
  %i.083.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %16 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call7.i.i.i, align 8
  %18 = ptrtoint ptr %nodes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nodes.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %19, i32 %i.083.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i55.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 136) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i55.i, null
  br i1 %tobool.not.i.i, label %for.body.i.if.then1_crit_edge, label %if.end.i.i

for.body.i.if.then1_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1

if.end.i.i:                                       ; preds = %for.body.i
  tail call void @kobject_init(ptr noundef nonnull %call7.i.i.i55.i, ptr noundef nonnull @widget_ktype) #8
  %conv.i.i = zext i16 %nid.084.i to i32
  %call1.i.i = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef nonnull %call7.i.i.i55.i, ptr noundef %17, ptr noundef nonnull @.str.27, i32 noundef %conv.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.if.then1_crit_edge, label %if.end4.i.i

if.end.i.i.if.then1_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1

if.end4.i.i:                                      ; preds = %if.end.i.i
  %call5.i.i = tail call i32 @sysfs_create_group(ptr noundef nonnull %call7.i.i.i55.i, ptr noundef nonnull @widget_node_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp6.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp6.i.i, label %if.then8.i.i, label %for.inc.i

if.then8.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kobject_put(ptr noundef nonnull %call7.i.i.i55.i) #8
  br label %if.then1

for.inc.i:                                        ; preds = %if.end4.i.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i.i55.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.083.i, 1
  %inc18.i = add i16 %nid.084.i, 1
  %22 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_nodes.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %23
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end10.i.for.end.i_crit_edge
  %afg.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %24 = ptrtoint ptr %afg.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %afg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool19.not.i = icmp eq i16 %25, 0
  br i1 %tobool19.not.i, label %for.end.i.widget_tree_create.exit_crit_edge, label %if.then20.i

for.end.i.widget_tree_create.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %widget_tree_create.exit

if.then20.i:                                      ; preds = %for.end.i
  %26 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call7.i.i.i, align 8
  %afg23.i = getelementptr inbounds %struct.hdac_widget_tree, ptr %call7.i.i.i, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i56.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 136) #11
  %tobool.not.i57.i = icmp eq ptr %call7.i.i.i56.i, null
  br i1 %tobool.not.i57.i, label %if.then20.i.if.then1_crit_edge, label %if.end.i61.i

if.then20.i.if.then1_crit_edge:                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1

if.end.i61.i:                                     ; preds = %if.then20.i
  tail call void @kobject_init(ptr noundef nonnull %call7.i.i.i56.i, ptr noundef nonnull @widget_ktype) #8
  %conv.i58.i = zext i16 %25 to i32
  %call1.i59.i = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef nonnull %call7.i.i.i56.i, ptr noundef %27, ptr noundef nonnull @.str.27, i32 noundef %conv.i58.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59.i)
  %cmp.i60.i = icmp slt i32 %call1.i59.i, 0
  br i1 %cmp.i60.i, label %if.end.i61.i.if.then1_crit_edge, label %if.end4.i64.i

if.end.i61.i.if.then1_crit_edge:                  ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1

if.end4.i64.i:                                    ; preds = %if.end.i61.i
  %call5.i62.i = tail call i32 @sysfs_create_group(ptr noundef nonnull %call7.i.i.i56.i, ptr noundef nonnull @widget_afg_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i62.i)
  %cmp6.i63.i = icmp slt i32 %call5.i62.i, 0
  br i1 %cmp6.i63.i, label %if.then8.i65.i, label %add_widget_node.exit68.i

if.then8.i65.i:                                   ; preds = %if.end4.i64.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kobject_put(ptr noundef nonnull %call7.i.i.i56.i) #8
  br label %if.then1

add_widget_node.exit68.i:                         ; preds = %if.end4.i64.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %afg23.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i.i56.i, ptr %afg23.i, align 4
  br label %widget_tree_create.exit

widget_tree_create.exit:                          ; preds = %add_widget_node.exit68.i, %for.end.i.widget_tree_create.exit_crit_edge
  %30 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call7.i.i.i, align 8
  %call30.i = tail call i32 @kobject_uevent(ptr noundef %31, i32 noundef 2) #8
  br label %cleanup

if.then1:                                         ; preds = %if.then8.i65.i, %if.end.i61.i.if.then1_crit_edge, %if.then20.i.if.then1_crit_edge, %if.then8.i.i, %if.end.i.i.if.then1_crit_edge, %for.body.i.if.then1_crit_edge, %if.end7.i.i.i.if.then1_crit_edge, %kcalloc.exit.thread.i, %if.end.i.if.then1_crit_edge, %if.end.if.then1_crit_edge
  %retval.0.i.ph = phi i32 [ %call5.i62.i, %if.then8.i65.i ], [ -12, %if.then20.i.if.then1_crit_edge ], [ %call1.i59.i, %if.end.i61.i.if.then1_crit_edge ], [ %call5.i.i, %if.then8.i.i ], [ -12, %kcalloc.exit.thread.i ], [ -12, %if.end7.i.i.i.if.then1_crit_edge ], [ -12, %if.end.i.if.then1_crit_edge ], [ -12, %if.end.if.then1_crit_edge ], [ -12, %for.body.i.if.then1_crit_edge ], [ %call1.i.i, %if.end.i.i.if.then1_crit_edge ]
  tail call fastcc void @widget_tree_free(ptr noundef %codec)
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %widget_tree_create.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then1 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %widget_tree_create.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @widget_tree_free(ptr nocapture noundef %codec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %widgets = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 22
  %0 = ptrtoint ptr %widgets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %widgets, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %afg = getelementptr inbounds %struct.hdac_widget_tree, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %afg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %afg, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.free_widget_node.exit_crit_edge, label %if.then.i

if.end.free_widget_node.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_widget_node.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef nonnull %3, ptr noundef nonnull @widget_afg_group) #8
  tail call void @kobject_put(ptr noundef nonnull %3) #8
  br label %free_widget_node.exit

free_widget_node.exit:                            ; preds = %if.then.i, %if.end.free_widget_node.exit_crit_edge
  %nodes = getelementptr inbounds %struct.hdac_widget_tree, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nodes, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %free_widget_node.exit.if.end6_crit_edge, label %for.cond.preheader

free_widget_node.exit.if.end6_crit_edge:          ; preds = %free_widget_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

for.cond.preheader:                               ; preds = %free_widget_node.exit
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool4.not23 = icmp eq ptr %7, null
  br i1 %tobool4.not23, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.free_widget_node.exit22_crit_edge

for.cond.preheader.free_widget_node.exit22_crit_edge: ; preds = %for.cond.preheader
  br label %free_widget_node.exit22

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

free_widget_node.exit22:                          ; preds = %free_widget_node.exit22.free_widget_node.exit22_crit_edge, %for.cond.preheader.free_widget_node.exit22_crit_edge
  %8 = phi ptr [ %10, %free_widget_node.exit22.free_widget_node.exit22_crit_edge ], [ %7, %for.cond.preheader.free_widget_node.exit22_crit_edge ]
  %p.024 = phi ptr [ %incdec.ptr, %free_widget_node.exit22.free_widget_node.exit22_crit_edge ], [ %5, %for.cond.preheader.free_widget_node.exit22_crit_edge ]
  tail call void @sysfs_remove_group(ptr noundef nonnull %8, ptr noundef nonnull @widget_node_group) #8
  tail call void @kobject_put(ptr noundef nonnull %8) #8
  %incdec.ptr = getelementptr ptr, ptr %p.024, i32 1
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %incdec.ptr, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %free_widget_node.exit22.for.end_crit_edge, label %free_widget_node.exit22.free_widget_node.exit22_crit_edge

free_widget_node.exit22.free_widget_node.exit22_crit_edge: ; preds = %free_widget_node.exit22
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_widget_node.exit22

free_widget_node.exit22.for.end_crit_edge:        ; preds = %free_widget_node.exit22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %free_widget_node.exit22.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %11 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nodes, align 4
  tail call void @kfree(ptr noundef %12) #8
  br label %if.end6

if.end6:                                          ; preds = %for.end, %free_widget_node.exit.if.end6_crit_edge
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void @kobject_put(ptr noundef %14) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  %15 = ptrtoint ptr %widgets to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %widgets, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hda_widget_sysfs_exit(ptr nocapture noundef %codec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @widget_tree_free(ptr noundef %codec)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_widget_sysfs_reinit(ptr nocapture noundef %codec, i16 noundef zeroext %start_nid, i32 noundef %num_nodes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %num_nodes to i16
  %conv1 = add i16 %0, %start_nid
  %widgets = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 22
  %1 = ptrtoint ptr %widgets to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %widgets, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @kmemdup(ptr noundef nonnull %2, i32 noundef 12, i32 noundef 3264) #8
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add6 = add i32 %num_nodes, 1
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add6, i32 4) #8
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !99

kcalloc.exit.thread:                              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %nodes108 = getelementptr inbounds %struct.hdac_widget_tree, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %nodes108 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %nodes108, align 4
  br label %if.then10

if.end7.i.i:                                      ; preds = %if.end5
  %6 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #12
  %nodes = getelementptr inbounds %struct.hdac_widget_tree, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %nodes to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8.i.i, ptr %nodes, align 4
  %tobool9.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool9.not, label %if.end7.i.i.if.then10_crit_edge, label %if.end11

if.end7.i.i.if.then10_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.then10:                                        ; preds = %if.end7.i.i.if.then10_crit_edge, %kcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7.i.i
  %start_nid12 = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 18
  %num_nodes13 = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 17
  %8 = ptrtoint ptr %num_nodes13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_nodes13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp115.not = icmp eq i32 %9, 0
  br i1 %cmp115.not, label %if.end11.for.cond28.preheader_crit_edge, label %for.body.preheader

if.end11.for.cond28.preheader_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond28.preheader

for.body.preheader:                               ; preds = %if.end11
  %10 = ptrtoint ptr %start_nid12 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %start_nid12, align 4
  br label %for.body

for.cond28.preheader:                             ; preds = %for.inc.for.cond28.preheader_crit_edge, %if.end11.for.cond28.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_nodes)
  %cmp29119 = icmp sgt i32 %num_nodes, 0
  br i1 %cmp29119, label %for.body31.lr.ph, label %for.cond28.preheader.for.end59_crit_edge

for.cond28.preheader.for.end59_crit_edge:         ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end59

for.body31.lr.ph:                                 ; preds = %for.cond28.preheader
  %end_nid39 = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 19
  br label %for.body31

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0117 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %nid.0116 = phi i16 [ %inc27, %for.inc.for.body_crit_edge ], [ %11, %for.body.preheader ]
  call void @__sanitizer_cov_trace_cmp2(i16 %nid.0116, i16 %start_nid)
  %cmp17 = icmp uge i16 %nid.0116, %start_nid
  call void @__sanitizer_cov_trace_cmp2(i16 %nid.0116, i16 %conv1)
  %cmp21.not = icmp ult i16 %nid.0116, %conv1
  %or.cond = and i1 %cmp17, %cmp21.not
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.then23

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then23:                                        ; preds = %for.body
  %12 = ptrtoint ptr %widgets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %widgets, align 8
  %nodes25 = getelementptr inbounds %struct.hdac_widget_tree, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %nodes25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nodes25, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 %i.0117
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then23.for.inc_crit_edge, label %if.then.i

if.then23.for.inc_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef nonnull %17, ptr noundef nonnull @widget_node_group) #8
  tail call void @kobject_put(ptr noundef nonnull %17) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.then23.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0117, 1
  %inc27 = add i16 %nid.0116, 1
  %18 = ptrtoint ptr %num_nodes13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_nodes13, align 8
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond28.preheader_crit_edge

for.inc.for.cond28.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond28.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body31:                                       ; preds = %for.inc56.for.body31_crit_edge, %for.body31.lr.ph
  %i.1123 = phi i32 [ 0, %for.body31.lr.ph ], [ %inc57, %for.inc56.for.body31_crit_edge ]
  %nid.1120 = phi i16 [ %start_nid, %for.body31.lr.ph ], [ %inc58, %for.inc56.for.body31_crit_edge ]
  %conv32 = zext i16 %nid.1120 to i32
  %20 = ptrtoint ptr %start_nid12 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %start_nid12, align 4
  %conv34 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %nid.1120, i16 %21)
  %cmp35 = icmp ult i16 %nid.1120, %21
  br i1 %cmp35, label %for.body31.if.then43_crit_edge, label %lor.lhs.false37

for.body31.if.then43_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

lor.lhs.false37:                                  ; preds = %for.body31
  %22 = ptrtoint ptr %end_nid39 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %end_nid39, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %nid.1120, i16 %23)
  %cmp41.not = icmp ult i16 %nid.1120, %23
  br i1 %cmp41.not, label %if.else, label %lor.lhs.false37.if.then43_crit_edge

lor.lhs.false37.if.then43_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false37.if.then43_crit_edge, %for.body31.if.then43_crit_edge
  %24 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call, align 4
  %26 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nodes, align 4
  %arrayidx45 = getelementptr ptr, ptr %27, i32 %i.1123
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i105 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 136) #11
  %tobool.not.i106 = icmp eq ptr %call7.i.i.i105, null
  br i1 %tobool.not.i106, label %if.then43.for.inc56_crit_edge, label %if.end.i

if.then43.for.inc56_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc56

if.end.i:                                         ; preds = %if.then43
  tail call void @kobject_init(ptr noundef nonnull %call7.i.i.i105, ptr noundef nonnull @widget_ktype) #8
  %call1.i = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef nonnull %call7.i.i.i105, ptr noundef %25, ptr noundef nonnull @.str.27, i32 noundef %conv32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.i.for.inc56_crit_edge, label %if.end4.i

if.end.i.for.inc56_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc56

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @sysfs_create_group(ptr noundef nonnull %call7.i.i.i105, ptr noundef nonnull @widget_node_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kobject_put(ptr noundef nonnull %call7.i.i.i105) #8
  br label %for.inc56

if.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i.i105, ptr %arrayidx45, align 4
  br label %for.inc56

if.else:                                          ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %widgets to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %widgets, align 8
  %nodes48 = getelementptr inbounds %struct.hdac_widget_tree, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %nodes48 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nodes48, align 4
  %sub = sub nsw i32 %conv32, %conv34
  %arrayidx52 = getelementptr ptr, ptr %33, i32 %sub
  %34 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx52, align 4
  %36 = ptrtoint ptr %nodes to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nodes, align 4
  %arrayidx54 = getelementptr ptr, ptr %37, i32 %i.1123
  %38 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %arrayidx54, align 4
  br label %for.inc56

for.inc56:                                        ; preds = %if.else, %if.end9.i, %if.then8.i, %if.end.i.for.inc56_crit_edge, %if.then43.for.inc56_crit_edge
  %inc57 = add nuw nsw i32 %i.1123, 1
  %inc58 = add i16 %nid.1120, 1
  %exitcond.not = icmp eq i32 %inc57, %num_nodes
  br i1 %exitcond.not, label %for.inc56.for.end59_crit_edge, label %for.inc56.for.body31_crit_edge

for.inc56.for.body31_crit_edge:                   ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31

for.inc56.for.end59_crit_edge:                    ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end59

for.end59:                                        ; preds = %for.inc56.for.end59_crit_edge, %for.cond28.preheader.for.end59_crit_edge
  %39 = ptrtoint ptr %widgets to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %widgets, align 8
  %nodes61 = getelementptr inbounds %struct.hdac_widget_tree, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %nodes61 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %nodes61, align 4
  tail call void @kfree(ptr noundef %42) #8
  %43 = ptrtoint ptr %widgets to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %widgets, align 8
  tail call void @kfree(ptr noundef %44) #8
  %45 = ptrtoint ptr %widgets to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call, ptr %widgets, align 8
  %46 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call, align 4
  %call65 = tail call i32 @kobject_uevent(ptr noundef %47, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end59, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end59 ], [ -12, %if.then10 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vendor_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor_id = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vendor_id, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subsystem_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %subsystem_id = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %subsystem_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %subsystem_id, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @revision_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %revision_id = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %revision_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %revision_id, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afg_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %afg = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %afg, align 4
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mfg_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mfg = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %mfg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mfg, align 2
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.1, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vendor_name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor_name = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %vendor_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vendor_name, align 4
  %tobool.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool.not, ptr @.str.9, ptr %1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, ptr noundef nonnull %spec.select)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chip_name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_name = getelementptr inbounds %struct.hdac_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %chip_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_name, align 8
  %tobool.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool.not, ptr @.str.9, ptr %1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, ptr noundef nonnull %spec.select)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_hdac_codec_modalias(ptr noundef %dev, ptr noundef %buf, i32 noundef 256) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_modalias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_caps_show(ptr noundef %codec, i16 noundef zeroext %nid, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %afg.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %0 = ptrtoint ptr %afg.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %afg.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %nid)
  %cmp.i = icmp eq i16 %1, %nid
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %mfg.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 6
  %2 = ptrtoint ptr %mfg.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mfg.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %nid)
  %cmp5.i = icmp eq i16 %3, %nid
  br i1 %cmp5.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #8
  %4 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i.i, align 4, !annotation !100
  %call.i.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 9, ptr noundef nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %has_pcm_cap.exit.thread7, label %has_pcm_cap.exit

has_pcm_cap.exit.thread7:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  br label %return

has_pcm_cap.exit:                                 ; preds = %if.end.i
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp ne i32 %6, 0
  %7 = and i32 %6, 14680064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %phi.cmp16.i = icmp eq i32 %7, 0
  %phi.cmp.i = and i1 %tobool.not.i.i, %phi.cmp16.i
  br i1 %phi.cmp.i, label %has_pcm_cap.exit.if.end_crit_edge, label %has_pcm_cap.exit.return_crit_edge

has_pcm_cap.exit.return_crit_edge:                ; preds = %has_pcm_cap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

has_pcm_cap.exit.if.end_crit_edge:                ; preds = %has_pcm_cap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %has_pcm_cap.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i, align 4, !annotation !100
  %call.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 10, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i5 = icmp slt i32 %call.i, 0
  br i1 %cmp.i5, label %if.end.snd_hdac_read_parm.exit_crit_edge, label %cond.false.i

if.end.snd_hdac_read_parm.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_hdac_read_parm.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  br label %snd_hdac_read_parm.exit

snd_hdac_read_parm.exit:                          ; preds = %cond.false.i, %if.end.snd_hdac_read_parm.exit_crit_edge
  %cond.i = phi i32 [ %10, %cond.false.i ], [ -1, %if.end.snd_hdac_read_parm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %cond.i)
  br label %return

return:                                           ; preds = %snd_hdac_read_parm.exit, %has_pcm_cap.exit.return_crit_edge, %has_pcm_cap.exit.thread7
  %retval.0 = phi i32 [ %call2, %snd_hdac_read_parm.exit ], [ 0, %has_pcm_cap.exit.return_crit_edge ], [ 0, %has_pcm_cap.exit.thread7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_hdac_read_parm(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcm_formats_show(ptr noundef %codec, i16 noundef zeroext %nid, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %afg.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %0 = ptrtoint ptr %afg.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %afg.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %nid)
  %cmp.i = icmp eq i16 %1, %nid
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %mfg.i = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 6
  %2 = ptrtoint ptr %mfg.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mfg.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %nid)
  %cmp5.i = icmp eq i16 %3, %nid
  br i1 %cmp5.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #8
  %4 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i.i, align 4, !annotation !100
  %call.i.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 9, ptr noundef nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %has_pcm_cap.exit.thread7, label %has_pcm_cap.exit

has_pcm_cap.exit.thread7:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  br label %return

has_pcm_cap.exit:                                 ; preds = %if.end.i
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp ne i32 %6, 0
  %7 = and i32 %6, 14680064
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %phi.cmp16.i = icmp eq i32 %7, 0
  %phi.cmp.i = and i1 %tobool.not.i.i, %phi.cmp16.i
  br i1 %phi.cmp.i, label %has_pcm_cap.exit.if.end_crit_edge, label %has_pcm_cap.exit.return_crit_edge

has_pcm_cap.exit.return_crit_edge:                ; preds = %has_pcm_cap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

has_pcm_cap.exit.if.end_crit_edge:                ; preds = %has_pcm_cap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %has_pcm_cap.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i, align 4, !annotation !100
  %call.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 11, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i5 = icmp slt i32 %call.i, 0
  br i1 %cmp.i5, label %if.end.snd_hdac_read_parm.exit_crit_edge, label %cond.false.i

if.end.snd_hdac_read_parm.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_hdac_read_parm.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  br label %snd_hdac_read_parm.exit

snd_hdac_read_parm.exit:                          ; preds = %cond.false.i, %if.end.snd_hdac_read_parm.exit_crit_edge
  %cond.i = phi i32 [ %10, %cond.false.i ], [ -1, %if.end.snd_hdac_read_parm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %cond.i)
  br label %return

return:                                           ; preds = %snd_hdac_read_parm.exit, %has_pcm_cap.exit.return_crit_edge, %has_pcm_cap.exit.thread7
  %retval.0 = phi i32 [ %call2, %snd_hdac_read_parm.exit ], [ 0, %has_pcm_cap.exit.return_crit_edge ], [ 0, %has_pcm_cap.exit.thread7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amp_in_caps_show(ptr noundef %codec, i16 noundef zeroext %nid, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %val.i9 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %afg = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %0 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %afg, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %nid)
  %cmp.not = icmp eq i16 %1, %nid
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !100
  %call.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 9, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %snd_hdac_read_parm.exit.thread, label %snd_hdac_read_parm.exit

snd_hdac_read_parm.exit.thread:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %if.end

snd_hdac_read_parm.exit:                          ; preds = %land.lhs.true
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %snd_hdac_read_parm.exit.return_crit_edge, label %snd_hdac_read_parm.exit.if.end_crit_edge

snd_hdac_read_parm.exit.if.end_crit_edge:         ; preds = %snd_hdac_read_parm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

snd_hdac_read_parm.exit.return_crit_edge:         ; preds = %snd_hdac_read_parm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %snd_hdac_read_parm.exit.if.end_crit_edge, %snd_hdac_read_parm.exit.thread, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i9) #8
  %5 = ptrtoint ptr %val.i9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i9, align 4, !annotation !100
  %call.i10 = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 13, ptr noundef nonnull %val.i9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %cmp.i11 = icmp slt i32 %call.i10, 0
  br i1 %cmp.i11, label %if.end.snd_hdac_read_parm.exit14_crit_edge, label %cond.false.i12

if.end.snd_hdac_read_parm.exit14_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_hdac_read_parm.exit14

cond.false.i12:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %val.i9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i9, align 4
  br label %snd_hdac_read_parm.exit14

snd_hdac_read_parm.exit14:                        ; preds = %cond.false.i12, %if.end.snd_hdac_read_parm.exit14_crit_edge
  %cond.i13 = phi i32 [ %7, %cond.false.i12 ], [ -1, %if.end.snd_hdac_read_parm.exit14_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i9) #8
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %cond.i13)
  br label %return

return:                                           ; preds = %snd_hdac_read_parm.exit14, %snd_hdac_read_parm.exit.return_crit_edge
  %retval.0 = phi i32 [ %call4, %snd_hdac_read_parm.exit14 ], [ 0, %snd_hdac_read_parm.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amp_out_caps_show(ptr noundef %codec, i16 noundef zeroext %nid, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %val.i9 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %afg = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %0 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %afg, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %nid)
  %cmp.not = icmp eq i16 %1, %nid
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !100
  %call.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 9, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %snd_hdac_read_parm.exit.thread, label %snd_hdac_read_parm.exit

snd_hdac_read_parm.exit.thread:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %if.end

snd_hdac_read_parm.exit:                          ; preds = %land.lhs.true
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %snd_hdac_read_parm.exit.return_crit_edge, label %snd_hdac_read_parm.exit.if.end_crit_edge

snd_hdac_read_parm.exit.if.end_crit_edge:         ; preds = %snd_hdac_read_parm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

snd_hdac_read_parm.exit.return_crit_edge:         ; preds = %snd_hdac_read_parm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %snd_hdac_read_parm.exit.if.end_crit_edge, %snd_hdac_read_parm.exit.thread, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i9) #8
  %5 = ptrtoint ptr %val.i9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i9, align 4, !annotation !100
  %call.i10 = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 18, ptr noundef nonnull %val.i9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %cmp.i11 = icmp slt i32 %call.i10, 0
  br i1 %cmp.i11, label %if.end.snd_hdac_read_parm.exit14_crit_edge, label %cond.false.i12

if.end.snd_hdac_read_parm.exit14_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_hdac_read_parm.exit14

cond.false.i12:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %val.i9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i9, align 4
  br label %snd_hdac_read_parm.exit14

snd_hdac_read_parm.exit14:                        ; preds = %cond.false.i12, %if.end.snd_hdac_read_parm.exit14_crit_edge
  %cond.i13 = phi i32 [ %7, %cond.false.i12 ], [ -1, %if.end.snd_hdac_read_parm.exit14_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i9) #8
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %cond.i13)
  br label %return

return:                                           ; preds = %snd_hdac_read_parm.exit14, %snd_hdac_read_parm.exit.return_crit_edge
  %retval.0 = phi i32 [ %call4, %snd_hdac_read_parm.exit14 ], [ 0, %snd_hdac_read_parm.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_caps_show(ptr noundef %codec, i16 noundef zeroext %nid, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %val.i9 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %afg = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 5
  %0 = ptrtoint ptr %afg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %afg, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %nid)
  %cmp.not = icmp eq i16 %1, %nid
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !100
  %call.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 9, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %snd_hdac_read_parm.exit.thread, label %snd_hdac_read_parm.exit

snd_hdac_read_parm.exit.thread:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %if.end

snd_hdac_read_parm.exit:                          ; preds = %land.lhs.true
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %and = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %snd_hdac_read_parm.exit.return_crit_edge, label %snd_hdac_read_parm.exit.if.end_crit_edge

snd_hdac_read_parm.exit.if.end_crit_edge:         ; preds = %snd_hdac_read_parm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

snd_hdac_read_parm.exit.return_crit_edge:         ; preds = %snd_hdac_read_parm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %snd_hdac_read_parm.exit.if.end_crit_edge, %snd_hdac_read_parm.exit.thread, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i9) #8
  %5 = ptrtoint ptr %val.i9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i9, align 4, !annotation !100
  %call.i10 = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 15, ptr noundef nonnull %val.i9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %cmp.i11 = icmp slt i32 %call.i10, 0
  br i1 %cmp.i11, label %if.end.snd_hdac_read_parm.exit14_crit_edge, label %cond.false.i12

if.end.snd_hdac_read_parm.exit14_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_hdac_read_parm.exit14

cond.false.i12:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %val.i9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i9, align 4
  br label %snd_hdac_read_parm.exit14

snd_hdac_read_parm.exit14:                        ; preds = %cond.false.i12, %if.end.snd_hdac_read_parm.exit14_crit_edge
  %cond.i13 = phi i32 [ %7, %cond.false.i12 ], [ -1, %if.end.snd_hdac_read_parm.exit14_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i9) #8
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %cond.i13)
  br label %return

return:                                           ; preds = %snd_hdac_read_parm.exit14, %snd_hdac_read_parm.exit.return_crit_edge
  %retval.0 = phi i32 [ %call4, %snd_hdac_read_parm.exit14 ], [ 0, %snd_hdac_read_parm.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_caps_show(ptr noundef %codec, i16 noundef zeroext %nid, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !100
  %call.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 17, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.snd_hdac_read_parm.exit_crit_edge, label %cond.false.i

entry.snd_hdac_read_parm.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_hdac_read_parm.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val.i, align 4
  br label %snd_hdac_read_parm.exit

snd_hdac_read_parm.exit:                          ; preds = %cond.false.i, %entry.snd_hdac_read_parm.exit_crit_edge
  %cond.i = phi i32 [ %2, %cond.false.i ], [ -1, %entry.snd_hdac_read_parm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %cond.i)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caps_show(ptr noundef %codec, i16 noundef zeroext %nid, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !100
  %call.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 9, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.snd_hdac_read_parm.exit_crit_edge, label %cond.false.i

entry.snd_hdac_read_parm.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_hdac_read_parm.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val.i, align 4
  br label %snd_hdac_read_parm.exit

snd_hdac_read_parm.exit:                          ; preds = %cond.false.i, %entry.snd_hdac_read_parm.exit_crit_edge
  %cond.i = phi i32 [ %2, %cond.false.i ], [ -1, %entry.snd_hdac_read_parm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %cond.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pin_caps_show(ptr noundef %codec, i16 noundef zeroext %nid, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %val.i6 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !100
  %call.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 9, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %snd_hdac_read_parm.exit.thread, label %snd_hdac_read_parm.exit

snd_hdac_read_parm.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %return

snd_hdac_read_parm.exit:                          ; preds = %entry
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %3 = and i32 %2, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %3)
  %cmp.not = icmp eq i32 %3, 4194304
  br i1 %cmp.not, label %if.end, label %snd_hdac_read_parm.exit.return_crit_edge

snd_hdac_read_parm.exit.return_crit_edge:         ; preds = %snd_hdac_read_parm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %snd_hdac_read_parm.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i6) #8
  %4 = ptrtoint ptr %val.i6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i6, align 4, !annotation !100
  %call.i7 = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 12, ptr noundef nonnull %val.i6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %cmp.i8 = icmp slt i32 %call.i7, 0
  br i1 %cmp.i8, label %if.end.snd_hdac_read_parm.exit11_crit_edge, label %cond.false.i9

if.end.snd_hdac_read_parm.exit11_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_hdac_read_parm.exit11

cond.false.i9:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %val.i6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i6, align 4
  br label %snd_hdac_read_parm.exit11

snd_hdac_read_parm.exit11:                        ; preds = %cond.false.i9, %if.end.snd_hdac_read_parm.exit11_crit_edge
  %cond.i10 = phi i32 [ %6, %cond.false.i9 ], [ -1, %if.end.snd_hdac_read_parm.exit11_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i6) #8
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %cond.i10)
  br label %return

return:                                           ; preds = %snd_hdac_read_parm.exit11, %snd_hdac_read_parm.exit.return_crit_edge, %snd_hdac_read_parm.exit.thread
  %retval.0 = phi i32 [ %call3, %snd_hdac_read_parm.exit11 ], [ 0, %snd_hdac_read_parm.exit.thread ], [ 0, %snd_hdac_read_parm.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pin_cfg_show(ptr noundef %codec, i16 noundef zeroext %nid, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val.i, align 4, !annotation !100
  %call.i = call i32 @_snd_hdac_read_parm(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 9, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %snd_hdac_read_parm.exit.thread, label %snd_hdac_read_parm.exit

snd_hdac_read_parm.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %cleanup

snd_hdac_read_parm.exit:                          ; preds = %entry
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %4 = and i32 %3, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %4)
  %cmp.not = icmp eq i32 %4, 4194304
  br i1 %cmp.not, label %if.end, label %snd_hdac_read_parm.exit.cleanup_crit_edge

snd_hdac_read_parm.exit.cleanup_crit_edge:        ; preds = %snd_hdac_read_parm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %snd_hdac_read_parm.exit
  %call2 = call i32 @snd_hdac_read(ptr noundef %codec, i16 noundef zeroext %nid, i32 noundef 3868, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %snd_hdac_read_parm.exit.cleanup_crit_edge, %snd_hdac_read_parm.exit.thread
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %snd_hdac_read_parm.exit.thread ], [ 0, %snd_hdac_read_parm.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_read(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @connections_show(ptr noundef %codec, i16 noundef zeroext %nid, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %list = alloca [32 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %list) #8
  %0 = call ptr @memset(ptr %list, i32 255, i32 64)
  %call = call i32 @snd_hdac_get_connections(ptr noundef %codec, i16 noundef zeroext %nid, ptr noundef nonnull %list, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ret.021 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %ret.021
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.020)
  %tobool.not = icmp eq i32 %i.020, 0
  %cond = select i1 %tobool.not, ptr @.str.9, ptr @.str.25
  %arrayidx = getelementptr [32 x i16], ptr %list, i32 0, i32 %i.020
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %2 to i32
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.24, ptr noundef nonnull %cond, i32 noundef %conv)
  %add = add i32 %call2, %ret.021
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3 = getelementptr i8, ptr %buf, i32 %add
  %3 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 2560, ptr %add.ptr3, align 1
  %add5 = add i32 %add, 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add5, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %list) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_get_connections(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @widget_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %kobj) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @widget_attr_show(ptr nocapture noundef readonly %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 64 {
entry:
  %nid.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.widget_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 4
  %parent1.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nid.i) #8
  %6 = ptrtoint ptr %nid.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %nid.i, align 4, !annotation !100
  %7 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kobj, align 4
  %call2.i = call i32 @kstrtoint(ptr noundef %8, i32 noundef 16, ptr noundef nonnull %nid.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %get_codec_nid.exit.thread, label %get_codec_nid.exit

get_codec_nid.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nid.i) #8
  br label %cleanup

get_codec_nid.exit:                               ; preds = %if.end
  %9 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nid.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nid.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %get_codec_nid.exit.cleanup_crit_edge, label %if.end2

get_codec_nid.exit.cleanup_crit_edge:             ; preds = %get_codec_nid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %get_codec_nid.exit
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %show, align 4
  %conv = trunc i32 %10 to i16
  %call4 = call i32 %12(ptr noundef %5, i16 noundef zeroext %conv, ptr noundef %attr, ptr noundef %buf) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %get_codec_nid.exit.cleanup_crit_edge, %get_codec_nid.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end2 ], [ -5, %entry.cleanup_crit_edge ], [ %10, %get_codec_nid.exit.cleanup_crit_edge ], [ %call2.i, %get_codec_nid.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @widget_attr_store(ptr nocapture noundef readonly %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %nid.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.widget_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 4
  %parent1.i = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nid.i) #8
  %6 = ptrtoint ptr %nid.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %nid.i, align 4, !annotation !100
  %7 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kobj, align 4
  %call2.i = call i32 @kstrtoint(ptr noundef %8, i32 noundef 16, ptr noundef nonnull %nid.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %get_codec_nid.exit.thread, label %get_codec_nid.exit

get_codec_nid.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nid.i) #8
  br label %cleanup

get_codec_nid.exit:                               ; preds = %if.end
  %9 = ptrtoint ptr %nid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nid.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nid.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %get_codec_nid.exit.cleanup_crit_edge, label %if.end2

get_codec_nid.exit.cleanup_crit_edge:             ; preds = %get_codec_nid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %get_codec_nid.exit
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %store, align 4
  %conv = trunc i32 %10 to i16
  %call4 = call i32 %12(ptr noundef %5, i16 noundef zeroext %conv, ptr noundef %attr, ptr noundef %buf, i32 noundef %count) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %get_codec_nid.exit.cleanup_crit_edge, %get_codec_nid.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end2 ], [ -5, %entry.cleanup_crit_edge ], [ %10, %get_codec_nid.exit.cleanup_crit_edge ], [ %call2.i, %get_codec_nid.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !29, !30, !32, !33, !35, !36, !38, !40, !42, !44, !45, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @hdac_dev_attr_groups, !1, !"hdac_dev_attr_groups", i1 false, i1 false}
!1 = !{!"../sound/hda/hdac_sysfs.c", i32 73, i32 31}
!2 = !{ptr @hdac_dev_attr_group, !3, !"hdac_dev_attr_group", i1 false, i1 false}
!3 = !{!"../sound/hda/hdac_sysfs.c", i32 69, i32 37}
!4 = !{ptr @hdac_dev_attrs, !5, !"hdac_dev_attrs", i1 false, i1 false}
!5 = !{!"../sound/hda/hdac_sysfs.c", i32 56, i32 26}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/hda/hdac_sysfs.c", i32 40, i32 1}
!8 = !{ptr @dev_attr_type, !7, !"dev_attr_type", i1 false, i1 false}
!9 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/hda/hdac_sysfs.c", i32 41, i32 1}
!12 = !{ptr @dev_attr_vendor_id, !11, !"dev_attr_vendor_id", i1 false, i1 false}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/hda/hdac_sysfs.c", i32 42, i32 1}
!15 = !{ptr @dev_attr_subsystem_id, !14, !"dev_attr_subsystem_id", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/hda/hdac_sysfs.c", i32 43, i32 1}
!18 = !{ptr @dev_attr_revision_id, !17, !"dev_attr_revision_id", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/hda/hdac_sysfs.c", i32 44, i32 1}
!21 = !{ptr @dev_attr_afg, !20, !"dev_attr_afg", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/hda/hdac_sysfs.c", i32 45, i32 1}
!24 = !{ptr @dev_attr_mfg, !23, !"dev_attr_mfg", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/hda/hdac_sysfs.c", i32 46, i32 1}
!27 = !{ptr @dev_attr_vendor_name, !26, !"dev_attr_vendor_name", i1 false, i1 false}
!28 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/hda/hdac_sysfs.c", i32 47, i32 1}
!32 = !{ptr @dev_attr_chip_name, !31, !"dev_attr_chip_name", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/hda/hdac_sysfs.c", i32 54, i32 8}
!35 = !{ptr @dev_attr_modalias, !34, !"dev_attr_modalias", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/hda/hdac_sysfs.c", i32 371, i32 38}
!38 = !{ptr @widget_afg_group, !39, !"widget_afg_group", i1 false, i1 false}
!39 = !{!"../sound/hda/hdac_sysfs.c", i32 307, i32 37}
!40 = !{ptr @widget_afg_attrs, !41, !"widget_afg_attrs", i1 false, i1 false}
!41 = !{!"../sound/hda/hdac_sysfs.c", i32 293, i32 26}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/hda/hdac_sysfs.c", i32 272, i32 8}
!44 = !{ptr @wid_attr_pcm_caps, !43, !"wid_attr_pcm_caps", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/hda/hdac_sysfs.c", i32 206, i32 22}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/hda/hdac_sysfs.c", i32 273, i32 8}
!49 = !{ptr @wid_attr_pcm_formats, !48, !"wid_attr_pcm_formats", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/hda/hdac_sysfs.c", i32 274, i32 8}
!52 = !{ptr @wid_attr_amp_in_caps, !51, !"wid_attr_amp_in_caps", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/hda/hdac_sysfs.c", i32 275, i32 8}
!55 = !{ptr @wid_attr_amp_out_caps, !54, !"wid_attr_amp_out_caps", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/hda/hdac_sysfs.c", i32 276, i32 8}
!58 = !{ptr @wid_attr_power_caps, !57, !"wid_attr_power_caps", i1 false, i1 false}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/hda/hdac_sysfs.c", i32 277, i32 8}
!61 = !{ptr @wid_attr_gpio_caps, !60, !"wid_attr_gpio_caps", i1 false, i1 false}
!62 = !{ptr @widget_node_group, !63, !"widget_node_group", i1 false, i1 false}
!63 = !{!"../sound/hda/hdac_sysfs.c", i32 303, i32 37}
!64 = !{ptr @widget_node_attrs, !65, !"widget_node_attrs", i1 false, i1 false}
!65 = !{!"../sound/hda/hdac_sysfs.c", i32 280, i32 26}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/hda/hdac_sysfs.c", i32 269, i32 8}
!68 = !{ptr @wid_attr_caps, !67, !"wid_attr_caps", i1 false, i1 false}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/hda/hdac_sysfs.c", i32 270, i32 8}
!71 = !{ptr @wid_attr_pin_caps, !70, !"wid_attr_pin_caps", i1 false, i1 false}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/hda/hdac_sysfs.c", i32 271, i32 8}
!74 = !{ptr @wid_attr_pin_cfg, !73, !"wid_attr_pin_cfg", i1 false, i1 false}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/hda/hdac_sysfs.c", i32 278, i32 8}
!77 = !{ptr @wid_attr_connections, !76, !"wid_attr_connections", i1 false, i1 false}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/hda/hdac_sysfs.c", i32 264, i32 29}
!80 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/hda/hdac_sysfs.c", i32 264, i32 45}
!82 = distinct !{null, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/hda/hdac_sysfs.c", i32 265, i32 28}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/hda/hdac_sysfs.c", i32 348, i32 34}
!86 = !{ptr @widget_ktype, !87, !"widget_ktype", i1 false, i1 false}
!87 = !{!"../sound/hda/hdac_sysfs.c", i32 151, i32 25}
!88 = !{ptr @widget_sysfs_ops, !89, !"widget_sysfs_ops", i1 false, i1 false}
!89 = !{!"../sound/hda/hdac_sysfs.c", i32 141, i32 31}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{!"auto-init"}
