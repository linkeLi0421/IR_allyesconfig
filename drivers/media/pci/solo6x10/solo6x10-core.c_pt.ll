; ModuleID = '/llk/IR_all_yes/drivers/media/pci/solo6x10/solo6x10-core.c_pt.bc'
source_filename = "../drivers/media/pci/solo6x10/solo6x10-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.solo_dev = type { ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.v4l2_device, %struct.gpio_chip, i8, i8, i8, i8, [2 x %struct.i2c_adapter], i32, %struct.mutex, i32, %struct.wait_queue_head, ptr, i32, i32, [4 x %struct.solo_p2m_dev], %struct.atomic_t, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, %struct.v4l2_ctrl_handler, [16 x ptr], i16, i8, i32, i16, i16, i16, i16, i16, i16, i8, %struct.spinlock, [2 x i32], ptr, ptr, %struct.atomic_t, i32, %struct.device, i32, %struct.bin_attribute, i32, ptr, %struct.wait_queue_head, ptr, i32, i32, %struct.vb2_queue, i32, ptr, %struct.mutex, %struct.spinlock, i32, %struct.list_head }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.102, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.102 = type { ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.solo_p2m_dev = type { %struct.mutex, %struct.completion, i32, i32, ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.solo_enc_dev = type { ptr, %struct.v4l2_ctrl_handler, ptr, ptr, %struct.mutex, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i16, [45 x i8], [3 x i8], [131072 x i8], [64 x i8], i32, [1024 x i8], i32, i32, i32, i32, %struct.vb2_queue, %struct.list_head, i32, i32, ptr, i32, %struct.spinlock }

@__UNIQUE_ID_description300 = internal constant [77 x i8] c"solo6x10.description=Softlogic 6x10 MPEG4/H.264/G.723 CODEC V4L2/ALSA Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [59 x i8] c"solo6x10.author=Bluecherry <maintainers@bluecherrydvr.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_version302 = internal constant [23 x i8] c"solo6x10.version=3.0.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"solo6x10\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.0.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file303 = internal constant [50 x i8] c"solo6x10.file=drivers/media/pci/solo6x10/solo6x10\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [21 x i8] c"solo6x10.license=GPL\00", section ".modinfo", align 1
@__param_str_video_nr = internal constant [18 x i8] c"solo6x10.video_nr\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@video_nr = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_video_nr = internal constant %struct.kernel_param { ptr @__param_str_video_nr, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @video_nr } }, section "__param", align 4
@__UNIQUE_ID_video_nrtype305 = internal constant [32 x i8] c"solo6x10.parmtype=video_nr:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_video_nr306 = internal constant [71 x i8] c"solo6x10.parm=video_nr:videoX start number, -1 is autodetect (default)\00", section ".modinfo", align 1
@__param_str_full_eeprom = internal constant [21 x i8] c"solo6x10.full_eeprom\00", align 1
@full_eeprom = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_full_eeprom = internal constant %struct.kernel_param { ptr @__param_str_full_eeprom, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @full_eeprom } }, section "__param", align 4
@__UNIQUE_ID_full_eepromtype307 = internal constant [35 x i8] c"solo6x10.parmtype=full_eeprom:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_full_eeprom308 = internal constant [71 x i8] c"solo6x10.parm=full_eeprom:Allow access to full 128B EEPROM (dangerous)\00", section ".modinfo", align 1
@__initcall__kmod_solo6x10__327_678_solo_pci_driver_init6 = internal global ptr @solo_pci_driver_init, section ".initcall6.init", align 4
@solo_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @solo_id_table, ptr @solo_pci_probe, ptr @solo_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_solo_pci_driver_exit = internal global ptr @solo_pci_driver_exit, section ".exitcall.exit", align 4
@solo_id_table = internal constant { [12 x %struct.pci_device_id], [96 x i8] } { [12 x %struct.pci_device_id] [%struct.pci_device_id { i32 37907, i32 24592, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7091, i32 17156, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7091, i32 17161, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7091, i32 17168, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7091, i32 19972, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7091, i32 19977, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7091, i32 19984, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 37907, i32 24848, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 7091, i32 21252, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 7091, i32 21256, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 7091, i32 21264, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@solo_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 459, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Probing Softlogic 6010\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"solo_pci_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/pci/solo6x10/solo6x10-core.c\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@solo_pci_probe._entry_ptr = internal global ptr @solo_pci_probe._entry, section ".printk_index", align 4
@solo_pci_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 461, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Probing Softlogic 6110\0A\00", [40 x i8] zeroinitializer }, align 32
@solo_pci_probe._entry_ptr.10 = internal global ptr @solo_pci_probe._entry.8, section ".printk_index", align 4
@solo_pci_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 505, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid chip_id 0x%02x, assuming 4 ch\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@solo_pci_probe._entry_ptr.14 = internal global ptr @solo_pci_probe._entry.11, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"solo6110\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"solo6010\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-%d-%d\00", [23 x i8] zeroinitializer }, align 32
@solo_dev_attrs = internal constant { [8 x %struct.device_attribute], [32 x i8] } { [8 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { ptr @.str.19, i16 416, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @eeprom_show, ptr @eeprom_store }, %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @p2m_timeout_show, ptr @p2m_timeout_store }, %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @p2m_timeouts_show, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdram_size_show, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tw28xx_show, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @input_map_show, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @intervals_show, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sdram_offsets_show, ptr null }], [32 x i8] zeroinitializer }, align 32
@solo_sysfs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdram\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"p2m_timeout\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p2m_timeouts\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sdram_size\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tw28xx\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"input_map\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"intervals\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdram_offsets\00", [18 x i8] zeroinitializer }, align 32
@eeprom_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 168, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"EEPROM Write not aligned (truncating)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eeprom_store\00", [19 x i8] zeroinitializer }, align 32
@eeprom_store._entry_ptr = internal global ptr @eeprom_store._entry, section ".printk_index", align 4
@eeprom_store._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.5, i32 171, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"EEPROM Write truncated to 64 bytes\0A\00", [60 x i8] zeroinitializer }, align 32
@eeprom_store._entry_ptr.31 = internal global ptr @eeprom_store._entry.29, section ".printk_index", align 4
@eeprom_store._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.5, i32 174, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"EEPROM Write truncated to 128 bytes\0A\00", [59 x i8] zeroinitializer }, align 32
@eeprom_store._entry_ptr.34 = internal global ptr @eeprom_store._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%ums\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%dMegs\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tw2815[%d] tw2864[%d] tw2865[%d]\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Channel 0   => Input %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Channel 1   => Input %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Channel 2   => Input %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Channel 3   => Input %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Channel 4   => Input %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Channel 5   => Input %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Channel 6   => Input %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Channel 7   => Input %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Channel 8   => Input %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Channel 9   => Input %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Channel 10  => Input %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Channel 11  => Input %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Channel 12  => Input %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Channel 13  => Input %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Channel 14  => Input %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Channel 15  => Input %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Spot Output => Input %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Channel %d: %d/%d (0x%08x)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DISP: 0x%08x @ 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"EOSD: 0x%08x @ 0x%08x (0x%08x * %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MOTI: 0x%08x @ 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"G723: 0x%08x @ 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CAPT: 0x%08x @ 0x%08x (0x%08x * %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"EREF: 0x%08x @ 0x%08x (0x%08x * %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MPEG: 0x%08x @ 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"JPEG: 0x%08x @ 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@switch.table.solo_pci_probe = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 8, i32 16], [20 x i8] zeroinitializer }, align 32
@switch.table.solo_pci_probe.65 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 5], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 27, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant [9 x i8] c"video_nr\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 30, i32 17 }
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"full_eeprom\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 34, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"solo_pci_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 671, i32 26 }
@___asan_gen_.84 = private unnamed_addr constant [14 x i8] c"solo_id_table\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 641, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 459, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 461, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 504, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 412, i32 12 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 414, i32 12 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 419, i32 20 }
@___asan_gen_.129 = private unnamed_addr constant [15 x i8] c"solo_dev_attrs\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 388, i32 38 }
@___asan_gen_.132 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 434, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 435, i32 26 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 389, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 390, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 391, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 392, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 393, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 394, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 395, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 396, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 168, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 171, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 174, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 295, i32 22 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 211, i32 22 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 221, i32 22 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 231, i32 22 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 247, i32 22 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 248, i32 22 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 249, i32 22 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 250, i32 22 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 251, i32 22 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 252, i32 22 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 255, i32 22 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 256, i32 22 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 257, i32 22 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 258, i32 22 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 259, i32 22 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 260, i32 22 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 263, i32 22 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 264, i32 22 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 265, i32 22 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 266, i32 22 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 267, i32 22 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 309, i32 23 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 325, i32 22 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 329, i32 22 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 336, i32 22 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 340, i32 22 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 344, i32 22 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 350, i32 22 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 356, i32 22 }
@___asan_gen_.270 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.271 = private constant [46 x i8] c"../drivers/media/pci/solo6x10/solo6x10-core.c\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 360, i32 22 }
@___asan_gen_.273 = private unnamed_addr constant [28 x i8] c"switch.table.solo_pci_probe\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [31 x i8] c"switch.table.solo_pci_probe.65\00", align 1
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_full_eeprom308, ptr @__UNIQUE_ID_full_eepromtype307, ptr @__UNIQUE_ID_license304, ptr @__UNIQUE_ID_version302, ptr @__UNIQUE_ID_video_nr306, ptr @__UNIQUE_ID_video_nrtype305, ptr @__exitcall_solo_pci_driver_exit, ptr @__initcall__kmod_solo6x10__327_678_solo_pci_driver_init6, ptr @__modver_attr, ptr @__param_full_eeprom, ptr @__param_video_nr, ptr @eeprom_store._entry, ptr @eeprom_store._entry.29, ptr @eeprom_store._entry.32, ptr @eeprom_store._entry_ptr, ptr @eeprom_store._entry_ptr.31, ptr @eeprom_store._entry_ptr.34, ptr @solo_pci_driver_exit, ptr @solo_pci_probe._entry, ptr @solo_pci_probe._entry.11, ptr @solo_pci_probe._entry.8, ptr @solo_pci_probe._entry_ptr, ptr @solo_pci_probe._entry_ptr.10, ptr @solo_pci_probe._entry_ptr.14, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @video_nr, ptr @full_eeprom, ptr @solo_pci_driver, ptr @solo_id_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @solo_dev_attrs, ptr @solo_sysfs_init.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @switch.table.solo_pci_probe, ptr @switch.table.solo_pci_probe.65], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_eeprom to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_id_table to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_pci_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_pci_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_dev_attrs to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_sysfs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_store._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_store._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.solo_pci_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.solo_pci_probe.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_pci_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @solo_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @solo_pci_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @solo_pci_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 6200) #14
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1 = icmp eq i32 %2, 0
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %.str.3..str.9 = select i1 %cmp1, ptr @.str.3, ptr @.str.9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull %.str.3..str.9) #15
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %type = getelementptr inbounds %struct.solo_dev, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %type, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %call7.i.i, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %v4l2_dev = getelementptr inbounds %struct.solo_dev, ptr %call7.i.i, i32 0, i32 10
  %call11 = tail call i32 @v4l2_device_register(ptr noundef %dev10, ptr noundef %v4l2_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %if.end.fail_probe_crit_edge

if.end.fail_probe_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_probe

if.end13:                                         ; preds = %if.end
  %p2m_jiffies = getelementptr inbounds %struct.solo_dev, ptr %call7.i.i, i32 0, i32 26
  %7 = ptrtoint ptr %p2m_jiffies to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 10, ptr %p2m_jiffies, align 8
  %call15 = tail call i32 @pci_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.fail_probe_crit_edge

if.end13.fail_probe_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_probe

if.end18:                                         ; preds = %if.end13
  tail call void @pci_set_master(ptr noundef %pdev) #11
  %call19 = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 64, i8 noundef zeroext 0) #11
  %call20 = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 65, i8 noundef zeroext 0) #11
  %call21 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end18.fail_probe_crit_edge

