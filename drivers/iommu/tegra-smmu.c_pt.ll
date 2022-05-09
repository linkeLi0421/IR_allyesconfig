; ModuleID = '/llk/IR_all_yes/drivers/iommu/tegra-smmu.c_pt.bc'
source_filename = "../drivers/iommu/tegra-smmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_mc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.reset_controller_dev, %struct.icc_provider, %struct.spinlock, %struct.anon.75 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.75 = type { ptr }
%struct.tegra_smmu_soc = type { ptr, i32, ptr, i32, ptr, i32, i8, i8, i32, i32 }
%struct.tegra_smmu = type { ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, ptr, %struct.mutex, %struct.list_head, ptr, %struct.iommu_device }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.tegra_mc_soc = type { ptr, i32, ptr, i32, i32, i32, i8, ptr, i32, ptr, ptr, i32, ptr, ptr }
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
%struct.tegra_smmu_as = type { %struct.iommu_domain, ptr, i32, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32 }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.iommu_fwspec = type { ptr, ptr, i32, i32, [0 x i32] }
%struct.tegra_smmu_swgroup = type { ptr, i32, i32 }
%struct.tegra_mc_client = type { i32, ptr, %union.anon.70, i32, %struct.anon.71 }
%union.anon.70 = type { i32 }
%struct.anon.71 = type { %struct.anon.72, %struct.anon.73, %struct.anon.74 }
%struct.anon.72 = type { i32, i32 }
%struct.anon.73 = type { i32, i32, i32, i32 }
%struct.anon.74 = type { i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.tegra_smmu_group_soc = type { ptr, ptr, i32 }
%struct.tegra_smmu_group = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@tegra_smmu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&smmu->lock\00", [20 x i8] zeroinitializer }, align 32
@tegra_smmu_probe.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra_smmu\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_smmu_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/iommu/tegra-smmu.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"address bits: %u, PFN mask: %#lx\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra_smmu_probe.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 1, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TLB lines: %u, mask: %#lx\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_smmu_ops = internal constant { %struct.iommu_ops, [60 x i8] } { %struct.iommu_ops { ptr @tegra_smmu_capable, ptr @tegra_smmu_domain_alloc, ptr @tegra_smmu_domain_free, ptr @tegra_smmu_attach_dev, ptr @tegra_smmu_detach_dev, ptr @tegra_smmu_map, ptr null, ptr @tegra_smmu_unmap, ptr null, ptr null, ptr null, ptr null, ptr @tegra_smmu_iova_to_phys, ptr @tegra_smmu_probe_device, ptr @tegra_smmu_release_device, ptr null, ptr @tegra_smmu_device_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_smmu_of_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4096, ptr null }, [60 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@tegra_smmu_ahb_enable.ahb_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-ahb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tegra_smmu_domain_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&as->lock\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tegra_smmu_domain_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tegra_smmu_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s group from swgroup %u not found\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra_smmu_enable\00", [46 x i8] zeroinitializer }, align 32
@tegra_smmu_enable._entry_ptr = internal global ptr @tegra_smmu_enable._entry, section ".printk_index", align 4
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iommus\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#iommu-cells\00", [19 x i8] zeroinitializer }, align 32
@tegra_smmu_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 827, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize fwspec: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra_smmu_configure\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_smmu_configure._entry_ptr = internal global ptr @tegra_smmu_configure._entry, section ".printk_index", align 4
@tegra_smmu_configure._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.3, i32 833, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to parse SW group ID: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_smmu_configure._entry_ptr.18 = internal global ptr @tegra_smmu_configure._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smmu\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"swgroups\00", [23 x i8] zeroinitializer }, align 32
@tegra_smmu_swgroups_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_smmu_swgroups_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clients\00", [24 x i8] zeroinitializer }, align 32
@tegra_smmu_clients_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tegra_smmu_clients_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"swgroup    enabled  ASID\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"------------------------\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%-9s  %-7s  %#04x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"client       enabled\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"--------------------\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%-12s %s\0A\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1106, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1115, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1118, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"tegra_smmu_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 971, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"ahb_match\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 989, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 314, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 367, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 849, i32 40 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 849, i32 50 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 827, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 833, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1064, i32 37 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1068, i32 22 }
@___asan_gen_.105 = private unnamed_addr constant [25 x i8] c"tegra_smmu_swgroups_fops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1032, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1070, i32 22 }
@___asan_gen_.111 = private unnamed_addr constant [24 x i8] c"tegra_smmu_clients_fops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1060, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1008, i32 16 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1009, i32 16 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1019, i32 13 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1021, i32 13 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1025, i32 17 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1040, i32 16 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1041, i32 16 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [30 x i8] c"../drivers/iommu/tegra-smmu.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1054, i32 17 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @tegra_smmu_configure._entry, ptr @tegra_smmu_configure._entry.16, ptr @tegra_smmu_configure._entry_ptr, ptr @tegra_smmu_configure._entry_ptr.18, ptr @tegra_smmu_enable._entry, ptr @tegra_smmu_enable._entry_ptr, ptr @tegra_smmu_probe.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tegra_smmu_ops, ptr @tegra_smmu_ahb_enable.ahb_match, ptr @tegra_smmu_domain_alloc.__key, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @tegra_smmu_swgroups_fops, ptr @.str.21, ptr @tegra_smmu_clients_fops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_smmu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_smmu_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_smmu_ahb_enable.ahb_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_smmu_domain_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_smmu_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_smmu_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_smmu_configure._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_smmu_swgroups_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_smmu_clients_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_smmu_probe(ptr noundef %dev, ptr noundef %soc, ptr noundef %mc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 160, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %smmu2 = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 1
  %0 = ptrtoint ptr %smmu2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %smmu2, align 4
  %num_asids = getelementptr inbounds %struct.tegra_smmu_soc, ptr %soc, i32 0, i32 9
  %1 = ptrtoint ptr %num_asids to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_asids, align 4
  %call3 = tail call ptr @devm_bitmap_zalloc(ptr noundef %dev, i32 noundef %2, i32 noundef 3264) #7
  %asids = getelementptr inbounds %struct.tegra_smmu, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %asids to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %asids, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %groups = getelementptr inbounds %struct.tegra_smmu, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %groups, ptr %groups, align 4
  %prev.i = getelementptr inbounds %struct.tegra_smmu, ptr %call.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %groups, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.tegra_smmu, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @tegra_smmu_probe.__key) #7
  %regs = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 3
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %call.i, align 4
  %soc10 = getelementptr inbounds %struct.tegra_smmu, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %soc10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %soc, ptr %soc10, align 4
  %dev11 = getelementptr inbounds %struct.tegra_smmu, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %dev11, align 4
  %mc12 = getelementptr inbounds %struct.tegra_smmu, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %mc12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mc, ptr %mc12, align 4
  %soc13 = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 6
  %12 = ptrtoint ptr %soc13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %soc13, align 4
  %num_address_bits = getelementptr inbounds %struct.tegra_mc_soc, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %num_address_bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_address_bits, align 4
  %sub = add i32 %15, 20
  %rem = and i32 %sub, 31
  %notmask = shl nsw i32 -1, %rem
  %sub14 = xor i32 %notmask, -1
  %pfn_mask = getelementptr inbounds %struct.tegra_smmu, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %pfn_mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub14, ptr %pfn_mask, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_smmu_probe.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_smmu_probe, %if.then20)) #7
          to label %do.end26 [label %if.then20], !srcloc !79

if.then20:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %soc13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %soc13, align 4
  %num_address_bits22 = getelementptr inbounds %struct.tegra_mc_soc, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %num_address_bits22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_address_bits22, align 4
  %21 = ptrtoint ptr %pfn_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pfn_mask, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_smmu_probe.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %20, i32 noundef %22) #7
  br label %do.end26

do.end26:                                         ; preds = %if.then20, %if.end8
  %23 = ptrtoint ptr %soc10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %soc10, align 4
  %num_tlb_lines = getelementptr inbounds %struct.tegra_smmu_soc, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %num_tlb_lines to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_tlb_lines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  %27 = tail call i32 @llvm.ctlz.i32(i32 %26, i1 true) #7, !range !80
  %sub.i = sub nuw nsw i32 32, %27
  %sub.i.op = shl nsw i32 -1, %sub.i
  %sub.i.op.op = xor i32 %sub.i.op, -1
  %sub30 = select i1 %tobool.not.i, i32 0, i32 %sub.i.op.op
  %tlb_mask = getelementptr inbounds %struct.tegra_smmu, ptr %call.i, i32 0, i32 6
  %28 = ptrtoint ptr %tlb_mask to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub30, ptr %tlb_mask, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_smmu_probe.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_smmu_probe, %if.then43)) #7
          to label %do.end49 [label %if.then43], !srcloc !79

if.then43:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %soc10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %soc10, align 4
  %num_tlb_lines45 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %num_tlb_lines45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_tlb_lines45, align 4
  %33 = ptrtoint ptr %tlb_mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tlb_mask, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_smmu_probe.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %32, i32 noundef %34) #7
  br label %do.end49

do.end49:                                         ; preds = %if.then43, %do.end26
  %supports_request_limit = getelementptr inbounds %struct.tegra_smmu_soc, ptr %soc, i32 0, i32 7
  %35 = ptrtoint ptr %supports_request_limit to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %supports_request_limit, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool50.not = icmp eq i8 %36, 0
  %spec.select = select i1 %tobool50.not, i32 536870975, i32 671088703
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #7
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %37) #7, !srcloc !83
  %40 = ptrtoint ptr %soc10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %soc10, align 4
  %num_tlb_lines54 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %num_tlb_lines54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_tlb_lines54, align 4
  %44 = ptrtoint ptr %tlb_mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tlb_mask, align 4
  %and = and i32 %45, %43
  %supports_round_robin_arbitration = getelementptr inbounds %struct.tegra_smmu_soc, ptr %soc, i32 0, i32 6
  %46 = ptrtoint ptr %supports_round_robin_arbitration to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %supports_round_robin_arbitration, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool57.not = icmp eq i8 %47, 0
  %value.1.v = select i1 %tobool57.not, i32 536870912, i32 805306368
  %value.1 = or i32 %value.1.v, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %48 = tail call i32 @llvm.bswap.i32(i32 %value.1) #7
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %50, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 %48) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %52, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  %add.ptr.i.i141 = getelementptr i8, ptr %54, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i141, i32 0) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %56, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 16777216) #7, !srcloc !83
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  %add.ptr.i.i143 = getelementptr i8, ptr %58, i32 28
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i143) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %call.i.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @tegra_smmu_ahb_enable.ahb_match, ptr noundef null) #7
  %tobool.not.i144 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i144, label %do.end49.tegra_smmu_ahb_enable.exit_crit_edge, label %if.then.i

