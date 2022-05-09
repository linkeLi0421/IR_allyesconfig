; ModuleID = '/llk/IR_all_yes/drivers/pci/pci-sysfs.c_pt.bc'
source_filename = "../drivers/pci/pci-sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type opaque
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.18, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@pci_bus_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pci_bus_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pci_bus_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @pci_bus_group, ptr null], [24 x i8] zeroinitializer }, align 32
@pcibus_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pcibus_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pcibus_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @pcibus_group, ptr null], [24 x i8] zeroinitializer }, align 32
@sysfs_initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__initcall__kmod_pci_sysfs__237_1443_pci_sysfs_init7 = internal global ptr @pci_sysfs_init, section ".initcall7.init", align 4
@pci_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pci_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pci_dev_config_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr @pci_dev_config_attr_is_visible, ptr null, ptr @pci_dev_config_attrs }, [44 x i8] zeroinitializer }, align 32
@pci_dev_rom_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr @pci_dev_rom_attr_is_visible, ptr null, ptr @pci_dev_rom_attrs }, [44 x i8] zeroinitializer }, align 32
@pci_dev_reset_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @pci_dev_reset_attr_is_visible, ptr null, ptr @pci_dev_reset_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pci_dev_reset_method_attr_group = external dso_local constant %struct.attribute_group, align 4
@pci_dev_vpd_attr_group = external dso_local constant %struct.attribute_group, align 4
@pci_dev_groups = dso_local global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @pci_dev_group, ptr @pci_dev_config_attr_group, ptr @pci_dev_rom_attr_group, ptr @pci_dev_reset_attr_group, ptr @pci_dev_reset_method_attr_group, ptr @pci_dev_vpd_attr_group, ptr null], [36 x i8] zeroinitializer }, align 32
@pci_dev_attr_groups = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @pci_dev_attr_group, ptr @pci_dev_hp_attr_group, ptr @sriov_pf_dev_attr_group, ptr @sriov_vf_dev_attr_group, ptr @pci_bridge_attr_group, ptr @pcie_dev_attr_group, ptr @aer_stats_attr_group, ptr @aspm_ctrl_attr_group, ptr null], [60 x i8] zeroinitializer }, align 32
@pci_dev_type = dso_local constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr null, ptr @pci_dev_attr_groups, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pci_bus_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bus_attr_rescan, ptr null], [24 x i8] zeroinitializer }, align 32
@bus_attr_rescan = internal global { %struct.bus_attribute, [36 x i8] } { %struct.bus_attribute { %struct.attribute { ptr @.str, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @rescan_store }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rescan\00", [25 x i8] zeroinitializer }, align 32
@pcibus_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_bus_rescan, ptr @dev_attr_cpuaffinity, ptr @dev_attr_cpulistaffinity, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_bus_rescan = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @bus_rescan_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cpuaffinity = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpuaffinity_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cpulistaffinity = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpulistaffinity_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cpuaffinity\00", [20 x i8] zeroinitializer }, align 32
@cpu_all_bits = external dso_local constant [1 x i32], align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cpulistaffinity\00", [16 x i8] zeroinitializer }, align 32
@pci_create_attr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"resource%d\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pci_dev_attrs = internal global { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @dev_attr_power_state, ptr @dev_attr_resource, ptr @dev_attr_vendor, ptr @dev_attr_device, ptr @dev_attr_subsystem_vendor, ptr @dev_attr_subsystem_device, ptr @dev_attr_revision, ptr @dev_attr_class, ptr @dev_attr_irq, ptr @dev_attr_local_cpus, ptr @dev_attr_local_cpulist, ptr @dev_attr_modalias, ptr @dev_attr_dma_mask_bits, ptr @dev_attr_consistent_dma_mask_bits, ptr @dev_attr_enable, ptr @dev_attr_broken_parity_status, ptr @dev_attr_msi_bus, ptr @dev_attr_devspec, ptr @dev_attr_driver_override, ptr @dev_attr_ari_enabled, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_power_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @power_state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_resource = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @resource_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vendor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vendor_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_device = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @device_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_subsystem_vendor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @subsystem_vendor_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_subsystem_device = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @subsystem_device_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_revision = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @revision_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_class = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @class_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_irq = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @irq_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_local_cpus = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @local_cpus_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_local_cpulist = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @local_cpulist_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_modalias = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @modalias_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dma_mask_bits = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @dma_mask_bits_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_consistent_dma_mask_bits = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @consistent_dma_mask_bits_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @enable_show, ptr @enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_broken_parity_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @broken_parity_status_show, ptr @broken_parity_status_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_msi_bus = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @msi_bus_show, ptr @msi_bus_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_devspec = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @devspec_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_driver_override = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @driver_override_show, ptr @driver_override_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ari_enabled = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ari_enabled_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power_state\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@pci_power_names = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"resource\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"0x%016llx 0x%016llx 0x%016llx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vendor\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"subsystem_vendor\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"subsystem_device\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"revision\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"class\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%06x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"local_cpus\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"local_cpulist\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"modalias\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"pci:v%08Xd%08Xsv%08Xsd%08Xbc%02Xsc%02Xi%02X\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dma_mask_bits\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"consistent_dma_mask_bits\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"broken_parity_status\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msi_bus\00", [24 x i8] zeroinitializer }, align 32
@msi_bus_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.32, i32 415, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MSI/MSI-X %s for future drivers\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msi_bus_store\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/pci/pci-sysfs.c\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msi_bus_store._entry_ptr = internal global ptr @msi_bus_store._entry, section ".printk_index", align 4
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"allowed\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disallowed\00", [21 x i8] zeroinitializer }, align 32
@msi_bus_store._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.31, ptr @.str.32, i32 425, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"MSI/MSI-X %s for future drivers of devices on this bus\0A\00", [40 x i8] zeroinitializer }, align 32
@msi_bus_store._entry_ptr.39 = internal global ptr @msi_bus_store._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devspec\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pOF\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"driver_override\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ari_enabled\00", [20 x i8] zeroinitializer }, align 32
@pci_dev_config_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bin_attr_config, ptr null], [24 x i8] zeroinitializer }, align 32
@bin_attr_config = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @pci_read_config, ptr @pci_write_config, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"config\00", [25 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@pci_dev_rom_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bin_attr_rom, ptr null], [24 x i8] zeroinitializer }, align 32
@bin_attr_rom = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.45, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @pci_read_rom, ptr @pci_write_rom, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rom\00", [28 x i8] zeroinitializer }, align 32
@pci_dev_reset_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_reset, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @reset_store }, [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@pci_dev_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @pci_dev_attrs_are_visible, ptr null, ptr @pci_dev_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pci_dev_hp_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @pci_dev_hp_attrs_are_visible, ptr null, ptr @pci_dev_hp_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@sriov_pf_dev_attr_group = external dso_local constant %struct.attribute_group, align 4
@sriov_vf_dev_attr_group = external dso_local constant %struct.attribute_group, align 4
@pci_bridge_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @pci_bridge_attrs_are_visible, ptr null, ptr @pci_bridge_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pcie_dev_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @pcie_dev_attrs_are_visible, ptr null, ptr @pcie_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@aer_stats_attr_group = external dso_local constant %struct.attribute_group, align 4
@aspm_ctrl_attr_group = external dso_local constant %struct.attribute_group, align 4
@pci_dev_dev_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_boot_vga, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_boot_vga = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @boot_vga_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"boot_vga\00", [23 x i8] zeroinitializer }, align 32
@pci_dev_hp_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_remove, ptr @dev_attr_dev_rescan, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_remove = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 144, i8 -128, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @remove_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dev_rescan = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @dev_rescan_store }, [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"remove\00", [25 x i8] zeroinitializer }, align 32
@pci_bridge_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_subordinate_bus_number, ptr @dev_attr_secondary_bus_number, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_subordinate_bus_number = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @subordinate_bus_number_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_secondary_bus_number = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @secondary_bus_number_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"subordinate_bus_number\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"secondary_bus_number\00", [43 x i8] zeroinitializer }, align 32
@pcie_dev_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_current_link_speed, ptr @dev_attr_current_link_width, ptr @dev_attr_max_link_width, ptr @dev_attr_max_link_speed, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_current_link_speed = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @current_link_speed_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_current_link_width = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @current_link_width_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_link_width = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_link_width_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_link_speed = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_link_speed_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"current_link_speed\00", [45 x i8] zeroinitializer }, align 32
@pcie_link_speed = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"current_link_width\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max_link_width\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max_link_speed\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"pci_bus_group\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 453, i32 37 }
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"pci_bus_groups\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 457, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"pcibus_group\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 665, i32 37 }
@___asan_gen_.65 = private unnamed_addr constant [14 x i8] c"pcibus_groups\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 669, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"sysfs_initialized\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"pci_dev_group\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1505, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant [26 x i8] c"pci_dev_config_attr_group\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 850, i32 37 }
@___asan_gen_.75 = private unnamed_addr constant [23 x i8] c"pci_dev_rom_attr_group\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1352, i32 37 }
@___asan_gen_.78 = private unnamed_addr constant [25 x i8] c"pci_dev_reset_attr_group\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1396, i32 37 }
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"pci_dev_groups\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1509, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"pci_dev_attr_groups\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1545, i32 38 }
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"pci_dev_type\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1563, i32 26 }
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"pci_bus_attrs\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 448, i32 26 }
@___asan_gen_.93 = private unnamed_addr constant [16 x i8] c"bus_attr_rescan\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 446, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant [13 x i8] c"pcibus_attrs\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 658, i32 26 }
@___asan_gen_.102 = private unnamed_addr constant [20 x i8] c"dev_attr_bus_rescan\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 517, i32 32 }
@___asan_gen_.105 = private unnamed_addr constant [21 x i8] c"dev_attr_cpuaffinity\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [25 x i8] c"dev_attr_cpulistaffinity\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 137, i32 8 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 146, i32 8 }
@___asan_gen_.117 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1200, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1207, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"pci_dev_attrs\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 612, i32 26 }
@___asan_gen_.126 = private unnamed_addr constant [21 x i8] c"dev_attr_power_state\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [18 x i8] c"dev_attr_resource\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [16 x i8] c"dev_attr_vendor\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [16 x i8] c"dev_attr_device\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [26 x i8] c"dev_attr_subsystem_vendor\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [26 x i8] c"dev_attr_subsystem_device\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [18 x i8] c"dev_attr_revision\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [15 x i8] c"dev_attr_class\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [13 x i8] c"dev_attr_irq\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c"dev_attr_local_cpus\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [23 x i8] c"dev_attr_local_cpulist\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [18 x i8] c"dev_attr_modalias\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [23 x i8] c"dev_attr_dma_mask_bits\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [34 x i8] c"dev_attr_consistent_dma_mask_bits\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [16 x i8] c"dev_attr_enable\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [30 x i8] c"dev_attr_broken_parity_status\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"dev_attr_msi_bus\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"dev_attr_devspec\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [25 x i8] c"dev_attr_driver_override\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [21 x i8] c"dev_attr_ari_enabled\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 155, i32 8 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 153, i32 25 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 182, i32 8 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 175, i32 34 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 47, i32 1 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 48, i32 1 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 49, i32 1 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 50, i32 1 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 51, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 52, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 71, i32 8 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 66, i32 26 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 118, i32 8 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 125, i32 8 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 290, i32 8 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 284, i32 25 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 373, i32 8 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 371, i32 25 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 381, i32 8 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 328, i32 8 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 95, i32 8 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 428, i32 8 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 414, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 424, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 562, i32 8 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 560, i32 25 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 610, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 277, i32 8 }
@___asan_gen_.303 = private unnamed_addr constant [21 x i8] c"pci_dev_config_attrs\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 833, i32 30 }
@___asan_gen_.306 = private unnamed_addr constant [16 x i8] c"bin_attr_config\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 831, i32 8 }
@___asan_gen_.312 = private unnamed_addr constant [18 x i8] c"pci_dev_rom_attrs\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1331, i32 30 }
@___asan_gen_.315 = private unnamed_addr constant [13 x i8] c"bin_attr_rom\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1329, i32 8 }
@___asan_gen_.321 = private unnamed_addr constant [20 x i8] c"pci_dev_reset_attrs\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1380, i32 26 }
@___asan_gen_.324 = private unnamed_addr constant [15 x i8] c"dev_attr_reset\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1378, i32 8 }
@___asan_gen_.330 = private unnamed_addr constant [19 x i8] c"pci_dev_attr_group\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1530, i32 37 }
@___asan_gen_.333 = private unnamed_addr constant [22 x i8] c"pci_dev_hp_attr_group\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1525, i32 37 }
@___asan_gen_.336 = private unnamed_addr constant [22 x i8] c"pci_bridge_attr_group\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1535, i32 37 }
@___asan_gen_.339 = private unnamed_addr constant [20 x i8] c"pcie_dev_attr_group\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1540, i32 37 }
@___asan_gen_.342 = private unnamed_addr constant [18 x i8] c"pci_dev_dev_attrs\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1445, i32 26 }
@___asan_gen_.345 = private unnamed_addr constant [18 x i8] c"dev_attr_boot_vga\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 687, i32 8 }
@___asan_gen_.351 = private unnamed_addr constant [17 x i8] c"pci_dev_hp_attrs\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1463, i32 26 }
@___asan_gen_.354 = private unnamed_addr constant [16 x i8] c"dev_attr_remove\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [20 x i8] c"dev_attr_dev_rescan\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 479, i32 32 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 494, i32 8 }
@___asan_gen_.363 = private unnamed_addr constant [17 x i8] c"pci_bridge_attrs\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 644, i32 26 }
@___asan_gen_.366 = private unnamed_addr constant [32 x i8] c"dev_attr_subordinate_bus_number\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [30 x i8] c"dev_attr_secondary_bus_number\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 267, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 251, i32 8 }
@___asan_gen_.378 = private unnamed_addr constant [15 x i8] c"pcie_dev_attrs\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 650, i32 26 }
@___asan_gen_.381 = private unnamed_addr constant [28 x i8] c"dev_attr_current_link_speed\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [28 x i8] c"dev_attr_current_link_width\00", align 1
@___asan_gen_.387 = private unnamed_addr constant [24 x i8] c"dev_attr_max_link_width\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [24 x i8] c"dev_attr_max_link_speed\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 219, i32 8 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 235, i32 8 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 201, i32 8 }
@___asan_gen_.402 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.403 = private constant [27 x i8] c"../drivers/pci/pci-sysfs.c\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 192, i32 8 }
@llvm.compiler.used = appending global [120 x ptr] [ptr @__initcall__kmod_pci_sysfs__237_1443_pci_sysfs_init7, ptr @msi_bus_store._entry, ptr @msi_bus_store._entry.37, ptr @msi_bus_store._entry_ptr, ptr @msi_bus_store._entry_ptr.39, ptr @pci_bus_group, ptr @pci_bus_groups, ptr @pcibus_group, ptr @pcibus_groups, ptr @sysfs_initialized, ptr @pci_dev_group, ptr @pci_dev_config_attr_group, ptr @pci_dev_rom_attr_group, ptr @pci_dev_reset_attr_group, ptr @pci_dev_groups, ptr @pci_dev_attr_groups, ptr @pci_dev_type, ptr @pci_bus_attrs, ptr @bus_attr_rescan, ptr @.str, ptr @pcibus_attrs, ptr @dev_attr_bus_rescan, ptr @dev_attr_cpuaffinity, ptr @dev_attr_cpulistaffinity, ptr @.str.1, ptr @.str.2, ptr @pci_create_attr.__key, ptr @.str.4, ptr @pci_dev_attrs, ptr @dev_attr_power_state, ptr @dev_attr_resource, ptr @dev_attr_vendor, ptr @dev_attr_device, ptr @dev_attr_subsystem_vendor, ptr @dev_attr_subsystem_device, ptr @dev_attr_revision, ptr @dev_attr_class, ptr @dev_attr_irq, ptr @dev_attr_local_cpus, ptr @dev_attr_local_cpulist, ptr @dev_attr_modalias, ptr @dev_attr_dma_mask_bits, ptr @dev_attr_consistent_dma_mask_bits, ptr @dev_attr_enable, ptr @dev_attr_broken_parity_status, ptr @dev_attr_msi_bus, ptr @dev_attr_devspec, ptr @dev_attr_driver_override, ptr @dev_attr_ari_enabled, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @pci_dev_config_attrs, ptr @bin_attr_config, ptr @.str.44, ptr @pci_dev_rom_attrs, ptr @bin_attr_rom, ptr @.str.45, ptr @pci_dev_reset_attrs, ptr @dev_attr_reset, ptr @.str.46, ptr @pci_dev_attr_group, ptr @pci_dev_hp_attr_group, ptr @pci_bridge_attr_group, ptr @pcie_dev_attr_group, ptr @pci_dev_dev_attrs, ptr @dev_attr_boot_vga, ptr @.str.47, ptr @pci_dev_hp_attrs, ptr @dev_attr_remove, ptr @dev_attr_dev_rescan, ptr @.str.48, ptr @pci_bridge_attrs, ptr @dev_attr_subordinate_bus_number, ptr @dev_attr_secondary_bus_number, ptr @.str.49, ptr @.str.50, ptr @pcie_dev_attrs, ptr @dev_attr_current_link_speed, ptr @dev_attr_current_link_width, ptr @dev_attr_max_link_width, ptr @dev_attr_max_link_speed, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [117 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_bus_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_bus_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcibus_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcibus_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_dev_config_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_dev_rom_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_dev_reset_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_dev_groups to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_dev_attr_groups to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_dev_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_bus_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_attr_rescan to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcibus_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bus_rescan to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpuaffinity to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpulistaffinity to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_create_attr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_dev_attrs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_resource to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vendor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_subsystem_vendor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_subsystem_device to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_revision to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_class to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_irq to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_local_cpus to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_local_cpulist to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_modalias to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dma_mask_bits to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_consistent_dma_mask_bits to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_broken_parity_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_msi_bus to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_devspec to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_driver_override to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ari_enabled to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_bus_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_bus_store._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_dev_config_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_config to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_dev_rom_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_rom to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_dev_reset_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_dev_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_dev_hp_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_bridge_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_dev_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_dev_dev_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_boot_vga to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_dev_hp_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_remove to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dev_rescan to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_bridge_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_subordinate_bus_number to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_secondary_bus_number to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_dev_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_current_link_speed to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_current_link_width to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_link_width to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_link_speed to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_mmap_fits(ptr noundef %pdev, i32 noundef %resno, ptr nocapture noundef readonly %vma, i32 noundef %mmap_api) local_unnamed_addr #0 align 64 {
entry:
  %pci_start = alloca i32, align 4
  %pci_end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pci_start) #11
  %0 = ptrtoint ptr %pci_start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pci_start, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pci_end) #11
  %1 = ptrtoint ptr %pci_end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %pci_end, align 4, !annotation !204
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %resno
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %resno, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %cond.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.false:                                       ; preds = %entry
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  %sub = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %phi.cmp = icmp eq i32 %sub, -1
  br i1 %phi.cmp, label %cond.false.cleanup_crit_edge, label %cond.end22

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.end22:                                       ; preds = %cond.false
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %6 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_end.i, align 4
  %8 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %7, %9
  %shr.i = lshr i32 %sub.i, 12
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %10 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_pgoff, align 4
  %phi.bo = lshr i32 %sub, 12
  %phi.bo66 = add nuw nsw i32 %phi.bo, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mmap_api)
  %cmp26 = icmp eq i32 %mmap_api, 1
  br i1 %cmp26, label %if.then27, label %cond.end22.if.end31_crit_edge