if.end18.fail_probe_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_probe

if.end24:                                         ; preds = %if.end18
  %call25 = tail call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef 0) #11
  %reg_base = getelementptr inbounds %struct.solo_dev, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call25, ptr %reg_base, align 4
  %cmp27 = icmp eq ptr %call25, null
  br i1 %cmp27, label %if.end24.fail_probe_crit_edge, label %if.end29

if.end24.fail_probe_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_probe

if.end29:                                         ; preds = %if.end24
  %add.ptr.i = getelementptr i8, ptr %call25, i32 28
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !163
  %10 = lshr i32 %9, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !164
  %conv = and i32 %10, 7
  %switch.tableidx = add nsw i32 %conv, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 3
  br i1 %11, label %switch.lookup, label %do.end37

do.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev10, ptr noundef nonnull @.str.12, i32 noundef %conv) #15
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.solo_pci_probe, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep211 = getelementptr inbounds [3 x i32], ptr @switch.table.solo_pci_probe.65, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep211 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load212 = load i32, ptr %switch.gep211, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end37
  %.sink210 = phi i32 [ 4, %do.end37 ], [ %switch.load, %switch.lookup ]
  %.sink = phi i32 [ 1, %do.end37 ], [ %switch.load212, %switch.lookup ]
  %nr_chans41 = getelementptr inbounds %struct.solo_dev, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %nr_chans41 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink210, ptr %nr_chans41, align 8
  %nr_ext42 = getelementptr inbounds %struct.solo_dev, ptr %call7.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %nr_ext42 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %nr_ext42, align 4
  tail call fastcc void @solo_irq_off(ptr noundef nonnull %call7.i.i)
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp44 = icmp eq i32 %17, 0
  %clock_mhz = getelementptr inbounds %struct.solo_dev, ptr %call7.i.i, i32 0, i32 4
  br i1 %cmp44, label %if.then46, label %if.else51

if.then46:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %clock_mhz to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 108, ptr %clock_mhz, align 8
  %sys_config = getelementptr inbounds %struct.solo_dev, ptr %call7.i.i, i32 0, i32 54
  %19 = ptrtoint ptr %sys_config to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1074158296, ptr %sys_config, align 8
  tail call fastcc void @solo_reg_write(ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 1074158296)
  br label %if.end72

if.else51:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %clock_mhz to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 135, ptr %clock_mhz, align 8
  tail call fastcc void @solo_reg_write(ptr noundef nonnull %call7.i.i, i32 noundef 32, i32 noundef 1320338)
  %sys_config71 = getelementptr inbounds %struct.solo_dev, ptr %call7.i.i, i32 0, i32 54
  %21 = ptrtoint ptr %sys_config71 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1073741824, ptr %sys_config71, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.else51, %if.then46
  %sys_config73 = getelementptr inbounds %struct.solo_dev, ptr %call7.i.i, i32 0, i32 54
  %22 = ptrtoint ptr %sys_config73 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sys_config73, align 8
  tail call fastcc void @solo_reg_write(ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef %23)
  %clock_mhz74 = getelementptr inbounds %struct.solo_dev, ptr %call7.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %clock_mhz74 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clock_mhz74, align 8
  %sub75 = add i32 %25, -1
  tail call fastcc void @solo_reg_write(ptr noundef nonnull %call7.i.i, i32 noundef 3040, i32 noundef %sub75)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #11
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %28, ptr noundef nonnull @solo_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool77.not = icmp eq i32 %call.i, 0
  br i1 %tobool77.not, label %if.end79, label %if.end72.fail_probe_crit_edge