do.end49.tegra_smmu_ahb_enable.exit_crit_edge:    ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_smmu_ahb_enable.exit

if.then.i:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 @tegra_ahb_enable_smmu(ptr noundef nonnull %call.i.i) #7
  tail call void @of_node_put(ptr noundef nonnull %call.i.i) #7
  br label %tegra_smmu_ahb_enable.exit

tegra_smmu_ahb_enable.exit:                       ; preds = %if.then.i, %do.end49.tegra_smmu_ahb_enable.exit_crit_edge
  %iommu = getelementptr inbounds %struct.tegra_smmu, ptr %call.i, i32 0, i32 11
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %60 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i145 = icmp eq ptr %61, null
  br i1 %tobool.not.i145, label %if.end.i, label %tegra_smmu_ahb_enable.exit.dev_name.exit_crit_edge

tegra_smmu_ahb_enable.exit.dev_name.exit_crit_edge: ; preds = %tegra_smmu_ahb_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %tegra_smmu_ahb_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %tegra_smmu_ahb_enable.exit.dev_name.exit_crit_edge
  %retval.0.i146 = phi ptr [ %63, %if.end.i ], [ %61, %tegra_smmu_ahb_enable.exit.dev_name.exit_crit_edge ]
  %call62 = tail call i32 (ptr, ptr, ptr, ptr, ...) @iommu_device_sysfs_add(ptr noundef %iommu, ptr noundef %dev, ptr noundef null, ptr noundef %retval.0.i146) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end66, label %if.then64

if.then64:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %64 = inttoptr i32 %call62 to ptr
  br label %cleanup

if.end66:                                         ; preds = %dev_name.exit
  %call68 = tail call i32 @iommu_device_register(ptr noundef %iommu, ptr noundef nonnull @tegra_smmu_ops, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end66.remove_sysfs_crit_edge

if.end66.remove_sysfs_crit_edge:                  ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %remove_sysfs

if.end71:                                         ; preds = %if.end66
  %call72 = tail call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @tegra_smmu_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp = icmp slt i32 %call72, 0
  br i1 %cmp, label %if.end71.unregister_crit_edge, label %if.end74

if.end71.unregister_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %unregister

if.end74:                                         ; preds = %if.end71
  %call75 = tail call i32 @bus_set_iommu(ptr noundef nonnull @pci_bus_type, ptr noundef nonnull @tegra_smmu_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %unset_platform_bus, label %if.end78

if.end78:                                         ; preds = %if.end74
  %call.i147 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.19, ptr noundef null) #7
  %debugfs.i = getelementptr inbounds %struct.tegra_smmu, ptr %call.i, i32 0, i32 10
  %65 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i147, ptr %debugfs.i, align 4
  %tobool.not.i148 = icmp eq ptr %call.i147, null
  br i1 %tobool.not.i148, label %if.end78.cleanup_crit_edge, label %if.end.i149

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i149:                                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 292, ptr noundef nonnull %call.i147, ptr noundef nonnull %call.i, ptr noundef nonnull @tegra_smmu_swgroups_fops) #7
  %66 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %debugfs.i, align 4
  %call5.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.21, i16 noundef zeroext 292, ptr noundef %67, ptr noundef nonnull %call.i, ptr noundef nonnull @tegra_smmu_clients_fops) #7
  br label %cleanup

unset_platform_bus:                               ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %call79 = tail call i32 @bus_set_iommu(ptr noundef nonnull @platform_bus_type, ptr noundef null) #7
  br label %unregister

unregister:                                       ; preds = %unset_platform_bus, %if.end71.unregister_crit_edge
  %err.0 = phi i32 [ %call72, %if.end71.unregister_crit_edge ], [ %call75, %unset_platform_bus ]
  tail call void @iommu_device_unregister(ptr noundef %iommu) #7
  br label %remove_sysfs

remove_sysfs:                                     ; preds = %unregister, %if.end66.remove_sysfs_crit_edge
  %err.1 = phi i32 [ %call68, %if.end66.remove_sysfs_crit_edge ], [ %err.0, %unregister ]
  tail call void @iommu_device_sysfs_remove(ptr noundef %iommu) #7
  %68 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %remove_sysfs, %if.end.i149, %if.end78.cleanup_crit_edge, %if.then64, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %64, %if.then64 ], [ %68, %remove_sysfs ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %call.i, %if.end78.cleanup_crit_edge ], [ %call.i, %if.end.i149 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_bitmap_zalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_sysfs_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_set_iommu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_sysfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_smmu_remove(ptr noundef %smmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu = getelementptr inbounds %struct.tegra_smmu, ptr %smmu, i32 0, i32 11
  tail call void @iommu_device_unregister(ptr noundef %iommu) #7
  tail call void @iommu_device_sysfs_remove(ptr noundef %iommu) #7
  %debugfs.i = getelementptr inbounds %struct.tegra_smmu, ptr %smmu, i32 0, i32 10
  %0 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs.i, align 4
  tail call void @debugfs_remove(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_ahb_enable_smmu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra_smmu_capable(i32 noundef %cap) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_smmu_domain_alloc(i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 112) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %attr = getelementptr inbounds %struct.tegra_smmu_as, ptr %call7.i.i, i32 0, i32 9
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -536870912, ptr %attr, align 4
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3521, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %pd = getelementptr inbounds %struct.tegra_smmu_as, ptr %call7.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call38.i.i.i, ptr %pd, align 8
  %tobool5.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4096) #10
  %count = getelementptr inbounds %struct.tegra_smmu_as, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i, ptr %count, align 8
  %tobool10.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pd, align 8
  tail call void @__free_pages(ptr noundef %6, i32 noundef 0) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i45 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 4096) #10
  %pts = getelementptr inbounds %struct.tegra_smmu_as, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %pts to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i.i45, ptr %pts, align 4
  %tobool16.not = icmp eq ptr %call7.i.i.i45, null
  br i1 %tobool16.not, label %if.then17, label %do.body

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %count, align 8
  tail call void @kfree(ptr noundef %10) #7
  %11 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pd, align 8
  tail call void @__free_pages(ptr noundef %12, i32 noundef 0) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

do.body:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.tegra_smmu_as, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @tegra_smmu_domain_alloc.__key, i16 noundef signext 3) #7
  %geometry = getelementptr inbounds %struct.iommu_domain, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %geometry to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %geometry, align 4
  %aperture_end = getelementptr inbounds %struct.iommu_domain, ptr %call7.i.i, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %aperture_end to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %aperture_end, align 8
  %force_aperture = getelementptr inbounds %struct.iommu_domain, ptr %call7.i.i, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %force_aperture to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %force_aperture, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then17, %if.then11, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %do.body ], [ null, %if.then17 ], [ null, %if.then11 ], [ null, %if.then6 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_smmu_domain_free(ptr noundef %domain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %use_count = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 2
  %0 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b41 = load i1, ptr @tegra_smmu_domain_free.__already_done, align 1
  br i1 %.b41, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !86

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @tegra_smmu_domain_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 330, i32 noundef 9, ptr noundef null) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %count = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 4
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %count, align 4
  tail call void @kfree(ptr noundef %3) #7
  %pts = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 5
  %4 = ptrtoint ptr %pts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pts, align 4
  tail call void @kfree(ptr noundef %5) #7
  tail call void @kfree(ptr noundef %domain) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_smmu_attach_dev(ptr nocapture noundef %domain, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dev_iommu_priv_get.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dev_iommu_priv_get.exit:                          ; preds = %entry
  %fwspec.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec.i, align 4
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_iommu_priv_get.exit.cleanup_crit_edge, label %for.cond.preheader

dev_iommu_priv_get.exit.cleanup_crit_edge:        ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %dev_iommu_priv_get.exit
  %num_ids = getelementptr inbounds %struct.iommu_fwspec, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp71.not = icmp eq i32 %7, 0
  br i1 %cmp71.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %lock.i = getelementptr inbounds %struct.tegra_smmu, ptr %5, i32 0, i32 8
  %use_count.i = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 2
  %dev.i = getelementptr inbounds %struct.tegra_smmu, ptr %5, i32 0, i32 1
  %pd.i = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 6
  %pd_dma.i = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 7
  %pfn_mask.i.i = getelementptr inbounds %struct.tegra_smmu, ptr %5, i32 0, i32 5
  %id.i = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 8
  %asids.i.i = getelementptr inbounds %struct.tegra_smmu, ptr %5, i32 0, i32 7
  %soc.i.i = getelementptr inbounds %struct.tegra_smmu, ptr %5, i32 0, i32 3
  %mc.i.i = getelementptr inbounds %struct.tegra_smmu, ptr %5, i32 0, i32 2
  %attr.i = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 9
  %smmu19.i = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %tegra_smmu_enable.exit.for.body_crit_edge, %for.body.lr.ph
  %index.072 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %tegra_smmu_enable.exit.for.body_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %8 = ptrtoint ptr %use_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %use_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %if.end.i, label %for.body.if.end6_crit_edge

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end.i:                                         ; preds = %for.body
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pd.i, align 4
  %call.i = tail call i32 @dma_map_page_attrs(ptr noundef %11, ptr noundef %13, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #7
  %14 = ptrtoint ptr %pd_dma.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i, ptr %pd_dma.i, align 4
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %16, i32 noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i.not.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i.not.i, label %if.end.i.tegra_smmu_as_prepare.exit_crit_edge, label %if.end6.i

if.end.i.tegra_smmu_as_prepare.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_smmu_as_prepare.exit

if.end6.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %pd_dma.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pd_dma.i, align 4
  %shr.i.i = lshr i32 %18, 12
  %19 = ptrtoint ptr %pfn_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pfn_mask.i.i, align 4
  %and.i.i = and i32 %20, %shr.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %shr.i.i)
  %cmp.i55.i = icmp eq i32 %and.i.i, %shr.i.i
  br i1 %cmp.i55.i, label %if.end10.i, label %if.end6.i.err_unmap.i_crit_edge

if.end6.i.err_unmap.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unmap.i

if.end10.i:                                       ; preds = %if.end6.i
  %21 = ptrtoint ptr %asids.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %asids.i.i, align 4
  %23 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %soc.i.i, align 4
  %num_asids.i.i = getelementptr inbounds %struct.tegra_smmu_soc, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %num_asids.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_asids.i.i, align 4
  %call.i.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %22, i32 noundef %26) #7
  %27 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %soc.i.i, align 4
  %num_asids2.i.i = getelementptr inbounds %struct.tegra_smmu_soc, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %num_asids2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_asids2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %30)
  %cmp.not.i.i = icmp ult i32 %call.i.i, %30
  br i1 %cmp.not.i.i, label %if.end14.i, label %if.end10.i.err_unmap.i_crit_edge

