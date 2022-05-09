; ModuleID = '/llk/IR_all_yes/drivers/net/can/softing/softing_main.c_pt.bc'
source_filename = "../drivers/net/can/softing/softing_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.softing = type { ptr, ptr, [2 x ptr], %struct.spinlock, i64, i64, %struct.anon.147, %struct.anon.148, %struct.anon.149, ptr, i32, i32, %struct.anon.150 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.147 = type { i32, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.anon.148 = type { i32, i32, i32, i32 }
%struct.anon.149 = type { i32, i32 }
%struct.anon.150 = type { i16, i16, i16, i16, [2 x i16], i32 }
%struct.softing_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.anon.146, %struct.anon.146, %struct.anon.146, ptr, ptr }
%struct.anon.146 = type { i32, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.145, i8, i8, i8, [8 x i8] }
%union.anon.145 = type { i8 }

@softing_enable_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 441, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"request_threaded_irq(%u) failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"softing_enable_irq\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/can/softing/softing_main.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@softing_enable_irq._entry_ptr = internal global ptr @softing_enable_irq._entry, section ".printk_index", align 4
@__initcall__kmod_softing__461_858_softing_driver_init6 = internal global ptr @softing_driver_init, section ".initcall6.init", align 4
@softing_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @softing_pdev_probe, ptr @softing_pdev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_softing_driver_exit = internal global ptr @softing_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias462 = internal constant [31 x i8] c"softing.alias=platform:softing\00", section ".modinfo", align 1
@__UNIQUE_ID_description463 = internal constant [45 x i8] c"softing.description=Softing DPRAM CAN driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author464 = internal constant [54 x i8] c"softing.author=Kurt Van Dijck <kurt.van.dijck@eia.be>\00", section ".modinfo", align 1
@__UNIQUE_ID_file465 = internal constant [45 x i8] c"softing.file=drivers/net/can/softing/softing\00", section ".modinfo", align 1
@__UNIQUE_ID_license466 = internal constant [23 x i8] c"softing.license=GPL v2\00", section ".modinfo", align 1
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"softing\00", [24 x i8] zeroinitializer }, align 32
@softing_pdev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 761, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"softing_pdev_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@softing_pdev_probe._entry_ptr = internal global ptr @softing_pdev_probe._entry, section ".printk_index", align 4
@softing_pdev_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.2, i32 765, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%u nets??\0A\00", [21 x i8] zeroinitializer }, align 32
@softing_pdev_probe._entry_ptr.11 = internal global ptr @softing_pdev_probe._entry.9, section ".printk_index", align 4
@softing_pdev_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&card->fw.lock\00", [17 x i8] zeroinitializer }, align 32
@softing_pdev_probe.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&card->spin\00", [20 x i8] zeroinitializer }, align 32
@softing_pdev_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.2, i32 786, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dpram ioremap failed\0A\00", [42 x i8] zeroinitializer }, align 32
@softing_pdev_probe._entry_ptr.17 = internal global ptr @softing_pdev_probe._entry.15, section ".printk_index", align 4
@softing_pdev_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.2, i32 797, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"failed to boot\0A\00", [16 x i8] zeroinitializer }, align 32
@softing_pdev_probe._entry_ptr.20 = internal global ptr @softing_pdev_probe._entry.18, section ".printk_index", align 4
@softing_pdev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @softing_pdev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@softing_pdev_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.7, ptr @.str.2, i32 806, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sysfs failed\0A\00", [18 x i8] zeroinitializer }, align 32
@softing_pdev_probe._entry_ptr.23 = internal global ptr @softing_pdev_probe._entry.21, section ".printk_index", align 4
@softing_pdev_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.7, ptr @.str.2, i32 814, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to make can[%i]\00", [41 x i8] zeroinitializer }, align 32
@softing_pdev_probe._entry_ptr.26 = internal global ptr @softing_pdev_probe._entry.24, section ".printk_index", align 4
@softing_pdev_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.7, ptr @.str.2, i32 826, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register can[%i]\0A\00", [36 x i8] zeroinitializer }, align 32
@softing_pdev_probe._entry_ptr.29 = internal global ptr @softing_pdev_probe._entry.27, section ".printk_index", align 4
@softing_pdev_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.7, ptr @.str.2, i32 830, ptr @.str.32, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s ready.\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@softing_pdev_probe._entry_ptr.33 = internal global ptr @softing_pdev_probe._entry.30, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@softing_card_boot.stream = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", [16 x i8] zeroinitializer }, align 32
@softing_card_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 504, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dpram failed at 0x%04x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"softing_card_boot\00", [46 x i8] zeroinitializer }, align 32
@softing_card_boot._entry_ptr = internal global ptr @softing_card_boot._entry, section ".printk_index", align 4
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"card boot\00", [22 x i8] zeroinitializer }, align 32
@softing_pdev_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @dev_attr_serial, ptr @dev_attr_firmware, ptr @dev_attr_firmware_version, ptr @dev_attr_hardware, ptr @dev_attr_hardware_version, ptr @dev_attr_license, ptr null], [36 x i8] zeroinitializer }, align 32
@dev_attr_serial = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_serial, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_firmware = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_firmware, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_firmware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_firmware_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hardware = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_hardware, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hardware_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_hardware_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_license = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_license, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firmware\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"firmware_version\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hardware\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hardware_version\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"license\00", [24 x i8] zeroinitializer }, align 32
@softing_netdev_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 638, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"alloc_candev failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"softing_netdev_create\00", [42 x i8] zeroinitializer }, align 32
@softing_netdev_create._entry_ptr = internal global ptr @softing_netdev_create._entry, section ".printk_index", align 4
@softing_btr_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"softing\00\00\00\00\00\00\00\00\00", i32 1, i32 16, i32 1, i32 8, i32 4, i32 1, i32 32, i32 1 }, [48 x i8] zeroinitializer }, align 32
@softing_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @softing_netdev_open, ptr @softing_netdev_stop, ptr @softing_netdev_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@softing_netdev_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 667, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"register failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"softing_netdev_register\00", [40 x i8] zeroinitializer }, align 32
@softing_netdev_register._entry_ptr = internal global ptr @softing_netdev_register._entry, section ".printk_index", align 4
@netdev_sysfs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @netdev_sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sysfs group failed\0A\00", [44 x i8] zeroinitializer }, align 32
@netdev_sysfs_attrs = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_chip, ptr @dev_attr_output, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_chip = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_chip, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_output = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_output, ptr @store_output }, [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"chip\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%i\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02x\0A\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 439, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"softing_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 850, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 852, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 761, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 765, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 775, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 776, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 786, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 797, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [19 x i8] c"softing_pdev_group\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 721, i32 37 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 806, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 814, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 825, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 830, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 476, i32 23 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 504, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 525, i32 44 }
@___asan_gen_.167 = private unnamed_addr constant [19 x i8] c"softing_pdev_attrs\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 711, i32 26 }
@___asan_gen_.170 = private unnamed_addr constant [16 x i8] c"dev_attr_serial\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [18 x i8] c"dev_attr_firmware\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [26 x i8] c"dev_attr_firmware_version\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [18 x i8] c"dev_attr_hardware\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [26 x i8] c"dev_attr_hardware_version\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"dev_attr_license\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 704, i32 1 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 705, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 706, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 707, i32 1 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 708, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 709, i32 1 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 638, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [18 x i8] c"softing_btr_const\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 617, i32 41 }
@___asan_gen_.224 = private unnamed_addr constant [19 x i8] c"softing_netdev_ops\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 610, i32 36 }
@___asan_gen_.228 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 104, i32 6 }
@___asan_gen_.230 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 667, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [19 x i8] c"netdev_sysfs_group\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 605, i32 37 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 671, i32 24 }
@___asan_gen_.245 = private unnamed_addr constant [19 x i8] c"netdev_sysfs_attrs\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 600, i32 38 }
@___asan_gen_.248 = private unnamed_addr constant [14 x i8] c"dev_attr_chip\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [16 x i8] c"dev_attr_output\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 597, i32 14 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 559, i32 22 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 598, i32 14 }
@___asan_gen_.263 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.264 = private constant [42 x i8] c"../drivers/net/can/softing/softing_main.c\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 568, i32 22 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_alias462, ptr @__UNIQUE_ID_author464, ptr @__UNIQUE_ID_description463, ptr @__UNIQUE_ID_file465, ptr @__UNIQUE_ID_license466, ptr @__exitcall_softing_driver_exit, ptr @__initcall__kmod_softing__461_858_softing_driver_init6, ptr @softing_card_boot._entry, ptr @softing_card_boot._entry_ptr, ptr @softing_driver_exit, ptr @softing_enable_irq._entry, ptr @softing_enable_irq._entry_ptr, ptr @softing_netdev_create._entry, ptr @softing_netdev_create._entry_ptr, ptr @softing_netdev_register._entry, ptr @softing_netdev_register._entry_ptr, ptr @softing_pdev_probe._entry, ptr @softing_pdev_probe._entry.15, ptr @softing_pdev_probe._entry.18, ptr @softing_pdev_probe._entry.21, ptr @softing_pdev_probe._entry.24, ptr @softing_pdev_probe._entry.27, ptr @softing_pdev_probe._entry.30, ptr @softing_pdev_probe._entry.9, ptr @softing_pdev_probe._entry_ptr, ptr @softing_pdev_probe._entry_ptr.11, ptr @softing_pdev_probe._entry_ptr.17, ptr @softing_pdev_probe._entry_ptr.20, ptr @softing_pdev_probe._entry_ptr.23, ptr @softing_pdev_probe._entry_ptr.26, ptr @softing_pdev_probe._entry_ptr.29, ptr @softing_pdev_probe._entry_ptr.33, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @softing_driver, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @softing_pdev_probe.__key, ptr @.str.12, ptr @softing_pdev_probe.__key.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @softing_pdev_group, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @softing_card_boot.stream, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @softing_pdev_attrs, ptr @dev_attr_serial, ptr @dev_attr_firmware, ptr @dev_attr_firmware_version, ptr @dev_attr_hardware, ptr @dev_attr_hardware_version, ptr @dev_attr_license, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @softing_btr_const, ptr @softing_netdev_ops, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @netdev_sysfs_group, ptr @.str.50, ptr @netdev_sysfs_attrs, ptr @dev_attr_chip, ptr @dev_attr_output, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_enable_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_pdev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_pdev_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_pdev_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_pdev_probe.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_pdev_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_pdev_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_pdev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_pdev_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_pdev_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_pdev_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_pdev_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_card_boot.stream to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_card_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_pdev_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_serial to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_firmware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hardware to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hardware_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_license to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_netdev_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_btr_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @softing_netdev_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_sysfs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_sysfs_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chip to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_output to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @softing_netdev_rx(ptr noundef %netdev, ptr nocapture noundef readonly %msg, i64 noundef %ktime) local_unnamed_addr #0 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #10
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !140
  %call = call ptr @alloc_can_skb(ptr noundef %netdev, ptr noundef nonnull %cf) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cf, align 4
  %3 = call ptr @memcpy(ptr %2, ptr %msg, i32 16)
  %4 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %ktime, ptr %4, align 8
  %call1 = call i32 @netif_rx(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @softing_enable_irq(ptr noundef %card, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 7
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %requested = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %requested to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requested, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool3.not = icmp eq i32 %enable, 0
  %or.cond = and i1 %tobool3.not, %tobool2.not
  br i1 %or.cond, label %if.then4, label %if.else9

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef %card) #10
  %4 = ptrtoint ptr %requested to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %requested, align 4
  br label %cleanup

if.else9:                                         ; preds = %if.else
  %or.cond45 = or i1 %tobool3.not, %tobool2.not
  br i1 %or.cond45, label %if.else9.cleanup_crit_edge, label %if.then15

if.else9.cleanup_crit_edge:                       ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.else9
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 8
  %generation = getelementptr inbounds %struct.softing_platform_data, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %generation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp sgt i32 %8, 1
  %cond = select i1 %cmp, ptr @softing_irq_v2, ptr @softing_irq_v1
  %pdev = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 1
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then15.dev_name.exit_crit_edge

if.then15.dev_name.exit_crit_edge:                ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then15.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.end.i ], [ %12, %if.then15.dev_name.exit_crit_edge ]
  %call19 = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull %cond, ptr noundef nonnull @softing_irq_thread, i32 noundef 128, ptr noundef %retval.0.i, ptr noundef %card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 4
  %dev23 = getelementptr inbounds %struct.platform_device, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev23, ptr noundef nonnull @.str, i32 noundef %18) #13
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %requested to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %requested, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end, %if.else9.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.end ], [ 0, %if.else9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softing_irq_v2(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dpram = getelementptr inbounds %struct.softing, ptr %dev_id, i32 0, i32 9
  %0 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpram, align 8
  %arrayidx = getelementptr i8, ptr %1, i32 3586
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx) #10, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  %3 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dpram, align 8
  %arrayidx2 = getelementptr i8, ptr %4, i32 3586
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx2, i8 0) #10, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp = icmp eq i8 %2, 1
  %cond = select i1 %cmp, i32 2, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softing_irq_v1(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dpram = getelementptr inbounds %struct.softing, ptr %dev_id, i32 0, i32 9
  %0 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpram, align 8
  %arrayidx = getelementptr i8, ptr %1, i32 2046
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx) #10, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  %3 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dpram, align 8
  %arrayidx2 = getelementptr i8, ptr %4, i32 2046
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx2, i8 0) #10, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %cond = select i1 %tobool.not, i32 0, i32 2
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softing_irq_thread(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %cf.i316.i = alloca ptr, align 4
  %cf.i309.i = alloca ptr, align 4
  %cf.i.i = alloca ptr, align 4
  %buf.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spin = getelementptr inbounds %struct.softing, ptr %dev_id, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %spin) #10
  %0 = getelementptr inbounds [32 x i8], ptr %buf.i, i32 0, i32 1
  %1 = getelementptr inbounds [32 x i8], ptr %buf.i, i32 0, i32 2
  %2 = getelementptr inbounds [32 x i8], ptr %buf.i, i32 0, i32 4
  %3 = getelementptr inbounds [32 x i8], ptr %buf.i, i32 0, i32 6
  %dpram.i = getelementptr inbounds %struct.softing, ptr %dev_id, i32 0, i32 9
  %arrayidx5.i = getelementptr %struct.softing, ptr %dev_id, i32 0, i32 2, i32 0
  %arrayidx5.1.i = getelementptr %struct.softing, ptr %dev_id, i32 0, i32 2, i32 1
  %tx187.i = getelementptr inbounds %struct.softing, ptr %dev_id, i32 0, i32 8
  %svc_count = getelementptr inbounds %struct.softing, ptr %dev_id, i32 0, i32 7, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %work_done.0 = phi i32 [ 0, %entry ], [ %inc2, %while.body ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #10
  %4 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  %5 = ptrtoint ptr %dpram.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dpram.i, align 8
  %arrayidx.i = getelementptr i8, ptr %6, i32 519
  %7 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.i) #10, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %while.cond.if.end15.i_crit_edge, label %if.then.i