if.end72.fail_probe_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_probe

if.end79:                                         ; preds = %if.end72
  tail call fastcc void @solo_irq_on(ptr noundef nonnull %call7.i.i)
  %call80 = tail call i32 @solo_i2c_init(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end79.fail_probe_crit_edge

if.end79.fail_probe_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_probe

if.end83:                                         ; preds = %if.end79
  tail call fastcc void @solo_reg_write(ptr noundef nonnull %call7.i.i, i32 noundef 4, i32 noundef 421)
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp85 = icmp eq i32 %30, 0
  %cond = select i1 %cmp85, i32 256, i32 768
  tail call fastcc void @solo_reg_write(ptr noundef nonnull %call7.i.i, i32 noundef 8, i32 noundef %cond)
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp88.not = icmp eq i32 %32, 0
  br i1 %cmp88.not, label %if.end83.if.end91_crit_edge, label %if.then90

if.end83.if.end91_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then90:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  %usec_lsb = getelementptr inbounds %struct.solo_dev, ptr %call7.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %usec_lsb to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 63, ptr %usec_lsb, align 4
  tail call fastcc void @solo_set_time(ptr noundef nonnull %call7.i.i)
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.end83.if.end91_crit_edge
  tail call fastcc void @solo_reg_write(ptr noundef nonnull %call7.i.i, i32 noundef 3044, i32 noundef 0)
  %call92 = tail call i32 @solo_p2m_init(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end91.fail_probe_crit_edge

if.end91.fail_probe_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_probe

if.end95:                                         ; preds = %if.end91
  %call96 = tail call i32 @solo_disp_init(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %if.end95.fail_probe_crit_edge

if.end95.fail_probe_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_probe

if.end99:                                         ; preds = %if.end95
  %call100 = tail call i32 @solo_gpio_init(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %if.end99.fail_probe_crit_edge

if.end99.fail_probe_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_probe

if.end103:                                        ; preds = %if.end99
  %call104 = tail call i32 @solo_tw28_init(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.end103.fail_probe_crit_edge

if.end103.fail_probe_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_probe

if.end107:                                        ; preds = %if.end103
  %34 = load i32, ptr @video_nr, align 4
  %call108 = tail call i32 @solo_v4l2_init(ptr noundef nonnull %call7.i.i, i32 noundef %34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.end107.fail_probe_crit_edge

if.end107.fail_probe_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_probe

if.end111:                                        ; preds = %if.end107
  %call112 = tail call i32 @solo_enc_init(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %if.end111.fail_probe_crit_edge

if.end111.fail_probe_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_probe

if.end115:                                        ; preds = %if.end111
  %35 = load i32, ptr @video_nr, align 4
  %call116 = tail call i32 @solo_enc_v4l2_init(ptr noundef nonnull %call7.i.i, i32 noundef %35) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %if.end115.fail_probe_crit_edge

if.end115.fail_probe_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_probe

if.end119:                                        ; preds = %if.end115
  %call120 = tail call i32 @solo_g723_init(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %if.end119.fail_probe_crit_edge

if.end119.fail_probe_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_probe

if.end123:                                        ; preds = %if.end119
  %call124 = tail call fastcc i32 @solo_sysfs_init(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.end123.fail_probe_crit_edge

if.end123.fail_probe_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail_probe

if.end127:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %p2m_jiffies to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %p2m_jiffies, align 8
  br label %cleanup

fail_probe:                                       ; preds = %if.end123.fail_probe_crit_edge, %if.end119.fail_probe_crit_edge, %if.end115.fail_probe_crit_edge, %if.end111.fail_probe_crit_edge, %if.end107.fail_probe_crit_edge, %if.end103.fail_probe_crit_edge, %if.end99.fail_probe_crit_edge, %if.end95.fail_probe_crit_edge, %if.end91.fail_probe_crit_edge, %if.end79.fail_probe_crit_edge, %if.end72.fail_probe_crit_edge, %if.end24.fail_probe_crit_edge, %if.end18.fail_probe_crit_edge, %if.end13.fail_probe_crit_edge, %if.end.fail_probe_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end.fail_probe_crit_edge ], [ %call15, %if.end13.fail_probe_crit_edge ], [ %call21, %if.end18.fail_probe_crit_edge ], [ %call.i, %if.end72.fail_probe_crit_edge ], [ %call80, %if.end79.fail_probe_crit_edge ], [ %call92, %if.end91.fail_probe_crit_edge ], [ %call96, %if.end95.fail_probe_crit_edge ], [ %call100, %if.end99.fail_probe_crit_edge ], [ %call104, %if.end103.fail_probe_crit_edge ], [ %call108, %if.end107.fail_probe_crit_edge ], [ %call112, %if.end111.fail_probe_crit_edge ], [ %call116, %if.end115.fail_probe_crit_edge ], [ %call120, %if.end119.fail_probe_crit_edge ], [ %call124, %if.end123.fail_probe_crit_edge ], [ -12, %if.end24.fail_probe_crit_edge ]
  tail call fastcc void @free_solo_dev(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %fail_probe, %if.end127, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail_probe ], [ 0, %if.end127 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @solo_pci_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -40
  tail call fastcc void @free_solo_dev(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @solo_irq_off(ptr nocapture noundef %dev) unnamed_addr #5 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  %irq_mask = getelementptr inbounds %struct.solo_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %irq_mask, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #11
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %val.i, align 2, !annotation !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @arm_heavy_mb() #11
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !167
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %5, i32 noundef 6, ptr noundef nonnull %val.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @solo_reg_write(ptr nocapture noundef readonly %solo_dev, i32 noundef %reg, i32 noundef %data) unnamed_addr #5 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @arm_heavy_mb() #11
  %1 = tail call i32 @llvm.bswap.i32(i32 %data)
  %reg_base = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #11, !srcloc !167
  %4 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %solo_dev, align 8
  %call = call i32 @pci_read_config_word(ptr noundef %5, i32 noundef 6, ptr noundef nonnull %val) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @solo_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %val.i.i = alloca i16, align 2
  %val.i2.i.i = alloca i16, align 2
  %val.i.i.i = alloca i16, align 2
  %ts.i.i = alloca %struct.timespec64, align 8
  %ts.i = alloca %struct.timespec64, align 8
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !163
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #11
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val.i, align 2, !annotation !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @arm_heavy_mb() #11
  %5 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %2) #11, !srcloc !167
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %8, i32 noundef 6, ptr noundef nonnull %val.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #11
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @solo_p2m_error_isr(ptr noundef %data) #11
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %and4 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.for.inc_crit_edge, label %if.then6

if.end3.for.inc_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  call void @solo_p2m_isr(ptr noundef %data, i32 noundef 0) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %if.end3.for.inc_crit_edge
  %and4.1 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.1)
  %tobool5.not.1 = icmp eq i32 %and4.1, 0
  br i1 %tobool5.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then6.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then6.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  call void @solo_p2m_isr(ptr noundef %data, i32 noundef 1) #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then6.1, %for.inc.for.inc.1_crit_edge
  %and4.2 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.2)
  %tobool5.not.2 = icmp eq i32 %and4.2, 0
  br i1 %tobool5.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then6.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.then6.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  call void @solo_p2m_isr(ptr noundef %data, i32 noundef 2) #11
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then6.2, %for.inc.1.for.inc.2_crit_edge
  %and4.3 = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.3)
  %tobool5.not.3 = icmp eq i32 %and4.3, 0
  br i1 %tobool5.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then6.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.then6.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  call void @solo_p2m_isr(ptr noundef %data, i32 noundef 3) #11
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then6.3, %for.inc.2.for.inc.3_crit_edge
  %and8 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %for.inc.3.if.end12_crit_edge, label %if.then10

for.inc.3.if.end12_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = call i32 @solo_i2c_isr(ptr noundef %data) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.inc.3.if.end12_crit_edge
  %and13 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @solo_video_in_isr(ptr noundef %data) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #11
  %9 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  %type.i = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.then15.solo_timer_sync.exit_crit_edge

if.then15.solo_timer_sync.exit_crit_edge:         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %solo_timer_sync.exit

if.end.i:                                         ; preds = %if.then15
  %time_sync.i = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 2
  %12 = ptrtoint ptr %time_sync.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %time_sync.i, align 8
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %time_sync.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %inc.i)
  %cmp1.i = icmp ult i32 %inc.i, 60
  br i1 %cmp1.i, label %if.end.i.solo_timer_sync.exit_crit_edge, label %if.end3.i

if.end.i.solo_timer_sync.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %solo_timer_sync.exit

if.end3.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %time_sync.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %time_sync.i, align 8
  %15 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 3052
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !163
  %18 = call i32 @llvm.bswap.i32(i32 %17) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !164
  %19 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %20, i32 3048
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.i) #11, !srcloc !163
  %22 = call i32 @llvm.bswap.i32(i32 %21) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !164
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #11
  %23 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ts.i, align 8
  %conv.i = trunc i64 %24 to i32
  %sub.i = sub i32 %conv.i, %18
  %mul.i = mul i32 %sub.i, 1000000
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %25 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %26, 1000
  %sub6.i = sub i32 %div.i, %22
  %add.i = add i32 %mul.i, %sub6.i
  %27 = add i32 %add.i, -1001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2001, i32 %27)
  %28 = icmp ult i32 %27, -2001
  br i1 %28, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i.i) #11
  %29 = call ptr @memset(ptr %ts.i.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i.i) #11
  %30 = ptrtoint ptr %ts.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ts.i.i, align 8
  %conv.i.i = trunc i64 %31 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i.i) #11
  %32 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %val.i.i.i, align 2, !annotation !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  call void @arm_heavy_mb() #11
  %33 = call i32 @llvm.bswap.i32(i32 %conv.i.i) #11
  %34 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %35, i32 3052
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %33) #11, !srcloc !167
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 8
  %call.i.i.i = call i32 @pci_read_config_word(ptr noundef %37, i32 noundef 6, ptr noundef nonnull %val.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i.i) #11
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tv_nsec.i.i, align 8
  %div.i.i = udiv i32 %39, 1000
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i2.i.i) #11
  %40 = ptrtoint ptr %val.i2.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -1, ptr %val.i2.i.i, align 2, !annotation !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  call void @arm_heavy_mb() #11
  %41 = call i32 @llvm.bswap.i32(i32 %div.i.i) #11
  %42 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %43, i32 3048
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %41) #11, !srcloc !167
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 8
  %call.i5.i.i = call i32 @pci_read_config_word(ptr noundef %45, i32 noundef 6, ptr noundef nonnull %val.i2.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i2.i.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i.i) #11
  br label %solo_timer_sync.exit