if.end10.i.err_unmap.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unmap.i

if.end14.i:                                       ; preds = %if.end10.i
  %31 = ptrtoint ptr %asids.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %asids.i.i, align 4
  tail call void @_set_bit(i32 noundef %call.i.i, ptr noundef %32) #7
  %33 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call.i.i, ptr %id.i, align 4
  %34 = ptrtoint ptr %pd_dma.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pd_dma.i, align 4
  %36 = ptrtoint ptr %mc.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mc.i.i, align 4
  %soc.i56.i = getelementptr inbounds %struct.tegra_mc, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %soc.i56.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %soc.i56.i, align 4
  %num_address_bits.i.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %num_address_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_address_bits.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %41)
  %cmp.i57.i = icmp ugt i32 %41, 32
  br i1 %cmp.i57.i, label %if.then.i.i, label %if.end14.i.smmu_flush_ptc.exit.i_crit_edge

if.end14.i.smmu_flush_ptc.exit.i_crit_edge:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smmu_flush_ptc.exit.i

if.then.i.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %5, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %43, i32 2488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #7, !srcloc !83
  br label %smmu_flush_ptc.exit.i

smmu_flush_ptc.exit.i:                            ; preds = %if.then.i.i, %if.end14.i.smmu_flush_ptc.exit.i_crit_edge
  %or.i.i = or i32 %35, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %46, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %44) #7, !srcloc !83
  %47 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id.i, align 4
  %49 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %soc.i.i, align 4
  %num_asids.i60.i = getelementptr inbounds %struct.tegra_smmu_soc, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %num_asids.i60.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_asids.i60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %cmp.i61.i = icmp eq i32 %52, 4
  %value.0.v.i.i = select i1 %cmp.i61.i, i32 29, i32 24
  %value.0.i.i = shl i32 %48, %value.0.v.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %or.i62.i = lshr exact i32 %value.0.i.i, 24
  %53 = or i32 %or.i62.i, 128
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %5, align 4
  %add.ptr.i.i63.i = getelementptr i8, ptr %55, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i63.i, i32 %53) #7, !srcloc !83
  %56 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %and.i = shl i32 %57, 24
  %58 = and i32 %and.i, 2130706432
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %5, align 4
  %add.ptr.i.i = getelementptr i8, ptr %60, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %58) #7, !srcloc !83
  %61 = ptrtoint ptr %pd_dma.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pd_dma.i, align 4
  %shr.i = lshr i32 %62, 12
  %63 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %attr.i, align 4
  %or.i = or i32 %shr.i, %64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %65 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %5, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %67, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 %65) #7, !srcloc !83
  %68 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %5, align 4
  %add.ptr.i.i65.i = getelementptr i8, ptr %69, i32 28
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i65.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %71 = ptrtoint ptr %smmu19.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %5, ptr %smmu19.i, align 4
  %72 = ptrtoint ptr %use_count.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %use_count.i, align 4
  br label %if.end6

err_unmap.i:                                      ; preds = %if.end10.i.err_unmap.i_crit_edge, %if.end6.i.err_unmap.i_crit_edge
  %err.0.i = phi i32 [ -12, %if.end6.i.err_unmap.i_crit_edge ], [ -28, %if.end10.i.err_unmap.i_crit_edge ]
  %74 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i, align 4
  %76 = ptrtoint ptr %pd_dma.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pd_dma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %75, i32 noundef %77, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #7
  br label %tegra_smmu_as_prepare.exit

tegra_smmu_as_prepare.exit:                       ; preds = %err_unmap.i, %if.end.i.tegra_smmu_as_prepare.exit_crit_edge
  %retval.0.i39 = phi i32 [ %err.0.i, %err_unmap.i ], [ -12, %if.end.i.tegra_smmu_as_prepare.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.072)
  %tobool10.not74 = icmp eq i32 %index.072, 0
  br i1 %tobool10.not74, label %tegra_smmu_as_prepare.exit.cleanup_crit_edge, label %tegra_smmu_as_prepare.exit.while.body_crit_edge

tegra_smmu_as_prepare.exit.while.body_crit_edge:  ; preds = %tegra_smmu_as_prepare.exit
  br label %while.body

tegra_smmu_as_prepare.exit.cleanup_crit_edge:     ; preds = %tegra_smmu_as_prepare.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %smmu_flush_ptc.exit.i, %for.body.if.end6_crit_edge
  %storemerge.in = phi i32 [ %73, %smmu_flush_ptc.exit.i ], [ %9, %for.body.if.end6_crit_edge ]
  %storemerge = add i32 %storemerge.in, 1
  %78 = ptrtoint ptr %use_count.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %storemerge, ptr %use_count.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  %arrayidx = getelementptr %struct.iommu_fwspec, ptr %3, i32 0, i32 4, i32 %index.072
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx, align 4
  %81 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %id.i, align 4
  %83 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %soc.i.i, align 4
  %num_swgroups.i.i = getelementptr inbounds %struct.tegra_smmu_soc, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %num_swgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_swgroups.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp13.not.i.i = icmp eq i32 %86, 0
  br i1 %cmp13.not.i.i, label %if.end6.do.end.i_crit_edge, label %for.body.lr.ph.i.i

if.end6.do.end.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.body.lr.ph.i.i:                               ; preds = %if.end6
  %swgroups.i.i = getelementptr inbounds %struct.tegra_smmu_soc, ptr %84, i32 0, i32 2
  %87 = ptrtoint ptr %swgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %swgroups.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.014.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %swgroup2.i.i = getelementptr %struct.tegra_smmu_swgroup, ptr %88, i32 %i.014.i.i, i32 1
  %89 = ptrtoint ptr %swgroup2.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %swgroup2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %80)
  %cmp3.i.i = icmp eq i32 %90, %80
  br i1 %cmp3.i.i, label %tegra_smmu_find_swgroup.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %86
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

tegra_smmu_find_swgroup.exit.i:                   ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr %struct.tegra_smmu_swgroup, ptr %88, i32 %i.014.i.i
  %tobool.not.i41 = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i41, label %tegra_smmu_find_swgroup.exit.i.do.end.i_crit_edge, label %if.then.i44

tegra_smmu_find_swgroup.exit.i.do.end.i_crit_edge: ; preds = %tegra_smmu_find_swgroup.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i44:                                      ; preds = %tegra_smmu_find_swgroup.exit.i
  %reg.i = getelementptr %struct.tegra_smmu_swgroup, ptr %88, i32 %i.014.i.i, i32 2
  %91 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %reg.i, align 4
  %93 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %5, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %94, i32 %92
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i42) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %96 = and i32 %95, -2130706561
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #7
  %and2.i = and i32 %82, 127
  %or.i43 = or i32 %and2.i, %97
  %or3.i = or i32 %or.i43, -2147483648
  %98 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %100 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #7
  %101 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %5, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %102, i32 %99
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %100) #7, !srcloc !83
  %103 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %soc.i.i, align 4
  %num_clients50.i = getelementptr inbounds %struct.tegra_smmu_soc, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %num_clients50.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_clients50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp51.not.i = icmp eq i32 %106, 0
  br i1 %cmp51.not.i, label %if.then.i44.tegra_smmu_enable.exit_crit_edge, label %if.then.i44.for.body.i_crit_edge

if.then.i44.for.body.i_crit_edge:                 ; preds = %if.then.i44
  br label %for.body.i

if.then.i44.tegra_smmu_enable.exit_crit_edge:     ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_smmu_enable.exit

do.end.i:                                         ; preds = %tegra_smmu_find_swgroup.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %if.end6.do.end.i_crit_edge
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %80) #11
  br label %tegra_smmu_enable.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then.i44.for.body.i_crit_edge
  %107 = phi ptr [ %127, %cleanup.i.for.body.i_crit_edge ], [ %104, %if.then.i44.for.body.i_crit_edge ]
  %i.052.i = phi i32 [ %inc.i45, %cleanup.i.for.body.i_crit_edge ], [ 0, %if.then.i44.for.body.i_crit_edge ]
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %110 = getelementptr %struct.tegra_mc_client, ptr %109, i32 %i.052.i, i32 2
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %80)
  %cmp7.not.i = icmp eq i32 %112, %80
  br i1 %cmp7.not.i, label %if.end9.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end9.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i = getelementptr %struct.tegra_mc_client, ptr %109, i32 %i.052.i, i32 4
  %113 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %regs.i, align 4
  %115 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %5, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %116, i32 %114
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45.i) #7, !srcloc !84
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %bit.i = getelementptr inbounds %struct.anon.72, ptr %regs.i, i32 0, i32 1
  %119 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %bit.i, align 4
  %shl.i = shl nuw i32 1, %120
  %or15.i = or i32 %shl.i, %118
  %121 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %123 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #7
  %124 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %5, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %125, i32 %122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 %123) #7, !srcloc !83
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end9.i, %for.body.i.cleanup.i_crit_edge
  %inc.i45 = add nuw i32 %i.052.i, 1
  %126 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %soc.i.i, align 4
  %num_clients.i = getelementptr inbounds %struct.tegra_smmu_soc, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %num_clients.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %num_clients.i, align 4
  %cmp.i = icmp ult i32 %inc.i45, %129
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.tegra_smmu_enable.exit_crit_edge

cleanup.i.tegra_smmu_enable.exit_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_smmu_enable.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

tegra_smmu_enable.exit:                           ; preds = %cleanup.i.tegra_smmu_enable.exit_crit_edge, %do.end.i, %if.then.i44.tegra_smmu_enable.exit_crit_edge
  %inc = add nuw i32 %index.072, 1
  %130 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %num_ids, align 4
  %cmp = icmp ult i32 %inc, %131
  br i1 %cmp, label %tegra_smmu_enable.exit.for.body_crit_edge, label %tegra_smmu_enable.exit.cleanup_crit_edge