cond.end22.if.end31_crit_edge:                    ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then27:                                        ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #13
  call void @pci_resource_to_user(ptr noundef %pdev, i32 noundef %resno, ptr noundef %arrayidx, ptr noundef nonnull %pci_start, ptr noundef nonnull %pci_end) #11
  %12 = ptrtoint ptr %pci_start to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pci_start, align 4
  %shr30 = lshr i32 %13, 12
  store i32 %shr30, ptr %pci_start, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %cond.end22.if.end31_crit_edge
  %14 = ptrtoint ptr %pci_start to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pci_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp32.not = icmp ult i32 %11, %15
  br i1 %cmp32.not, label %if.end31.if.end40_crit_edge, label %land.lhs.true

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end31
  %add33 = add i32 %phi.bo66, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add33)
  %cmp34 = icmp uge i32 %11, %add33
  %add36 = add i32 %shr.i, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %add36, i32 %add33)
  %cmp38.not = icmp ugt i32 %add36, %add33
  %or.cond = select i1 %cmp34, i1 true, i1 %cmp38.not
  br i1 %or.cond, label %land.lhs.true.if.end40_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.end40:                                         ; preds = %land.lhs.true.if.end40_crit_edge, %if.end31.if.end40_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %land.lhs.true.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end40 ], [ 0, %cond.false.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pci_end) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pci_start) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_resource_to_user(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pci_create_sysfs_dev_files(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @sysfs_initialized, align 4
  br i1 %.b, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.035.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %end.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %i.035.i, i32 1
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2.i = icmp eq i32 %1, 0
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %cond.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

cond.false.i:                                     ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %i.035.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 8
  %sub.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %tobool.not.i = icmp eq i32 %sub.i, -1
  br i1 %tobool.not.i, label %cond.false.i.for.inc.i_crit_edge, label %if.end.i

cond.false.i.for.inc.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %cond.false.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 54) #14
  %tobool2.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.if.then17.i_crit_edge, label %if.end.i.i

if.end.i.if.then17.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17.i

if.end.i.i:                                       ; preds = %if.end.i
  %add.ptr.i.i = getelementptr %struct.bin_attribute, ptr %call7.i.i.i.i, i32 1
  %key.i.i = getelementptr inbounds %struct.attribute, ptr %call7.i.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @pci_create_attr.__key, ptr %key.i.i, align 8
  %arrayidx7.i.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 55, i32 %i.035.i
  %6 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i.i.i, ptr %arrayidx7.i.i, align 4
  %call8.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.4, i32 noundef %i.035.i) #11
  %flags.i.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %i.035.i, i32 3
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool10.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool10.not.i.i, label %if.else12.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %read.i.i = getelementptr inbounds %struct.bin_attribute, ptr %call7.i.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %read.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @pci_read_resource_io, ptr %read.i.i, align 8
  %write.i.i = getelementptr inbounds %struct.bin_attribute, ptr %call7.i.i.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %write.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pci_write_resource_io, ptr %write.i.i, align 4
  br label %if.end15.i.i

if.else12.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mmap13.i.i = getelementptr inbounds %struct.bin_attribute, ptr %call7.i.i.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %mmap13.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @pci_mmap_resource_uc, ptr %mmap13.i.i, align 8
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.else12.i.i, %if.then11.i.i
  %mmap16.i.i = getelementptr inbounds %struct.bin_attribute, ptr %call7.i.i.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %mmap16.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmap16.i.i, align 8
  %tobool17.not.i.i = icmp eq ptr %13, null
  br i1 %tobool17.not.i.i, label %if.end15.i.i.if.end19.i.i_crit_edge, label %if.then18.i.i

if.end15.i.i.if.end19.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i.i

if.then18.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %f_mapping.i.i = getelementptr inbounds %struct.bin_attribute, ptr %call7.i.i.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %f_mapping.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @iomem_get_mapping, ptr %f_mapping.i.i, align 4
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then18.i.i, %if.end15.i.i.if.end19.i.i_crit_edge
  %15 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i.i, ptr %call7.i.i.i.i, align 8
  %mode.i.i = getelementptr inbounds %struct.attribute, ptr %call7.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 384, ptr %mode.i.i, align 4
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.i = icmp eq i32 %18, 0
  br i1 %cmp.i.i, label %if.end19.i.i.cond.end.i.i_crit_edge, label %cond.false.i.i

if.end19.i.i.cond.end.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 8
  %sub.i.i = add i32 %18, 1
  %add29.i.i = sub i32 %sub.i.i, %20
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end19.i.i.cond.end.i.i_crit_edge
  %cond30.i.i = phi i32 [ %add29.i.i, %cond.false.i.i ], [ 0, %if.end19.i.i.cond.end.i.i_crit_edge ]
  %size.i.i = getelementptr inbounds %struct.bin_attribute, ptr %call7.i.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond30.i.i, ptr %size.i.i, align 4
  %22 = inttoptr i32 %i.035.i to ptr
  %private.i.i = getelementptr inbounds %struct.bin_attribute, ptr %call7.i.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %private.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %private.i.i, align 8
  %call31.i.i = tail call i32 @sysfs_create_bin_file(ptr noundef %dev.i.i, ptr noundef nonnull %call7.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool32.not.i.i, label %cond.end.i.i.for.inc.i_crit_edge, label %if.then33.i.i

cond.end.i.i.for.inc.i_crit_edge:                 ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then33.i.i:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  br label %if.then17.i

if.then17.i:                                      ; preds = %if.then33.i.i, %if.end.i.if.then17.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call31.i.i, %if.then33.i.i ], [ -12, %if.end.i.if.then17.i_crit_edge ]
  tail call fastcc void @pci_remove_resource_files(ptr noundef %pdev) #11
  br label %return