if.else.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not.i = icmp eq i32 %add.i, 0
  br i1 %tobool.not.i, label %if.else.i.solo_timer_sync.exit_crit_edge, label %if.then12.i

if.else.i.solo_timer_sync.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %solo_timer_sync.exit

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %usec_lsb13.i = getelementptr inbounds %struct.solo_dev, ptr %data, i32 0, i32 3
  %46 = ptrtoint ptr %usec_lsb13.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %usec_lsb13.i, align 4
  %div14.neg.lhs.trunc.i = trunc i32 %add.i to i16
  %div14.neg52.i = sdiv i16 %div14.neg.lhs.trunc.i, -4
  %div14.neg.sext.i = sext i16 %div14.neg52.i to i32
  %sub15.i = add i32 %47, %div14.neg.sext.i
  %48 = call i32 @llvm.smin.i32(i32 %sub15.i, i32 255) #11
  %49 = call i32 @llvm.smax.i32(i32 %48, i32 0) #11
  %50 = ptrtoint ptr %usec_lsb13.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %usec_lsb13.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #11
  %51 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -1, ptr %val.i.i, align 2, !annotation !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  call void @arm_heavy_mb() #11
  %52 = call i32 @llvm.bswap.i32(i32 %49) #11
  %53 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i51.i = getelementptr i8, ptr %54, i32 3360
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i, i32 %52) #11, !srcloc !167
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %56, i32 noundef 6, ptr noundef nonnull %val.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #11
  br label %solo_timer_sync.exit

solo_timer_sync.exit:                             ; preds = %if.then12.i, %if.else.i.solo_timer_sync.exit_crit_edge, %if.then11.i, %if.end.i.solo_timer_sync.exit_crit_edge, %if.then15.solo_timer_sync.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #11
  br label %if.end16