tegra_smmu_enable.exit.cleanup_crit_edge:         ; preds = %tegra_smmu_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

tegra_smmu_enable.exit.for.body_crit_edge:        ; preds = %tegra_smmu_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

while.body:                                       ; preds = %tegra_smmu_as_unprepare.exit.while.body_crit_edge, %tegra_smmu_as_prepare.exit.while.body_crit_edge
  %index.175 = phi i32 [ %dec, %tegra_smmu_as_unprepare.exit.while.body_crit_edge ], [ %index.072, %tegra_smmu_as_prepare.exit.while.body_crit_edge ]
  %dec = add i32 %index.175, -1
  %arrayidx12 = getelementptr %struct.iommu_fwspec, ptr %3, i32 0, i32 4, i32 %dec
  %132 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx12, align 4
  %134 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %id.i, align 4
  tail call fastcc void @tegra_smmu_disable(ptr noundef %5, i32 noundef %133, i32 noundef %135)
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %136 = ptrtoint ptr %use_count.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %use_count.i, align 4
  %dec.i = add i32 %137, -1
  store i32 %dec.i, ptr %use_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.not.i48 = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i48, label %if.end.i53, label %while.body.tegra_smmu_as_unprepare.exit_crit_edge

while.body.tegra_smmu_as_unprepare.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_smmu_as_unprepare.exit

if.end.i53:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %138 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %id.i, align 4
  %140 = ptrtoint ptr %asids.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %asids.i.i, align 4
  tail call void @_clear_bit(i32 noundef %139, ptr noundef %141) #7
  %142 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev.i, align 4
  %144 = ptrtoint ptr %pd_dma.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %pd_dma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %143, i32 noundef %145, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #7
  %146 = ptrtoint ptr %smmu19.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %smmu19.i, align 4
  br label %tegra_smmu_as_unprepare.exit

tegra_smmu_as_unprepare.exit:                     ; preds = %if.end.i53, %while.body.tegra_smmu_as_unprepare.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  %tobool10.not = icmp eq i32 %dec, 0
  br i1 %tobool10.not, label %tegra_smmu_as_unprepare.exit.cleanup_crit_edge, label %tegra_smmu_as_unprepare.exit.while.body_crit_edge

tegra_smmu_as_unprepare.exit.while.body_crit_edge: ; preds = %tegra_smmu_as_unprepare.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