for.inc.i:                                        ; preds = %cond.end.i.i.for.inc.i_crit_edge, %cond.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %for.inc.i.return_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.return_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %for.inc.i.return_crit_edge, %if.then17.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ -13, %entry.return_crit_edge ], [ %retval.0.i.ph.i, %if.then17.i ], [ 0, %for.inc.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_remove_sysfs_dev_files(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @sysfs_initialized, align 4
  br i1 %.b, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @pci_remove_resource_files(ptr noundef %pdev)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci_remove_resource_files(ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 55, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef nonnull %1) #11
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 56, i32 0
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef nonnull %3) #11
  tail call void @kfree(ptr noundef nonnull %3) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %arrayidx.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 55, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %if.end7.if.end.1_crit_edge, label %if.then.1

if.end7.if.end.1_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.1

if.then.1:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef nonnull %5) #11
  tail call void @kfree(ptr noundef nonnull %5) #11
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end7.if.end.1_crit_edge
  %arrayidx2.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 56, i32 1
  %6 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2.1, align 4
  %tobool3.not.1 = icmp eq ptr %7, null
  br i1 %tobool3.not.1, label %if.end.1.if.end7.1_crit_edge, label %if.then4.1

if.end.1.if.end7.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.1

if.then4.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef nonnull %7) #11
  tail call void @kfree(ptr noundef nonnull %7) #11
  br label %if.end7.1

if.end7.1:                                        ; preds = %if.then4.1, %if.end.1.if.end7.1_crit_edge
  %arrayidx.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 55, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %9, null
  br i1 %tobool.not.2, label %if.end7.1.if.end.2_crit_edge, label %if.then.2

if.end7.1.if.end.2_crit_edge:                     ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.2

if.then.2:                                        ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef nonnull %9) #11
  tail call void @kfree(ptr noundef nonnull %9) #11
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end7.1.if.end.2_crit_edge
  %arrayidx2.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 56, i32 2
  %10 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2.2, align 4
  %tobool3.not.2 = icmp eq ptr %11, null
  br i1 %tobool3.not.2, label %if.end.2.if.end7.2_crit_edge, label %if.then4.2

if.end.2.if.end7.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.2

if.then4.2:                                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef nonnull %11) #11
  tail call void @kfree(ptr noundef nonnull %11) #11
  br label %if.end7.2

if.end7.2:                                        ; preds = %if.then4.2, %if.end.2.if.end7.2_crit_edge
  %arrayidx.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 55, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %13, null
  br i1 %tobool.not.3, label %if.end7.2.if.end.3_crit_edge, label %if.then.3

if.end7.2.if.end.3_crit_edge:                     ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.3

if.then.3:                                        ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef nonnull %13) #11
  tail call void @kfree(ptr noundef nonnull %13) #11
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end7.2.if.end.3_crit_edge
  %arrayidx2.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 56, i32 3
  %14 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2.3, align 4
  %tobool3.not.3 = icmp eq ptr %15, null
  br i1 %tobool3.not.3, label %if.end.3.if.end7.3_crit_edge, label %if.then4.3

if.end.3.if.end7.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.3

if.then4.3:                                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef nonnull %15) #11
  tail call void @kfree(ptr noundef nonnull %15) #11
  br label %if.end7.3

if.end7.3:                                        ; preds = %if.then4.3, %if.end.3.if.end7.3_crit_edge
  %arrayidx.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 55, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %17, null
  br i1 %tobool.not.4, label %if.end7.3.if.end.4_crit_edge, label %if.then.4

if.end7.3.if.end.4_crit_edge:                     ; preds = %if.end7.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.4

if.then.4:                                        ; preds = %if.end7.3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef nonnull %17) #11
  tail call void @kfree(ptr noundef nonnull %17) #11
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.end7.3.if.end.4_crit_edge
  %arrayidx2.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 56, i32 4
  %18 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx2.4, align 4
  %tobool3.not.4 = icmp eq ptr %19, null
  br i1 %tobool3.not.4, label %if.end.4.if.end7.4_crit_edge, label %if.then4.4

if.end.4.if.end7.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.4

if.then4.4:                                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef nonnull %19) #11
  tail call void @kfree(ptr noundef nonnull %19) #11
  br label %if.end7.4

if.end7.4:                                        ; preds = %if.then4.4, %if.end.4.if.end7.4_crit_edge
  %arrayidx.5 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 55, i32 5
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %21, null
  br i1 %tobool.not.5, label %if.end7.4.if.end.5_crit_edge, label %if.then.5

if.end7.4.if.end.5_crit_edge:                     ; preds = %if.end7.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.5

if.then.5:                                        ; preds = %if.end7.4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef nonnull %21) #11
  tail call void @kfree(ptr noundef nonnull %21) #11
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %if.end7.4.if.end.5_crit_edge
  %arrayidx2.5 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 56, i32 5
  %22 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx2.5, align 4
  %tobool3.not.5 = icmp eq ptr %23, null
  br i1 %tobool3.not.5, label %if.end.5.if.end7.5_crit_edge, label %if.then4.5

if.end.5.if.end7.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.5

if.then4.5:                                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef nonnull %23) #11
  tail call void @kfree(ptr noundef nonnull %23) #11
  br label %if.end7.5

if.end7.5:                                        ; preds = %if.then4.5, %if.end.5.if.end7.5_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_sysfs_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @sysfs_initialized, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %pdev.0 = phi ptr [ null, %entry ], [ %call, %while.body.while.cond_crit_edge ]
  %call = tail call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef %pdev.0) #11
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.cond.while.cond3_crit_edge, label %while.body

while.cond.while.cond3_crit_edge:                 ; preds = %while.cond
  br label %while.cond3

while.body:                                       ; preds = %while.cond
  %call2 = tail call i32 @pci_create_sysfs_dev_files(ptr noundef nonnull %call)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %while.body.while.cond_crit_edge, label %if.then

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_dev_put(ptr noundef nonnull %call) #11
  br label %cleanup

while.cond3:                                      ; preds = %while.cond3.while.cond3_crit_edge, %while.cond.while.cond3_crit_edge
  %pbus.0 = phi ptr [ %call4, %while.cond3.while.cond3_crit_edge ], [ null, %while.cond.while.cond3_crit_edge ]
  %call4 = tail call ptr @pci_find_next_bus(ptr noundef %pbus.0) #11
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %while.cond3.cleanup_crit_edge, label %while.cond3.while.cond3_crit_edge

while.cond3.while.cond3_crit_edge:                ; preds = %while.cond3
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond3

while.cond3.cleanup_crit_edge:                    ; preds = %while.cond3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %while.cond3.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %while.cond3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rescan_store(ptr nocapture noundef readnone %bus, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !204
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @pci_lock_rescan_remove() #11
  %call28 = call ptr @pci_find_next_bus(ptr noundef null) #11
  %cmp3.not9 = icmp eq ptr %call28, null
  br i1 %cmp3.not9, label %if.then1.while.end_crit_edge, label %if.then1.while.body_crit_edge

if.then1.while.body_crit_edge:                    ; preds = %if.then1
  br label %while.body

if.then1.while.end_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then1.while.body_crit_edge
  %call210 = phi ptr [ %call2, %while.body.while.body_crit_edge ], [ %call28, %if.then1.while.body_crit_edge ]
  %call4 = call i32 @pci_rescan_bus(ptr noundef nonnull %call210) #11
  %call2 = call ptr @pci_find_next_bus(ptr noundef nonnull %call210) #11
  %cmp3.not = icmp eq ptr %call2, null
  br i1 %cmp3.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then1.while.end_crit_edge
  call void @pci_unlock_rescan_remove() #11
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %while.end ], [ %count, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_lock_rescan_remove() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_next_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_rescan_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unlock_rescan_remove() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bus_rescan_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !204
  %add.ptr = getelementptr i8, ptr %dev, i32 -176
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @pci_lock_rescan_remove() #11
  %parent.i = getelementptr i8, ptr %dev, i32 -168
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then1.if.else_crit_edge, label %land.lhs.true

if.then1.if.else_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.then1
  %devices = getelementptr i8, ptr %dev, i32 -156
  %5 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %devices, align 4
  %cmp.i.not = icmp eq ptr %6, %devices
  br i1 %cmp.i.not, label %if.then5, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %self = getelementptr i8, ptr %dev, i32 -148
  %7 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %self, align 4
  %call6 = call i32 @pci_rescan_bus_bridge_resize(ptr noundef %8) #11
  br label %if.end8

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then1.if.else_crit_edge
  %call7 = call i32 @pci_rescan_bus(ptr noundef %add.ptr) #11
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  call void @pci_unlock_rescan_remove() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %if.end8 ], [ %count, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_rescan_bus_bridge_resize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuaffinity_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext false, ptr noundef %buf, ptr noundef nonnull @cpu_all_bits, i32 noundef %0) #11
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpulistaffinity_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %buf, ptr noundef nonnull @cpu_all_bits, i32 noundef %0) #11
  ret i32 %call.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_read_resource_io(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.bin_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %2 = ptrtoint ptr %1 to i32
  %conv.i = trunc i64 %off to i32
  %resource.i = getelementptr i8, ptr %kobj, i32 936
  %arrayidx.i = getelementptr [17 x %struct.resource], ptr %resource.i, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 8
  %add.i = add i32 %4, %conv.i
  %end.i = getelementptr inbounds %struct.resource, ptr %arrayidx.i, i32 0, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %6)
  %cmp.i = icmp ugt i32 %add.i, %6
  br i1 %cmp.i, label %entry.pci_resource_io.exit_crit_edge, label %if.end.i

entry.pci_resource_io.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_resource_io.exit

if.end.i:                                         ; preds = %entry
  %add4.i = add i32 %count, -1
  %sub.i = add i32 %add4.i, %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %6)
  %cmp8.i = icmp ugt i32 %sub.i, %6
  br i1 %cmp8.i, label %if.end.i.pci_resource_io.exit_crit_edge, label %if.end11.i

if.end.i.pci_resource_io.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_resource_io.exit

if.end11.i:                                       ; preds = %if.end.i
  %7 = zext i32 %count to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %count, label %if.end11.i.pci_resource_io.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb21.i
    i32 4, label %sw.bb38.i
  ]

if.end11.i.pci_resource_io.exit_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_resource_io.exit

sw.bb.i:                                          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %and15.i = and i32 %add.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %8 = inttoptr i32 %add16.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #11, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !206
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %buf, align 1
  br label %pci_resource_io.exit

sw.bb21.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %and32.i = and i32 %add.i, 1048575
  %add33.i = or i32 %and32.i, -18874368
  %11 = inttoptr i32 %add33.i to ptr
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #11, !srcloc !207
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !208
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %buf, align 2
  br label %pci_resource_io.exit

sw.bb38.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %and49.i = and i32 %add.i, 1048575
  %add50.i = or i32 %and49.i, -18874368
  %15 = inttoptr i32 %add50.i to ptr
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %15) #11, !srcloc !209
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !210
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %buf, align 4
  br label %pci_resource_io.exit