while.cond.if.end15.i_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i:                                        ; preds = %while.cond
  %8 = ptrtoint ptr %dpram.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dpram.i, align 8
  %arrayidx2.i = getelementptr i8, ptr %9, i32 519
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx2.i, i8 0) #10, !srcloc !144
  %10 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %if.then.i.for.inc.i_crit_edge, label %if.end.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %if.then.i
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.for.inc.i_crit_edge, label %canif_is_active.exit.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

canif_is_active.exit.i:                           ; preds = %if.end.i
  %state.i.i = getelementptr i8, ptr %11, i32 2472
  %14 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i.i = icmp ugt i32 %15, 2
  br i1 %cmp.i.i, label %canif_is_active.exit.i.for.inc.i_crit_edge, label %if.end11.i

canif_is_active.exit.i.for.inc.i_crit_edge:       ; preds = %canif_is_active.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end11.i:                                       ; preds = %canif_is_active.exit.i
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 36, i32 11
  %16 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_over_errors.i, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %rx_over_errors.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i.i) #10
  %18 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i.i, align 4, !annotation !140
  %call.i.i = call ptr @alloc_can_skb(ptr noundef nonnull %11, ptr noundef nonnull %cf.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end11.i.softing_netdev_rx.exit.i_crit_edge, label %if.end.i306.i

if.end11.i.softing_netdev_rx.exit.i_crit_edge:    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %softing_netdev_rx.exit.i

if.end.i306.i:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cf.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 536870916, ptr %20, align 8
  %msg.sroa.26.0..sroa_idx.i = getelementptr inbounds i8, ptr %20, i32 4
  %22 = ptrtoint ptr %msg.sroa.26.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 8, ptr %msg.sroa.26.0..sroa_idx.i, align 4
  %msg.sroa.31.0..sroa_idx.i = getelementptr inbounds i8, ptr %20, i32 5
  %23 = ptrtoint ptr %msg.sroa.31.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %msg.sroa.31.0..sroa_idx.i, align 1
  %msg.sroa.32.0..sroa_idx.i = getelementptr inbounds i8, ptr %20, i32 6
  %24 = ptrtoint ptr %msg.sroa.32.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %msg.sroa.32.0..sroa_idx.i, align 2
  %msg.sroa.33.0..sroa_idx.i = getelementptr inbounds i8, ptr %20, i32 7
  %25 = ptrtoint ptr %msg.sroa.33.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %msg.sroa.33.0..sroa_idx.i, align 1
  %msg.sroa.34.0..sroa_idx.i = getelementptr inbounds i8, ptr %20, i32 8
  %26 = ptrtoint ptr %msg.sroa.34.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 281474976710656, ptr %msg.sroa.34.0..sroa_idx.i, align 8
  %27 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %27, align 8
  %call1.i.i = call i32 @netif_rx(ptr noundef nonnull %call.i.i) #10
  br label %softing_netdev_rx.exit.i

softing_netdev_rx.exit.i:                         ; preds = %if.end.i306.i, %if.end11.i.softing_netdev_rx.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %softing_netdev_rx.exit.i, %canif_is_active.exit.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge
  %29 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx5.1.i, align 4
  %tobool6.not.1.i = icmp eq ptr %30, null
  br i1 %tobool6.not.1.i, label %for.inc.i.if.end15.i_crit_edge, label %if.end.1.i

for.inc.i.if.end15.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.end.1.i:                                       ; preds = %for.inc.i
  %state.i.i.1.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %state.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %state.i.i.1.i, align 4
  %and1.i.i.i.1.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.1.i)
  %tobool.i.not.i.1.i = icmp eq i32 %and1.i.i.i.1.i, 0
  br i1 %tobool.i.not.i.1.i, label %if.end.1.i.if.end15.i_crit_edge, label %canif_is_active.exit.1.i

if.end.1.i.if.end15.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

canif_is_active.exit.1.i:                         ; preds = %if.end.1.i
  %state.i.1.i = getelementptr i8, ptr %30, i32 2472
  %33 = ptrtoint ptr %state.i.1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state.i.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp.i.1.i = icmp ugt i32 %34, 2
  br i1 %cmp.i.1.i, label %canif_is_active.exit.1.i.if.end15.i_crit_edge, label %if.end11.1.i

canif_is_active.exit.1.i.if.end15.i_crit_edge:    ; preds = %canif_is_active.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.end11.1.i:                                     ; preds = %canif_is_active.exit.1.i
  %rx_over_errors.1.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 36, i32 11
  %35 = ptrtoint ptr %rx_over_errors.1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_over_errors.1.i, align 4
  %inc.1.i = add i32 %36, 1
  store i32 %inc.1.i, ptr %rx_over_errors.1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i.i) #10
  %37 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i.i, align 4, !annotation !140
  %call.i.1.i = call ptr @alloc_can_skb(ptr noundef nonnull %30, ptr noundef nonnull %cf.i.i) #10
  %tobool.not.i.1.i = icmp eq ptr %call.i.1.i, null
  br i1 %tobool.not.i.1.i, label %if.end11.1.i.softing_netdev_rx.exit.1.i_crit_edge, label %if.end.i306.1.i

if.end11.1.i.softing_netdev_rx.exit.1.i_crit_edge: ; preds = %if.end11.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %softing_netdev_rx.exit.1.i

if.end.i306.1.i:                                  ; preds = %if.end11.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %cf.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cf.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 536870916, ptr %39, align 8
  %msg.sroa.26.0..sroa_idx.1.i = getelementptr inbounds i8, ptr %39, i32 4
  %41 = ptrtoint ptr %msg.sroa.26.0..sroa_idx.1.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 8, ptr %msg.sroa.26.0..sroa_idx.1.i, align 4
  %msg.sroa.31.0..sroa_idx.1.i = getelementptr inbounds i8, ptr %39, i32 5
  %42 = ptrtoint ptr %msg.sroa.31.0..sroa_idx.1.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %msg.sroa.31.0..sroa_idx.1.i, align 1
  %msg.sroa.32.0..sroa_idx.1.i = getelementptr inbounds i8, ptr %39, i32 6
  %43 = ptrtoint ptr %msg.sroa.32.0..sroa_idx.1.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %msg.sroa.32.0..sroa_idx.1.i, align 2
  %msg.sroa.33.0..sroa_idx.1.i = getelementptr inbounds i8, ptr %39, i32 7
  %44 = ptrtoint ptr %msg.sroa.33.0..sroa_idx.1.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %msg.sroa.33.0..sroa_idx.1.i, align 1
  %msg.sroa.34.0..sroa_idx.1.i = getelementptr inbounds i8, ptr %39, i32 8
  %45 = ptrtoint ptr %msg.sroa.34.0..sroa_idx.1.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 281474976710656, ptr %msg.sroa.34.0..sroa_idx.1.i, align 8
  %46 = getelementptr inbounds %struct.sk_buff, ptr %call.i.1.i, i32 0, i32 2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 0, ptr %46, align 8
  %call1.i.1.i = call i32 @netif_rx(ptr noundef nonnull %call.i.1.i) #10
  br label %softing_netdev_rx.exit.1.i

softing_netdev_rx.exit.1.i:                       ; preds = %if.end.i306.1.i, %if.end11.1.i.softing_netdev_rx.exit.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i.i) #10
  br label %if.end15.i

if.end15.i:                                       ; preds = %softing_netdev_rx.exit.1.i, %canif_is_active.exit.1.i.if.end15.i_crit_edge, %if.end.1.i.if.end15.i_crit_edge, %for.inc.i.if.end15.i_crit_edge, %while.cond.if.end15.i_crit_edge
  %48 = ptrtoint ptr %dpram.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dpram.i, align 8
  %arrayidx17.i = getelementptr i8, ptr %49, i32 513
  %50 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx17.i) #10, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  %51 = ptrtoint ptr %dpram.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dpram.i, align 8
  %arrayidx20.i = getelementptr i8, ptr %52, i32 517
  %53 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx20.i) #10, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  %inc22.i = add i8 %50, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %inc22.i)
  %cmp24.i = icmp ugt i8 %inc22.i, 15
  %spec.store.select.i = select i1 %cmp24.i, i8 0, i8 %inc22.i
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %spec.store.select.i)
  %cmp30.i = icmp eq i8 %53, %spec.store.select.i
  br i1 %cmp30.i, label %softing_handle_1.exit, label %if.end33.i

if.end33.i:                                       ; preds = %if.end15.i
  %conv29.i = zext i8 %spec.store.select.i to i32
  %54 = ptrtoint ptr %dpram.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dpram.i, align 8
  %mul.i = shl nuw nsw i32 %conv29.i, 5
  %arrayidx36.i = getelementptr i8, ptr %55, i32 %mul.i
  call void @mmiocpy(ptr noundef nonnull %buf.i, ptr noundef %arrayidx36.i, i32 noundef 32) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  call void @arm_heavy_mb() #10
  %56 = ptrtoint ptr %dpram.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dpram.i, align 8
  %arrayidx38.i = getelementptr i8, ptr %57, i32 513
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx38.i, i8 %spec.store.select.i) #10, !srcloc !144
  %58 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %buf.i, align 1
  %conv40.i = zext i8 %59 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %59)
  %cmp41.i = icmp eq i8 %59, -1
  br i1 %cmp41.i, label %softing_handle_1.exit.thread42, label %if.end44.i

softing_handle_1.exit.thread42:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #10
  br label %while.end

if.end44.i:                                       ; preds = %if.end33.i
  %and.i = and i32 %conv40.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool48.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool48.not.i, ptr %arrayidx5.i, ptr %arrayidx5.1.i
  %60 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %netdev.0.i = load ptr, ptr %spec.select.i, align 4
  %and55.i = and i32 %conv40.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %if.else111.i, label %if.then57.i

if.then57.i:                                      ; preds = %if.end44.i
  %61 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %0, align 1
  %conv60.i = zext i8 %62 to i32
  %and61.i = and i32 %conv60.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %if.else.i, label %if.then57.i.if.end77.i_crit_edge

if.then57.i.if.end77.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77.i

if.else.i:                                        ; preds = %if.then57.i
  %and66.i = and i32 %conv60.i, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %if.else73.i, label %if.else.i.if.end77.i_crit_edge

if.else.i.if.end77.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77.i