tegra_smmu_as_unprepare.exit.cleanup_crit_edge:   ; preds = %tegra_smmu_as_unprepare.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %tegra_smmu_as_unprepare.exit.cleanup_crit_edge, %tegra_smmu_enable.exit.cleanup_crit_edge, %tegra_smmu_as_prepare.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %dev_iommu_priv_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %dev_iommu_priv_get.exit.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ %retval.0.i39, %tegra_smmu_as_prepare.exit.cleanup_crit_edge ], [ -19, %for.cond.preheader.cleanup_crit_edge ], [ %retval.0.i39, %tegra_smmu_as_unprepare.exit.cleanup_crit_edge ], [ 0, %tegra_smmu_enable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_smmu_detach_dev(ptr nocapture noundef %domain, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %dev_iommu_fwspec_get.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dev_iommu_fwspec_get.exit:                        ; preds = %entry
  %fwspec.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec.i, align 4
  %smmu2 = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 1
  %4 = ptrtoint ptr %smmu2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smmu2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_iommu_fwspec_get.exit.cleanup_crit_edge, label %for.cond.preheader

dev_iommu_fwspec_get.exit.cleanup_crit_edge:      ; preds = %dev_iommu_fwspec_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %dev_iommu_fwspec_get.exit
  %num_ids = getelementptr inbounds %struct.iommu_fwspec, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp16.not = icmp eq i32 %7, 0
  br i1 %cmp16.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %id = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 8
  %lock.i = getelementptr inbounds %struct.tegra_smmu, ptr %5, i32 0, i32 8
  %use_count.i = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 2
  %asids.i.i = getelementptr inbounds %struct.tegra_smmu, ptr %5, i32 0, i32 7
  %dev.i = getelementptr inbounds %struct.tegra_smmu, ptr %5, i32 0, i32 1
  %pd_dma.i = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %tegra_smmu_as_unprepare.exit.for.body_crit_edge, %for.body.lr.ph
  %index.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %tegra_smmu_as_unprepare.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iommu_fwspec, ptr %3, i32 0, i32 4, i32 %index.017
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  tail call fastcc void @tegra_smmu_disable(ptr noundef %5, i32 noundef %9, i32 noundef %11)
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %12 = ptrtoint ptr %use_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %use_count.i, align 4
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %use_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %for.body.tegra_smmu_as_unprepare.exit_crit_edge

for.body.tegra_smmu_as_unprepare.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_smmu_as_unprepare.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %16 = ptrtoint ptr %asids.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asids.i.i, align 4
  tail call void @_clear_bit(i32 noundef %15, ptr noundef %17) #7
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %20 = ptrtoint ptr %pd_dma.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pd_dma.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %19, i32 noundef %21, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #7
  %22 = ptrtoint ptr %smmu2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %smmu2, align 4
  br label %tegra_smmu_as_unprepare.exit

tegra_smmu_as_unprepare.exit:                     ; preds = %if.end.i, %for.body.tegra_smmu_as_unprepare.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  %inc = add nuw i32 %index.017, 1
  %23 = ptrtoint ptr %num_ids to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_ids, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %tegra_smmu_as_unprepare.exit.for.body_crit_edge, label %tegra_smmu_as_unprepare.exit.cleanup_crit_edge

tegra_smmu_as_unprepare.exit.cleanup_crit_edge:   ; preds = %tegra_smmu_as_unprepare.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

tegra_smmu_as_unprepare.exit.for.body_crit_edge:  ; preds = %tegra_smmu_as_unprepare.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %tegra_smmu_as_unprepare.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %dev_iommu_fwspec_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_smmu_map(ptr noundef %domain, i32 noundef %iova, i32 noundef %paddr, i32 noundef %size, i32 noundef %prot, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %shr.i.i.i = lshr i32 %iova, 22
  %pts.i.i = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 5
  %0 = ptrtoint ptr %pts.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pts.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %1, i32 %shr.i.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.i:                                       ; preds = %entry
  %and.i.i = and i32 %gfp, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %do.body9.i.i, label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or4.i.i = or i32 %gfp, 257
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef %or4.i.i, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  br label %if.end15.i.i

do.body9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  %or440.i.i = or i32 %gfp, 257
  %call38.i.i.i41.i.i = tail call ptr @__alloc_pages(i32 noundef %or440.i.i, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %call12.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %do.body9.i.i, %if.end3.i.i
  %flags.0 = phi i32 [ %call12.i.i, %do.body9.i.i ], [ %call3, %if.end3.i.i ]
  %call38.i.i.i42.i.i = phi ptr [ %call38.i.i.i41.i.i, %do.body9.i.i ], [ %call38.i.i.i.i.i, %if.end3.i.i ]
  %4 = ptrtoint ptr %pts.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pts.i.i, align 4
  %arrayidx17.i.i = getelementptr ptr, ptr %5, i32 %shr.i.i.i
  %6 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx17.i.i, align 4
  %tobool18.not.i.i = icmp eq ptr %7, null
  br i1 %tobool18.not.i.i, label %if.end15.i.i.as_get_pde_page.exit.i_crit_edge, label %if.then19.i.i

if.end15.i.i.as_get_pde_page.exit.i_crit_edge:    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %as_get_pde_page.exit.i

if.then19.i.i:                                    ; preds = %if.end15.i.i
  %tobool20.not.i.i = icmp eq ptr %call38.i.i.i42.i.i, null
  br i1 %tobool20.not.i.i, label %if.then19.i.i.if.end22.i.i_crit_edge, label %if.then21.i.i

if.then19.i.i.if.end22.i.i_crit_edge:             ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i.i

if.then21.i.i:                                    ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i42.i.i, i32 noundef 0) #7
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then21.i.i, %if.then19.i.i.if.end22.i.i_crit_edge
  %8 = ptrtoint ptr %pts.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pts.i.i, align 4
  %arrayidx24.i.i = getelementptr ptr, ptr %9, i32 %shr.i.i.i
  %10 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx24.i.i, align 4
  br label %as_get_pde_page.exit.i

as_get_pde_page.exit.i:                           ; preds = %if.end22.i.i, %if.end15.i.i.as_get_pde_page.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end22.i.i ], [ %call38.i.i.i42.i.i, %if.end15.i.i.as_get_pde_page.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %as_get_pde_page.exit.i.__tegra_smmu_map.exit_crit_edge, label %as_get_pde_page.exit.i.if.end.i_crit_edge

as_get_pde_page.exit.i.if.end.i_crit_edge:        ; preds = %as_get_pde_page.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

as_get_pde_page.exit.i.__tegra_smmu_map.exit_crit_edge: ; preds = %as_get_pde_page.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__tegra_smmu_map.exit

if.end.i:                                         ; preds = %as_get_pde_page.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %flags.1 = phi i32 [ %flags.0, %as_get_pde_page.exit.i.if.end.i_crit_edge ], [ %call3, %entry.if.end.i_crit_edge ]
  %retval.0.i10.i = phi ptr [ %retval.0.i.i, %as_get_pde_page.exit.i.if.end.i_crit_edge ], [ %3, %entry.if.end.i_crit_edge ]
  %smmu1.i.i = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 1
  %12 = ptrtoint ptr %smmu1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %smmu1.i.i, align 4
  %14 = ptrtoint ptr %pts.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pts.i.i, align 4
  %arrayidx.i3.i = getelementptr ptr, ptr %15, i32 %shr.i.i.i
  %16 = ptrtoint ptr %arrayidx.i3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i3.i, align 4
  %tobool.not.i4.i = icmp eq ptr %17, null
  br i1 %tobool.not.i4.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %dev.i.i = getelementptr inbounds %struct.tegra_smmu, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  %call2.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %19, ptr noundef nonnull %retval.0.i10.i, i32 noundef 0, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #7
  %20 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %21, i32 noundef %call2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i.not.i.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i.not.i.i, label %if.then6.i.i, label %if.end.i5.i

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__free_pages(ptr noundef nonnull %retval.0.i10.i, i32 noundef 0) #7
  br label %__tegra_smmu_map.exit

if.end.i5.i:                                      ; preds = %if.then.i.i
  %shr.i45.i.i = lshr i32 %call2.i.i, 12
  %pfn_mask.i.i.i = getelementptr inbounds %struct.tegra_smmu, ptr %13, i32 0, i32 5
  %22 = ptrtoint ptr %pfn_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pfn_mask.i.i.i, align 4
  %and.i.i.i = and i32 %23, %shr.i45.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i, i32 %shr.i45.i.i)
  %cmp.i46.i.i = icmp eq i32 %and.i.i.i, %shr.i45.i.i
  br i1 %cmp.i46.i.i, label %if.end10.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %25, i32 noundef %call2.i.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #7
  tail call void @__free_pages(ptr noundef nonnull %retval.0.i10.i, i32 noundef 0) #7
  br label %__tegra_smmu_map.exit

if.end10.i.i:                                     ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %pts.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pts.i.i, align 4
  %arrayidx12.i.i = getelementptr ptr, ptr %27, i32 %shr.i.i.i
  %28 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i10.i, ptr %arrayidx12.i.i, align 4
  %or.i.i = or i32 %shr.i45.i.i, -268435456
  tail call fastcc void @tegra_smmu_set_pde(ptr noundef %domain, i32 noundef %iova, i32 noundef %or.i.i) #7
  br label %as_get_pte.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %pd13.i.i = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 6
  %29 = ptrtoint ptr %pd13.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pd13.i.i, align 4
  %call14.i.i = tail call ptr @page_address(ptr noundef %30) #7
  %arrayidx15.i.i = getelementptr i32, ptr %call14.i.i, i32 %shr.i.i.i
  %31 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx15.i.i, align 4
  %pfn_mask.i47.i.i = getelementptr inbounds %struct.tegra_smmu, ptr %13, i32 0, i32 5
  %33 = ptrtoint ptr %pfn_mask.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pfn_mask.i47.i.i, align 4
  %and.i48.i.i = and i32 %34, %32
  %shl.i.i.i = shl i32 %and.i48.i.i, 12
  br label %as_get_pte.exit.i

as_get_pte.exit.i:                                ; preds = %if.else.i.i, %if.end10.i.i
  %storemerge.i.i = phi i32 [ %shl.i.i.i, %if.else.i.i ], [ %call2.i.i, %if.end10.i.i ]
  %35 = ptrtoint ptr %pts.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pts.i.i, align 4
  %arrayidx19.i.i = getelementptr ptr, ptr %36, i32 %shr.i.i.i
  %37 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx19.i.i, align 4
  %call.i.i.i = tail call ptr @page_address(ptr noundef %38) #7
  %shr.i.i.i.i = lshr i32 %iova, 12
  %and.i.i.i.i = and i32 %shr.i.i.i.i, 1023
  %add.ptr.i.i.i = getelementptr i32, ptr %call.i.i.i, i32 %and.i.i.i.i
  %tobool3.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool3.not.i, label %as_get_pte.exit.i.__tegra_smmu_map.exit_crit_edge, label %if.end5.i

as_get_pte.exit.i.__tegra_smmu_map.exit_crit_edge: ; preds = %as_get_pte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__tegra_smmu_map.exit

if.end5.i:                                        ; preds = %as_get_pte.exit.i
  %39 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i = icmp eq i32 %40, 0
  br i1 %cmp.i, label %if.then6.i, label %if.end5.i.if.end7.i_crit_edge

if.end5.i.if.end7.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %count.i.i = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 4
  %41 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %count.i.i, align 4
  %arrayidx.i7.i = getelementptr i32, ptr %42, i32 %shr.i.i.i
  %43 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i7.i, align 4
  %inc.i.i = add i32 %44, 1
  store i32 %inc.i.i, ptr %arrayidx.i7.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end5.i.if.end7.i_crit_edge
  %and.i = and i32 %prot, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool8.not.i, i32 536870912, i32 -1610612736
  %and11.i = shl i32 %prot, 29
  %45 = and i32 %and11.i, 1073741824
  %shr.i = lshr i32 %paddr, 12
  %46 = or i32 %45, %shr.i
  %or16.i = or i32 %46, %spec.select.i
  tail call fastcc void @tegra_smmu_set_pte(ptr noundef %domain, i32 noundef %iova, ptr noundef nonnull %add.ptr.i.i.i, i32 noundef %storemerge.i.i, i32 noundef %or16.i) #7
  br label %__tegra_smmu_map.exit

__tegra_smmu_map.exit:                            ; preds = %if.end7.i, %as_get_pte.exit.i.__tegra_smmu_map.exit_crit_edge, %if.then8.i.i, %if.then6.i.i, %as_get_pde_page.exit.i.__tegra_smmu_map.exit_crit_edge
  %flags.2 = phi i32 [ %flags.0, %as_get_pde_page.exit.i.__tegra_smmu_map.exit_crit_edge ], [ %flags.1, %if.then6.i.i ], [ %flags.1, %as_get_pte.exit.i.__tegra_smmu_map.exit_crit_edge ], [ %flags.1, %if.end7.i ], [ %flags.1, %if.then8.i.i ]
  %retval.0.i = phi i32 [ -12, %as_get_pde_page.exit.i.__tegra_smmu_map.exit_crit_edge ], [ -12, %if.then6.i.i ], [ -12, %as_get_pte.exit.i.__tegra_smmu_map.exit_crit_edge ], [ 0, %if.end7.i ], [ -12, %if.then8.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.2) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_smmu_unmap(ptr noundef %domain, i32 noundef %iova, i32 noundef %size, ptr nocapture noundef readnone %gather) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %shr.i.i.i = lshr i32 %iova, 22
  %pts.i.i = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 5
  %0 = ptrtoint ptr %pts.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pts.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %1, i32 %shr.i.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.__tegra_smmu_unmap.exit_crit_edge, label %tegra_smmu_pte_lookup.exit.i

entry.__tegra_smmu_unmap.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__tegra_smmu_unmap.exit

tegra_smmu_pte_lookup.exit.i:                     ; preds = %entry
  %smmu1.i.i = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 1
  %4 = ptrtoint ptr %smmu1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smmu1.i.i, align 4
  %pd2.i.i = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 6
  %6 = ptrtoint ptr %pd2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd2.i.i, align 4
  %call3.i.i = tail call ptr @page_address(ptr noundef %7) #7
  %arrayidx4.i.i = getelementptr i32, ptr %call3.i.i, i32 %shr.i.i.i
  %8 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i.i, align 4
  %pfn_mask.i.i.i = getelementptr inbounds %struct.tegra_smmu, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %pfn_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pfn_mask.i.i.i, align 4
  %and.i.i.i = and i32 %11, %9
  %shl.i.i.i = shl i32 %and.i.i.i, 12
  %call.i.i.i = tail call ptr @page_address(ptr noundef nonnull %3) #7
  %shr.i.i.i.i = lshr i32 %iova, 12
  %and.i.i.i.i = and i32 %shr.i.i.i.i, 1023
  %add.ptr.i.i.i = getelementptr i32, ptr %call.i.i.i, i32 %and.i.i.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %tegra_smmu_pte_lookup.exit.i.__tegra_smmu_unmap.exit_crit_edge, label %lor.lhs.false.i

tegra_smmu_pte_lookup.exit.i.__tegra_smmu_unmap.exit_crit_edge: ; preds = %tegra_smmu_pte_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__tegra_smmu_unmap.exit

lor.lhs.false.i:                                  ; preds = %tegra_smmu_pte_lookup.exit.i
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not.i = icmp eq i32 %13, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.__tegra_smmu_unmap.exit_crit_edge, label %if.end.i

lor.lhs.false.i.__tegra_smmu_unmap.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__tegra_smmu_unmap.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  tail call fastcc void @tegra_smmu_set_pte(ptr noundef %domain, i32 noundef %iova, ptr noundef nonnull %add.ptr.i.i.i, i32 noundef %shl.i.i.i, i32 noundef 0) #7
  %14 = ptrtoint ptr %pts.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pts.i.i, align 4
  %arrayidx.i3.i = getelementptr ptr, ptr %15, i32 %shr.i.i.i
  %16 = ptrtoint ptr %arrayidx.i3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i3.i, align 4
  %count.i.i = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 4
  %18 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %count.i.i, align 4
  %arrayidx1.i.i = getelementptr i32, ptr %19, i32 %shr.i.i.i
  %20 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx1.i.i, align 4
  %dec.i.i = add i32 %21, -1
  store i32 %dec.i.i, ptr %arrayidx1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.__tegra_smmu_unmap.exit_crit_edge

if.end.i.__tegra_smmu_unmap.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__tegra_smmu_unmap.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %smmu1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %smmu1.i.i, align 4
  %24 = ptrtoint ptr %pd2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pd2.i.i, align 4
  %call4.i.i = tail call ptr @page_address(ptr noundef %25) #7
  %arrayidx5.i.i = getelementptr i32, ptr %call4.i.i, i32 %shr.i.i.i
  %26 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx5.i.i, align 4
  %pfn_mask.i.i4.i = getelementptr inbounds %struct.tegra_smmu, ptr %23, i32 0, i32 5
  %28 = ptrtoint ptr %pfn_mask.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pfn_mask.i.i4.i, align 4
  %and.i.i5.i = and i32 %29, %27
  %shl.i.i6.i = shl i32 %and.i.i5.i, 12
  tail call fastcc void @tegra_smmu_set_pde(ptr noundef %domain, i32 noundef %iova, i32 noundef 0) #7
  %dev.i.i = getelementptr inbounds %struct.tegra_smmu, ptr %23, i32 0, i32 1
  %30 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %31, i32 noundef %shl.i.i6.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #7
  tail call void @__free_pages(ptr noundef %17, i32 noundef 0) #7
  %32 = ptrtoint ptr %pts.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pts.i.i, align 4
  %arrayidx8.i.i = getelementptr ptr, ptr %33, i32 %shr.i.i.i
  %34 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx8.i.i, align 4
  br label %__tegra_smmu_unmap.exit

__tegra_smmu_unmap.exit:                          ; preds = %if.then.i.i, %if.end.i.__tegra_smmu_unmap.exit_crit_edge, %lor.lhs.false.i.__tegra_smmu_unmap.exit_crit_edge, %tegra_smmu_pte_lookup.exit.i.__tegra_smmu_unmap.exit_crit_edge, %entry.__tegra_smmu_unmap.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %lor.lhs.false.i.__tegra_smmu_unmap.exit_crit_edge ], [ 0, %tegra_smmu_pte_lookup.exit.i.__tegra_smmu_unmap.exit_crit_edge ], [ %size, %if.end.i.__tegra_smmu_unmap.exit_crit_edge ], [ %size, %if.then.i.i ], [ 0, %entry.__tegra_smmu_unmap.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_smmu_iova_to_phys(ptr nocapture noundef readonly %domain, i32 noundef %iova) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i.i = lshr i32 %iova, 22
  %pts.i = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 5
  %0 = ptrtoint ptr %pts.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pts.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %1, i32 %shr.i.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %tegra_smmu_pte_lookup.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

tegra_smmu_pte_lookup.exit:                       ; preds = %entry
  %pd2.i = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 6
  %4 = ptrtoint ptr %pd2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd2.i, align 4
  %call3.i = tail call ptr @page_address(ptr noundef %5) #7
  %call.i.i = tail call ptr @page_address(ptr noundef nonnull %3) #7
  %shr.i.i.i = lshr i32 %iova, 12
  %and.i.i.i = and i32 %shr.i.i.i, 1023
  %add.ptr.i.i = getelementptr i32, ptr %call.i.i, i32 %and.i.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %tegra_smmu_pte_lookup.exit.cleanup_crit_edge, label %lor.lhs.false

tegra_smmu_pte_lookup.exit.cleanup_crit_edge:     ; preds = %tegra_smmu_pte_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %tegra_smmu_pte_lookup.exit
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %smmu = getelementptr inbounds %struct.tegra_smmu_as, ptr %domain, i32 0, i32 1
  %8 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %smmu, align 4
  %pfn_mask = getelementptr inbounds %struct.tegra_smmu, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %pfn_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pfn_mask, align 4
  %and = and i32 %11, %7
  %shl = shl i32 %and, 12
  %and3 = and i32 %iova, 4095
  %add = or i32 %shl, %and3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %tegra_smmu_pte_lookup.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %tegra_smmu_pte_lookup.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_smmu_probe_device(ptr noundef %dev) #0 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #7
  %2 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call.i40 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %args) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %cmp41 = icmp eq i32 %call.i40, 0
  br i1 %cmp41, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %entry.while.body_crit_edge
  %index.042 = phi i32 [ %inc, %if.end8.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args, align 4
  %call.i26 = call ptr @of_find_device_by_node(ptr noundef %4) #7
  %tobool.not.i = icmp eq ptr %call.i26, null
  br i1 %tobool.not.i, label %while.body.if.end8_crit_edge, label %if.end.i

while.body.if.end8_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end.i:                                         ; preds = %while.body
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %call.i26, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool2.not.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i, label %if.then3.i, label %tegra_smmu_find.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %call.i26, i32 0, i32 3
  call void @put_device(ptr noundef %dev.i) #7
  br label %if.end8

tegra_smmu_find.exit:                             ; preds = %if.end.i
  %smmu.i = getelementptr inbounds %struct.tegra_mc, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %smmu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smmu.i, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %tegra_smmu_find.exit.if.end8_crit_edge, label %if.then

tegra_smmu_find.exit.if.end8_crit_edge:           ; preds = %tegra_smmu_find.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %tegra_smmu_find.exit
  %ops1.i = getelementptr inbounds %struct.tegra_smmu, ptr %8, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %ops1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops1.i, align 4
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %12, i32 0, i32 3
  %call.i27 = call i32 @iommu_fwspec_init(ptr noundef %dev, ptr noundef %fwnode.i, ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %cmp.i = icmp slt i32 %call.i27, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i28

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call.i27) #11
  br label %if.then5

if.end.i28:                                       ; preds = %if.then
  %of_xlate.i = getelementptr inbounds %struct.iommu_ops, ptr %10, i32 0, i32 22
  %13 = ptrtoint ptr %of_xlate.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_xlate.i, align 4
  %call2.i = call i32 %14(ptr noundef %dev, ptr noundef nonnull %args) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end7.i, label %if.end.i28.if.end8_crit_edge

if.end.i28.if.end8_crit_edge:                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end7.i:                                        ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call2.i) #11
  call void @iommu_fwspec_free(ptr noundef %dev) #7
  br label %if.then5

if.then5:                                         ; preds = %do.end7.i, %do.end.i
  %retval.0.i29.ph = phi i32 [ %call2.i, %do.end7.i ], [ %call.i27, %do.end.i ]
  %15 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %args, align 4
  call void @of_node_put(ptr noundef %16) #7
  %17 = inttoptr i32 %retval.0.i29.ph to ptr
  br label %cleanup

if.end8:                                          ; preds = %if.end.i28.if.end8_crit_edge, %tegra_smmu_find.exit.if.end8_crit_edge, %if.then3.i, %while.body.if.end8_crit_edge
  %18 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %args, align 4
  call void @of_node_put(ptr noundef %19) #7
  %inc = add i32 %index.042, 1
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef -1, i32 noundef %inc, ptr noundef nonnull %args) #7
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.end8.while.body_crit_edge, label %if.end8.while.end_crit_edge

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end8.while.end_crit_edge, %entry.while.end_crit_edge
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %20 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i30 = icmp eq ptr %21, null
  br i1 %tobool.not.i30, label %while.end.cleanup_crit_edge, label %dev_iommu_priv_get.exit

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dev_iommu_priv_get.exit:                          ; preds = %while.end
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv.i, align 4
  %tobool11.not = icmp eq ptr %23, null
  br i1 %tobool11.not, label %dev_iommu_priv_get.exit.cleanup_crit_edge, label %if.end14