pci_resource_io.exit:                             ; preds = %sw.bb38.i, %sw.bb21.i, %sw.bb.i, %if.end11.i.pci_resource_io.exit_crit_edge, %if.end.i.pci_resource_io.exit_crit_edge, %entry.pci_resource_io.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pci_resource_io.exit_crit_edge ], [ -22, %if.end.i.pci_resource_io.exit_crit_edge ], [ 1, %sw.bb.i ], [ 2, %sw.bb21.i ], [ 4, %sw.bb38.i ], [ -22, %if.end11.i.pci_resource_io.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_write_resource_io(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr nocapture noundef %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @security_locked_down(i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call fastcc i32 @pci_resource_io(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_mmap_resource_uc(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -136
  %private.i = getelementptr inbounds %struct.bin_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %2 = ptrtoint ptr %1 to i32
  %resource.i = getelementptr i8, ptr %kobj, i32 936
  %arrayidx.i = getelementptr [17 x %struct.resource], ptr %resource.i, i32 0, i32 %2
  %call1.i = tail call i32 @security_locked_down(i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.pci_mmap_resource.exit_crit_edge

entry.pci_mmap_resource.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_mmap_resource.exit

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr inbounds %struct.resource, ptr %arrayidx.i, i32 0, i32 3
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %conv.i = zext i32 %6 to i64
  %call3.i = tail call zeroext i1 @iomem_is_exclusive(i64 noundef %conv.i) #11
  br i1 %call3.i, label %land.lhs.true.i.pci_mmap_resource.exit_crit_edge, label %land.lhs.true.i.if.end6.i_crit_edge

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i

land.lhs.true.i.pci_mmap_resource.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_mmap_resource.exit

if.end6.i:                                        ; preds = %land.lhs.true.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %end.i.i = getelementptr %struct.pci_dev, ptr %add.ptr.i, i32 0, i32 47, i32 %2, i32 1
  %7 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i = icmp eq i32 %8, 0
  br i1 %cmp.i.i, label %if.end6.i.pci_mmap_resource.exit_crit_edge, label %cond.false.i.i

if.end6.i.pci_mmap_resource.exit_crit_edge:       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_mmap_resource.exit

cond.false.i.i:                                   ; preds = %if.end6.i
  %arrayidx.i.i = getelementptr %struct.pci_dev, ptr %add.ptr.i, i32 0, i32 47, i32 %2
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 8
  %sub.i.i = sub i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %phi.cmp.i.i = icmp eq i32 %sub.i.i, -1
  br i1 %phi.cmp.i.i, label %cond.false.i.i.pci_mmap_resource.exit_crit_edge, label %land.lhs.true.i.i

cond.false.i.i.pci_mmap_resource.exit_crit_edge:  ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_mmap_resource.exit

land.lhs.true.i.i:                                ; preds = %cond.false.i.i
  %vm_end.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %11 = ptrtoint ptr %vm_end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vm_end.i.i.i, align 4
  %13 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vma, align 4
  %sub.i.i.i = sub i32 %12, %14
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %vm_pgoff.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %15 = ptrtoint ptr %vm_pgoff.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vm_pgoff.i.i, align 4
  %phi.bo.i.i = lshr i32 %sub.i.i, 12
  %phi.bo66.i.i = add nuw nsw i32 %phi.bo.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %phi.bo.i.i)
  %cmp34.i.i = icmp ugt i32 %16, %phi.bo.i.i
  %add36.i.i = add i32 %shr.i.i.i, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %add36.i.i, i32 %phi.bo66.i.i)
  %cmp38.not.i.i = icmp ugt i32 %add36.i.i, %phi.bo66.i.i
  %or.cond.i.i = select i1 %cmp34.i.i, i1 true, i1 %cmp38.not.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.pci_mmap_resource.exit_crit_edge, label %if.end10.i

land.lhs.true.i.i.pci_mmap_resource.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_mmap_resource.exit

if.end10.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and12.i = lshr i32 %18, 9
  %and12.lobit.i = and i32 %and12.i, 1
  %call14.i = tail call i32 @pci_mmap_resource_range(ptr noundef %add.ptr.i, i32 noundef %2, ptr noundef %vma, i32 noundef %and12.lobit.i, i32 noundef 0) #11
  br label %pci_mmap_resource.exit

pci_mmap_resource.exit:                           ; preds = %if.end10.i, %land.lhs.true.i.i.pci_mmap_resource.exit_crit_edge, %cond.false.i.i.pci_mmap_resource.exit_crit_edge, %if.end6.i.pci_mmap_resource.exit_crit_edge, %land.lhs.true.i.pci_mmap_resource.exit_crit_edge, %entry.pci_mmap_resource.exit_crit_edge
  %retval.0.i = phi i32 [ %call14.i, %if.end10.i ], [ %call1.i, %entry.pci_mmap_resource.exit_crit_edge ], [ -22, %land.lhs.true.i.pci_mmap_resource.exit_crit_edge ], [ -22, %cond.false.i.i.pci_mmap_resource.exit_crit_edge ], [ -22, %if.end6.i.pci_mmap_resource.exit_crit_edge ], [ -22, %land.lhs.true.i.i.pci_mmap_resource.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iomem_get_mapping() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_locked_down(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iomem_is_exclusive(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_mmap_resource_range(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci_resource_io(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr nocapture noundef %buf, i64 noundef %off, i32 noundef %count, i1 noundef zeroext %write) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.bin_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  %conv = trunc i64 %off to i32
  %resource = getelementptr i8, ptr %kobj, i32 936
  %arrayidx = getelementptr [17 x %struct.resource], ptr %resource, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 8
  %add = add i32 %4, %conv
  %end = getelementptr inbounds %struct.resource, ptr %arrayidx, i32 0, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %6)
  %cmp = icmp ugt i32 %add, %6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add4 = add i32 %count, -1
  %sub = add i32 %add4, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %6)
  %cmp8 = icmp ugt i32 %sub, %6
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %7 = zext i32 %count to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %count, label %if.end11.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb21
    i32 4, label %sw.bb38
  ]

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end11
  br i1 %write, label %do.body, label %if.else

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !211
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf, align 1
  %and = and i32 %add, 1048575
  %add13 = or i32 %and, -18874368
  %10 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %9) #11, !srcloc !212
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %and15 = and i32 %add, 1048575
  %add16 = or i32 %and15, -18874368
  %11 = inttoptr i32 %add16 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #11, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !206
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %buf, align 1
  br label %cleanup

sw.bb21:                                          ; preds = %if.end11
  br i1 %write, label %do.body24, label %if.else30

do.body24:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !213
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %buf, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %and27 = and i32 %add, 1048575
  %add28 = or i32 %and27, -18874368
  %17 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %17, i16 %16) #11, !srcloc !214
  br label %cleanup

if.else30:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  %and32 = and i32 %add, 1048575
  %add33 = or i32 %and32, -18874368
  %18 = inttoptr i32 %add33 to ptr
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %18) #11, !srcloc !207
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !208
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %buf, align 2
  br label %cleanup

sw.bb38:                                          ; preds = %if.end11
  br i1 %write, label %do.body41, label %if.else47

do.body41:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  tail call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %and44 = and i32 %add, 1048575
  %add45 = or i32 %and44, -18874368
  %25 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 %24) #11, !srcloc !216
  br label %cleanup

if.else47:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  %and49 = and i32 %add, 1048575
  %add50 = or i32 %and49, -18874368
  %26 = inttoptr i32 %add50 to ptr
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %26) #11, !srcloc !209
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !210
  %29 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else47, %do.body41, %if.else30, %do.body24, %if.else, %do.body, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 1, %if.else ], [ 1, %do.body ], [ 2, %if.else30 ], [ 2, %do.body24 ], [ 4, %if.else47 ], [ 4, %do.body41 ], [ -22, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %current_state = getelementptr i8, ptr %dev, i32 -36
  %0 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_state, align 4
  %add.i = add i32 %1, 1
  %arrayidx.i = getelementptr [0 x ptr], ptr @pci_power_names, i32 0, i32 %add.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.6, ptr noundef %3) #11
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resource_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #11
  %0 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %start, align 4, !annotation !204
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #11
  %1 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %end, align 4, !annotation !204
  %subordinate = getelementptr i8, ptr %dev, i32 -124
  %2 = ptrtoint ptr %subordinate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subordinate, align 4
  %tobool.not = icmp eq ptr %3, null
  %. = select i1 %tobool.not, i32 13, i32 17
  %resource = getelementptr i8, ptr %dev, i32 936
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %len.012 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [17 x %struct.resource], ptr %resource, i32 0, i32 %i.011
  call void @pci_resource_to_user(ptr noundef %add.ptr, i32 noundef %i.011, ptr noundef %arrayidx, ptr noundef nonnull %start, ptr noundef nonnull %end) #11
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start, align 4
  %conv = zext i32 %5 to i64
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  %conv1 = zext i32 %7 to i64
  %flags = getelementptr inbounds %struct.resource, ptr %arrayidx, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %conv2 = zext i32 %9 to i64
  %call = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.012, ptr noundef nonnull @.str.8, i64 noundef %conv, i64 noundef %conv1, i64 noundef %conv2) #11
  %add = add i32 %call, %len.012
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %.
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #11
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vendor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor = getelementptr i8, ptr %dev, i32 -104
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 8
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %conv) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr i8, ptr %dev, i32 -102
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device, align 2
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %conv) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subsystem_vendor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %subsystem_vendor = getelementptr i8, ptr %dev, i32 -100
  %0 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %subsystem_vendor, align 4
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %conv) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subsystem_device_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %subsystem_device = getelementptr i8, ptr %dev, i32 -98
  %0 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %subsystem_device, align 2
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %conv) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @revision_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %revision = getelementptr i8, ptr %dev, i32 -92
  %0 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %revision, align 4
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef %conv) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @class_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr i8, ptr %dev, i32 -96
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %class, align 8
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %1) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msi_enabled = getelementptr i8, ptr %dev, i32 1481
  %0 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_loadN_noabort(i32 %0, i32 5)
  %bf.load = load i40, ptr %msi_enabled, align 1
  %1 = and i40 %bf.load, 134217728
  %tobool.not = icmp eq i40 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %call = tail call i32 @pci_irq_vector(ptr noundef %add.ptr, i32 noundef 0) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %irq = getelementptr i8, ptr %dev, i32 932
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %.sink = phi i32 [ %3, %if.end ], [ %call, %if.then ]
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %.sink) #11
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @local_cpus_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext false, ptr noundef %buf, ptr noundef nonnull @cpu_all_bits, i32 noundef %0) #11
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @local_cpulist_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef %buf, ptr noundef nonnull @cpu_all_bits, i32 noundef %0) #11
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor = getelementptr i8, ptr %dev, i32 -104
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 8
  %conv = zext i16 %1 to i32
  %device = getelementptr i8, ptr %dev, i32 -102
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %conv1 = zext i16 %3 to i32
  %subsystem_vendor = getelementptr i8, ptr %dev, i32 -100
  %4 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subsystem_vendor, align 4
  %conv2 = zext i16 %5 to i32
  %subsystem_device = getelementptr i8, ptr %dev, i32 -98
  %6 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_device, align 2
  %conv3 = zext i16 %7 to i32
  %class = getelementptr i8, ptr %dev, i32 -96
  %8 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %class, align 8
  %shr = lshr i32 %9, 16
  %conv5 = and i32 %shr, 255
  %shr7 = lshr i32 %9, 8
  %conv9 = and i32 %shr7, 255
  %conv12 = and i32 %9, 255
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv5, i32 noundef %conv9, i32 noundef %conv12) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_mask_bits_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_mask = getelementptr i8, ptr %dev, i32 -56
  %0 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dma_mask, align 8
  %shr.i = lshr i64 %1, 32
  %conv.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = tail call i32 @llvm.ctlz.i32(i32 %conv.i, i1 true) #11, !range !217
  %add.i = sub nuw nsw i32 64, %2
  br label %fls64.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i = trunc i64 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %tobool.not.i5.i = icmp eq i32 %conv1.i, 0
  %3 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i, i1 true) #11, !range !217
  %sub.i6.i = sub nuw nsw i32 32, %3
  %cond.i7.i = select i1 %tobool.not.i5.i, i32 0, i32 %sub.i6.i
  br label %fls64.exit

fls64.exit:                                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ %cond.i7.i, %if.end.i ]
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @consistent_dma_mask_bits_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %coherent_dma_mask = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %coherent_dma_mask, align 8
  %shr.i = lshr i64 %1, 32
  %conv.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = tail call i32 @llvm.ctlz.i32(i32 %conv.i, i1 true) #11, !range !217
  %add.i = sub nuw nsw i32 64, %2
  br label %fls64.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i = trunc i64 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %tobool.not.i5.i = icmp eq i32 %conv1.i, 0
  %3 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i, i1 true) #11, !range !217
  %sub.i6.i = sub nuw nsw i32 32, %3
  %cond.i7.i = select i1 %tobool.not.i5.i, i32 0, i32 %sub.i6.i
  br label %fls64.exit

fls64.exit:                                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ %cond.i7.i, %if.end.i ]
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_cnt = getelementptr i8, ptr %dev, i32 1488
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %enable_cnt, i32 noundef 4) #11
  %0 = ptrtoint ptr %enable_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %enable_cnt, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %1) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !204
  %call = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %1 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else, label %if.end3.if.end15.thread_crit_edge

if.end3.if.end15.thread_crit_edge:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.thread

if.else:                                          ; preds = %if.end3
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %if.else8, label %if.end15