if.else73.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.else73.i, %if.else.i.if.end77.i_crit_edge, %if.then57.i.if.end77.i_crit_edge
  %msg.sroa.0.1.i = phi i32 [ 536870916, %if.else73.i ], [ 536870976, %if.then57.i.if.end77.i_crit_edge ], [ 536870916, %if.else.i.if.end77.i_crit_edge ]
  %msg.sroa.34.1.i = phi i64 [ 0, %if.else73.i ], [ 0, %if.then57.i.if.end77.i_crit_edge ], [ 9007199254740992, %if.else.i.if.end77.i_crit_edge ]
  %cmp94.i = phi i1 [ false, %if.else73.i ], [ false, %if.then57.i.if.end77.i_crit_edge ], [ true, %if.else.i.if.end77.i_crit_edge ]
  %can_state.0.i = phi i32 [ 0, %if.else73.i ], [ 3, %if.then57.i.if.end77.i_crit_edge ], [ 2, %if.else.i.if.end77.i_crit_edge ]
  %state.0.i = phi i8 [ 0, %if.else73.i ], [ 2, %if.then57.i.if.end77.i_crit_edge ], [ 1, %if.else.i.if.end77.i_crit_edge ]
  %63 = ptrtoint ptr %dpram.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dpram.i, align 8
  %index.i = getelementptr i8, ptr %netdev.0.i, i32 2684
  %65 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool79.not.i = icmp eq i32 %66, 0
  %cond.i = select i1 %tobool79.not.i, i32 817, i32 821
  %arrayidx80.i = getelementptr i8, ptr %64, i32 %cond.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx80.i, i8 %state.0.i) #10, !srcloc !144
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %1, align 4
  %69 = call i32 @llvm.bswap.i32(i32 %68) #10
  %call82.i = call i64 @softing_raw2ktime(ptr noundef %dev_id, i32 noundef %69) #10
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %netdev.0.i, i32 0, i32 36, i32 4
  %70 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rx_errors.i, align 8
  %inc84.i = add i32 %71, 1
  store i32 %inc84.i, ptr %rx_errors.i, align 8
  %state86.i = getelementptr i8, ptr %netdev.0.i, i32 2472
  %72 = ptrtoint ptr %state86.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %state86.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %can_state.0.i, i32 %73)
  %cmp87.not.i = icmp eq i32 %can_state.0.i, %73
  br i1 %cmp87.not.i, label %if.end77.i.softing_handle_1.exit.thread_crit_edge, label %if.then89.i

if.end77.i.softing_handle_1.exit.thread_crit_edge: ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %softing_handle_1.exit.thread

if.then89.i:                                      ; preds = %if.end77.i
  %74 = ptrtoint ptr %state86.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %can_state.0.i, ptr %state86.i, align 4
  br i1 %cmp94.i, label %if.then96.i, label %if.else99.i

if.then96.i:                                      ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #12
  %error_passive.i = getelementptr i8, ptr %netdev.0.i, i32 2316
  %75 = ptrtoint ptr %error_passive.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %error_passive.i, align 4
  %inc98.i = add i32 %76, 1
  store i32 %inc98.i, ptr %error_passive.i, align 4
  br label %if.end108.i

if.else99.i:                                      ; preds = %if.then89.i
  br i1 %tobool62.not.i, label %if.else99.i.if.end108.i_crit_edge, label %if.then103.i

if.else99.i.if.end108.i_crit_edge:                ; preds = %if.else99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108.i

if.then103.i:                                     ; preds = %if.else99.i
  call void @__sanitizer_cov_trace_pc() #12
  %bus_off.i = getelementptr i8, ptr %netdev.0.i, i32 2320
  %77 = ptrtoint ptr %bus_off.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bus_off.i, align 4
  %inc106.i = add i32 %78, 1
  store i32 %inc106.i, ptr %bus_off.i, align 4
  call void @can_bus_off(ptr noundef %netdev.0.i) #10
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %netdev.0.i, i32 0, i32 103
  %79 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i308.i = getelementptr inbounds %struct.netdev_queue, ptr %80, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i308.i) #10
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then103.i, %if.else99.i.if.end108.i_crit_edge, %if.then96.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i309.i) #10
  %81 = ptrtoint ptr %cf.i309.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i309.i, align 4, !annotation !140
  %call.i310.i = call ptr @alloc_can_skb(ptr noundef %netdev.0.i, ptr noundef nonnull %cf.i309.i) #10
  %tobool.not.i311.i = icmp eq ptr %call.i310.i, null
  br i1 %tobool.not.i311.i, label %if.end108.i.softing_netdev_rx.exit315.i_crit_edge, label %if.end.i313.i

if.end108.i.softing_netdev_rx.exit315.i_crit_edge: ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %softing_netdev_rx.exit315.i

if.end.i313.i:                                    ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %cf.i309.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cf.i309.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %msg.sroa.0.1.i, ptr %83, align 8
  %msg.sroa.26.0..sroa_idx333.i = getelementptr inbounds i8, ptr %83, i32 4
  %85 = ptrtoint ptr %msg.sroa.26.0..sroa_idx333.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 8, ptr %msg.sroa.26.0..sroa_idx333.i, align 4
  %msg.sroa.31.0..sroa_idx337.i = getelementptr inbounds i8, ptr %83, i32 5
  %86 = ptrtoint ptr %msg.sroa.31.0..sroa_idx337.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %msg.sroa.31.0..sroa_idx337.i, align 1
  %msg.sroa.32.0..sroa_idx341.i = getelementptr inbounds i8, ptr %83, i32 6
  %87 = ptrtoint ptr %msg.sroa.32.0..sroa_idx341.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %msg.sroa.32.0..sroa_idx341.i, align 2
  %msg.sroa.33.0..sroa_idx345.i = getelementptr inbounds i8, ptr %83, i32 7
  %88 = ptrtoint ptr %msg.sroa.33.0..sroa_idx345.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %msg.sroa.33.0..sroa_idx345.i, align 1
  %msg.sroa.34.0..sroa_idx350.i = getelementptr inbounds i8, ptr %83, i32 8
  %89 = ptrtoint ptr %msg.sroa.34.0..sroa_idx350.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %msg.sroa.34.1.i, ptr %msg.sroa.34.0..sroa_idx350.i, align 8
  %90 = getelementptr inbounds %struct.sk_buff, ptr %call.i310.i, i32 0, i32 2
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %call82.i, ptr %90, align 8
  %call1.i312.i = call i32 @netif_rx(ptr noundef nonnull %call.i310.i) #10
  br label %softing_netdev_rx.exit315.i

softing_netdev_rx.exit315.i:                      ; preds = %if.end.i313.i, %if.end108.i.softing_netdev_rx.exit315.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i309.i) #10
  br label %softing_handle_1.exit.thread

if.else111.i:                                     ; preds = %if.end44.i
  %and113.i = shl i32 %conv40.i, 27
  %92 = and i32 %and113.i, 1073741824
  %93 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %0, align 1
  %95 = call i8 @llvm.umin.i8(i8 %94, i8 8) #10
  %and129.i = and i32 %conv40.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129.i)
  %tobool130.not.i = icmp eq i32 %and129.i, 0
  br i1 %tobool130.not.i, label %if.else137.i, label %if.then131.i

if.then131.i:                                     ; preds = %if.else111.i
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %1, align 4
  %98 = call i32 @llvm.bswap.i32(i32 %97) #10
  %or133.i = or i32 %92, %98
  %or136.i = or i32 %or133.i, -2147483648
  br label %if.end143.i

if.else137.i:                                     ; preds = %if.else111.i
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %1, align 2
  %101 = call i16 @llvm.bswap.i16(i16 %100) #10
  %conv139.i = zext i16 %101 to i32
  %or141.i = or i32 %92, %conv139.i
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.else137.i, %if.then131.i
  %msg.sroa.0.3.i = phi i32 [ %or141.i, %if.else137.i ], [ %or136.i, %if.then131.i ]
  %ptr.0.i = phi ptr [ %2, %if.else137.i ], [ %3, %if.then131.i ]
  %102 = ptrtoint ptr %ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ptr.0.i, align 4
  %104 = call i32 @llvm.bswap.i32(i32 %103) #10
  %call146.i = call i64 @softing_raw2ktime(ptr noundef %dev_id, i32 noundef %104) #10
  %and148.i = and i32 %msg.sroa.0.3.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148.i)
  %tobool149.not.i = icmp eq i32 %and148.i, 0
  br i1 %tobool149.not.i, label %if.then150.i, label %if.end143.i.if.end153.i_crit_edge

if.end143.i.if.end153.i_crit_edge:                ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153.i

if.then150.i:                                     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr145.i = getelementptr i8, ptr %ptr.0.i, i32 4
  %105 = ptrtoint ptr %add.ptr145.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 8)
  %106 = load i64, ptr %add.ptr145.i, align 1
  br label %if.end153.i

if.end153.i:                                      ; preds = %if.then150.i, %if.end143.i.if.end153.i_crit_edge
  %msg.sroa.34.2.i = phi i64 [ %106, %if.then150.i ], [ 0, %if.end143.i.if.end153.i_crit_edge ]
  %and155.i = and i32 %conv40.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155.i)
  %tobool156.not.i = icmp eq i32 %and155.i, 0
  br i1 %tobool156.not.i, label %if.else195.i, label %if.then157.i

if.then157.i:                                     ; preds = %if.end153.i
  %echo_skb.i = getelementptr i8, ptr %netdev.0.i, i32 2468
  %107 = ptrtoint ptr %echo_skb.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %echo_skb.i, align 4
  %tx.i = getelementptr i8, ptr %netdev.0.i, i32 2624
  %echo_get.i = getelementptr i8, ptr %netdev.0.i, i32 2632
  %109 = ptrtoint ptr %echo_get.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %echo_get.i, align 4
  %arrayidx159.i = getelementptr ptr, ptr %108, i32 %110
  %111 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx159.i, align 4
  %tobool160.not.i = icmp eq ptr %112, null
  br i1 %tobool160.not.i, label %if.then157.i.if.end162.i_crit_edge, label %if.then161.i

if.then157.i.if.end162.i_crit_edge:               ; preds = %if.then157.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end162.i

if.then161.i:                                     ; preds = %if.then157.i
  call void @__sanitizer_cov_trace_pc() #12
  %113 = getelementptr inbounds %struct.sk_buff, ptr %112, i32 0, i32 2
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %call146.i, ptr %113, align 8
  br label %if.end162.i

if.end162.i:                                      ; preds = %if.then161.i, %if.then157.i.if.end162.i_crit_edge
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %netdev.0.i, i32 0, i32 36, i32 1
  %115 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tx_packets.i, align 4
  %inc164.i = add i32 %116, 1
  store i32 %inc164.i, ptr %tx_packets.i, align 4
  %117 = ptrtoint ptr %echo_get.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %echo_get.i, align 4
  %call167.i = call i32 @can_get_echo_skb(ptr noundef %netdev.0.i, i32 noundef %118, ptr noundef null) #10
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %netdev.0.i, i32 0, i32 36, i32 3
  %119 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tx_bytes.i, align 4
  %add169.i = add i32 %120, %call167.i
  store i32 %add169.i, ptr %tx_bytes.i, align 4
  %121 = ptrtoint ptr %echo_get.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %echo_get.i, align 4
  %inc172.i = add i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %inc172.i)
  %cmp175.i = icmp sgt i32 %inc172.i, 14
  %spec.select305.i = select i1 %cmp175.i, i32 0, i32 %inc172.i
  %123 = ptrtoint ptr %echo_get.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %spec.select305.i, ptr %echo_get.i, align 4
  %124 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool182.not.i = icmp eq i32 %125, 0
  br i1 %tobool182.not.i, label %if.end162.i.if.end186.i_crit_edge, label %if.then183.i

if.end162.i.if.end186.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end186.i

if.then183.i:                                     ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #12
  %dec.i = add i32 %125, -1
  %126 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %dec.i, ptr %tx.i, align 4
  br label %if.end186.i

if.end186.i:                                      ; preds = %if.then183.i, %if.end162.i.if.end186.i_crit_edge
  %127 = ptrtoint ptr %tx187.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tx187.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool189.not.i = icmp eq i32 %128, 0
  br i1 %tobool189.not.i, label %if.end186.i.softing_handle_1.exit.thread_crit_edge, label %if.then190.i

if.end186.i.softing_handle_1.exit.thread_crit_edge: ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %softing_handle_1.exit.thread

if.then190.i:                                     ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #12
  %dec193.i = add i32 %128, -1
  %129 = ptrtoint ptr %tx187.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %dec193.i, ptr %tx187.i, align 8
  br label %softing_handle_1.exit.thread

if.else195.i:                                     ; preds = %if.end153.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i316.i) #10
  %130 = ptrtoint ptr %cf.i316.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i316.i, align 4, !annotation !140
  %call.i317.i = call ptr @alloc_can_skb(ptr noundef %netdev.0.i, ptr noundef nonnull %cf.i316.i) #10
  %tobool.not.i318.i = icmp eq ptr %call.i317.i, null
  br i1 %tobool.not.i318.i, label %softing_netdev_rx.exit322.thread.i, label %softing_netdev_rx.exit322.i

softing_netdev_rx.exit322.thread.i:               ; preds = %if.else195.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i316.i) #10
  br label %if.else210.i