if.end16:                                         ; preds = %solo_timer_sync.exit, %if.end12.if.end16_crit_edge
  %and17 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  call void @solo_enc_v4l2_isr(ptr noundef %data) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  %and21 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %if.then23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  call void @solo_g723_isr(ptr noundef %data) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then23 ], [ 1, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @solo_irq_on(ptr nocapture noundef %dev) unnamed_addr #5 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  %irq_mask = getelementptr inbounds %struct.solo_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_mask, align 8
  %or = or i32 %1, 1024
  store i32 %or, ptr %irq_mask, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #11
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val.i, align 2, !annotation !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @arm_heavy_mb() #11
  %3 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #11, !srcloc !167
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %7, i32 noundef 6, ptr noundef nonnull %val.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_i2c_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @solo_set_time(ptr nocapture noundef readonly %solo_dev) unnamed_addr #2 align 64 {
entry:
  %val.i2 = alloca i16, align 2
  %val.i = alloca i16, align 2
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #11
  %0 = call ptr @memset(ptr %ts, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts) #11
  %1 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ts, align 8
  %conv = trunc i64 %2 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #11
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %val.i, align 2, !annotation !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  call void @arm_heavy_mb() #11
  %4 = call i32 @llvm.bswap.i32(i32 %conv) #11
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %5 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 3052
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #11, !srcloc !167
  %7 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %solo_dev, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %8, i32 noundef 6, ptr noundef nonnull %val.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #11
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %9 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tv_nsec, align 8
  %div = udiv i32 %10, 1000
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i2) #11
  %11 = ptrtoint ptr %val.i2 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %val.i2, align 2, !annotation !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  call void @arm_heavy_mb() #11
  %12 = call i32 @llvm.bswap.i32(i32 %div) #11
  %13 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %14, i32 3048
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %12) #11, !srcloc !167
  %15 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %solo_dev, align 8
  %call.i5 = call i32 @pci_read_config_word(ptr noundef %16, i32 noundef 6, ptr noundef nonnull %val.i2) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i2) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_p2m_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_disp_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_gpio_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_tw28_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_v4l2_init(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_enc_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_enc_v4l2_init(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_g723_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @solo_sysfs_init(ptr noundef %solo_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sdram_attr1 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 53
  %dev2 = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 51
  %type = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %.str.15..str.16 = select i1 %cmp, ptr @.str.15, ptr @.str.16
  %release = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 51, i32 35
  %2 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @solo_device_release, ptr %release, align 4
  %3 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %solo_dev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %parent = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 51, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev3, ptr %parent, align 8
  %vfd = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 28
  %6 = ptrtoint ptr %vfd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vfd, align 8
  %num = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num, align 4
  %conv = zext i16 %9 to i32
  %nr_chans = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 6
  %10 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_chans, align 8
  %call6 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev2, ptr noundef nonnull @.str.17, ptr noundef nonnull %.str.15..str.16, i32 noundef %conv, i32 noundef %11) #11
  %call7 = tail call i32 @device_register(ptr noundef %dev2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %for.body.preheader, label %if.then8

for.body.preheader:                               ; preds = %entry
  %call13 = tail call i32 @device_create_file(ptr noundef %dev2, ptr noundef nonnull @solo_dev_attrs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.cond, label %for.body.preheader.if.then15_crit_edge

for.body.preheader.if.then15_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %parent, align 8
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %call13.1 = tail call i32 @device_create_file(ptr noundef %dev2, ptr noundef getelementptr inbounds ([8 x %struct.device_attribute], ptr @solo_dev_attrs, i32 0, i32 1)) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1)
  %tobool14.not.1 = icmp eq i32 %call13.1, 0
  br i1 %tobool14.not.1, label %for.cond.1, label %for.cond.if.then15_crit_edge

for.cond.if.then15_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

for.cond.1:                                       ; preds = %for.cond
  %call13.2 = tail call i32 @device_create_file(ptr noundef %dev2, ptr noundef getelementptr inbounds ([8 x %struct.device_attribute], ptr @solo_dev_attrs, i32 0, i32 2)) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.2)
  %tobool14.not.2 = icmp eq i32 %call13.2, 0
  br i1 %tobool14.not.2, label %for.cond.2, label %for.cond.1.if.then15_crit_edge

for.cond.1.if.then15_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

for.cond.2:                                       ; preds = %for.cond.1
  %call13.3 = tail call i32 @device_create_file(ptr noundef %dev2, ptr noundef getelementptr inbounds ([8 x %struct.device_attribute], ptr @solo_dev_attrs, i32 0, i32 3)) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.3)
  %tobool14.not.3 = icmp eq i32 %call13.3, 0
  br i1 %tobool14.not.3, label %for.cond.3, label %for.cond.2.if.then15_crit_edge

for.cond.2.if.then15_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

for.cond.3:                                       ; preds = %for.cond.2
  %call13.4 = tail call i32 @device_create_file(ptr noundef %dev2, ptr noundef getelementptr inbounds ([8 x %struct.device_attribute], ptr @solo_dev_attrs, i32 0, i32 4)) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.4)
  %tobool14.not.4 = icmp eq i32 %call13.4, 0
  br i1 %tobool14.not.4, label %for.cond.4, label %for.cond.3.if.then15_crit_edge

for.cond.3.if.then15_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

for.cond.4:                                       ; preds = %for.cond.3
  %call13.5 = tail call i32 @device_create_file(ptr noundef %dev2, ptr noundef getelementptr inbounds ([8 x %struct.device_attribute], ptr @solo_dev_attrs, i32 0, i32 5)) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.5)
  %tobool14.not.5 = icmp eq i32 %call13.5, 0
  br i1 %tobool14.not.5, label %for.cond.5, label %for.cond.4.if.then15_crit_edge

for.cond.4.if.then15_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

for.cond.5:                                       ; preds = %for.cond.4
  %call13.6 = tail call i32 @device_create_file(ptr noundef %dev2, ptr noundef getelementptr inbounds ([8 x %struct.device_attribute], ptr @solo_dev_attrs, i32 0, i32 6)) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.6)
  %tobool14.not.6 = icmp eq i32 %call13.6, 0
  br i1 %tobool14.not.6, label %for.cond.6, label %for.cond.5.if.then15_crit_edge

for.cond.5.if.then15_crit_edge:                   ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

for.cond.6:                                       ; preds = %for.cond.5
  %call13.7 = tail call i32 @device_create_file(ptr noundef %dev2, ptr noundef getelementptr inbounds ([8 x %struct.device_attribute], ptr @solo_dev_attrs, i32 0, i32 7)) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.7)
  %tobool14.not.7 = icmp eq i32 %call13.7, 0
  br i1 %tobool14.not.7, label %for.cond.7, label %for.cond.6.if.then15_crit_edge

for.cond.6.if.then15_crit_edge:                   ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