dev_iommu_priv_get.exit.cleanup_crit_edge:        ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %iommu = getelementptr inbounds %struct.tegra_smmu, ptr %23, i32 0, i32 11
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %dev_iommu_priv_get.exit.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.then5
  %retval.0 = phi ptr [ %17, %if.then5 ], [ %iommu, %if.end14 ], [ inttoptr (i32 -19 to ptr), %dev_iommu_priv_get.exit.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %while.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #7
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tegra_smmu_release_device(ptr nocapture noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_smmu_device_group(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dev_iommu_priv_get.exit_crit_edge, label %if.then.i95

entry.dev_iommu_priv_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_iommu_priv_get.exit

if.then.i95:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fwspec.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec.i, align 4
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 4
  br label %dev_iommu_priv_get.exit

dev_iommu_priv_get.exit:                          ; preds = %if.then.i95, %entry.dev_iommu_priv_get.exit_crit_edge
  %retval.0.i100 = phi ptr [ %3, %if.then.i95 ], [ null, %entry.dev_iommu_priv_get.exit_crit_edge ]
  %retval.0.i96 = phi ptr [ %5, %if.then.i95 ], [ null, %entry.dev_iommu_priv_get.exit_crit_edge ]
  %ids = getelementptr inbounds %struct.iommu_fwspec, ptr %retval.0.i100, i32 0, i32 4
  %6 = ptrtoint ptr %ids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ids, align 4
  %soc.i = getelementptr inbounds %struct.tegra_smmu, ptr %retval.0.i96, i32 0, i32 3
  %8 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc.i, align 4
  %num_groups.i = getelementptr inbounds %struct.tegra_smmu_soc, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %num_groups.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_groups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp29.not.i = icmp eq i32 %11, 0
  br i1 %cmp29.not.i, label %dev_iommu_priv_get.exit.tegra_smmu_find_group.exit_crit_edge, label %for.cond1.preheader.lr.ph.i

dev_iommu_priv_get.exit.tegra_smmu_find_group.exit_crit_edge: ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_smmu_find_group.exit

for.cond1.preheader.lr.ph.i:                      ; preds = %dev_iommu_priv_get.exit
  %groups.i = getelementptr inbounds %struct.tegra_smmu_soc, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %groups.i, align 4
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc13.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %i.030.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc14.i, %for.inc13.i.for.cond1.preheader.i_crit_edge ]
  %num_swgroups.i = getelementptr %struct.tegra_smmu_group_soc, ptr %13, i32 %i.030.i, i32 2
  %14 = ptrtoint ptr %num_swgroups.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_swgroups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp327.not.i = icmp eq i32 %15, 0
  br i1 %cmp327.not.i, label %for.cond1.preheader.i.for.inc13.i_crit_edge, label %for.body4.lr.ph.i

for.cond1.preheader.i.for.inc13.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13.i

for.body4.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %swgroups.i = getelementptr %struct.tegra_smmu_group_soc, ptr %13, i32 %i.030.i, i32 1
  %16 = ptrtoint ptr %swgroups.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %swgroups.i, align 4
  br label %for.body4.i

for.cond1.i:                                      ; preds = %for.body4.i
  %inc.i = add nuw i32 %j.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.cond1.i.for.inc13.i_crit_edge, label %for.cond1.i.for.body4.i_crit_edge

for.cond1.i.for.body4.i_crit_edge:                ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4.i

for.cond1.i.for.inc13.i_crit_edge:                ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13.i

for.body4.i:                                      ; preds = %for.cond1.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %j.028.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc.i, %for.cond1.i.for.body4.i_crit_edge ]
  %arrayidx8.i = getelementptr i32, ptr %17, i32 %j.028.i
  %18 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %7)
  %cmp9.i = icmp eq i32 %19, %7
  br i1 %cmp9.i, label %cleanup.loopexit.i, label %for.cond1.i

for.inc13.i:                                      ; preds = %for.cond1.i.for.inc13.i_crit_edge, %for.cond1.preheader.i.for.inc13.i_crit_edge
  %inc14.i = add nuw i32 %i.030.i, 1
  %exitcond34.not.i = icmp eq i32 %inc14.i, %11
  br i1 %exitcond34.not.i, label %for.inc13.i.tegra_smmu_find_group.exit_crit_edge, label %for.inc13.i.for.cond1.preheader.i_crit_edge

for.inc13.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.i

for.inc13.i.tegra_smmu_find_group.exit_crit_edge: ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_smmu_find_group.exit

cleanup.loopexit.i:                               ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.le.i = getelementptr %struct.tegra_smmu_group_soc, ptr %13, i32 %i.030.i
  br label %tegra_smmu_find_group.exit