softing_netdev_rx.exit322.i:                      ; preds = %if.else195.i
  %131 = ptrtoint ptr %cf.i316.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cf.i316.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %msg.sroa.0.3.i, ptr %132, align 8
  %msg.sroa.26.0..sroa_idx335.i = getelementptr inbounds i8, ptr %132, i32 4
  %134 = ptrtoint ptr %msg.sroa.26.0..sroa_idx335.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %95, ptr %msg.sroa.26.0..sroa_idx335.i, align 4
  %msg.sroa.31.0..sroa_idx339.i = getelementptr inbounds i8, ptr %132, i32 5
  %135 = ptrtoint ptr %msg.sroa.31.0..sroa_idx339.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %msg.sroa.31.0..sroa_idx339.i, align 1
  %msg.sroa.32.0..sroa_idx343.i = getelementptr inbounds i8, ptr %132, i32 6
  %136 = ptrtoint ptr %msg.sroa.32.0..sroa_idx343.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %msg.sroa.32.0..sroa_idx343.i, align 2
  %msg.sroa.33.0..sroa_idx347.i = getelementptr inbounds i8, ptr %132, i32 7
  %137 = ptrtoint ptr %msg.sroa.33.0..sroa_idx347.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %msg.sroa.33.0..sroa_idx347.i, align 1
  %msg.sroa.34.0..sroa_idx352.i = getelementptr inbounds i8, ptr %132, i32 8
  %138 = ptrtoint ptr %msg.sroa.34.0..sroa_idx352.i to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %msg.sroa.34.2.i, ptr %msg.sroa.34.0..sroa_idx352.i, align 8
  %139 = getelementptr inbounds %struct.sk_buff, ptr %call.i317.i, i32 0, i32 2
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %call146.i, ptr %139, align 8
  %call1.i319.i = call i32 @netif_rx(ptr noundef nonnull %call.i317.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i316.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i319.i)
  %cmp197.i = icmp eq i32 %call1.i319.i, 0
  br i1 %cmp197.i, label %if.then199.i, label %softing_netdev_rx.exit322.i.if.else210.i_crit_edge

softing_netdev_rx.exit322.i.if.else210.i_crit_edge: ; preds = %softing_netdev_rx.exit322.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else210.i

if.then199.i:                                     ; preds = %softing_netdev_rx.exit322.i
  %stats200.i = getelementptr inbounds %struct.net_device, ptr %netdev.0.i, i32 0, i32 36
  %141 = ptrtoint ptr %stats200.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %stats200.i, align 8
  %inc201.i = add i32 %142, 1
  store i32 %inc201.i, ptr %stats200.i, align 8
  br i1 %tobool149.not.i, label %if.then205.i, label %if.then199.i.softing_handle_1.exit.thread_crit_edge

if.then199.i.softing_handle_1.exit.thread_crit_edge: ; preds = %if.then199.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %softing_handle_1.exit.thread

if.then205.i:                                     ; preds = %if.then199.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv206.i = zext i8 %95 to i32
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %netdev.0.i, i32 0, i32 36, i32 2
  %143 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %rx_bytes.i, align 8
  %add208.i = add i32 %144, %conv206.i
  store i32 %add208.i, ptr %rx_bytes.i, align 8
  br label %softing_handle_1.exit.thread

if.else210.i:                                     ; preds = %softing_netdev_rx.exit322.i.if.else210.i_crit_edge, %softing_netdev_rx.exit322.thread.i
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %netdev.0.i, i32 0, i32 36, i32 6
  %145 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %rx_dropped.i, align 8
  %inc212.i = add i32 %146, 1
  store i32 %inc212.i, ptr %rx_dropped.i, align 8
  br label %softing_handle_1.exit.thread

softing_handle_1.exit.thread:                     ; preds = %if.else210.i, %if.then205.i, %if.then199.i.softing_handle_1.exit.thread_crit_edge, %if.then190.i, %if.end186.i.softing_handle_1.exit.thread_crit_edge, %softing_netdev_rx.exit315.i, %if.end77.i.softing_handle_1.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #10
  br label %while.body

softing_handle_1.exit:                            ; preds = %if.end15.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #10
  br i1 %tobool.not.i, label %softing_handle_1.exit.while.end_crit_edge, label %softing_handle_1.exit.while.body_crit_edge

softing_handle_1.exit.while.body_crit_edge:       ; preds = %softing_handle_1.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

softing_handle_1.exit.while.end_crit_edge:        ; preds = %softing_handle_1.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %softing_handle_1.exit.while.body_crit_edge, %softing_handle_1.exit.thread
  %147 = ptrtoint ptr %svc_count to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %svc_count, align 8
  %inc = add i32 %148, 1
  store i32 %inc, ptr %svc_count, align 8
  %inc2 = add i32 %work_done.0, 1
  br label %while.cond

while.end:                                        ; preds = %softing_handle_1.exit.while.end_crit_edge, %softing_handle_1.exit.thread42
  call void @_raw_spin_unlock_bh(ptr noundef %spin) #10
  %last_bus = getelementptr inbounds %struct.softing, ptr %dev_id, i32 0, i32 8, i32 1
  %149 = ptrtoint ptr %last_bus to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %last_bus, align 4
  %151 = ptrtoint ptr %tx187.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %tx187.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %152)
  %cmp6 = icmp sgt i32 %152, 30
  br i1 %cmp6, label %while.end.for.end_crit_edge, label %if.end

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %while.end
  %add7 = add i32 %150, 1
  %153 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev_id, align 8
  %nbus = getelementptr inbounds %struct.softing_platform_data, ptr %154, i32 0, i32 3
  %155 = ptrtoint ptr %nbus to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %nbus, align 4
  %rem = srem i32 %add7, %156
  %arrayidx = getelementptr %struct.softing, ptr %dev_id, i32 0, i32 2, i32 %rem
  %157 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %158, null
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.end9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end9:                                          ; preds = %if.end
  %state.i.i37 = getelementptr inbounds %struct.net_device, ptr %158, i32 0, i32 6
  %159 = ptrtoint ptr %state.i.i37 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %state.i.i37, align 4
  %and1.i.i.i = and i32 %160, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end9.for.inc_crit_edge, label %canif_is_active.exit

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

canif_is_active.exit:                             ; preds = %if.end9
  %state.i = getelementptr i8, ptr %158, i32 2472
  %161 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %162)
  %cmp.i = icmp ugt i32 %162, 2
  br i1 %cmp.i, label %canif_is_active.exit.for.inc_crit_edge, label %if.end14

canif_is_active.exit.for.inc_crit_edge:           ; preds = %canif_is_active.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end14:                                         ; preds = %canif_is_active.exit
  %tx15 = getelementptr i8, ptr %158, i32 2624
  %163 = ptrtoint ptr %tx15 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %tx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %164)
  %cmp17 = icmp sgt i32 %164, 14
  br i1 %cmp17, label %if.end14.for.inc_crit_edge, label %if.end19

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %inc20 = add i32 %work_done.0, 1
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %158, i32 0, i32 103
  %165 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %_tx.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %166) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %if.end14.for.inc_crit_edge, %canif_is_active.exit.for.inc_crit_edge, %if.end9.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %work_done.2 = phi i32 [ %work_done.0, %if.end14.for.inc_crit_edge ], [ %inc20, %if.end19 ], [ %work_done.0, %canif_is_active.exit.for.inc_crit_edge ], [ %work_done.0, %if.end.for.inc_crit_edge ], [ %work_done.0, %if.end9.for.inc_crit_edge ]
  %167 = ptrtoint ptr %tx187.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %tx187.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %168)
  %cmp6.1 = icmp sgt i32 %168, 30
  br i1 %cmp6.1, label %for.inc.for.end_crit_edge, label %if.end.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.1:                                         ; preds = %for.inc
  %add7.1 = add i32 %150, 2
  %169 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev_id, align 8
  %nbus.1 = getelementptr inbounds %struct.softing_platform_data, ptr %170, i32 0, i32 3
  %171 = ptrtoint ptr %nbus.1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %nbus.1, align 4
  %rem.1 = srem i32 %add7.1, %172
  %arrayidx.1 = getelementptr %struct.softing, ptr %dev_id, i32 0, i32 2, i32 %rem.1
  %173 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %174, null
  br i1 %tobool.not.1, label %if.end.1.for.end_crit_edge, label %if.end9.1

if.end.1.for.end_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end9.1:                                        ; preds = %if.end.1
  %state.i.i37.1 = getelementptr inbounds %struct.net_device, ptr %174, i32 0, i32 6
  %175 = ptrtoint ptr %state.i.i37.1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %state.i.i37.1, align 4
  %and1.i.i.i.1 = and i32 %176, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.1)
  %tobool.i.not.i.1 = icmp eq i32 %and1.i.i.i.1, 0
  br i1 %tobool.i.not.i.1, label %if.end9.1.for.end_crit_edge, label %canif_is_active.exit.1

if.end9.1.for.end_crit_edge:                      ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

canif_is_active.exit.1:                           ; preds = %if.end9.1
  %state.i.1 = getelementptr i8, ptr %174, i32 2472
  %177 = ptrtoint ptr %state.i.1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %state.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %178)
  %cmp.i.1 = icmp ugt i32 %178, 2
  br i1 %cmp.i.1, label %canif_is_active.exit.1.for.end_crit_edge, label %if.end14.1

canif_is_active.exit.1.for.end_crit_edge:         ; preds = %canif_is_active.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end14.1:                                       ; preds = %canif_is_active.exit.1
  %tx15.1 = getelementptr i8, ptr %174, i32 2624
  %179 = ptrtoint ptr %tx15.1 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %tx15.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %180)
  %cmp17.1 = icmp sgt i32 %180, 14
  br i1 %cmp17.1, label %if.end14.1.for.end_crit_edge, label %if.end19.1

if.end14.1.for.end_crit_edge:                     ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end19.1:                                       ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #12
  %inc20.1 = add i32 %work_done.2, 1
  %_tx.i.i.1 = getelementptr inbounds %struct.net_device, ptr %174, i32 0, i32 103
  %181 = ptrtoint ptr %_tx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %_tx.i.i.1, align 128
  call void @netif_tx_wake_queue(ptr noundef %182) #10
  br label %for.end

for.end:                                          ; preds = %if.end19.1, %if.end14.1.for.end_crit_edge, %canif_is_active.exit.1.for.end_crit_edge, %if.end9.1.for.end_crit_edge, %if.end.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %while.end.for.end_crit_edge
  %work_done.1.lcssa = phi i32 [ %work_done.0, %while.end.for.end_crit_edge ], [ %work_done.2, %for.inc.for.end_crit_edge ], [ %work_done.2, %if.end14.1.for.end_crit_edge ], [ %inc20.1, %if.end19.1 ], [ %work_done.2, %canif_is_active.exit.1.for.end_crit_edge ], [ %work_done.2, %if.end.1.for.end_crit_edge ], [ %work_done.2, %if.end9.1.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %work_done.1.lcssa)
  %tobool22.not = icmp ne i32 %work_done.1.lcssa, 0
  %cond = zext i1 %tobool22.not to i32
  ret i32 %cond
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @softing_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @softing_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @softing_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @softing_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @softing_raw2ktime(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softing_pdev_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.6) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %nbus = getelementptr inbounds %struct.softing_platform_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %nbus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ugt i32 %3, 2
  br i1 %cmp, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %3) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 232) #14
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %call7.i.i, align 8
  %pdev14 = getelementptr inbounds %struct.softing, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %pdev14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdev, ptr %pdev14, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.softing, ptr %call7.i.i, i32 0, i32 6, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @softing_pdev_probe.__key) #10
  %spin = getelementptr inbounds %struct.softing, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %spin, ptr noundef nonnull @.str.14, ptr noundef nonnull @softing_pdev_probe.__key.13, i16 noundef signext 3) #10
  %call22 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end12.platform_resource_failed_crit_edge, label %if.end25

if.end12.platform_resource_failed_crit_edge:      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %platform_resource_failed

if.end25:                                         ; preds = %if.end12
  %8 = ptrtoint ptr %call22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call22, align 4
  %dpram_phys = getelementptr inbounds %struct.softing, ptr %call7.i.i, i32 0, i32 10
  %10 = ptrtoint ptr %dpram_phys to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dpram_phys, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call22, i32 0, i32 1
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i, align 4
  %13 = load i32, ptr %call22, align 4
  %sub.i = add i32 %12, 1
  %add.i = sub i32 %sub.i, %13
  %dpram_size = getelementptr inbounds %struct.softing, ptr %call7.i.i, i32 0, i32 11
  %14 = ptrtoint ptr %dpram_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i, ptr %dpram_size, align 8
  %call29 = tail call ptr @ioremap(i32 noundef %9, i32 noundef %add.i) #10
  %dpram = getelementptr inbounds %struct.softing, ptr %call7.i.i, i32 0, i32 9
  %15 = ptrtoint ptr %dpram to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call29, ptr %dpram, align 8
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %do.end35, label %if.end38

do.end35:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev14, align 4
  %dev37 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev37, ptr noundef nonnull @.str.16) #13
  br label %platform_resource_failed

if.end38:                                         ; preds = %if.end25
  %call39 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #10
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.end38.if.end43_crit_edge, label %if.then41

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %call39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call39, align 4
  %irq = getelementptr inbounds %struct.softing, ptr %call7.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %irq, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end38.if.end43_crit_edge
  %call44 = tail call fastcc i32 @softing_card_boot(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.end49, label %if.end51

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev, ptr noundef nonnull @.str.19) #13
  br label %boot_failed

if.end51:                                         ; preds = %if.end43
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call7.i.i, align 8
  %freq = getelementptr inbounds %struct.softing_platform_data, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %freq, align 4
  %freq53 = getelementptr inbounds %struct.softing, ptr %call7.i.i, i32 0, i32 12, i32 5
  %25 = ptrtoint ptr %freq53 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %freq53, align 8
  %call55 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @softing_pdev_group) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %do.end60, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end51
  %arrayidx = getelementptr %struct.softing, ptr %call7.i.i, i32 0, i32 12, i32 4, i32 0
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx, align 4
  %call.i = tail call ptr @alloc_candev_mqs(i32 noundef 388, i32 noundef 15, i32 noundef 1, i32 noundef 1) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.preheader.do.end72_crit_edge, label %if.end74