for.cond.7:                                       ; preds = %for.cond.6
  %key = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 53, i32 0, i32 3
  %13 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @solo_sysfs_init.__key, ptr %key, align 4
  %14 = ptrtoint ptr %sdram_attr1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.18, ptr %sdram_attr1, align 4
  %mode = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 53, i32 0, i32 1
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 288, ptr %mode, align 4
  %read = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 53, i32 4
  %16 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sdram_show, ptr %read, align 4
  %sdram_size = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 52
  %17 = ptrtoint ptr %sdram_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sdram_size, align 8
  %size = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 53, i32 1
  %19 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %size, align 4
  %call19 = tail call i32 @device_create_bin_file(ptr noundef %dev2, ptr noundef %sdram_attr1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.cond.7.cleanup_crit_edge, label %if.then21

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then15:                                        ; preds = %for.cond.6.if.then15_crit_edge, %for.cond.5.if.then15_crit_edge, %for.cond.4.if.then15_crit_edge, %for.cond.3.if.then15_crit_edge, %for.cond.2.if.then15_crit_edge, %for.cond.1.if.then15_crit_edge, %for.cond.if.then15_crit_edge, %for.body.preheader.if.then15_crit_edge
  tail call void @device_unregister(ptr noundef %dev2) #11
  br label %cleanup

if.then21:                                        ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @device_unregister(ptr noundef %dev2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.then15, %for.cond.7.cleanup_crit_edge, %if.then8
  %retval.0 = phi i32 [ -12, %if.then8 ], [ -12, %if.then15 ], [ -12, %if.then21 ], [ 0, %for.cond.7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_solo_dev(ptr noundef %solo_dev) unnamed_addr #2 align 64 {
entry:
  %val.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %solo_dev, align 8
  %parent = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 51, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 51
  tail call void @device_unregister(ptr noundef %dev) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reg_base = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @solo_g723_exit(ptr noundef %solo_dev) #11
  tail call void @solo_enc_v4l2_exit(ptr noundef %solo_dev) #11
  tail call void @solo_enc_exit(ptr noundef %solo_dev) #11
  tail call void @solo_v4l2_exit(ptr noundef %solo_dev) #11
  tail call void @solo_disp_exit(ptr noundef %solo_dev) #11
  tail call void @solo_gpio_exit(ptr noundef %solo_dev) #11
  tail call void @solo_p2m_exit(ptr noundef %solo_dev) #11
  tail call void @solo_i2c_exit(ptr noundef %solo_dev) #11
  %irq_mask.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %irq_mask.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #11
  %7 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %val.i.i, align 2, !annotation !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !167
  %10 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %solo_dev, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %11, i32 noundef 6, ptr noundef nonnull %val.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #11
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call = call ptr @free_irq(i32 noundef %13, ptr noundef %solo_dev) #11
  %14 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base, align 4
  call void @pci_iounmap(ptr noundef %1, ptr noundef %15) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  call void @pci_release_regions(ptr noundef %1) #11
  call void @pci_disable_device(ptr noundef %1) #11
  %v4l2_dev = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 10
  call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #11
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %driver_data.i.i, align 4
  call void @kfree(ptr noundef %solo_dev) #11
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @solo_p2m_error_isr(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @solo_p2m_isr(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_i2c_isr(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @solo_video_in_isr(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @solo_enc_v4l2_isr(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @solo_g723_isr(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @solo_device_release(ptr nocapture noundef %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdram_show(ptr nocapture noundef readnone %file, ptr noundef %kobj, ptr nocapture noundef readnone %a, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sdram_size = getelementptr i8, ptr %kobj, i32 928
  %0 = ptrtoint ptr %sdram_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdram_size, align 8
  %conv = sext i32 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %off)
  %cmp.not = icmp sgt i64 %conv, %off
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %kobj, i32 -4480
  %conv2 = zext i32 %count to i64
  %add = add i64 %conv2, %off
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp4 = icmp sgt i64 %add, %conv
  %2 = trunc i64 %off to i32
  %conv8 = sub i32 %1, %2
  %count.addr.0 = select i1 %cmp4, i32 %conv8, i32 %count
  %call11 = tail call i32 @solo_p2m_dma(ptr noundef %add.ptr, i32 noundef 0, ptr noundef %buf, i32 noundef %2, i32 noundef %count.addr.0, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  %spec.select = select i1 %tobool.not, i32 %count.addr.0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -4480
  %0 = load i32, ptr @full_eeprom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %cond = select i1 %tobool.not, i32 64, i32 128
  %cond2 = select i1 %tobool.not, i32 32, i32 0
  %div7 = lshr exact i32 %cond, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond2, i32 %div7)
  %cmp8 = icmp ult i32 %cond2, %div7
  br i1 %cmp8, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %cond2, %entry.for.body_crit_edge ]
  %call = tail call zeroext i16 @solo_eeprom_read(ptr noundef %add.ptr, i32 noundef %i.09) #11
  %arrayidx = getelementptr i16, ptr %buf, i32 %i.09
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %call, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %div7
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -4480
  %and = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = load i32, ptr @full_eeprom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool1.not = icmp eq i32 %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count)
  %cmp = icmp ugt i32 %count, 64
  %or.cond = and i1 %cmp, %tobool1.not
  br i1 %or.cond, label %if.end.if.end14.sink.split_crit_edge, label %if.else

if.end.if.end14.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool6.not = icmp ne i32 %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %count)
  %cmp8 = icmp ugt i32 %count, 128
  %or.cond39 = and i1 %cmp8, %tobool6.not
  br i1 %or.cond39, label %if.else.if.end14.sink.split_crit_edge, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.else.if.end14.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.else.if.end14.sink.split_crit_edge, %if.end.if.end14.sink.split_crit_edge
  %.str.33.sink = phi ptr [ @.str.30, %if.end.if.end14.sink.split_crit_edge ], [ @.str.33, %if.else.if.end14.sink.split_crit_edge ]
  %count.addr.0.ph = phi i32 [ 64, %if.end.if.end14.sink.split_crit_edge ], [ 128, %if.else.if.end14.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull %.str.33.sink) #15
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.else.if.end14_crit_edge
  %count.addr.0 = phi i32 [ %count, %if.else.if.end14_crit_edge ], [ %count.addr.0.ph, %if.end14.sink.split ]
  %call = tail call i32 @solo_eeprom_ewen(ptr noundef %add.ptr, i32 noundef 1) #11
  %1 = load i32, ptr @full_eeprom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool15.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool15.not, i32 32, i32 0
  %div38 = lshr i32 %count.addr.0, 1
  %cond1741 = select i1 %tobool15.not, i32 32, i32 64
  %2 = tail call i32 @llvm.umin.i32(i32 %cond1741, i32 %div38)
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %2)
  %cmp2142 = icmp ult i32 %cond, %2
  br i1 %cmp2142, label %if.end14.for.body_crit_edge, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end14.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %cond, %if.end14.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %buf, i32 %i.043
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %call22 = tail call i32 @solo_eeprom_write(ptr noundef %add.ptr, i32 noundef %i.043, i16 noundef zeroext %4) #11
  %inc = add nuw nsw i32 %i.043, 1
  %5 = load i32, ptr @full_eeprom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool16.not = icmp eq i32 %5, 0
  %cond17 = select i1 %tobool16.not, i32 32, i32 64
  %6 = tail call i32 @llvm.umin.i32(i32 %cond17, i32 %div38)
  %cmp21 = icmp ult i32 %inc, %6
  br i1 %cmp21, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end14.for.end_crit_edge
  %call23 = tail call i32 @solo_eeprom_ewen(ptr noundef %add.ptr, i32 noundef 0) #11
  ret i32 %count.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p2m_timeout_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %p2m_jiffies = getelementptr i8, ptr %dev, i32 -416
  %0 = ptrtoint ptr %p2m_jiffies to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p2m_jiffies, align 8
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %1) #11
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %call)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p2m_timeout_store(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %ms = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ms) #11
  %0 = ptrtoint ptr %ms to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ms, align 4, !annotation !165
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %ms) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %ms to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %2)
  %cmp1 = icmp ugt i32 %2, 200
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.else.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %2) #11
  %p2m_jiffies = getelementptr i8, ptr %dev, i32 -416
  %3 = ptrtoint ptr %p2m_jiffies to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call2.i, ptr %p2m_jiffies, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.else.i ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ms) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p2m_timeouts_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %p2m_timeouts = getelementptr i8, ptr %dev, i32 -412
  %0 = ptrtoint ptr %p2m_timeouts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p2m_timeouts, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdram_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sdram_size = getelementptr i8, ptr %dev, i32 928
  %0 = ptrtoint ptr %sdram_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdram_size, align 8
  %shr = ashr i32 %1, 20
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %shr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw28xx_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tw2815 = getelementptr i8, ptr %dev, i32 -3962
  %0 = ptrtoint ptr %tw2815 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tw2815, align 2
  %conv337 = zext i8 %1 to i32
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %conv337) #11
  %tw2864 = getelementptr i8, ptr %dev, i32 -3963
  %2 = ptrtoint ptr %tw2864 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tw2864, align 1
  %conv684 = zext i8 %3 to i32
  %call.i1159 = tail call i32 @__sw_hweight32(i32 noundef %conv684) #11
  %tw2865 = getelementptr i8, ptr %dev, i32 -3964
  %4 = ptrtoint ptr %tw2865 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tw2865, align 4
  %conv1034 = zext i8 %5 to i32
  %call.i1160 = tail call i32 @__sw_hweight32(i32 noundef %conv1034) #11
  %call1038 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %call.i, i32 noundef %call.i1159, i32 noundef %call.i1160)
  ret i32 %call1038
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_map_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base.i = getelementptr i8, ptr %dev, i32 -4460
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !163
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !164
  %and = and i32 %3, 31
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.39, i32 noundef %and)
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %call1
  %shr = lshr i32 %3, 5
  %and3 = and i32 %shr, 31
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr2, ptr noundef nonnull @.str.40, i32 noundef %and3)
  %add.ptr5 = getelementptr i8, ptr %add.ptr2, i32 %call4
  %shr6 = lshr i32 %3, 10
  %and7 = and i32 %shr6, 31
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5, ptr noundef nonnull @.str.41, i32 noundef %and7)
  %add.ptr9 = getelementptr i8, ptr %add.ptr5, i32 %call8
  %shr10 = lshr i32 %3, 15
  %and11 = and i32 %shr10, 31
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr9, ptr noundef nonnull @.str.42, i32 noundef %and11)
  %add.ptr13 = getelementptr i8, ptr %add.ptr9, i32 %call12
  %shr14 = lshr i32 %3, 20
  %and15 = and i32 %shr14, 31
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr13, ptr noundef nonnull @.str.43, i32 noundef %and15)
  %add.ptr17 = getelementptr i8, ptr %add.ptr13, i32 %call16
  %shr18 = lshr i32 %3, 25
  %and19 = and i32 %shr18, 31
  %call20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17, ptr noundef nonnull @.str.44, i32 noundef %and19)
  %add.ptr21 = getelementptr i8, ptr %add.ptr17, i32 %call20
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %5, i32 260
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i120) #11, !srcloc !163
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !164
  %and23 = and i32 %7, 31
  %call24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr21, ptr noundef nonnull @.str.45, i32 noundef %and23)
  %add.ptr25 = getelementptr i8, ptr %add.ptr21, i32 %call24
  %shr26 = lshr i32 %7, 5
  %and27 = and i32 %shr26, 31
  %call28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr25, ptr noundef nonnull @.str.46, i32 noundef %and27)
  %add.ptr29 = getelementptr i8, ptr %add.ptr25, i32 %call28
  %shr30 = lshr i32 %7, 10
  %and31 = and i32 %shr30, 31
  %call32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr29, ptr noundef nonnull @.str.47, i32 noundef %and31)
  %add.ptr33 = getelementptr i8, ptr %add.ptr29, i32 %call32
  %shr34 = lshr i32 %7, 15
  %and35 = and i32 %shr34, 31
  %call36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr33, ptr noundef nonnull @.str.48, i32 noundef %and35)
  %add.ptr37 = getelementptr i8, ptr %add.ptr33, i32 %call36
  %shr38 = lshr i32 %7, 20
  %and39 = and i32 %shr38, 31
  %call40 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr37, ptr noundef nonnull @.str.49, i32 noundef %and39)
  %add.ptr41 = getelementptr i8, ptr %add.ptr37, i32 %call40
  %shr42 = lshr i32 %7, 25
  %and43 = and i32 %shr42, 31
  %call44 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr41, ptr noundef nonnull @.str.50, i32 noundef %and43)
  %add.ptr45 = getelementptr i8, ptr %add.ptr41, i32 %call44
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %9, i32 264
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #11, !srcloc !163
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !164
  %and47 = and i32 %11, 31
  %call48 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr45, ptr noundef nonnull @.str.51, i32 noundef %and47)
  %add.ptr49 = getelementptr i8, ptr %add.ptr45, i32 %call48
  %shr50 = lshr i32 %11, 5
  %and51 = and i32 %shr50, 31
  %call52 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr49, ptr noundef nonnull @.str.52, i32 noundef %and51)
  %add.ptr53 = getelementptr i8, ptr %add.ptr49, i32 %call52
  %shr54 = lshr i32 %11, 10
  %and55 = and i32 %shr54, 31
  %call56 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr53, ptr noundef nonnull @.str.53, i32 noundef %and55)
  %add.ptr57 = getelementptr i8, ptr %add.ptr53, i32 %call56
  %shr58 = lshr i32 %11, 15
  %and59 = and i32 %shr58, 31
  %call60 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr57, ptr noundef nonnull @.str.54, i32 noundef %and59)
  %add.ptr61 = getelementptr i8, ptr %add.ptr57, i32 %call60
  %shr62 = lshr i32 %11, 20
  %and63 = and i32 %shr62, 31
  %call64 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr61, ptr noundef nonnull @.str.55, i32 noundef %and63)
  %add.ptr65 = getelementptr i8, ptr %add.ptr61, i32 %call64
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr65 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intervals_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fps1 = getelementptr i8, ptr %dev, i32 -72
  %0 = ptrtoint ptr %fps1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fps1, align 8
  %conv = zext i8 %1 to i32
  %nr_chans = getelementptr i8, ptr %dev, i32 -4456
  %2 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_chans, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp16 = icmp sgt i32 %3, 0
  br i1 %cmp16, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %v4l2_enc = getelementptr i8, ptr %dev, i32 -156
  %reg_base.i = getelementptr i8, ptr %dev, i32 -4460
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %out.017 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr5, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr %v4l2_enc, i32 0, i32 %i.018
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %interval = getelementptr inbounds %struct.solo_enc_dev, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %interval to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %interval, align 1
  %conv3 = zext i8 %7 to i32
  %mul = shl i32 %i.018, 2
  %add = add i32 %mul, 1216
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !163
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !164
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %out.017, ptr noundef nonnull @.str.56, i32 noundef %i.018, i32 noundef %conv3, i32 noundef %conv, i32 noundef %11)
  %add.ptr5 = getelementptr i8, ptr %out.017, i32 %call4
  %inc = add nuw nsw i32 %i.018, 1
  %12 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_chans, align 8
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %out.0.lcssa = phi ptr [ %buf, %entry.for.end_crit_edge ], [ %add.ptr5, %for.body.for.end_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %out.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdram_offsets_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.57, i32 noundef 0, i32 noundef 4718592)
  %add.ptr1 = getelementptr i8, ptr %buf, i32 %call
  %type = getelementptr i8, ptr %dev, i32 -4476
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %cond = select i1 %cmp, i32 65536, i32 131072
  %mul = shl nuw nsw i32 %cond, 5
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr1, ptr noundef nonnull @.str.58, i32 noundef 4718592, i32 noundef %mul, i32 noundef %cond, i32 noundef 32)
  %add.ptr13 = getelementptr i8, ptr %add.ptr1, i32 %call12
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp15 = icmp eq i32 %3, 0
  %add = select i1 %cmp15, i32 6815744, i32 8912896
  %call18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr13, ptr noundef nonnull @.str.59, i32 noundef %add, i32 noundef 524288)
  %add.ptr19 = getelementptr i8, ptr %add.ptr13, i32 %call18
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp21 = icmp eq i32 %5, 0
  %add25 = select i1 %cmp21, i32 7340032, i32 9437184
  %call26 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr19, ptr noundef nonnull @.str.60, i32 noundef %add25, i32 noundef 65536)
  %add.ptr27 = getelementptr i8, ptr %add.ptr19, i32 %call26
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp29 = icmp eq i32 %7, 0
  %add34 = select i1 %cmp29, i32 7405568, i32 9502720
  %sdram_size = getelementptr i8, ptr %dev, i32 928
  %8 = ptrtoint ptr %sdram_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sdram_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554433, i32 %9)
  %cmp35 = icmp slt i32 %9, 33554433
  %mul38 = select i1 %cmp35, i32 5898240, i32 20054016
  %div44 = udiv i32 %mul38, 1179648
  %call45 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr27, ptr noundef nonnull @.str.61, i32 noundef %add34, i32 noundef %mul38, i32 noundef 1179648, i32 noundef %div44)
  %add.ptr46 = getelementptr i8, ptr %add.ptr27, i32 %call45
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp48 = icmp eq i32 %11, 0
  %add53 = select i1 %cmp48, i32 7405568, i32 9502720
  %12 = ptrtoint ptr %sdram_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sdram_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554433, i32 %13)
  %cmp55 = icmp slt i32 %13, 33554433
  %mul58 = select i1 %cmp55, i32 5898240, i32 20054016
  %add59 = add nuw nsw i32 %mul58, %add53
  %nr_chans = getelementptr i8, ptr %dev, i32 -4456
  %14 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_chans, align 8
  %mul61 = mul i32 %15, 2621440
  %div65 = sdiv i32 %mul61, 1310720
  %call66 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr46, ptr noundef nonnull @.str.62, i32 noundef %add59, i32 noundef %mul61, i32 noundef 1310720, i32 noundef %div65)
  %add.ptr67 = getelementptr i8, ptr %add.ptr46, i32 %call66
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp69 = icmp eq i32 %17, 0
  %add74 = select i1 %cmp69, i32 7405568, i32 9502720
  %18 = ptrtoint ptr %sdram_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sdram_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554433, i32 %19)
  %cmp76 = icmp slt i32 %19, 33554433
  %mul79 = select i1 %cmp76, i32 5898240, i32 20054016
  %add80 = add nuw nsw i32 %mul79, %add74
  %20 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_chans, align 8
  %mul83 = mul i32 %21, 2621440
  %add84 = add i32 %add80, %mul83
  %mul86 = shl i32 %21, 19
  %22 = add i32 %mul86, %add84
  %sub107 = sub i32 %19, %22
  %23 = tail call i32 @llvm.smin.i32(i32 %sub107, i32 16711680)
  %24 = tail call i32 @llvm.smax.i32(i32 %mul86, i32 %23)
  %call117 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr67, ptr noundef nonnull @.str.63, i32 noundef %add84, i32 noundef %24)
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp120 = icmp eq i32 %26, 0
  %add125 = select i1 %cmp120, i32 7405568, i32 9502720
  %27 = ptrtoint ptr %sdram_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sdram_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554433, i32 %28)
  %cmp127 = icmp slt i32 %28, 33554433
  %mul130 = select i1 %cmp127, i32 5898240, i32 20054016
  %add131 = add nuw nsw i32 %mul130, %add125
  %29 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_chans, align 8
  %mul134 = mul i32 %30, 2621440
  %add135 = add i32 %add131, %mul134
  %mul137 = shl i32 %30, 19
  %31 = add i32 %mul137, %add135
  %sub159 = sub i32 %28, %31
  %32 = tail call i32 @llvm.smin.i32(i32 %sub159, i32 16711680)
  %33 = tail call i32 @llvm.smax.i32(i32 %mul137, i32 %32)
  %add229 = add i32 %33, %add135
  %sub230 = sub i32 %28, %add229
  %34 = tail call i32 @llvm.smin.i32(i32 %sub230, i32 16711680)
  %35 = tail call i32 @llvm.smax.i32(i32 %mul137, i32 %34)
  %add.ptr118 = getelementptr i8, ptr %add.ptr67, i32 %call117
  %call243 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr118, ptr noundef nonnull @.str.64, i32 noundef %add229, i32 noundef %35)
  %add.ptr244 = getelementptr i8, ptr %add.ptr118, i32 %call243
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr244 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @solo_eeprom_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_eeprom_ewen(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_eeprom_write(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_p2m_dma(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @solo_g723_exit(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @solo_enc_v4l2_exit(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @solo_enc_exit(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @solo_v4l2_exit(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @solo_disp_exit(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @solo_gpio_exit(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @solo_p2m_exit(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @solo_i2c_exit(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !29, !31, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !{ptr @__UNIQUE_ID_description300, !1, !"__UNIQUE_ID_description300", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_author301, !3, !"__UNIQUE_ID_author301", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_version302, !5, !"__UNIQUE_ID_version302", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 27, i32 1}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__modver_attr, !5, !"__modver_attr", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_file303, !11, !"__UNIQUE_ID_file303", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 28, i32 1}
!12 = !{ptr @__UNIQUE_ID_license304, !11, !"__UNIQUE_ID_license304", i1 false, i1 false}
!13 = !{ptr @__param_video_nr, !14, !"__param_video_nr", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 31, i32 1}
!15 = !{ptr @__UNIQUE_ID_video_nrtype305, !14, !"__UNIQUE_ID_video_nrtype305", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_video_nr306, !17, !"__UNIQUE_ID_video_nr306", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 32, i32 1}
!18 = !{ptr @__param_full_eeprom, !19, !"__param_full_eeprom", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 35, i32 1}
!20 = !{ptr @__UNIQUE_ID_full_eepromtype307, !19, !"__UNIQUE_ID_full_eepromtype307", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_full_eeprom308, !22, !"__UNIQUE_ID_full_eeprom308", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 36, i32 1}
!23 = !{ptr @__initcall__kmod_solo6x10__327_678_solo_pci_driver_init6, !24, !"__initcall__kmod_solo6x10__327_678_solo_pci_driver_init6", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 678, i32 1}
!25 = !{ptr @__exitcall_solo_pci_driver_exit, !24, !"__exitcall_solo_pci_driver_exit", i1 false, i1 false}
!26 = !{ptr @full_eeprom, !27, !"full_eeprom", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 34, i32 12}
!28 = !{ptr @__param_str_video_nr, !14, !"__param_str_video_nr", i1 false, i1 false}
!29 = !{ptr @video_nr, !30, !"video_nr", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 30, i32 17}
!31 = !{ptr @__param_str_full_eeprom, !19, !"__param_str_full_eeprom", i1 false, i1 false}
!32 = !{ptr @solo_pci_driver, !33, !"solo_pci_driver", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 671, i32 26}
!34 = !{ptr @solo_id_table, !35, !"solo_id_table", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 641, i32 35}
!36 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 459, i32 3}
!38 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @solo_pci_probe._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @solo_pci_probe._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 461, i32 3}
!46 = !{ptr @solo_pci_probe._entry.8, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @solo_pci_probe._entry_ptr.10, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 504, i32 3}
!50 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @solo_pci_probe._entry.11, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @solo_pci_probe._entry_ptr.14, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 412, i32 12}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 414, i32 12}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 419, i32 20}
!59 = !{ptr @solo_sysfs_init.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 434, i32 2}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 435, i32 26}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 389, i32 2}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 390, i32 2}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 391, i32 2}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 392, i32 2}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 393, i32 2}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 394, i32 2}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 395, i32 2}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 396, i32 2}
!79 = !{ptr @solo_dev_attrs, !80, !"solo_dev_attrs", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 388, i32 38}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 168, i32 3}
!83 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @eeprom_store._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @eeprom_store._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 171, i32 3}
!88 = !{ptr @eeprom_store._entry.29, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @eeprom_store._entry_ptr.31, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 174, i32 3}
!92 = !{ptr @eeprom_store._entry.32, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @eeprom_store._entry_ptr.34, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 295, i32 22}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 211, i32 22}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 221, i32 22}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 231, i32 22}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 247, i32 22}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 248, i32 22}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 249, i32 22}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 250, i32 22}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 251, i32 22}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 252, i32 22}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 255, i32 22}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 256, i32 22}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 257, i32 22}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 258, i32 22}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 259, i32 22}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 260, i32 22}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 263, i32 22}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 264, i32 22}
!130 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 265, i32 22}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 266, i32 22}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 267, i32 22}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 309, i32 23}
!138 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 325, i32 22}
!140 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 329, i32 22}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 336, i32 22}
!144 = !{ptr @.str.60, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 340, i32 22}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 344, i32 22}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 350, i32 22}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 356, i32 22}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/solo6x10/solo6x10-core.c", i32 360, i32 22}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{i64 4995829}
!164 = !{i64 2156765032}
!165 = !{!"auto-init"}
!166 = !{i64 2156765423}
!167 = !{i64 4995411}