tegra_smmu_find_group.exit:                       ; preds = %cleanup.loopexit.i, %for.inc13.i.tegra_smmu_find_group.exit_crit_edge, %dev_iommu_priv_get.exit.tegra_smmu_find_group.exit_crit_edge
  %retval.0.i97 = phi ptr [ %arrayidx.le.i, %cleanup.loopexit.i ], [ null, %dev_iommu_priv_get.exit.tegra_smmu_find_group.exit_crit_edge ], [ null, %for.inc13.i.tegra_smmu_find_group.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.tegra_smmu, ptr %retval.0.i96, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %groups = getelementptr inbounds %struct.tegra_smmu, ptr %retval.0.i96, i32 0, i32 4
  %20 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %20)
  %group.0103 = load ptr, ptr %groups, align 4
  %cmp.not104 = icmp eq ptr %group.0103, %groups
  br i1 %cmp.not104, label %tegra_smmu_find_group.exit.for.end_crit_edge, label %for.body.lr.ph

tegra_smmu_find_group.exit.for.end_crit_edge:     ; preds = %tegra_smmu_find_group.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %tegra_smmu_find_group.exit
  %tobool.not = icmp eq ptr %retval.0.i97, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %group.0105 = phi ptr [ %group.0103, %for.body.lr.ph ], [ %group.0, %for.inc.for.body_crit_edge ]
  %swgroup4 = getelementptr inbounds %struct.tegra_smmu_group, ptr %group.0105, i32 0, i32 4
  %21 = ptrtoint ptr %swgroup4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %swgroup4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %7)
  %cmp5 = icmp eq i32 %22, %7
  br i1 %cmp5, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  br i1 %tobool.not, label %lor.lhs.false.for.inc_crit_edge, label %land.lhs.true

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %lor.lhs.false
  %soc6 = getelementptr inbounds %struct.tegra_smmu_group, ptr %group.0105, i32 0, i32 2
  %23 = ptrtoint ptr %soc6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %soc6, align 4
  %cmp7 = icmp eq ptr %24, %retval.0.i97
  br i1 %cmp7, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %for.body.if.then_crit_edge
  %group8 = getelementptr inbounds %struct.tegra_smmu_group, ptr %group.0105, i32 0, i32 3
  %25 = ptrtoint ptr %group8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %group8, align 4
  %call9 = tail call ptr @iommu_group_ref_get(ptr noundef %26) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %27 = ptrtoint ptr %group.0105 to i32
  call void @__asan_load4_noabort(i32 %27)
  %group.0 = load ptr, ptr %group.0105, align 4
  %cmp.not = icmp eq ptr %group.0, %groups
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %tegra_smmu_find_group.exit.for.end_crit_edge
  %dev16 = getelementptr inbounds %struct.tegra_smmu, ptr %retval.0.i96, i32 0, i32 1
  %28 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev16, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %29, i32 noundef 24, i32 noundef 3520) #7
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

if.end21:                                         ; preds = %for.end
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call.i, ptr %call.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %prev.i, align 4
  %swgroup23 = getelementptr inbounds %struct.tegra_smmu_group, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %swgroup23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %7, ptr %swgroup23, align 4
  %smmu24 = getelementptr inbounds %struct.tegra_smmu_group, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %smmu24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %retval.0.i96, ptr %smmu24, align 4
  %soc25 = getelementptr inbounds %struct.tegra_smmu_group, ptr %call.i, i32 0, i32 2
  %34 = ptrtoint ptr %soc25 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %retval.0.i97, ptr %soc25, align 4
  %bus = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %35 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus, align 8
  %cmp26 = icmp eq ptr %36, @pci_bus_type
  br i1 %cmp26, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call ptr @pci_device_group(ptr noundef %dev) #7
  br label %if.end32

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call ptr @generic_device_group(ptr noundef %dev) #7
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then27
  %call30.sink = phi ptr [ %call28, %if.then27 ], [ %call30, %if.else ]
  %37 = getelementptr inbounds %struct.tegra_smmu_group, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call30.sink, ptr %37, align 4
  %cmp.i = icmp ugt ptr %call30.sink, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev16, align 4
  tail call void @devm_kfree(ptr noundef %40, ptr noundef nonnull %call.i) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  tail call void @iommu_group_set_iommudata(ptr noundef %call30.sink, ptr noundef nonnull %call.i, ptr noundef nonnull @tegra_smmu_group_release) #7
  %tobool40.not = icmp eq ptr %retval.0.i97, null
  br i1 %tobool40.not, label %if.end38.if.end44_crit_edge, label %if.then41

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %37, align 4
  %43 = ptrtoint ptr %retval.0.i97 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %retval.0.i97, align 4
  %call43 = tail call i32 @iommu_group_set_name(ptr noundef %42, ptr noundef %44) #7
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end38.if.end44_crit_edge
  %prev.i98 = getelementptr inbounds %struct.tegra_smmu, ptr %retval.0.i96, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %prev.i98 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i98, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %46, ptr noundef %groups) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end44.list_add_tail.exit_crit_edge

if.end44.list_add_tail.exit_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %prev.i98 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %prev.i98, align 4
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %groups, ptr %call.i, align 4
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %call.i, ptr %46, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end44.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %51 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %37, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then35, %if.then19, %if.then
  %retval.0 = phi ptr [ %call9, %if.then ], [ null, %if.then35 ], [ %52, %list_add_tail.exit ], [ null, %if.then19 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_smmu_of_xlate(ptr noundef %dev, ptr nocapture noundef readonly %args) #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %args, align 4
  %call = tail call ptr @of_find_device_by_node(ptr noundef %1) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %args2 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %args2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args2, align 4
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %id, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  tail call void @put_device(ptr noundef %dev3) #7
  %smmu = getelementptr inbounds %struct.tegra_mc, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %smmu, align 4
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %9 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iommu.i, align 4
  %priv1.i = getelementptr inbounds %struct.dev_iommu, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %priv1.i, align 4
  %call4 = call i32 @iommu_fwspec_add_ids(ptr noundef %dev, ptr noundef nonnull %id, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_smmu_disable(ptr nocapture noundef readonly %smmu, i32 noundef %swgroup, i32 noundef %asid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %soc.i = getelementptr inbounds %struct.tegra_smmu, ptr %smmu, i32 0, i32 3
  %0 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc.i, align 4
  %num_swgroups.i = getelementptr inbounds %struct.tegra_smmu_soc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_swgroups.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_swgroups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not.i = icmp eq i32 %3, 0
  br i1 %cmp13.not.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %swgroups.i = getelementptr inbounds %struct.tegra_smmu_soc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %swgroups.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %swgroups.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %swgroup2.i = getelementptr %struct.tegra_smmu_swgroup, ptr %5, i32 %i.014.i, i32 1
  %6 = ptrtoint ptr %swgroup2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %swgroup2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %swgroup)
  %cmp3.i = icmp eq i32 %7, %swgroup
  br i1 %cmp3.i, label %tegra_smmu_find_swgroup.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

tegra_smmu_find_swgroup.exit:                     ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.tegra_smmu_swgroup, ptr %5, i32 %i.014.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %tegra_smmu_find_swgroup.exit.if.end_crit_edge, label %if.then

tegra_smmu_find_swgroup.exit.if.end_crit_edge:    ; preds = %tegra_smmu_find_swgroup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %tegra_smmu_find_swgroup.exit
  call void @__sanitizer_cov_trace_pc() #9
  %reg = getelementptr %struct.tegra_smmu_swgroup, ptr %5, i32 %i.014.i, i32 2
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  %10 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smmu, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %9
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %13 = and i32 %12, -2130706561
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %and2 = and i32 %asid, 127
  %or = or i32 %14, %and2
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %18 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smmu, align 4
  %add.ptr.i37 = getelementptr i8, ptr %19, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %17) #7, !srcloc !83
  br label %if.end

if.end:                                           ; preds = %if.then, %tegra_smmu_find_swgroup.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %soc.i, align 4
  %num_clients43 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %num_clients43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_clients43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp44.not = icmp eq i32 %23, 0
  br i1 %cmp44.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %24 = phi ptr [ %44, %cleanup.for.body_crit_edge ], [ %21, %if.end.for.body_crit_edge ]
  %i.045 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = getelementptr %struct.tegra_mc_client, ptr %26, i32 %i.045, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %swgroup)
  %cmp6.not = icmp eq i32 %29, %swgroup
  br i1 %cmp6.not, label %if.end8, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %regs = getelementptr %struct.tegra_mc_client, ptr %26, i32 %i.045, i32 4
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %regs, align 4
  %32 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %smmu, align 4
  %add.ptr.i38 = getelementptr i8, ptr %33, i32 %31
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #7, !srcloc !84
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %bit = getelementptr inbounds %struct.anon.72, ptr %regs, i32 0, i32 1
  %36 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bit, align 4
  %shl = shl nuw i32 1, %37
  %neg = xor i32 %shl, -1
  %and14 = and i32 %35, %neg
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %and14) #7
  %41 = ptrtoint ptr %smmu to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %smmu, align 4
  %add.ptr.i39 = getelementptr i8, ptr %42, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %40) #7, !srcloc !83
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.045, 1
  %43 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %soc.i, align 4
  %num_clients = getelementptr inbounds %struct.tegra_smmu_soc, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %num_clients to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_clients, align 4
  %cmp = icmp ult i32 %inc, %46
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_smmu_set_pte(ptr nocapture noundef readonly %as, i32 noundef %iova, ptr noundef %pte, i32 noundef %pte_dma, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smmu1 = getelementptr inbounds %struct.tegra_smmu_as, ptr %as, i32 0, i32 1
  %0 = ptrtoint ptr %smmu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smmu1, align 4
  %2 = ptrtoint ptr %pte to i32
  %and = and i32 %2, 4095
  %3 = ptrtoint ptr %pte to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %val, ptr %pte, align 4
  %dev = getelementptr inbounds %struct.tegra_smmu, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %add.i = add i32 %and, %pte_dma
  tail call void @dma_sync_single_for_device(ptr noundef %5, i32 noundef %add.i, i32 noundef 4, i32 noundef 1) #7
  %mc.i = getelementptr inbounds %struct.tegra_smmu, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mc.i, align 4
  %soc.i = getelementptr inbounds %struct.tegra_mc, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc.i, align 4
  %atom_size.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %atom_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %atom_size.i, align 4
  %num_address_bits.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %num_address_bits.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_address_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %13)
  %cmp.i = icmp ugt i32 %13, 32
  br i1 %cmp.i, label %if.then.i, label %entry.smmu_flush_ptc.exit_crit_edge

entry.smmu_flush_ptc.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %smmu_flush_ptc.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 2488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !83
  br label %smmu_flush_ptc.exit