for.body.preheader.do.end72_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72

do.end60:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev14, align 4
  %dev62 = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev62, ptr noundef nonnull @.str.22) #13
  br label %sysfs_failed

do.end72:                                         ; preds = %for.inc.do.end72_crit_edge, %for.body.preheader.do.end72_crit_edge
  %j.0194.lcssa = phi i32 [ 0, %for.body.preheader.do.end72_crit_edge ], [ 1, %for.inc.do.end72_crit_edge ]
  %30 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev14, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev.i, ptr noundef nonnull @.str.45) #13
  %arrayidx67190 = getelementptr %struct.softing, ptr %call7.i.i, i32 0, i32 2, i32 %j.0194.lcssa
  %32 = ptrtoint ptr %arrayidx67190 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx67190, align 4
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %j.0194.lcssa) #13
  br label %netdev_failed

if.end74:                                         ; preds = %for.body.preheader
  %netdev2.i = getelementptr i8, ptr %call.i, i32 2616
  %33 = ptrtoint ptr %netdev2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %netdev2.i, align 4
  %card3.i = getelementptr i8, ptr %call.i, i32 2620
  %34 = ptrtoint ptr %card3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %card3.i, align 4
  %btr_const.i = getelementptr i8, ptr %call.i, i32 2636
  %35 = call ptr @memcpy(ptr %btr_const.i, ptr @softing_btr_const, i32 48)
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call7.i.i, align 8
  %max_brp.i = getelementptr inbounds %struct.softing_platform_data, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %max_brp.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_brp.i, align 4
  %brp_max.i = getelementptr i8, ptr %call.i, i32 2676
  %40 = ptrtoint ptr %brp_max.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %brp_max.i, align 4
  %41 = load ptr, ptr %call7.i.i, align 8
  %max_sjw.i = getelementptr inbounds %struct.softing_platform_data, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %max_sjw.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_sjw.i, align 4
  %sjw_max.i = getelementptr i8, ptr %call.i, i32 2668
  %44 = ptrtoint ptr %sjw_max.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %sjw_max.i, align 4
  %bittiming_const.i = getelementptr i8, ptr %call.i, i32 2332
  %45 = ptrtoint ptr %bittiming_const.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %btr_const.i, ptr %bittiming_const.i, align 4
  %clock.i = getelementptr i8, ptr %call.i, i32 2440
  %46 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 8000000, ptr %clock.i, align 4
  %chip.i = getelementptr i8, ptr %call.i, i32 2690
  %47 = ptrtoint ptr %chip.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %27, ptr %chip.i, align 2
  %call9.i = tail call i32 @softing_default_output(ptr noundef nonnull %call.i) #10
  %conv.i = trunc i32 %call9.i to i8
  %output.i = getelementptr i8, ptr %call.i, i32 2688
  %48 = ptrtoint ptr %output.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv.i, ptr %output.i, align 4
  %49 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev14, align 4
  %dev11.i = getelementptr inbounds %struct.platform_device, ptr %50, i32 0, i32 3
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 133, i32 1
  %51 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %dev11.i, ptr %parent.i, align 8
  %flags.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 14
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %53, 262144
  store i32 %or.i, ptr %flags.i, align 8
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 16
  %54 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @softing_netdev_ops, ptr %netdev_ops.i, align 8
  %do_set_mode.i = getelementptr i8, ptr %call.i, i32 2596
  %55 = ptrtoint ptr %do_set_mode.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @softing_candev_set_mode, ptr %do_set_mode.i, align 4
  %ctrlmode_supported.i = getelementptr i8, ptr %call.i, i32 2480
  %56 = ptrtoint ptr %ctrlmode_supported.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 4, ptr %ctrlmode_supported.i, align 4
  %arrayidx67 = getelementptr %struct.softing, ptr %call7.i.i, i32 0, i32 2, i32 0
  %57 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %arrayidx67, align 8
  %dev_id = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 60
  %58 = ptrtoint ptr %dev_id to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %dev_id, align 2
  %59 = load ptr, ptr %arrayidx67, align 8
  %index = getelementptr i8, ptr %59, i32 2684
  %60 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %index, align 4
  %call.i185 = tail call i32 @register_candev(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %tobool.not.i186 = icmp eq i32 %call.i185, 0
  %dev1.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 133
  br i1 %tobool.not.i186, label %if.end.i188, label %if.end74.if.then80_crit_edge

if.end74.if.then80_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then80

if.end.i188:                                      ; preds = %if.end74
  %call2.i = tail call i32 @sysfs_create_group(ptr noundef %dev1.i, ptr noundef nonnull @netdev_sysfs_group) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then3.i, label %if.end.i188.for.inc_crit_edge

if.end.i188.for.inc_crit_edge:                    ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then3.i:                                       ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.50) #13
  br label %for.inc

if.then80:                                        ; preds = %if.end74.1.if.then80_crit_edge, %if.end74.if.then80_crit_edge
  %arrayidx67.lcssa = phi ptr [ %arrayidx67, %if.end74.if.then80_crit_edge ], [ %arrayidx67.1, %if.end74.1.if.then80_crit_edge ]
  %call.i185.lcssa = phi i32 [ %call.i185, %if.end74.if.then80_crit_edge ], [ %call.i185.1, %if.end74.1.if.then80_crit_edge ]
  %dev1.i.lcssa = phi ptr [ %dev1.i, %if.end74.if.then80_crit_edge ], [ %dev1.i.1, %if.end74.1.if.then80_crit_edge ]
  %j.0194.lcssa198 = phi i32 [ 0, %if.end74.if.then80_crit_edge ], [ 1, %if.end74.1.if.then80_crit_edge ]
  %call.i.lcssa196 = phi ptr [ %call.i, %if.end74.if.then80_crit_edge ], [ %call.i.1, %if.end74.1.if.then80_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev1.i.lcssa, ptr noundef nonnull @.str.48) #13
  tail call void @free_candev(ptr noundef nonnull %call.i.lcssa196) #10
  %61 = ptrtoint ptr %arrayidx67.lcssa to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %arrayidx67.lcssa, align 4
  %62 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev14, align 4
  %dev87 = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev87, ptr noundef nonnull @.str.28, i32 noundef %j.0194.lcssa198) #13
  br label %netdev_failed

for.inc:                                          ; preds = %if.then3.i, %if.end.i188.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.softing, ptr %call7.i.i, i32 0, i32 12, i32 4, i32 1
  %64 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx.1, align 2
  %call.i.1 = tail call ptr @alloc_candev_mqs(i32 noundef 388, i32 noundef 15, i32 noundef 1, i32 noundef 1) #10
  %tobool.not.i.1 = icmp eq ptr %call.i.1, null
  br i1 %tobool.not.i.1, label %for.inc.do.end72_crit_edge, label %if.end74.1

for.inc.do.end72_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72

if.end74.1:                                       ; preds = %for.inc
  %netdev2.i.1 = getelementptr i8, ptr %call.i.1, i32 2616
  %66 = ptrtoint ptr %netdev2.i.1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i.1, ptr %netdev2.i.1, align 4
  %card3.i.1 = getelementptr i8, ptr %call.i.1, i32 2620
  %67 = ptrtoint ptr %card3.i.1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i, ptr %card3.i.1, align 4
  %btr_const.i.1 = getelementptr i8, ptr %call.i.1, i32 2636
  %68 = call ptr @memcpy(ptr %btr_const.i.1, ptr @softing_btr_const, i32 48)
  %69 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call7.i.i, align 8
  %max_brp.i.1 = getelementptr inbounds %struct.softing_platform_data, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %max_brp.i.1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_brp.i.1, align 4
  %brp_max.i.1 = getelementptr i8, ptr %call.i.1, i32 2676
  %73 = ptrtoint ptr %brp_max.i.1 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %brp_max.i.1, align 4
  %74 = load ptr, ptr %call7.i.i, align 8
  %max_sjw.i.1 = getelementptr inbounds %struct.softing_platform_data, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %max_sjw.i.1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %max_sjw.i.1, align 4
  %sjw_max.i.1 = getelementptr i8, ptr %call.i.1, i32 2668
  %77 = ptrtoint ptr %sjw_max.i.1 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %sjw_max.i.1, align 4
  %bittiming_const.i.1 = getelementptr i8, ptr %call.i.1, i32 2332
  %78 = ptrtoint ptr %bittiming_const.i.1 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %btr_const.i.1, ptr %bittiming_const.i.1, align 4
  %clock.i.1 = getelementptr i8, ptr %call.i.1, i32 2440
  %79 = ptrtoint ptr %clock.i.1 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 8000000, ptr %clock.i.1, align 4
  %chip.i.1 = getelementptr i8, ptr %call.i.1, i32 2690
  %80 = ptrtoint ptr %chip.i.1 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %65, ptr %chip.i.1, align 2
  %call9.i.1 = tail call i32 @softing_default_output(ptr noundef nonnull %call.i.1) #10
  %conv.i.1 = trunc i32 %call9.i.1 to i8
  %output.i.1 = getelementptr i8, ptr %call.i.1, i32 2688
  %81 = ptrtoint ptr %output.i.1 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv.i.1, ptr %output.i.1, align 4
  %82 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdev14, align 4
  %dev11.i.1 = getelementptr inbounds %struct.platform_device, ptr %83, i32 0, i32 3
  %parent.i.1 = getelementptr inbounds %struct.net_device, ptr %call.i.1, i32 0, i32 133, i32 1
  %84 = ptrtoint ptr %parent.i.1 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %dev11.i.1, ptr %parent.i.1, align 8
  %flags.i.1 = getelementptr inbounds %struct.net_device, ptr %call.i.1, i32 0, i32 14
  %85 = ptrtoint ptr %flags.i.1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags.i.1, align 8
  %or.i.1 = or i32 %86, 262144
  store i32 %or.i.1, ptr %flags.i.1, align 8
  %netdev_ops.i.1 = getelementptr inbounds %struct.net_device, ptr %call.i.1, i32 0, i32 16
  %87 = ptrtoint ptr %netdev_ops.i.1 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @softing_netdev_ops, ptr %netdev_ops.i.1, align 8
  %do_set_mode.i.1 = getelementptr i8, ptr %call.i.1, i32 2596
  %88 = ptrtoint ptr %do_set_mode.i.1 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @softing_candev_set_mode, ptr %do_set_mode.i.1, align 4
  %ctrlmode_supported.i.1 = getelementptr i8, ptr %call.i.1, i32 2480
  %89 = ptrtoint ptr %ctrlmode_supported.i.1 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 4, ptr %ctrlmode_supported.i.1, align 4
  %arrayidx67.1 = getelementptr %struct.softing, ptr %call7.i.i, i32 0, i32 2, i32 1
  %90 = ptrtoint ptr %arrayidx67.1 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call.i.1, ptr %arrayidx67.1, align 4
  %dev_id.1 = getelementptr inbounds %struct.net_device, ptr %call.i.1, i32 0, i32 60
  %91 = ptrtoint ptr %dev_id.1 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 1, ptr %dev_id.1, align 2
  %92 = load ptr, ptr %arrayidx67.1, align 4
  %index.1 = getelementptr i8, ptr %92, i32 2684
  %93 = ptrtoint ptr %index.1 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %index.1, align 4
  %call.i185.1 = tail call i32 @register_candev(ptr noundef nonnull %call.i.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185.1)
  %tobool.not.i186.1 = icmp eq i32 %call.i185.1, 0
  %dev1.i.1 = getelementptr inbounds %struct.net_device, ptr %call.i.1, i32 0, i32 133
  br i1 %tobool.not.i186.1, label %if.end.i188.1, label %if.end74.1.if.then80_crit_edge

if.end74.1.if.then80_crit_edge:                   ; preds = %if.end74.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then80

if.end.i188.1:                                    ; preds = %if.end74.1
  %call2.i.1 = tail call i32 @sysfs_create_group(ptr noundef %dev1.i.1, ptr noundef nonnull @netdev_sysfs_group) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.1)
  %cmp.i.1 = icmp slt i32 %call2.i.1, 0
  br i1 %cmp.i.1, label %if.then3.i.1, label %if.end.i188.1.for.inc.1_crit_edge

if.end.i188.1.for.inc.1_crit_edge:                ; preds = %if.end.i188.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then3.i.1:                                     ; preds = %if.end.i188.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef nonnull %call.i.1, ptr noundef nonnull @.str.50) #13
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then3.i.1, %if.end.i188.1.for.inc.1_crit_edge
  %94 = ptrtoint ptr %pdev14 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pdev14, align 4
  %dev93 = getelementptr inbounds %struct.platform_device, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %call7.i.i, align 8
  %name = getelementptr inbounds %struct.softing_platform_data, ptr %97, i32 0, i32 8
  %98 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev93, ptr noundef nonnull @.str.31, ptr noundef %99) #13
  br label %cleanup