if.else8:                                         ; preds = %if.else
  %enable_cnt.i = getelementptr i8, ptr %dev, i32 1488
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %enable_cnt.i, i32 noundef 4) #11
  %5 = ptrtoint ptr %enable_cnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %enable_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp slt i32 %6, 1
  br i1 %cmp.i, label %if.else8.if.end15.thread_crit_edge, label %if.end15.thread29

if.else8.if.end15.thread_crit_edge:               ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.thread

if.end15.thread29:                                ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #13
  call void @pci_disable_device(ptr noundef %add.ptr) #11
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  br label %cleanup

if.end15.thread:                                  ; preds = %if.else8.if.end15.thread_crit_edge, %if.end3.if.end15.thread_crit_edge
  %result.0.ph = phi i32 [ -5, %if.else8.if.end15.thread_crit_edge ], [ -16, %if.end3.if.end15.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  br label %7

if.end15:                                         ; preds = %if.else
  %call7 = call i32 @pci_enable_device(ptr noundef %add.ptr) #11
  call void @mutex_unlock(ptr noundef %mutex.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp16 = icmp slt i32 %call7, 0
  br i1 %cmp16, label %if.end15._crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15._crit_edge:                              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %7

7:                                                ; preds = %if.end15._crit_edge, %if.end15.thread
  %result.028 = phi i32 [ %result.0.ph, %if.end15.thread ], [ %call7, %if.end15._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %7, %if.end15.cleanup_crit_edge, %if.end15.thread29, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %result.028, %7 ], [ %count, %if.end15.cleanup_crit_edge ], [ %count, %if.end15.thread29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @broken_parity_status_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %broken_parity_status = getelementptr i8, ptr %dev, i32 1481
  %0 = ptrtoint ptr %broken_parity_status to i32
  call void @__asan_loadN_noabort(i32 %0, i32 5)
  %bf.load = load i40, ptr %broken_parity_status, align 1
  %1 = trunc i40 %bf.load to i32
  %2 = lshr i32 %1, 30
  %bf.cast = and i32 %2, 1
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %bf.cast) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @broken_parity_status_store(ptr nocapture noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !204
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %broken_parity_status = getelementptr i8, ptr %dev, i32 1481
  %3 = ptrtoint ptr %broken_parity_status to i32
  call void @__asan_loadN_noabort(i32 %3, i32 5)
  %bf.load = load i40, ptr %broken_parity_status, align 1
  %bf.shl = select i1 %tobool.not, i40 0, i40 1073741824
  %bf.clear = and i40 %bf.load, -1073741825
  %bf.set = or i40 %bf.clear, %bf.shl
  store i40 %bf.set, ptr %broken_parity_status, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi_bus_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %subordinate1 = getelementptr i8, ptr %dev, i32 -124
  %0 = ptrtoint ptr %subordinate1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subordinate1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bus_flags = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %bus_flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bus_flags, align 2
  %4 = and i16 %3, 1
  %5 = xor i16 %4, 1
  %6 = zext i16 %5 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %no_msi = getelementptr i8, ptr %dev, i32 1481
  %7 = ptrtoint ptr %no_msi to i32
  call void @__asan_loadN_noabort(i32 %7, i32 5)
  %bf.load = load i40, ptr %no_msi, align 1
  %8 = lshr i40 %bf.load, 33
  %9 = trunc i40 %8 to i32
  %10 = and i32 %9, 1
  %11 = xor i32 %10, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %11, %cond.false ]
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %cond) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msi_bus_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %subordinate1 = getelementptr i8, ptr %dev, i32 -124
  %0 = ptrtoint ptr %subordinate1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subordinate1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !204
  %call = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool.not = icmp eq ptr %1, null
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %no_msi = getelementptr i8, ptr %dev, i32 1481
  %5 = ptrtoint ptr %no_msi to i32
  call void @__asan_loadN_noabort(i32 %5, i32 5)
  %bf.load = load i40, ptr %no_msi, align 1
  %bf.shl = select i1 %tobool6.not, i40 8589934592, i40 0
  %bf.clear = and i40 %bf.load, -8589934593
  %bf.set = or i40 %bf.clear, %bf.shl
  store i40 %bf.set, ptr %no_msi, align 1
  %cond = select i1 %tobool6.not, ptr @.str.36, ptr @.str.35
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond) #15
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %bus_flags13 = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %bus_flags13 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %bus_flags13, align 2
  %8 = and i16 %7, -2
  %masksel = zext i1 %tobool6.not to i16
  %.sink = or i16 %8, %masksel
  %cond22 = select i1 %tobool6.not, ptr @.str.36, ptr @.str.35
  store i16 %.sink, ptr %bus_flags13, align 2
  %dev20 = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 21
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20, ptr noundef nonnull @.str.38, ptr noundef nonnull %cond22) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end9 ], [ %count, %if.then5 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devspec_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %pci_device_to_OF_node.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

pci_device_to_OF_node.exit:                       ; preds = %entry
  %of_node.i = getelementptr i8, ptr %dev, i32 832
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %pci_device_to_OF_node.exit.cleanup_crit_edge, label %if.end

pci_device_to_OF_node.exit.cleanup_crit_edge:     ; preds = %pci_device_to_OF_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %pci_device_to_OF_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.41, ptr noundef nonnull %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pci_device_to_OF_node.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %pci_device_to_OF_node.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @driver_override_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %driver_override = getelementptr i8, ptr %dev, i32 1888
  %0 = ptrtoint ptr %driver_override to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_override, align 8
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.6, ptr noundef %1) #11
  tail call void @mutex_unlock(ptr noundef %mutex.i) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @driver_override_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4094, i32 %count)
  %cmp = icmp ugt i32 %count, 4094
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @kstrndup(ptr noundef %buf, i32 noundef %count, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call ptr @strchr(ptr noundef nonnull %call, i32 noundef 10)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.if.end6_crit_edge, label %if.then5

if.end2.if.end6_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %call3, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end2.if.end6_crit_edge
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %driver_override7 = getelementptr i8, ptr %dev, i32 1888
  %1 = ptrtoint ptr %driver_override7 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_override7, align 8
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %3)
  %char0 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool9.not = icmp eq i8 %char0, 0
  br i1 %tobool9.not, label %if.else, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call) #11
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.end6.if.end13_crit_edge
  %storemerge = phi ptr [ null, %if.else ], [ %call, %if.end6.if.end13_crit_edge ]
  %4 = ptrtoint ptr %driver_override7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %storemerge, ptr %driver_override7, align 8
  tail call void @mutex_unlock(ptr noundef %mutex.i) #11
  tail call void @kfree(ptr noundef %2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end13 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ari_enabled_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr i8, ptr %dev, i32 -128
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %self.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.pci_ari_enabled.exit_crit_edge, label %land.rhs.i

entry.pci_ari_enabled.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_ari_enabled.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ari_enabled.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 49
  %4 = ptrtoint ptr %ari_enabled.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 5)
  %bf.load.i = load i40, ptr %ari_enabled.i, align 1
  %5 = trunc i40 %bf.load.i to i32
  %6 = lshr i32 %5, 25
  %7 = and i32 %6, 1
  br label %pci_ari_enabled.exit

pci_ari_enabled.exit:                             ; preds = %land.rhs.i, %entry.pci_ari_enabled.exit_crit_edge
  %8 = phi i32 [ 0, %entry.pci_ari_enabled.exit_crit_edge ], [ %7, %land.rhs.i ]
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %8) #11
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @pci_dev_config_attr_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef %a, i32 noundef %n) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.bin_attribute, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 256, ptr %size, align 4
  %cfg_size = getelementptr i8, ptr %kobj, i32 928
  %1 = ptrtoint ptr %cfg_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cfg_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %2)
  %cmp = icmp sgt i32 %2, 256
  %spec.store.select = select i1 %cmp, i32 4096, i32 256
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.store.select, ptr %size, align 4
  %mode = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mode, align 4
  ret i16 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_read_config(ptr noundef %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i8, align 1
  %val31 = alloca i16, align 2
  %val52 = alloca i32, align 4
  %val88 = alloca i16, align 2
  %val111 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -136
  %call1 = tail call zeroext i1 @file_ns_capable(ptr noundef %filp, ptr noundef nonnull @init_user_ns, i32 noundef 21) #11
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cfg_size = getelementptr i8, ptr %kobj, i32 928
  %0 = ptrtoint ptr %cfg_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfg_size, align 8
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %hdr_type = getelementptr i8, ptr %kobj, i32 -91
  %2 = ptrtoint ptr %hdr_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdr_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp eq i8 %3, 2
  %spec.select = select i1 %cmp, i32 128, i32 64
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then
  %size.0 = phi i32 [ %1, %if.then ], [ %spec.select, %if.else ]
  %conv5 = zext i32 %size.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv5, i64 %off)
  %cmp6 = icmp slt i64 %conv5, %off
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %conv10 = zext i32 %count to i64
  %add = add i64 %conv10, %off
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv5)
  %cmp12 = icmp sgt i64 %add, %conv5
  %4 = trunc i64 %off to i32
  %conv16 = sub i32 %size.0, %4
  %size.1 = select i1 %cmp12, i32 %conv16, i32 %count
  tail call void @pci_config_pm_runtime_get(ptr noundef %add.ptr) #11
  %and = and i64 %off, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end9.if.end24_crit_edge, label %land.lhs.true

if.end9.if.end24_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.1)
  %tobool19.not = icmp eq i32 %size.1, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end119_crit_edge, label %if.then20

land.lhs.true.if.end119_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #11
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %val, align 1, !annotation !204
  %call22 = call i32 @pci_user_read_config_byte(ptr noundef %add.ptr, i32 noundef %4, ptr noundef nonnull %val) #11
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val, align 1
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %buf, align 1
  %inc = add i64 %off, 1
  %dec = add i32 %size.1, -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end9.if.end24_crit_edge
  %off.addr.0 = phi i64 [ %inc, %if.then20 ], [ %off, %if.end9.if.end24_crit_edge ]
  %size.2 = phi i32 [ %dec, %if.then20 ], [ %size.1, %if.end9.if.end24_crit_edge ]
  %and25 = and i64 %off.addr.0, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and25)
  %tobool26.not = icmp ne i64 %and25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size.2)
  %cmp28 = icmp ugt i32 %size.2, 2
  %or.cond = select i1 %tobool26.not, i1 %cmp28, i1 false
  br i1 %or.cond, label %if.then30, label %if.end24.if.end49_crit_edge

if.end24.if.end49_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val31) #11
  %9 = ptrtoint ptr %val31 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %val31, align 2, !annotation !204
  %conv32 = trunc i64 %off.addr.0 to i32
  %call33 = call i32 @pci_user_read_config_word(ptr noundef %add.ptr, i32 noundef %conv32, ptr noundef nonnull %val31) #11
  %10 = ptrtoint ptr %val31 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %val31, align 2
  %conv36 = trunc i16 %11 to i8
  %sub37 = sub i64 %off.addr.0, %off
  %idxprom38 = trunc i64 %sub37 to i32
  %arrayidx39 = getelementptr i8, ptr %buf, i32 %idxprom38
  %12 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv36, ptr %arrayidx39, align 1
  %13 = lshr i16 %11, 8
  %conv42 = trunc i16 %13 to i8
  %idxprom45 = add i32 %idxprom38, 1
  %arrayidx46 = getelementptr i8, ptr %buf, i32 %idxprom45
  %14 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv42, ptr %arrayidx46, align 1
  %add47 = add i64 %off.addr.0, 2
  %sub48 = add i32 %size.2, -2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val31) #11
  br label %if.end49

if.end49:                                         ; preds = %if.then30, %if.end24.if.end49_crit_edge
  %off.addr.1 = phi i64 [ %add47, %if.then30 ], [ %off.addr.0, %if.end24.if.end49_crit_edge ]
  %size.3 = phi i32 [ %sub48, %if.then30 ], [ %size.2, %if.end24.if.end49_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size.3)
  %cmp50195 = icmp ugt i32 %size.3, 3
  br i1 %cmp50195, label %if.end49.while.body_crit_edge, label %if.end49.while.end_crit_edge