smmu_flush_ptc.exit:                              ; preds = %if.then.i, %entry.smmu_flush_ptc.exit_crit_edge
  %neg.i = sub i32 0, %11
  %and.i = and i32 %and, %neg.i
  %add.i9 = add i32 %and.i, %pte_dma
  %or.i = or i32 %add.i9, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %18, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %16) #7, !srcloc !83
  %id = getelementptr inbounds %struct.tegra_smmu_as, ptr %as, i32 0, i32 8
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  %soc.i10 = getelementptr inbounds %struct.tegra_smmu, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %soc.i10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %soc.i10, align 4
  %num_asids.i = getelementptr inbounds %struct.tegra_smmu_soc, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %num_asids.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_asids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp.i11 = icmp eq i32 %24, 4
  %value.0.v.i = select i1 %cmp.i11, i32 29, i32 24
  %value.0.i = shl i32 %20, %value.0.v.i
  %and3.i = lshr i32 %iova, 12
  %or4.i = or i32 %value.0.i, %and3.i
  %or5.i = or i32 %or4.i, -2147483645
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #7
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %add.ptr.i.i12 = getelementptr i8, ptr %27, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i12, i32 %25) #7, !srcloc !83
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %29, i32 28
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_smmu_set_pde(ptr nocapture noundef readonly %as, i32 noundef %iova, i32 noundef %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = lshr i32 %iova, 22
  %smmu1 = getelementptr inbounds %struct.tegra_smmu_as, ptr %as, i32 0, i32 1
  %0 = ptrtoint ptr %smmu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smmu1, align 4
  %pd2 = getelementptr inbounds %struct.tegra_smmu_as, ptr %as, i32 0, i32 6
  %2 = ptrtoint ptr %pd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd2, align 4
  %call3 = tail call ptr @page_address(ptr noundef %3) #7
  %mul = shl nuw nsw i32 %shr.i, 2
  %arrayidx = getelementptr i32, ptr %call3, i32 %shr.i
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %value, ptr %arrayidx, align 4
  %dev = getelementptr inbounds %struct.tegra_smmu, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %pd_dma = getelementptr inbounds %struct.tegra_smmu_as, ptr %as, i32 0, i32 7
  %7 = ptrtoint ptr %pd_dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pd_dma, align 4
  %add.i = add i32 %8, %mul
  tail call void @dma_sync_single_for_device(ptr noundef %6, i32 noundef %add.i, i32 noundef 4, i32 noundef 1) #7
  %9 = ptrtoint ptr %pd_dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pd_dma, align 4
  %mc.i = getelementptr inbounds %struct.tegra_smmu, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mc.i, align 4
  %soc.i = getelementptr inbounds %struct.tegra_mc, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %soc.i, align 4
  %atom_size.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %atom_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %atom_size.i, align 4
  %num_address_bits.i = getelementptr inbounds %struct.tegra_mc_soc, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %num_address_bits.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_address_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %18)
  %cmp.i = icmp ugt i32 %18, 32
  br i1 %cmp.i, label %if.then.i, label %entry.smmu_flush_ptc.exit_crit_edge

entry.smmu_flush_ptc.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %smmu_flush_ptc.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 2488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !83
  br label %smmu_flush_ptc.exit

smmu_flush_ptc.exit:                              ; preds = %if.then.i, %entry.smmu_flush_ptc.exit_crit_edge
  %neg.i = sub i32 0, %16
  %and.i = and i32 %mul, %neg.i
  %add.i15 = add i32 %and.i, %10
  %or.i = or i32 %add.i15, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %23, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %21) #7, !srcloc !83
  %id = getelementptr inbounds %struct.tegra_smmu_as, ptr %as, i32 0, i32 8
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  %soc.i16 = getelementptr inbounds %struct.tegra_smmu, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %soc.i16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %soc.i16, align 4
  %num_asids.i = getelementptr inbounds %struct.tegra_smmu_soc, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %num_asids.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_asids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp.i17 = icmp eq i32 %29, 4
  %value.0.v.i = select i1 %cmp.i17, i32 29, i32 24
  %value.0.i = shl i32 %25, %value.0.v.i
  %and3.i = lshr i32 %iova, 12
  %shr.i18 = and i32 %and3.i, 1047552
  %or4.i = or i32 %value.0.i, %shr.i18
  %or5.i = or i32 %or4.i, -2147483646
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #7
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %32, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19, i32 %30) #7, !srcloc !83
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %34, i32 28
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_fwspec_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_fwspec_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_ref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_device_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_device_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_group_set_iommudata(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_smmu_group_release(ptr noundef %iommu_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smmu1 = getelementptr inbounds %struct.tegra_smmu_group, ptr %iommu_data, i32 0, i32 1
  %0 = ptrtoint ptr %smmu1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smmu1, align 4
  %lock = getelementptr inbounds %struct.tegra_smmu, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %iommu_data) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %iommu_data, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %iommu_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iommu_data, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %iommu_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %iommu_data, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %iommu_data, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_group_set_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_fwspec_add_ids(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_smmu_swgroups_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @tegra_smmu_swgroups_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_smmu_swgroups_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.22) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23) #7
  %soc = getelementptr inbounds %struct.tegra_smmu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %num_swgroups12 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %num_swgroups12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_swgroups12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13.not = icmp eq i32 %5, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %6 = phi ptr [ %18, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %swgroups = getelementptr inbounds %struct.tegra_smmu_soc, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %swgroups to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %swgroups, align 4
  %arrayidx = getelementptr %struct.tegra_smmu_swgroup, ptr %8, i32 %i.014
  %reg = getelementptr %struct.tegra_smmu_swgroup, ptr %8, i32 %i.014, i32 2
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %10
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !84
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %tobool.not = icmp sgt i32 %14, -1
  %.str.25..str.24 = select i1 %tobool.not, ptr @.str.25, ptr @.str.24
  %and2 = and i32 %14, 127
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.26, ptr noundef %16, ptr noundef nonnull %.str.25..str.24, i32 noundef %and2) #7
  %inc = add nuw i32 %i.014, 1
  %17 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %soc, align 4
  %num_swgroups = getelementptr inbounds %struct.tegra_smmu_soc, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %num_swgroups to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_swgroups, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_smmu_clients_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @tegra_smmu_clients_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_smmu_clients_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.28) #7
  %soc = getelementptr inbounds %struct.tegra_smmu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %num_clients14 = getelementptr inbounds %struct.tegra_smmu_soc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_clients14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clients14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp15.not = icmp eq i32 %5, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %6 = phi ptr [ %20, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %i.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %regs = getelementptr %struct.tegra_mc_client, ptr %8, i32 %i.016, i32 4
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %regs, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %10
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !84
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %bit = getelementptr inbounds %struct.anon.72, ptr %regs, i32 0, i32 1
  %15 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bit, align 4
  %shl = shl nuw i32 1, %16
  %and = and i32 %shl, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %.str.25..str.24 = select i1 %tobool.not, ptr @.str.25, ptr @.str.24
  %name = getelementptr %struct.tegra_mc_client, ptr %8, i32 %i.016, i32 1
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.29, ptr noundef %18, ptr noundef nonnull %.str.25..str.24) #7
  %inc = add nuw i32 %i.016, 1
  %19 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %soc, align 4
  %num_clients = getelementptr inbounds %struct.tegra_smmu_soc, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %num_clients to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_clients, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !28, !30, !32, !34, !35, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67}
!llvm.named.register.sp = !{!69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @tegra_smmu_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/iommu/tegra-smmu.c", i32 1106, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/iommu/tegra-smmu.c", i32 1115, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tegra_smmu_probe.__UNIQUE_ID_ddebug236, !4, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/iommu/tegra-smmu.c", i32 1118, i32 2}
!11 = !{ptr @tegra_smmu_probe.__UNIQUE_ID_ddebug237, !10, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!12 = !{ptr @tegra_smmu_ahb_enable.ahb_match, !13, !"ahb_match", i1 false, i1 false}
!13 = !{!"../drivers/iommu/tegra-smmu.c", i32 989, i32 35}
!14 = !{ptr @tegra_smmu_ops, !15, !"tegra_smmu_ops", i1 false, i1 false}
!15 = !{!"../drivers/iommu/tegra-smmu.c", i32 971, i32 31}
!16 = !{ptr @tegra_smmu_domain_alloc.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iommu/tegra-smmu.c", i32 314, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/iommu/tegra-smmu.c", i32 330, i32 2}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iommu/tegra-smmu.c", i32 367, i32 3}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @tegra_smmu_enable._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @tegra_smmu_enable._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iommu/tegra-smmu.c", i32 849, i32 40}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iommu/tegra-smmu.c", i32 849, i32 50}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iommu/tegra-smmu.c", i32 827, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tegra_smmu_configure._entry, !33, !"_entry", i1 false, i1 false}
!38 = !{ptr @tegra_smmu_configure._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iommu/tegra-smmu.c", i32 833, i32 3}
!41 = !{ptr @tegra_smmu_configure._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @tegra_smmu_configure._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iommu/tegra-smmu.c", i32 1064, i32 37}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iommu/tegra-smmu.c", i32 1068, i32 22}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iommu/tegra-smmu.c", i32 1070, i32 22}
!49 = !{ptr @tegra_smmu_swgroups_fops, !50, !"tegra_smmu_swgroups_fops", i1 false, i1 false}
!50 = !{!"../drivers/iommu/tegra-smmu.c", i32 1032, i32 1}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iommu/tegra-smmu.c", i32 1008, i32 16}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iommu/tegra-smmu.c", i32 1009, i32 16}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iommu/tegra-smmu.c", i32 1019, i32 13}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iommu/tegra-smmu.c", i32 1021, i32 13}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iommu/tegra-smmu.c", i32 1025, i32 17}
!61 = !{ptr @tegra_smmu_clients_fops, !62, !"tegra_smmu_clients_fops", i1 false, i1 false}
!62 = !{!"../drivers/iommu/tegra-smmu.c", i32 1060, i32 1}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iommu/tegra-smmu.c", i32 1040, i32 16}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iommu/tegra-smmu.c", i32 1041, i32 16}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iommu/tegra-smmu.c", i32 1054, i32 17}
!69 = !{!"sp"}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2148998922, i64 2148998927, i64 2148998940, i64 2148998984, i64 2148999018, i64 2148999039}
!80 = !{i32 0, i32 33}
!81 = !{i8 0, i8 2}
!82 = !{i64 2154687466}
!83 = !{i64 5884168}
!84 = !{i64 5884586}
!85 = !{i64 2154688312}
!86 = !{!"branch_weights", i32 2000, i32 1}