netdev_failed:                                    ; preds = %if.then80, %do.end72
  %ret.0 = phi i32 [ %call.i185.lcssa, %if.then80 ], [ -12, %do.end72 ]
  %arrayidx100 = getelementptr %struct.softing, ptr %call7.i.i, i32 0, i32 2, i32 0
  %100 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx100, align 8
  %tobool101.not = icmp eq ptr %101, null
  br i1 %tobool101.not, label %netdev_failed.for.inc106_crit_edge, label %if.end103

netdev_failed.for.inc106_crit_edge:               ; preds = %netdev_failed
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc106

if.end103:                                        ; preds = %netdev_failed
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i189 = getelementptr inbounds %struct.net_device, ptr %101, i32 0, i32 133
  tail call void @sysfs_remove_group(ptr noundef %dev.i189, ptr noundef nonnull @netdev_sysfs_group) #10
  tail call void @unregister_candev(ptr noundef nonnull %101) #10
  tail call void @free_candev(ptr noundef nonnull %101) #10
  br label %for.inc106

for.inc106:                                       ; preds = %if.end103, %netdev_failed.for.inc106_crit_edge
  %arrayidx100.1 = getelementptr %struct.softing, ptr %call7.i.i, i32 0, i32 2, i32 1
  %102 = ptrtoint ptr %arrayidx100.1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx100.1, align 4
  %tobool101.not.1 = icmp eq ptr %103, null
  br i1 %tobool101.not.1, label %for.inc106.for.inc106.1_crit_edge, label %if.end103.1

for.inc106.for.inc106.1_crit_edge:                ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc106.1

if.end103.1:                                      ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i189.1 = getelementptr inbounds %struct.net_device, ptr %103, i32 0, i32 133
  tail call void @sysfs_remove_group(ptr noundef %dev.i189.1, ptr noundef nonnull @netdev_sysfs_group) #10
  tail call void @unregister_candev(ptr noundef nonnull %103) #10
  tail call void @free_candev(ptr noundef nonnull %103) #10
  br label %for.inc106.1

for.inc106.1:                                     ; preds = %if.end103.1, %for.inc106.for.inc106.1_crit_edge
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @softing_pdev_group) #10
  br label %sysfs_failed

sysfs_failed:                                     ; preds = %for.inc106.1, %do.end60
  %ret.1 = phi i32 [ %call55, %do.end60 ], [ %ret.0, %for.inc106.1 ]
  tail call fastcc void @softing_card_shutdown(ptr noundef nonnull %call7.i.i)
  br label %boot_failed

boot_failed:                                      ; preds = %sysfs_failed, %do.end49
  %ret.2 = phi i32 [ %call44, %do.end49 ], [ %ret.1, %sysfs_failed ]
  %104 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dpram, align 8
  tail call void @iounmap(ptr noundef %105) #10
  br label %platform_resource_failed

platform_resource_failed:                         ; preds = %boot_failed, %do.end35, %if.end12.platform_resource_failed_crit_edge
  %ret.3 = phi i32 [ %ret.2, %boot_failed ], [ -22, %do.end35 ], [ -22, %if.end12.platform_resource_failed_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %platform_resource_failed, %for.inc.1, %if.end8.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end5 ], [ %ret.3, %platform_resource_failed ], [ 0, %for.inc.1 ], [ -22, %do.end ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softing_pdev_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @softing_card_shutdown(ptr noundef %1)
  %arrayidx = getelementptr %struct.softing, ptr %1, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 133
  tail call void @sysfs_remove_group(ptr noundef %dev.i, ptr noundef nonnull @netdev_sysfs_group) #10
  tail call void @unregister_candev(ptr noundef nonnull %3) #10
  tail call void @free_candev(ptr noundef nonnull %3) #10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.softing, ptr %1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %6, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.1 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 133
  tail call void @sysfs_remove_group(ptr noundef %dev.i.1, ptr noundef nonnull @netdev_sysfs_group) #10
  tail call void @unregister_candev(ptr noundef nonnull %6) #10
  tail call void @free_candev(ptr noundef nonnull %6) #10
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @softing_pdev_group) #10
  %dpram = getelementptr inbounds %struct.softing, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dpram, align 8
  tail call void @iounmap(ptr noundef %9) #10
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @softing_card_boot(ptr noundef %card) unnamed_addr #0 align 64 {
entry:
  %back = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %back) #10
  %fw = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 6
  %lock = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 6, i32 1
  %0 = call ptr @memset(ptr %back, i32 255, i32 16)
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  br i1 %tobool2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 8
  %enable_irq = getelementptr inbounds %struct.softing_platform_data, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %enable_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %enable_irq, align 4
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %if.end6.if.end12_crit_edge, label %if.then8

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 1
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %call11 = tail call i32 %6(ptr noundef %8, i32 noundef 1) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end6.if.end12_crit_edge
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 8
  %generation.i = getelementptr inbounds %struct.softing_platform_data, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %generation.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp sgt i32 %12, 1
  br i1 %cmp.i, label %if.then.i, label %if.end12.softing_set_reset_dpram.exit_crit_edge

if.end12.softing_set_reset_dpram.exit_crit_edge:  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %softing_set_reset_dpram.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %spin.i = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %spin.i) #10
  %dpram.i = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 9
  %13 = ptrtoint ptr %dpram.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dpram.i, align 8
  %arrayidx.i = getelementptr i8, ptr %14, i32 3584
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.i) #10, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  %16 = and i8 %15, -2
  %17 = ptrtoint ptr %dpram.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dpram.i, align 8
  %arrayidx3.i = getelementptr i8, ptr %18, i32 3584
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx3.i, i8 %16) #10, !srcloc !144
  tail call void @_raw_spin_unlock_bh(ptr noundef %spin.i) #10
  br label %softing_set_reset_dpram.exit

softing_set_reset_dpram.exit:                     ; preds = %if.then.i, %if.end12.softing_set_reset_dpram.exit_crit_edge
  %19 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card, align 8
  %reset = getelementptr inbounds %struct.softing_platform_data, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reset, align 4
  %tobool14.not = icmp eq ptr %22, null
  br i1 %tobool14.not, label %softing_set_reset_dpram.exit.if.end20_crit_edge, label %if.then15

softing_set_reset_dpram.exit.if.end20_crit_edge:  ; preds = %softing_set_reset_dpram.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then15:                                        ; preds = %softing_set_reset_dpram.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pdev18 = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 1
  %23 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev18, align 4
  %call19 = tail call i32 %22(ptr noundef %24, i32 noundef 1) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %softing_set_reset_dpram.exit.if.end20_crit_edge
  %dpram_size = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 11
  %dpram = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end20
  %j.0 = phi i32 [ 0, %if.end20 ], [ %add, %for.body.for.cond_crit_edge ]
  %add = add i32 %j.0, 16
  %25 = ptrtoint ptr %dpram_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dpram_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %26)
  %cmp = icmp ult i32 %add, %26
  br i1 %cmp, label %for.body, label %do.body33

for.body:                                         ; preds = %for.cond
  %27 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dpram, align 8
  %arrayidx = getelementptr i8, ptr %28, i32 %j.0
  call void @mmiocpy(ptr noundef %arrayidx, ptr noundef nonnull @softing_card_boot.stream, i32 noundef 16) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !146
  call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dpram, align 8
  %arrayidx22 = getelementptr i8, ptr %30, i32 %j.0
  call void @mmiocpy(ptr noundef nonnull %back, ptr noundef %arrayidx22, i32 noundef 16) #10
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %back, ptr noundef nonnull dereferenceable(16) @softing_card_boot.stream, i32 16) #15
  %tobool25.not = icmp eq i32 %bcmp, 0
  br i1 %tobool25.not, label %for.body.for.cond_crit_edge, label %do.end30

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

do.end30:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %pdev31 = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 1
  %31 = ptrtoint ptr %pdev31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev31, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %j.0) #13
  br label %failed

do.body33:                                        ; preds = %for.cond
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !147
  call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card, align 8
  %boot = getelementptr inbounds %struct.softing_platform_data, ptr %34, i32 0, i32 9
  %fw37 = getelementptr inbounds %struct.softing_platform_data, ptr %34, i32 0, i32 9, i32 2
  %35 = ptrtoint ptr %fw37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fw37, align 4
  %37 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dpram, align 8
  %39 = ptrtoint ptr %dpram_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dpram_size, align 8
  %41 = ptrtoint ptr %boot to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %boot, align 4
  %addr = getelementptr inbounds %struct.softing_platform_data, ptr %34, i32 0, i32 9, i32 1
  %43 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %addr, align 4
  %sub = sub i32 %42, %44
  %call44 = call i32 @softing_load_fw(ptr noundef %36, ptr noundef %card, ptr noundef %38, i32 noundef %40, i32 noundef %sub) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.body33.failed_crit_edge, label %if.end47

do.body33.failed_crit_edge:                       ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end47:                                         ; preds = %do.body33
  %45 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card, align 8
  %load = getelementptr inbounds %struct.softing_platform_data, ptr %46, i32 0, i32 10
  %fw49 = getelementptr inbounds %struct.softing_platform_data, ptr %46, i32 0, i32 10, i32 2
  %47 = ptrtoint ptr %fw49 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fw49, align 4
  %49 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dpram, align 8
  %51 = ptrtoint ptr %dpram_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dpram_size, align 8
  %53 = ptrtoint ptr %load to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %load, align 4
  %addr57 = getelementptr inbounds %struct.softing_platform_data, ptr %46, i32 0, i32 10, i32 1
  %55 = ptrtoint ptr %addr57 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %addr57, align 4
  %sub58 = sub i32 %54, %56
  %call59 = call i32 @softing_load_fw(ptr noundef %48, ptr noundef %card, ptr noundef %50, i32 noundef %52, i32 noundef %sub58) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.end47.failed_crit_edge, label %if.end62

if.end47.failed_crit_edge:                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end62:                                         ; preds = %if.end47
  %57 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %card, align 8
  %reset64 = getelementptr inbounds %struct.softing_platform_data, ptr %58, i32 0, i32 12
  %59 = ptrtoint ptr %reset64 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reset64, align 4
  %tobool65.not = icmp eq ptr %60, null
  br i1 %tobool65.not, label %if.end62.if.end71_crit_edge, label %if.then66

if.end62.if.end71_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %pdev69 = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 1
  %61 = ptrtoint ptr %pdev69 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev69, align 4
  %call70 = call i32 %60(ptr noundef %62, i32 noundef 0) #10
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %if.end62.if.end71_crit_edge
  %63 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %card, align 8
  %generation.i171 = getelementptr inbounds %struct.softing_platform_data, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %generation.i171 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %generation.i171, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp.i172 = icmp sgt i32 %66, 1
  br i1 %cmp.i172, label %if.then.i177, label %if.end71.softing_clr_reset_dpram.exit_crit_edge

if.end71.softing_clr_reset_dpram.exit_crit_edge:  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %softing_clr_reset_dpram.exit

if.then.i177:                                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %spin.i173 = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %spin.i173) #10
  %67 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dpram, align 8
  %arrayidx.i175 = getelementptr i8, ptr %68, i32 3584
  %69 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.i175) #10, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  %70 = or i8 %69, 1
  %71 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dpram, align 8
  %arrayidx3.i176 = getelementptr i8, ptr %72, i32 3584
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx3.i176, i8 %70) #10, !srcloc !144
  call void @_raw_spin_unlock_bh(ptr noundef %spin.i173) #10
  br label %softing_clr_reset_dpram.exit

softing_clr_reset_dpram.exit:                     ; preds = %if.then.i177, %if.end71.softing_clr_reset_dpram.exit_crit_edge
  %call72 = call i32 @softing_bootloader_command(ptr noundef %card, i16 noundef signext 0, ptr noundef nonnull @.str.36) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %softing_clr_reset_dpram.exit.failed_crit_edge, label %if.end75