if.end49.while.end_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end49.while.body_crit_edge
  %size.4197 = phi i32 [ %sub82, %while.body.while.body_crit_edge ], [ %size.3, %if.end49.while.body_crit_edge ]
  %off.addr.2196 = phi i64 [ %add81, %while.body.while.body_crit_edge ], [ %off.addr.1, %if.end49.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val52) #11
  %15 = ptrtoint ptr %val52 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %val52, align 4, !annotation !204
  %conv53 = trunc i64 %off.addr.2196 to i32
  %call54 = call i32 @pci_user_read_config_dword(ptr noundef %add.ptr, i32 noundef %conv53, ptr noundef nonnull %val52) #11
  %16 = ptrtoint ptr %val52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val52, align 4
  %conv56 = trunc i32 %17 to i8
  %sub57 = sub i64 %off.addr.2196, %off
  %idxprom58 = trunc i64 %sub57 to i32
  %arrayidx59 = getelementptr i8, ptr %buf, i32 %idxprom58
  %18 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv56, ptr %arrayidx59, align 1
  %shr60 = lshr i32 %17, 8
  %conv62 = trunc i32 %shr60 to i8
  %idxprom65 = add i32 %idxprom58, 1
  %arrayidx66 = getelementptr i8, ptr %buf, i32 %idxprom65
  %19 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv62, ptr %arrayidx66, align 1
  %shr67 = lshr i32 %17, 16
  %conv69 = trunc i32 %shr67 to i8
  %idxprom72 = add i32 %idxprom58, 2
  %arrayidx73 = getelementptr i8, ptr %buf, i32 %idxprom72
  %20 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv69, ptr %arrayidx73, align 1
  %shr74 = lshr i32 %17, 24
  %conv76 = trunc i32 %shr74 to i8
  %idxprom79 = add i32 %idxprom58, 3
  %arrayidx80 = getelementptr i8, ptr %buf, i32 %idxprom79
  %21 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv76, ptr %arrayidx80, align 1
  %add81 = add i64 %off.addr.2196, 4
  %sub82 = add i32 %size.4197, -4
  call void @__might_resched(ptr noundef nonnull @.str.32, i32 noundef 741, i32 noundef 0) #11
  %call.i = call i32 @__cond_resched() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val52) #11
  %cmp50 = icmp ugt i32 %sub82, 3
  br i1 %cmp50, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end49.while.end_crit_edge
  %off.addr.2.lcssa = phi i64 [ %off.addr.1, %if.end49.while.end_crit_edge ], [ %add81, %while.body.while.end_crit_edge ]
  %size.4.lcssa = phi i32 [ %size.3, %if.end49.while.end_crit_edge ], [ %sub82, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size.4.lcssa)
  %cmp85 = icmp ugt i32 %size.4.lcssa, 1
  br i1 %cmp85, label %if.then87, label %while.end.if.end107_crit_edge

while.end.if.end107_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

if.then87:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val88) #11
  %22 = ptrtoint ptr %val88 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %val88, align 2, !annotation !204
  %conv89 = trunc i64 %off.addr.2.lcssa to i32
  %call90 = call i32 @pci_user_read_config_word(ptr noundef %add.ptr, i32 noundef %conv89, ptr noundef nonnull %val88) #11
  %23 = ptrtoint ptr %val88 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %val88, align 2
  %conv93 = trunc i16 %24 to i8
  %sub94 = sub i64 %off.addr.2.lcssa, %off
  %idxprom95 = trunc i64 %sub94 to i32
  %arrayidx96 = getelementptr i8, ptr %buf, i32 %idxprom95
  %25 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv93, ptr %arrayidx96, align 1
  %26 = lshr i16 %24, 8
  %conv100 = trunc i16 %26 to i8
  %idxprom103 = add i32 %idxprom95, 1
  %arrayidx104 = getelementptr i8, ptr %buf, i32 %idxprom103
  %27 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv100, ptr %arrayidx104, align 1
  %add105 = add i64 %off.addr.2.lcssa, 2
  %sub106 = add nsw i32 %size.4.lcssa, -2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val88) #11
  br label %if.end107

if.end107:                                        ; preds = %if.then87, %while.end.if.end107_crit_edge
  %off.addr.3 = phi i64 [ %add105, %if.then87 ], [ %off.addr.2.lcssa, %while.end.if.end107_crit_edge ]
  %size.5 = phi i32 [ %sub106, %if.then87 ], [ %size.4.lcssa, %while.end.if.end107_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.5)
  %cmp108.not = icmp eq i32 %size.5, 0
  br i1 %cmp108.not, label %if.end107.if.end119_crit_edge, label %if.then110

if.end107.if.end119_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val111) #11
  %28 = ptrtoint ptr %val111 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %val111, align 1, !annotation !204
  %conv112 = trunc i64 %off.addr.3 to i32
  %call113 = call i32 @pci_user_read_config_byte(ptr noundef %add.ptr, i32 noundef %conv112, ptr noundef nonnull %val111) #11
  %29 = ptrtoint ptr %val111 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %val111, align 1
  %sub114 = sub i64 %off.addr.3, %off
  %idxprom115 = trunc i64 %sub114 to i32
  %arrayidx116 = getelementptr i8, ptr %buf, i32 %idxprom115
  %31 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx116, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val111) #11
  br label %if.end119

if.end119:                                        ; preds = %if.then110, %if.end107.if.end119_crit_edge, %land.lhs.true.if.end119_crit_edge
  call void @pci_config_pm_runtime_put(ptr noundef %add.ptr) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end119, %if.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %size.1, %if.end119 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_write_config(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef readonly %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -136
  %call1 = tail call i32 @security_locked_down(i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg_size = getelementptr i8, ptr %kobj, i32 928
  %0 = ptrtoint ptr %cfg_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfg_size, align 8
  %conv = sext i32 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %off)
  %cmp = icmp slt i64 %conv, %off
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conv5 = zext i32 %count to i64
  %add = add i64 %conv5, %off
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp8 = icmp sgt i64 %add, %conv
  %2 = trunc i64 %off to i32
  %conv13 = sub i32 %1, %2
  %count.addr.0 = select i1 %cmp8, i32 %conv13, i32 %count
  tail call void @pci_config_pm_runtime_get(ptr noundef %add.ptr) #11
  %and = and i64 %off, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool15.not = icmp eq i64 %and, 0
  br i1 %tobool15.not, label %if.end4.if.end21_crit_edge, label %land.lhs.true

if.end4.if.end21_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.0)
  %tobool16.not = icmp eq i32 %count.addr.0, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end109_crit_edge, label %if.then17

land.lhs.true.if.end109_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf, align 1
  %call20 = tail call i32 @pci_user_write_config_byte(ptr noundef %add.ptr, i32 noundef %2, i8 noundef zeroext %4) #11
  %inc = add i64 %off, 1
  %dec = add i32 %count.addr.0, -1
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end4.if.end21_crit_edge
  %size.1 = phi i32 [ %dec, %if.then17 ], [ %count.addr.0, %if.end4.if.end21_crit_edge ]
  %off.addr.0 = phi i64 [ %inc, %if.then17 ], [ %off, %if.end4.if.end21_crit_edge ]
  %and22 = and i64 %off.addr.0, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22)
  %tobool23.not = icmp ne i64 %and22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size.1)
  %cmp25 = icmp ugt i32 %size.1, 2
  %or.cond = select i1 %tobool23.not, i1 %cmp25, i1 false
  br i1 %or.cond, label %if.then27, label %if.end21.if.end44_crit_edge

if.end21.if.end44_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %sub28 = sub i64 %off.addr.0, %off
  %idxprom29 = trunc i64 %sub28 to i32
  %arrayidx30 = getelementptr i8, ptr %buf, i32 %idxprom29
  %5 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx30, align 1
  %idxprom34 = add i32 %idxprom29, 1
  %arrayidx35 = getelementptr i8, ptr %buf, i32 %idxprom34
  %7 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx35, align 1
  %conv37 = zext i8 %8 to i16
  %shl = shl nuw i16 %conv37, 8
  %conv38 = zext i8 %6 to i16
  %or = or i16 %shl, %conv38
  %conv40 = trunc i64 %off.addr.0 to i32
  %call41 = tail call i32 @pci_user_write_config_word(ptr noundef %add.ptr, i32 noundef %conv40, i16 noundef zeroext %or) #11
  %add42 = add i64 %off.addr.0, 2
  %sub43 = add i32 %size.1, -2
  br label %if.end44

if.end44:                                         ; preds = %if.then27, %if.end21.if.end44_crit_edge
  %size.2 = phi i32 [ %sub43, %if.then27 ], [ %size.1, %if.end21.if.end44_crit_edge ]
  %off.addr.1 = phi i64 [ %add42, %if.then27 ], [ %off.addr.0, %if.end21.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size.2)
  %cmp45190 = icmp ugt i32 %size.2, 3
  br i1 %cmp45190, label %if.end44.while.body_crit_edge, label %if.end44.while.end_crit_edge

if.end44.while.end_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end44.while.body_crit_edge:                    ; preds = %if.end44
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end44.while.body_crit_edge
  %off.addr.2192 = phi i64 [ %add75, %while.body.while.body_crit_edge ], [ %off.addr.1, %if.end44.while.body_crit_edge ]
  %size.3191 = phi i32 [ %sub76, %while.body.while.body_crit_edge ], [ %size.2, %if.end44.while.body_crit_edge ]
  %sub48 = sub i64 %off.addr.2192, %off
  %idxprom49 = trunc i64 %sub48 to i32
  %arrayidx50 = getelementptr i8, ptr %buf, i32 %idxprom49
  %9 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %10 to i32
  %idxprom54 = add i32 %idxprom49, 1
  %arrayidx55 = getelementptr i8, ptr %buf, i32 %idxprom54
  %11 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %12 to i32
  %shl57 = shl nuw nsw i32 %conv56, 8
  %or58 = or i32 %shl57, %conv51
  %idxprom61 = add i32 %idxprom49, 2
  %arrayidx62 = getelementptr i8, ptr %buf, i32 %idxprom61
  %13 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %14 to i32
  %shl64 = shl nuw nsw i32 %conv63, 16
  %or65 = or i32 %or58, %shl64
  %idxprom68 = add i32 %idxprom49, 3
  %arrayidx69 = getelementptr i8, ptr %buf, i32 %idxprom68
  %15 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %16 to i32
  %shl71 = shl nuw i32 %conv70, 24
  %or72 = or i32 %or65, %shl71
  %conv73 = trunc i64 %off.addr.2192 to i32
  %call74 = tail call i32 @pci_user_write_config_dword(ptr noundef %add.ptr, i32 noundef %conv73, i32 noundef %or72) #11
  %add75 = add i64 %off.addr.2192, 4
  %sub76 = add i32 %size.3191, -4
  %cmp45 = icmp ugt i32 %sub76, 3
  br i1 %cmp45, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end44.while.end_crit_edge
  %size.3.lcssa = phi i32 [ %size.2, %if.end44.while.end_crit_edge ], [ %sub76, %while.body.while.end_crit_edge ]
  %off.addr.2.lcssa = phi i64 [ %off.addr.1, %if.end44.while.end_crit_edge ], [ %add75, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size.3.lcssa)
  %cmp77 = icmp ugt i32 %size.3.lcssa, 1
  br i1 %cmp77, label %if.then79, label %while.end.if.end99_crit_edge

while.end.if.end99_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.then79:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub81 = sub i64 %off.addr.2.lcssa, %off
  %idxprom82 = trunc i64 %sub81 to i32
  %arrayidx83 = getelementptr i8, ptr %buf, i32 %idxprom82
  %17 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx83, align 1
  %idxprom87 = add i32 %idxprom82, 1
  %arrayidx88 = getelementptr i8, ptr %buf, i32 %idxprom87
  %19 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx88, align 1
  %conv90 = zext i8 %20 to i16
  %shl91 = shl nuw i16 %conv90, 8
  %conv92 = zext i8 %18 to i16
  %or93 = or i16 %shl91, %conv92
  %conv95 = trunc i64 %off.addr.2.lcssa to i32
  %call96 = tail call i32 @pci_user_write_config_word(ptr noundef %add.ptr, i32 noundef %conv95, i16 noundef zeroext %or93) #11
  %add97 = add i64 %off.addr.2.lcssa, 2
  %sub98 = add nsw i32 %size.3.lcssa, -2
  br label %if.end99

if.end99:                                         ; preds = %if.then79, %while.end.if.end99_crit_edge
  %size.4 = phi i32 [ %sub98, %if.then79 ], [ %size.3.lcssa, %while.end.if.end99_crit_edge ]
  %off.addr.3 = phi i64 [ %add97, %if.then79 ], [ %off.addr.2.lcssa, %while.end.if.end99_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.4)
  %tobool100.not = icmp eq i32 %size.4, 0
  br i1 %tobool100.not, label %if.end99.if.end109_crit_edge, label %if.then101