softing_clr_reset_dpram.exit.failed_crit_edge:    ; preds = %softing_clr_reset_dpram.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end75:                                         ; preds = %softing_clr_reset_dpram.exit
  %73 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %card, align 8
  %fw77 = getelementptr inbounds %struct.softing_platform_data, ptr %74, i32 0, i32 11, i32 2
  %75 = ptrtoint ptr %fw77 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fw77, align 4
  %call78 = call i32 @softing_load_app_fw(ptr noundef %76, ptr noundef %card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.end75.failed_crit_edge, label %if.end81

if.end75.failed_crit_edge:                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end81:                                         ; preds = %if.end75
  %call82 = call i32 @softing_chip_poweron(ptr noundef %card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.end81.failed_crit_edge, label %if.end85

if.end81.failed_crit_edge:                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed

if.end85:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %fw, align 8
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

failed:                                           ; preds = %if.end81.failed_crit_edge, %if.end75.failed_crit_edge, %softing_clr_reset_dpram.exit.failed_crit_edge, %if.end47.failed_crit_edge, %do.body33.failed_crit_edge, %do.end30
  %ret.0 = phi i32 [ -5, %do.end30 ], [ %call44, %do.body33.failed_crit_edge ], [ %call59, %if.end47.failed_crit_edge ], [ %call72, %softing_clr_reset_dpram.exit.failed_crit_edge ], [ %call78, %if.end75.failed_crit_edge ], [ %call82, %if.end81.failed_crit_edge ]
  %78 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %fw, align 8
  %79 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %card, align 8
  %enable_irq93 = getelementptr inbounds %struct.softing_platform_data, ptr %80, i32 0, i32 13
  %81 = ptrtoint ptr %enable_irq93 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %enable_irq93, align 4
  %tobool94.not = icmp eq ptr %82, null
  br i1 %tobool94.not, label %failed.if.end100_crit_edge, label %if.then95

failed.if.end100_crit_edge:                       ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

if.then95:                                        ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #12
  %pdev98 = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 1
  %83 = ptrtoint ptr %pdev98 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdev98, align 4
  %call99 = call i32 %82(ptr noundef %84, i32 noundef 0) #10
  br label %if.end100

if.end100:                                        ; preds = %if.then95, %failed.if.end100_crit_edge
  %85 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %card, align 8
  %generation.i178 = getelementptr inbounds %struct.softing_platform_data, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %generation.i178 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %generation.i178, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %88)
  %cmp.i179 = icmp sgt i32 %88, 1
  br i1 %cmp.i179, label %if.then.i184, label %if.end100.softing_set_reset_dpram.exit185_crit_edge

if.end100.softing_set_reset_dpram.exit185_crit_edge: ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %softing_set_reset_dpram.exit185

if.then.i184:                                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  %spin.i180 = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %spin.i180) #10
  %89 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dpram, align 8
  %arrayidx.i182 = getelementptr i8, ptr %90, i32 3584
  %91 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.i182) #10, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  %92 = and i8 %91, -2
  %93 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dpram, align 8
  %arrayidx3.i183 = getelementptr i8, ptr %94, i32 3584
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx3.i183, i8 %92) #10, !srcloc !144
  call void @_raw_spin_unlock_bh(ptr noundef %spin.i180) #10
  br label %softing_set_reset_dpram.exit185

softing_set_reset_dpram.exit185:                  ; preds = %if.then.i184, %if.end100.softing_set_reset_dpram.exit185_crit_edge
  %95 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %card, align 8
  %reset102 = getelementptr inbounds %struct.softing_platform_data, ptr %96, i32 0, i32 12
  %97 = ptrtoint ptr %reset102 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reset102, align 4
  %tobool103.not = icmp eq ptr %98, null
  br i1 %tobool103.not, label %softing_set_reset_dpram.exit185.if.end109_crit_edge, label %if.then104

softing_set_reset_dpram.exit185.if.end109_crit_edge: ; preds = %softing_set_reset_dpram.exit185
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.then104:                                       ; preds = %softing_set_reset_dpram.exit185
  call void @__sanitizer_cov_trace_pc() #12
  %pdev107 = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 1
  %99 = ptrtoint ptr %pdev107 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pdev107, align 4
  %call108 = call i32 %98(ptr noundef %100, i32 noundef 1) #10
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %softing_set_reset_dpram.exit185.if.end109_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %if.end85, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %ret.0, %if.end109 ], [ 0, %if.end85 ], [ -512, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %back) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @softing_card_shutdown(ptr noundef %card) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 6
  %lock = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 6, i32 1
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #10
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw, align 8
  store i32 0, ptr %fw, align 8
  %requested = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %requested to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requested, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %entry.if.end13_crit_edge, label %land.lhs.true

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %irq = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 7
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end13_crit_edge, label %if.then7

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %card) #10
  %6 = ptrtoint ptr %requested to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %requested, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool14.not = icmp eq i32 %1, 0
  br i1 %tobool14.not, label %if.end13.if.end30_crit_edge, label %if.then15

if.end13.if.end30_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then15:                                        ; preds = %if.end13
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 8
  %enable_irq = getelementptr inbounds %struct.softing_platform_data, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %enable_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %enable_irq, align 4
  %tobool16.not = icmp eq ptr %10, null
  br i1 %tobool16.not, label %if.then15.if.end21_crit_edge, label %if.then17

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 1
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %call20 = tail call i32 %10(ptr noundef %12, i32 noundef 0) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.then15.if.end21_crit_edge
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 8
  %generation.i = getelementptr inbounds %struct.softing_platform_data, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %generation.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i = icmp sgt i32 %16, 1
  br i1 %cmp.i, label %if.then.i, label %if.end21.softing_set_reset_dpram.exit_crit_edge

if.end21.softing_set_reset_dpram.exit_crit_edge:  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %softing_set_reset_dpram.exit

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %spin.i = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %spin.i) #10
  %dpram.i = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 9
  %17 = ptrtoint ptr %dpram.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dpram.i, align 8
  %arrayidx.i = getelementptr i8, ptr %18, i32 3584
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.i) #10, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  %20 = and i8 %19, -2
  %21 = ptrtoint ptr %dpram.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dpram.i, align 8
  %arrayidx3.i = getelementptr i8, ptr %22, i32 3584
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx3.i, i8 %20) #10, !srcloc !144
  tail call void @_raw_spin_unlock_bh(ptr noundef %spin.i) #10
  br label %softing_set_reset_dpram.exit

softing_set_reset_dpram.exit:                     ; preds = %if.then.i, %if.end21.softing_set_reset_dpram.exit_crit_edge
  %23 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card, align 8
  %reset = getelementptr inbounds %struct.softing_platform_data, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reset, align 4
  %tobool23.not = icmp eq ptr %26, null
  br i1 %tobool23.not, label %softing_set_reset_dpram.exit.if.end30_crit_edge, label %if.then24

softing_set_reset_dpram.exit.if.end30_crit_edge:  ; preds = %softing_set_reset_dpram.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then24:                                        ; preds = %softing_set_reset_dpram.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pdev27 = getelementptr inbounds %struct.softing, ptr %card, i32 0, i32 1
  %27 = ptrtoint ptr %pdev27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev27, align 4
  %call28 = tail call i32 %26(ptr noundef %28, i32 noundef 1) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %softing_set_reset_dpram.exit.if.end30_crit_edge, %if.end13.if.end30_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @softing_load_fw(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @softing_bootloader_command(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @softing_load_app_fw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @softing_chip_poweron(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_serial(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %serial = getelementptr inbounds %struct.softing, ptr %1, i32 0, i32 12, i32 3
  %2 = ptrtoint ptr %serial to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %serial, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_firmware(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %fw = getelementptr inbounds %struct.softing_platform_data, ptr %3, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, ptr noundef %5)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_firmware_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.softing, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id, align 4
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_hardware(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.softing_platform_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, ptr noundef %5)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_hardware_version(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hw_version = getelementptr inbounds %struct.softing, ptr %1, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %hw_version to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_version, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_license(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %license = getelementptr inbounds %struct.softing, ptr %1, i32 0, i32 12, i32 2
  %2 = ptrtoint ptr %license to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %license, align 4
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @softing_default_output(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softing_candev_set_mode(ptr noundef %ndev, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %entry.cleanup_crit_edge
    i32 2, label %entry.cleanup_crit_edge2
  ]

entry.cleanup_crit_edge2:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @softing_startstop(ptr noundef %ndev, i32 noundef 1) #10
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge2
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call, %sw.bb ], [ -95, %entry.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softing_netdev_open(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @open_candev(ptr noundef %ndev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @softing_startstop(ptr noundef %ndev, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @close_candev(ptr noundef %ndev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then2 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softing_netdev_stop(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %call = tail call i32 @softing_startstop(ptr noundef %ndev, i32 noundef 0) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @softing_netdev_start_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr i8, ptr %dev, i32 2620
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #10
  %4 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 3
  %7 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 4
  %8 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 5
  %9 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 6
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %10 = call ptr @memset(ptr %buf, i32 255, i32 16)
  %11 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %protocol.i, align 8
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %12, label %entry.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.can_dropped_invalid_skb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %cmp2.not.i = icmp eq i32 %15, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !148

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %17)
  %cmp6.i = icmp ugt i8 %17, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !149

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %19)
  %cmp16.not.i = icmp eq i32 %19, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !148

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %21)
  %cmp21.i = icmp ugt i8 %21, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !149

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

if.end34.i:                                       ; preds = %lor.rhs18.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %22 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i
  %.b70.i.i = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !148

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 104, i32 noundef 9, ptr noundef null) #10
  br label %can_dropped_invalid_skb.exit

if.end37.i.i:                                     ; preds = %if.end34.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %24 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %25 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp38.i.i = icmp eq i16 %25, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end37.i.i.if.end_crit_edge

if.end37.i.i.if.end_crit_edge:                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %26 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ifindex.i.i, align 4
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %23, align 8
  %29 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %skbcnt.i.i, align 4
  %32 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load45.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear46.i.i = and i16 %bf.load45.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear46.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %34, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i, 0
  %bf.clear54.i.i = and i16 %bf.set.i.i, 7167
  %bf.set51.i.i = or i16 %bf.clear54.i.i, -24576
  %storemerge.i.i = select i1 %tobool47.not.i.i, i16 %bf.clear54.i.i, i16 %bf.set51.i.i
  %35 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %storemerge.i.i, ptr %ip_summed.i.i, align 8
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %38 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i76.i.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i77.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i78.i.i = sub i32 %sub.ptr.lhs.cast.i76.i.i, %sub.ptr.rhs.cast.i77.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i78.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %40 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %41 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %42 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  br label %if.end

can_dropped_invalid_skb.exit:                     ; preds = %if.then.i.i, %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, %if.then.i.can_dropped_invalid_skb.exit_crit_edge, %entry.can_dropped_invalid_skb.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %43 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %44, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %spin = getelementptr inbounds %struct.softing, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %spin) #10
  %fw = getelementptr inbounds %struct.softing, ptr %1, i32 0, i32 6
  %45 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fw, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not = icmp eq i32 %46, 0
  br i1 %tobool.not, label %if.end.xmit_done_crit_edge, label %lor.lhs.false

if.end.xmit_done_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %xmit_done

lor.lhs.false:                                    ; preds = %if.end
  %tx = getelementptr inbounds %struct.softing, ptr %1, i32 0, i32 8
  %47 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %48)
  %cmp = icmp sgt i32 %48, 30
  br i1 %cmp, label %lor.lhs.false.xmit_done_crit_edge, label %lor.lhs.false3

lor.lhs.false.xmit_done_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %xmit_done

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %tx4 = getelementptr i8, ptr %dev, i32 2624
  %49 = ptrtoint ptr %tx4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %50)
  %cmp6 = icmp sgt i32 %50, 14
  br i1 %cmp6, label %lor.lhs.false3.xmit_done_crit_edge, label %if.end8

lor.lhs.false3.xmit_done_crit_edge:               ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %xmit_done

if.end8:                                          ; preds = %lor.lhs.false3
  %dpram = getelementptr inbounds %struct.softing, ptr %1, i32 0, i32 9
  %51 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dpram, align 8
  %arrayidx = getelementptr i8, ptr %52, i32 1541
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx) #10, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  %54 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dpram, align 8
  %arrayidx11 = getelementptr i8, ptr %55, i32 1537
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx11) #10, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  %conv = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %56)
  %cmp14 = icmp eq i8 %53, %56
  br i1 %cmp14, label %if.end8.xmit_done_crit_edge, label %if.end17

if.end8.xmit_done_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %xmit_done

if.end17:                                         ; preds = %if.end8
  %57 = getelementptr inbounds i8, ptr %buf, i32 1
  %58 = call ptr @memset(ptr %57, i32 0, i32 15)
  %59 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %buf, align 1
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %3, align 8
  %and = and i32 %61, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  %spec.store.select179 = select i1 %tobool19.not, i8 1, i8 9
  %62 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %spec.store.select179, ptr %buf, align 1
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %tobool26.not = icmp sgt i32 %64, -1
  br i1 %tobool26.not, label %if.end17.if.end31_crit_edge, label %if.then27

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then27:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %65 = or i8 %spec.store.select179, 4
  %66 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %buf, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end17.if.end31_crit_edge
  %index = getelementptr i8, ptr %dev, i32 2684
  %67 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool32.not = icmp eq i32 %68, 0
  br i1 %tobool32.not, label %if.end31.if.end37_crit_edge, label %if.then33

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %buf, align 1
  %71 = or i8 %70, -128
  store i8 %71, ptr %buf, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end31.if.end37_crit_edge
  %72 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 4
  %75 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %4, align 1
  %76 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %3, align 8
  %conv40 = trunc i32 %77 to i8
  %78 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv40, ptr %5, align 1
  %79 = load i32, ptr %3, align 8
  %shr43 = lshr i32 %79, 8
  %conv44 = trunc i32 %shr43 to i8
  %80 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv44, ptr %6, align 1
  %81 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %tobool48.not = icmp sgt i32 %81, -1
  br i1 %tobool48.not, label %if.end37.if.end58_crit_edge, label %if.then49

if.end37.if.end58_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then49:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %shr51 = lshr i32 %81, 16
  %conv52 = trunc i32 %shr51 to i8
  %82 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv52, ptr %7, align 1
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %3, align 8
  %shr55 = lshr i32 %84, 24
  %conv56 = trunc i32 %shr55 to i8
  %85 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv56, ptr %8, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.then49, %if.end37.if.end58_crit_edge
  %ptr.0 = phi ptr [ %9, %if.then49 ], [ %8, %if.end37.if.end58_crit_edge ]
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %3, align 8
  %and60 = and i32 %87, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.then62, label %if.end58.if.end66_crit_edge

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %data63 = getelementptr inbounds %struct.can_frame, ptr %3, i32 0, i32 5
  %88 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %72, align 4
  %conv65 = zext i8 %89 to i32
  %90 = call ptr @memcpy(ptr %ptr.0, ptr %data63, i32 %conv65)
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.end58.if.end66_crit_edge
  %91 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dpram, align 8
  %mul = shl nuw nsw i32 %conv, 4
  %add = add nuw nsw i32 %mul, 1024
  %arrayidx69 = getelementptr i8, ptr %92, i32 %add
  call void @mmiocpy(ptr noundef %arrayidx69, ptr noundef nonnull %buf, i32 noundef 16) #10
  %inc = add i8 %53, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %inc)
  %cmp72 = icmp ugt i8 %inc, 31
  %spec.store.select = select i1 %cmp72, i8 0, i8 %inc
  %93 = ptrtoint ptr %dpram to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dpram, align 8
  %arrayidx77 = getelementptr i8, ptr %94, i32 1541
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx77, i8 %spec.store.select) #10, !srcloc !144
  %95 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %index, align 4
  %last_bus = getelementptr inbounds %struct.softing, ptr %1, i32 0, i32 8, i32 1
  %97 = ptrtoint ptr %last_bus to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %last_bus, align 4
  %98 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx, align 8
  %inc82 = add i32 %99, 1
  store i32 %inc82, ptr %tx, align 8
  %100 = ptrtoint ptr %tx4 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tx4, align 4
  %inc85 = add i32 %101, 1
  store i32 %inc85, ptr %tx4, align 4
  %echo_put = getelementptr i8, ptr %dev, i32 2628
  %102 = ptrtoint ptr %echo_put to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %echo_put, align 4
  %call87 = call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %dev, i32 noundef %103, i32 noundef 0) #10
  %104 = ptrtoint ptr %echo_put to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %echo_put, align 4
  %inc90 = add i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %inc90)
  %cmp93 = icmp sgt i32 %inc90, 14
  %spec.select = select i1 %cmp93, i32 0, i32 %inc90
  %106 = ptrtoint ptr %echo_put to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %spec.select, ptr %echo_put, align 4
  br label %xmit_done