if.end99.if.end109_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then101:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  %conv102 = trunc i64 %off.addr.3 to i32
  %sub103 = sub i64 %off.addr.3, %off
  %idxprom104 = trunc i64 %sub103 to i32
  %arrayidx105 = getelementptr i8, ptr %buf, i32 %idxprom104
  %21 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx105, align 1
  %call106 = tail call i32 @pci_user_write_config_byte(ptr noundef %add.ptr, i32 noundef %conv102, i8 noundef zeroext %22) #11
  br label %if.end109

if.end109:                                        ; preds = %if.then101, %if.end99.if.end109_crit_edge, %land.lhs.true.if.end109_crit_edge
  tail call void @pci_config_pm_runtime_put(ptr noundef %add.ptr) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %if.end109 ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @file_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_config_pm_runtime_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_config_pm_runtime_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_user_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @pci_dev_rom_attr_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef %a, i32 noundef %n) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %end = getelementptr i8, ptr %kobj, i32 1132
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %cond.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.end:                                         ; preds = %entry
  %arrayidx = getelementptr i8, ptr %kobj, i32 1128
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 8
  %sub = sub i32 %1, %3
  %add = add i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  br i1 %tobool.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %size = getelementptr inbounds %struct.bin_attribute, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %size, align 4
  %mode = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %6, %if.end ], [ 0, %cond.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_read_rom(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #11
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %size, align 4, !annotation !204
  %rom_attr_enabled = getelementptr i8, ptr %kobj, i32 1560
  %1 = ptrtoint ptr %rom_attr_enabled to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rom_attr_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call ptr @pci_map_rom(ptr noundef %add.ptr, ptr noundef nonnull %size) #11
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %conv = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %off)
  %cmp.not = icmp sgt i64 %conv, %off
  br i1 %cmp.not, label %if.else, label %if.end5.if.end17_crit_edge

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %conv8 = zext i32 %count to i64
  %add = add i64 %conv8, %off
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp10 = icmp sgt i64 %add, %conv
  %5 = trunc i64 %off to i32
  %conv14 = sub i32 %4, %5
  %count.addr.0 = select i1 %cmp10, i32 %conv14, i32 %count
  %add.ptr16 = getelementptr i8, ptr %call1, i32 %5
  call void @mmiocpy(ptr noundef %buf, ptr noundef %add.ptr16, i32 noundef %count.addr.0) #11
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end5.if.end17_crit_edge
  %count.addr.1 = phi i32 [ %count.addr.0, %if.else ], [ 0, %if.end5.if.end17_crit_edge ]
  call void @pci_unmap_rom(ptr noundef %add.ptr, ptr noundef nonnull %call1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.1, %if.end17 ], [ -22, %entry.cleanup_crit_edge ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pci_write_rom(ptr nocapture noundef readnone %filp, ptr nocapture noundef writeonly %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef readonly %buf, i64 noundef %off, i32 noundef returned %count) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %off)
  %cmp = icmp eq i64 %off, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %1)
  %cmp1 = icmp eq i8 %1, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp4 = icmp eq i32 %count, 2
  %or.cond = and i1 %cmp4, %cmp1
  br i1 %or.cond, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %.sink = phi i32 [ 1, %if.else ], [ 0, %land.lhs.true.if.end_crit_edge ]
  %rom_attr_enabled6 = getelementptr i8, ptr %kobj, i32 1560
  %2 = ptrtoint ptr %rom_attr_enabled6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %rom_attr_enabled6, align 8
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_map_rom(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unmap_rom(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @pci_dev_reset_attr_is_visible(ptr noundef %kobj, ptr nocapture noundef readonly %a, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -136
  %call1 = tail call zeroext i1 @pci_reset_supported(ptr noundef %add.ptr) #11
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mode = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_reset_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !204
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp1.not = icmp eq i32 %2, 1
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i15 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  %call5 = call i32 @pci_reset_function(ptr noundef %add.ptr) #11
  %call.i16 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp7 = icmp slt i32 %call5, 0
  %call5.count = select i1 %cmp7, i32 %call5, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5.count, %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_reset_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @pci_dev_attrs_are_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %a, i32 noundef %n) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %a, @dev_attr_boot_vga
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %entry
  %class = getelementptr i8, ptr %kobj, i32 -96
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %class, align 8
  %shr.mask = and i32 %1, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %shr.mask)
  %cmp1.not = icmp eq i32 %shr.mask, 196608
  br i1 %cmp1.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then.cleanup_crit_edge
  %retval.0 = phi i16 [ %3, %if.end3 ], [ 0, %if.then.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boot_vga_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @vga_default_device() #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %cmp = icmp eq ptr %add.ptr, %call
  %conv = zext i1 %cmp to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr i8, ptr %dev, i32 1140
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = lshr i32 %1, 1
  %and.lobit = and i32 %and, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %and.lobit.sink = phi i32 [ %and.lobit, %if.end ], [ %conv, %if.then ]
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %and.lobit.sink) #11
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vga_default_device() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @pci_dev_hp_attrs_are_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %a, i32 noundef %n) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %is_virtfn = getelementptr i8, ptr %kobj, i32 1481
  %0 = ptrtoint ptr %is_virtfn to i32
  call void @__asan_loadN_noabort(i32 %0, i32 5)
  %bf.load = load i40, ptr %is_virtfn, align 1
  %1 = and i40 %bf.load, 65536
  %tobool.not = icmp eq i40 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mode = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remove_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !204
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %call1 = call zeroext i1 @device_remove_file_self(ptr noundef %dev, ptr noundef %attr) #11
  br i1 %call1, label %if.then2, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  call void @pci_stop_and_remove_bus_device_locked(ptr noundef %add.ptr) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %if.then2 ], [ %count, %land.lhs.true.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_remove_file_self(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_and_remove_bus_device_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_rescan_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !204
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @pci_lock_rescan_remove() #11
  %bus = getelementptr i8, ptr %dev, i32 -128
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 8
  %call2 = call i32 @pci_rescan_bus(ptr noundef %4) #11
  call void @pci_unlock_rescan_remove() #11
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %if.then1 ], [ %count, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @pci_bridge_attrs_are_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %a, i32 noundef %n) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hdr_type.i = getelementptr i8, ptr %kobj, i32 -91
  %0 = ptrtoint ptr %hdr_type.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hdr_type.i, align 1
  %2 = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %3 = icmp ult i8 %2, 2
  br i1 %3, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mode = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %5, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @subordinate_bus_number_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %sub_bus = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sub_bus) #11
  %0 = ptrtoint ptr %sub_bus to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %sub_bus, align 1, !annotation !204
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 26, ptr noundef nonnull %sub_bus) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %sub_bus to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sub_bus, align 1
  %conv = zext i8 %2 to i32
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sub_bus) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @secondary_bus_number_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %sec_bus = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sec_bus) #11
  %0 = ptrtoint ptr %sec_bus to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %sec_bus, align 1, !annotation !204
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 25, ptr noundef nonnull %sec_bus) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %sec_bus to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sec_bus, align 1
  %conv = zext i8 %2 to i32
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sec_bus) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @pcie_dev_attrs_are_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %a, i32 noundef %n) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i = getelementptr i8, ptr %kobj, i32 -72
  %0 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mode = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %3, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @current_link_speed_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %linkstat = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %linkstat) #11
  %0 = ptrtoint ptr %linkstat to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %linkstat, align 2, !annotation !204
  %call = call i32 @pcie_capability_read_word(ptr noundef %add.ptr, i32 noundef 18, ptr noundef nonnull %linkstat) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %linkstat to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %linkstat, align 2
  %3 = and i16 %2, 15
  %and = zext i16 %3 to i32
  %arrayidx = getelementptr [0 x i8], ptr @pcie_link_speed, i32 0, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv1 = zext i8 %5 to i32
  %call2 = call ptr @pci_speed_string(i32 noundef %conv1) #11
  %call3 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.6, ptr noundef %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %linkstat) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_speed_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @current_link_width_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %linkstat = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %linkstat) #11
  %0 = ptrtoint ptr %linkstat to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %linkstat, align 2, !annotation !204
  %call = call i32 @pcie_capability_read_word(ptr noundef %add.ptr, i32 noundef 18, ptr noundef nonnull %linkstat) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %linkstat to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %linkstat, align 2
  %3 = lshr i16 %2, 4
  %4 = and i16 %3, 63
  %5 = zext i16 %4 to i32
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %linkstat) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_link_width_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %call = tail call i32 @pcie_get_width_cap(ptr noundef %add.ptr) #11
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %call) #11
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_get_width_cap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_link_speed_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %call = tail call i32 @pcie_get_speed_cap(ptr noundef %add.ptr) #11
  %call1 = tail call ptr @pci_speed_string(i32 noundef %call) #11
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.6, ptr noundef %call1) #11
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_get_speed_cap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !44, !46, !48, !49, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !79, !80, !82, !83, !85, !86, !88, !90, !91, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !109, !110, !111, !112, !113, !114, !115, !117, !118, !119, !121, !122, !124, !126, !127, !129, !130, !132, !134, !136, !137, !139, !141, !143, !144, !146, !148, !150, !151, !153, !155, !157, !158, !160, !162, !164, !166, !167, !169, !171, !173, !175, !176, !178, !179, !181, !183, !185, !186, !188, !189, !191, !192, !194}
!llvm.module.flags = !{!195, !196, !197, !198, !199, !200, !201, !202}
!llvm.ident = !{!203}