xmit_done:                                        ; preds = %if.end66, %if.end8.xmit_done_crit_edge, %lor.lhs.false3.xmit_done_crit_edge, %lor.lhs.false.xmit_done_crit_edge, %if.end.xmit_done_crit_edge
  %cmp115.not = phi i1 [ false, %if.end8.xmit_done_crit_edge ], [ false, %if.end.xmit_done_crit_edge ], [ false, %lor.lhs.false.xmit_done_crit_edge ], [ false, %lor.lhs.false3.xmit_done_crit_edge ], [ true, %if.end66 ]
  %ret.0 = phi i32 [ 16, %if.end8.xmit_done_crit_edge ], [ 16, %if.end.xmit_done_crit_edge ], [ 16, %lor.lhs.false.xmit_done_crit_edge ], [ 16, %lor.lhs.false3.xmit_done_crit_edge ], [ 0, %if.end66 ]
  call void @_raw_spin_unlock(ptr noundef %spin) #10
  %tx100 = getelementptr inbounds %struct.softing, ptr %1, i32 0, i32 8
  %107 = ptrtoint ptr %tx100 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tx100, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %108)
  %cmp102 = icmp sgt i32 %108, 30
  br i1 %cmp102, label %for.body.preheader, label %xmit_done.if.end114_crit_edge

xmit_done.if.end114_crit_edge:                    ; preds = %xmit_done
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

for.body.preheader:                               ; preds = %xmit_done
  %arrayidx107 = getelementptr %struct.softing, ptr %1, i32 0, i32 2, i32 0
  %109 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx107, align 4
  %tobool108.not = icmp eq ptr %110, null
  br i1 %tobool108.not, label %for.body.preheader.for.inc_crit_edge, label %if.then109

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then109:                                       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %110, i32 0, i32 103
  %111 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %112, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then109, %for.body.preheader.for.inc_crit_edge
  %arrayidx107.1 = getelementptr %struct.softing, ptr %1, i32 0, i32 2, i32 1
  %113 = ptrtoint ptr %arrayidx107.1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx107.1, align 4
  %tobool108.not.1 = icmp eq ptr %114, null
  br i1 %tobool108.not.1, label %for.inc.if.end114_crit_edge, label %if.then109.1

for.inc.if.end114_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then109.1:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i.1 = getelementptr inbounds %struct.net_device, ptr %114, i32 0, i32 103
  %115 = ptrtoint ptr %_tx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %_tx.i.i.1, align 128
  %state.i.i.1 = getelementptr inbounds %struct.netdev_queue, ptr %116, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.1) #10
  br label %if.end114

if.end114:                                        ; preds = %if.then109.1, %for.inc.if.end114_crit_edge, %xmit_done.if.end114_crit_edge
  br i1 %cmp115.not, label %if.end114.cleanup_crit_edge, label %if.then117

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then117:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  %_tx.i.i180 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %117 = ptrtoint ptr %_tx.i.i180 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %_tx.i.i180, align 128
  %state.i.i181 = getelementptr inbounds %struct.netdev_queue, ptr %118, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i181) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then117, %if.end114.cleanup_crit_edge, %can_dropped_invalid_skb.exit
  %retval.0 = phi i32 [ 0, %can_dropped_invalid_skb.exit ], [ %ret.0, %if.then117 ], [ %ret.0, %if.end114.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @softing_startstop(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_chip(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr i8, ptr %dev, i32 1586
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %chip, align 2
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.52, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_output(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %output = getelementptr i8, ptr %dev, i32 1584
  %0 = ptrtoint ptr %output to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %output, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.54, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_output(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr i8, ptr %dev, i32 1516
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !140
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 255
  store i32 %and, ptr %val, align 4
  %lock = getelementptr inbounds %struct.softing, ptr %1, i32 0, i32 6, i32 1
  %call3 = call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %state.i = getelementptr i8, ptr %dev, i32 -1068
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end10, label %if.end5.cleanup.sink.split_crit_edge

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %conv = trunc i32 %8 to i8
  %output = getelementptr i8, ptr %dev, i32 1584
  %9 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %output, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end10, %if.end5.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %count, %if.end10 ], [ -16, %if.end5.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -512, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !69, !70, !71, !72, !74, !76, !78, !80, !81, !82, !84, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !102, !103, !105, !107, !109, !110, !112, !113, !114, !115, !117, !119, !121, !123, !124, !126, !128, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/can/softing/softing_main.c", i32 439, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @softing_enable_irq._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @softing_enable_irq._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_softing__461_858_softing_driver_init6, !9, !"__initcall__kmod_softing__461_858_softing_driver_init6", i1 false, i1 false}
!9 = !{!"../drivers/net/can/softing/softing_main.c", i32 858, i32 1}
!10 = !{ptr @__exitcall_softing_driver_exit, !9, !"__exitcall_softing_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias462, !12, !"__UNIQUE_ID_alias462", i1 false, i1 false}
!12 = !{!"../drivers/net/can/softing/softing_main.c", i32 860, i32 1}
!13 = !{ptr @__UNIQUE_ID_description463, !14, !"__UNIQUE_ID_description463", i1 false, i1 false}
!14 = !{!"../drivers/net/can/softing/softing_main.c", i32 861, i32 1}
!15 = !{ptr @__UNIQUE_ID_author464, !16, !"__UNIQUE_ID_author464", i1 false, i1 false}
!16 = !{!"../drivers/net/can/softing/softing_main.c", i32 862, i32 1}
!17 = !{ptr @__UNIQUE_ID_file465, !18, !"__UNIQUE_ID_file465", i1 false, i1 false}
!18 = !{!"../drivers/net/can/softing/softing_main.c", i32 863, i32 1}
!19 = !{ptr @__UNIQUE_ID_license466, !18, !"__UNIQUE_ID_license466", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/can/softing/softing_main.c", i32 852, i32 11}
!22 = !{ptr @softing_driver, !23, !"softing_driver", i1 false, i1 false}
!23 = !{!"../drivers/net/can/softing/softing_main.c", i32 850, i32 31}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/can/softing/softing_main.c", i32 761, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @softing_pdev_probe._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @softing_pdev_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/can/softing/softing_main.c", i32 765, i32 3}
!32 = !{ptr @softing_pdev_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @softing_pdev_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @softing_pdev_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/net/can/softing/softing_main.c", i32 775, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @softing_pdev_probe.__key.13, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/net/can/softing/softing_main.c", i32 776, i32 2}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/can/softing/softing_main.c", i32 786, i32 3}
!42 = !{ptr @softing_pdev_probe._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @softing_pdev_probe._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/can/softing/softing_main.c", i32 797, i32 3}
!46 = !{ptr @softing_pdev_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @softing_pdev_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/can/softing/softing_main.c", i32 806, i32 3}
!50 = !{ptr @softing_pdev_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @softing_pdev_probe._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/can/softing/softing_main.c", i32 814, i32 4}
!54 = !{ptr @softing_pdev_probe._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @softing_pdev_probe._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/can/softing/softing_main.c", i32 825, i32 4}
!58 = !{ptr @softing_pdev_probe._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @softing_pdev_probe._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/can/softing/softing_main.c", i32 830, i32 2}
!62 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @softing_pdev_probe._entry.30, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @softing_pdev_probe._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @softing_card_boot.stream, !66, !"stream", i1 false, i1 false}
!66 = !{!"../drivers/net/can/softing/softing_main.c", i32 476, i32 23}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/can/softing/softing_main.c", i32 504, i32 3}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @softing_card_boot._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @softing_card_boot._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/can/softing/softing_main.c", i32 525, i32 44}
!74 = !{ptr @softing_pdev_group, !75, !"softing_pdev_group", i1 false, i1 false}
!75 = !{!"../drivers/net/can/softing/softing_main.c", i32 721, i32 37}
!76 = !{ptr @softing_pdev_attrs, !77, !"softing_pdev_attrs", i1 false, i1 false}
!77 = !{!"../drivers/net/can/softing/softing_main.c", i32 711, i32 26}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/can/softing/softing_main.c", i32 704, i32 1}
!80 = !{ptr @dev_attr_serial, !79, !"dev_attr_serial", i1 false, i1 false}
!81 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/can/softing/softing_main.c", i32 705, i32 1}
!84 = !{ptr @dev_attr_firmware, !83, !"dev_attr_firmware", i1 false, i1 false}
!85 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/can/softing/softing_main.c", i32 706, i32 1}
!88 = !{ptr @dev_attr_firmware_version, !87, !"dev_attr_firmware_version", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/can/softing/softing_main.c", i32 707, i32 1}
!91 = !{ptr @dev_attr_hardware, !90, !"dev_attr_hardware", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/can/softing/softing_main.c", i32 708, i32 1}
!94 = !{ptr @dev_attr_hardware_version, !93, !"dev_attr_hardware_version", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/can/softing/softing_main.c", i32 709, i32 1}
!97 = !{ptr @dev_attr_license, !96, !"dev_attr_license", i1 false, i1 false}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/can/softing/softing_main.c", i32 638, i32 3}
!100 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @softing_netdev_create._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @softing_netdev_create._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @softing_btr_const, !104, !"softing_btr_const", i1 false, i1 false}
!104 = !{!"../drivers/net/can/softing/softing_main.c", i32 617, i32 41}
!105 = !{ptr @softing_netdev_ops, !106, !"softing_netdev_ops", i1 false, i1 false}
!106 = !{!"../drivers/net/can/softing/softing_main.c", i32 610, i32 36}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!109 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/can/softing/softing_main.c", i32 667, i32 3}
!112 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @softing_netdev_register._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @softing_netdev_register._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/can/softing/softing_main.c", i32 671, i32 24}
!117 = !{ptr @netdev_sysfs_group, !118, !"netdev_sysfs_group", i1 false, i1 false}
!118 = !{!"../drivers/net/can/softing/softing_main.c", i32 605, i32 37}
!119 = !{ptr @netdev_sysfs_attrs, !120, !"netdev_sysfs_attrs", i1 false, i1 false}
!120 = !{!"../drivers/net/can/softing/softing_main.c", i32 600, i32 38}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/can/softing/softing_main.c", i32 597, i32 14}
!123 = !{ptr @dev_attr_chip, !122, !"dev_attr_chip", i1 false, i1 false}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/can/softing/softing_main.c", i32 559, i32 22}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/can/softing/softing_main.c", i32 598, i32 14}
!128 = !{ptr @dev_attr_output, !127, !"dev_attr_output", i1 false, i1 false}
!129 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/can/softing/softing_main.c", i32 568, i32 22}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{!"auto-init"}
!141 = !{i64 4634980}
!142 = !{i64 2152174325}
!143 = !{i64 2152175930}
!144 = !{i64 4634585}
!145 = !{i64 2156922840}
!146 = !{i64 2156927312}
!147 = !{i64 2156929155}
!148 = !{!"branch_weights", i32 2000, i32 1}
!149 = !{!"branch_weights", i32 1, i32 2000}