!0 = !{ptr @pci_bus_groups, !1, !"pci_bus_groups", i1 false, i1 false}
!1 = !{!"../drivers/pci/pci-sysfs.c", i32 457, i32 31}
!2 = !{ptr @pcibus_groups, !3, !"pcibus_groups", i1 false, i1 false}
!3 = !{!"../drivers/pci/pci-sysfs.c", i32 669, i32 31}
!4 = !{ptr @__initcall__kmod_pci_sysfs__237_1443_pci_sysfs_init7, !5, !"__initcall__kmod_pci_sysfs__237_1443_pci_sysfs_init7", i1 false, i1 false}
!5 = !{!"../drivers/pci/pci-sysfs.c", i32 1443, i32 1}
!6 = !{ptr @pci_dev_groups, !7, !"pci_dev_groups", i1 false, i1 false}
!7 = !{!"../drivers/pci/pci-sysfs.c", i32 1509, i32 31}
!8 = !{ptr @pci_dev_type, !9, !"pci_dev_type", i1 false, i1 false}
!9 = !{!"../drivers/pci/pci-sysfs.c", i32 1563, i32 26}
!10 = distinct !{null, !11, !"sysfs_initialized", i1 false, i1 false}
!11 = !{!"../drivers/pci/pci-sysfs.c", i32 33, i32 12}
!12 = !{ptr @pci_bus_group, !13, !"pci_bus_group", i1 false, i1 false}
!13 = !{!"../drivers/pci/pci-sysfs.c", i32 453, i32 37}
!14 = !{ptr @pci_bus_attrs, !15, !"pci_bus_attrs", i1 false, i1 false}
!15 = !{!"../drivers/pci/pci-sysfs.c", i32 448, i32 26}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pci/pci-sysfs.c", i32 446, i32 8}
!18 = !{ptr @bus_attr_rescan, !17, !"bus_attr_rescan", i1 false, i1 false}
!19 = !{ptr @pcibus_group, !20, !"pcibus_group", i1 false, i1 false}
!20 = !{!"../drivers/pci/pci-sysfs.c", i32 665, i32 37}
!21 = !{ptr @pcibus_attrs, !22, !"pcibus_attrs", i1 false, i1 false}
!22 = !{!"../drivers/pci/pci-sysfs.c", i32 658, i32 26}
!23 = !{ptr @dev_attr_bus_rescan, !24, !"dev_attr_bus_rescan", i1 false, i1 false}
!24 = !{!"../drivers/pci/pci-sysfs.c", i32 517, i32 32}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pci/pci-sysfs.c", i32 137, i32 8}
!27 = !{ptr @dev_attr_cpuaffinity, !26, !"dev_attr_cpuaffinity", i1 false, i1 false}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pci/pci-sysfs.c", i32 146, i32 8}
!30 = !{ptr @dev_attr_cpulistaffinity, !29, !"dev_attr_cpulistaffinity", i1 false, i1 false}
!31 = !{ptr @pci_create_attr.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/pci/pci-sysfs.c", i32 1200, i32 2}
!33 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pci/pci-sysfs.c", i32 1203, i32 26}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pci/pci-sysfs.c", i32 1207, i32 26}
!37 = !{ptr @pci_dev_group, !38, !"pci_dev_group", i1 false, i1 false}
!38 = !{!"../drivers/pci/pci-sysfs.c", i32 1505, i32 37}
!39 = !{ptr @pci_dev_attrs, !40, !"pci_dev_attrs", i1 false, i1 false}
!40 = !{!"../drivers/pci/pci-sysfs.c", i32 612, i32 26}
!41 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pci/pci-sysfs.c", i32 155, i32 8}
!43 = !{ptr @dev_attr_power_state, !42, !"dev_attr_power_state", i1 false, i1 false}
!44 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pci/pci-sysfs.c", i32 153, i32 25}
!46 = !{ptr @.str.7, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pci/pci-sysfs.c", i32 182, i32 8}
!48 = !{ptr @dev_attr_resource, !47, !"dev_attr_resource", i1 false, i1 false}
!49 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pci/pci-sysfs.c", i32 175, i32 34}
!51 = !{ptr @.str.9, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pci/pci-sysfs.c", i32 47, i32 1}
!53 = !{ptr @dev_attr_vendor, !52, !"dev_attr_vendor", i1 false, i1 false}
!54 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pci/pci-sysfs.c", i32 48, i32 1}
!57 = !{ptr @dev_attr_device, !56, !"dev_attr_device", i1 false, i1 false}
!58 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pci/pci-sysfs.c", i32 49, i32 1}
!60 = !{ptr @dev_attr_subsystem_vendor, !59, !"dev_attr_subsystem_vendor", i1 false, i1 false}
!61 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pci/pci-sysfs.c", i32 50, i32 1}
!63 = !{ptr @dev_attr_subsystem_device, !62, !"dev_attr_subsystem_device", i1 false, i1 false}
!64 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pci/pci-sysfs.c", i32 51, i32 1}
!66 = !{ptr @dev_attr_revision, !65, !"dev_attr_revision", i1 false, i1 false}
!67 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pci/pci-sysfs.c", i32 52, i32 1}
!70 = !{ptr @dev_attr_class, !69, !"dev_attr_class", i1 false, i1 false}
!71 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.18, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pci/pci-sysfs.c", i32 71, i32 8}
!74 = !{ptr @dev_attr_irq, !73, !"dev_attr_irq", i1 false, i1 false}
!75 = !{ptr @.str.19, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pci/pci-sysfs.c", i32 66, i32 26}
!77 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pci/pci-sysfs.c", i32 118, i32 8}
!79 = !{ptr @dev_attr_local_cpus, !78, !"dev_attr_local_cpus", i1 false, i1 false}
!80 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pci/pci-sysfs.c", i32 125, i32 8}
!82 = !{ptr @dev_attr_local_cpulist, !81, !"dev_attr_local_cpulist", i1 false, i1 false}
!83 = !{ptr @.str.22, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pci/pci-sysfs.c", i32 290, i32 8}
!85 = !{ptr @dev_attr_modalias, !84, !"dev_attr_modalias", i1 false, i1 false}
!86 = !{ptr @.str.23, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pci/pci-sysfs.c", i32 284, i32 25}
!88 = !{ptr @.str.24, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pci/pci-sysfs.c", i32 373, i32 8}
!90 = !{ptr @dev_attr_dma_mask_bits, !89, !"dev_attr_dma_mask_bits", i1 false, i1 false}
!91 = !{ptr @.str.25, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pci/pci-sysfs.c", i32 371, i32 25}
!93 = !{ptr @.str.26, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pci/pci-sysfs.c", i32 381, i32 8}
!95 = !{ptr @dev_attr_consistent_dma_mask_bits, !94, !"dev_attr_consistent_dma_mask_bits", i1 false, i1 false}
!96 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pci/pci-sysfs.c", i32 328, i32 8}
!98 = !{ptr @dev_attr_enable, !97, !"dev_attr_enable", i1 false, i1 false}
!99 = !{ptr @.str.28, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pci/pci-sysfs.c", i32 95, i32 8}
!101 = !{ptr @dev_attr_broken_parity_status, !100, !"dev_attr_broken_parity_status", i1 false, i1 false}
!102 = !{ptr @.str.29, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pci/pci-sysfs.c", i32 428, i32 8}
!104 = !{ptr @dev_attr_msi_bus, !103, !"dev_attr_msi_bus", i1 false, i1 false}
!105 = !{ptr @.str.30, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pci/pci-sysfs.c", i32 414, i32 3}
!107 = !{ptr @.str.31, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.32, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.33, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @msi_bus_store._entry, !106, !"_entry", i1 false, i1 false}
!112 = !{ptr @msi_bus_store._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.36, !106, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pci/pci-sysfs.c", i32 424, i32 2}
!117 = !{ptr @msi_bus_store._entry.37, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @msi_bus_store._entry_ptr.39, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pci/pci-sysfs.c", i32 562, i32 8}
!121 = !{ptr @dev_attr_devspec, !120, !"dev_attr_devspec", i1 false, i1 false}
!122 = !{ptr @.str.41, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pci/pci-sysfs.c", i32 560, i32 25}
!124 = !{ptr @.str.42, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pci/pci-sysfs.c", i32 610, i32 8}
!126 = !{ptr @dev_attr_driver_override, !125, !"dev_attr_driver_override", i1 false, i1 false}
!127 = !{ptr @.str.43, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pci/pci-sysfs.c", i32 277, i32 8}
!129 = !{ptr @dev_attr_ari_enabled, !128, !"dev_attr_ari_enabled", i1 false, i1 false}
!130 = !{ptr @pci_dev_config_attr_group, !131, !"pci_dev_config_attr_group", i1 false, i1 false}
!131 = !{!"../drivers/pci/pci-sysfs.c", i32 850, i32 37}
!132 = !{ptr @pci_dev_config_attrs, !133, !"pci_dev_config_attrs", i1 false, i1 false}
!133 = !{!"../drivers/pci/pci-sysfs.c", i32 833, i32 30}
!134 = !{ptr @.str.44, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pci/pci-sysfs.c", i32 831, i32 8}
!136 = !{ptr @bin_attr_config, !135, !"bin_attr_config", i1 false, i1 false}
!137 = !{ptr @pci_dev_rom_attr_group, !138, !"pci_dev_rom_attr_group", i1 false, i1 false}
!138 = !{!"../drivers/pci/pci-sysfs.c", i32 1352, i32 37}
!139 = !{ptr @pci_dev_rom_attrs, !140, !"pci_dev_rom_attrs", i1 false, i1 false}
!140 = !{!"../drivers/pci/pci-sysfs.c", i32 1331, i32 30}
!141 = !{ptr @.str.45, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/pci/pci-sysfs.c", i32 1329, i32 8}
!143 = !{ptr @bin_attr_rom, !142, !"bin_attr_rom", i1 false, i1 false}
!144 = !{ptr @pci_dev_reset_attr_group, !145, !"pci_dev_reset_attr_group", i1 false, i1 false}
!145 = !{!"../drivers/pci/pci-sysfs.c", i32 1396, i32 37}
!146 = !{ptr @pci_dev_reset_attrs, !147, !"pci_dev_reset_attrs", i1 false, i1 false}
!147 = !{!"../drivers/pci/pci-sysfs.c", i32 1380, i32 26}
!148 = !{ptr @.str.46, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pci/pci-sysfs.c", i32 1378, i32 8}
!150 = !{ptr @dev_attr_reset, !149, !"dev_attr_reset", i1 false, i1 false}
!151 = !{ptr @pci_dev_attr_groups, !152, !"pci_dev_attr_groups", i1 false, i1 false}
!152 = !{!"../drivers/pci/pci-sysfs.c", i32 1545, i32 38}
!153 = !{ptr @pci_dev_attr_group, !154, !"pci_dev_attr_group", i1 false, i1 false}
!154 = !{!"../drivers/pci/pci-sysfs.c", i32 1530, i32 37}
!155 = !{ptr @.str.47, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/pci/pci-sysfs.c", i32 687, i32 8}
!157 = !{ptr @dev_attr_boot_vga, !156, !"dev_attr_boot_vga", i1 false, i1 false}
!158 = !{ptr @pci_dev_dev_attrs, !159, !"pci_dev_dev_attrs", i1 false, i1 false}
!159 = !{!"../drivers/pci/pci-sysfs.c", i32 1445, i32 26}
!160 = !{ptr @pci_dev_hp_attr_group, !161, !"pci_dev_hp_attr_group", i1 false, i1 false}
!161 = !{!"../drivers/pci/pci-sysfs.c", i32 1525, i32 37}
!162 = !{ptr @pci_dev_hp_attrs, !163, !"pci_dev_hp_attrs", i1 false, i1 false}
!163 = !{!"../drivers/pci/pci-sysfs.c", i32 1463, i32 26}
!164 = !{ptr @.str.48, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pci/pci-sysfs.c", i32 494, i32 8}
!166 = !{ptr @dev_attr_remove, !165, !"dev_attr_remove", i1 false, i1 false}
!167 = !{ptr @dev_attr_dev_rescan, !168, !"dev_attr_dev_rescan", i1 false, i1 false}
!168 = !{!"../drivers/pci/pci-sysfs.c", i32 479, i32 32}
!169 = !{ptr @pci_bridge_attr_group, !170, !"pci_bridge_attr_group", i1 false, i1 false}
!170 = !{!"../drivers/pci/pci-sysfs.c", i32 1535, i32 37}
!171 = !{ptr @pci_bridge_attrs, !172, !"pci_bridge_attrs", i1 false, i1 false}
!172 = !{!"../drivers/pci/pci-sysfs.c", i32 644, i32 26}
!173 = !{ptr @.str.49, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/pci/pci-sysfs.c", i32 267, i32 8}
!175 = !{ptr @dev_attr_subordinate_bus_number, !174, !"dev_attr_subordinate_bus_number", i1 false, i1 false}
!176 = !{ptr @.str.50, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/pci/pci-sysfs.c", i32 251, i32 8}
!178 = !{ptr @dev_attr_secondary_bus_number, !177, !"dev_attr_secondary_bus_number", i1 false, i1 false}
!179 = !{ptr @pcie_dev_attr_group, !180, !"pcie_dev_attr_group", i1 false, i1 false}
!180 = !{!"../drivers/pci/pci-sysfs.c", i32 1540, i32 37}
!181 = !{ptr @pcie_dev_attrs, !182, !"pcie_dev_attrs", i1 false, i1 false}
!182 = !{!"../drivers/pci/pci-sysfs.c", i32 650, i32 26}
!183 = !{ptr @.str.51, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/pci/pci-sysfs.c", i32 219, i32 8}
!185 = !{ptr @dev_attr_current_link_speed, !184, !"dev_attr_current_link_speed", i1 false, i1 false}
!186 = !{ptr @.str.52, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/pci/pci-sysfs.c", i32 235, i32 8}
!188 = !{ptr @dev_attr_current_link_width, !187, !"dev_attr_current_link_width", i1 false, i1 false}
!189 = !{ptr @.str.53, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/pci/pci-sysfs.c", i32 201, i32 8}
!191 = !{ptr @dev_attr_max_link_width, !190, !"dev_attr_max_link_width", i1 false, i1 false}
!192 = !{ptr @.str.54, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/pci/pci-sysfs.c", i32 192, i32 8}
!194 = !{ptr @dev_attr_max_link_speed, !193, !"dev_attr_max_link_speed", i1 false, i1 false}
!195 = !{i32 1, !"wchar_size", i32 2}
!196 = !{i32 1, !"min_enum_size", i32 4}
!197 = !{i32 8, !"branch-target-enforcement", i32 0}
!198 = !{i32 8, !"sign-return-address", i32 0}
!199 = !{i32 8, !"sign-return-address-all", i32 0}
!200 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!201 = !{i32 7, !"uwtable", i32 1}
!202 = !{i32 7, !"frame-pointer", i32 2}
!203 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!204 = !{!"auto-init"}
!205 = !{i64 5017345}
!206 = !{i64 2154778644}
!207 = !{i64 5016727}
!208 = !{i64 2154779743}
!209 = !{i64 5017565}
!210 = !{i64 2154780842}
!211 = !{i64 2154778262}
!212 = !{i64 5016950}
!213 = !{i64 2154778893}
!214 = !{i64 5016527}
!215 = !{i64 2154779992}
!216 = !{i64 5017147}
!217 = !{i32 0, i32 33}
