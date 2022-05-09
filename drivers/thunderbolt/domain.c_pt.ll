; ModuleID = '/llk/IR_all_yes/drivers/thunderbolt/domain.c_pt.bc'
source_filename = "../drivers/thunderbolt/domain.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.uuid_t = type { [16 x i8] }
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
%struct.list_head = type { ptr, ptr }
%struct.tb_service_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tb_service = type { %struct.device, i32, ptr, i32, i32, i32, i32, ptr }
%struct.tb_service_id = type { i32, [9 x i8], i32, i32, i32, i32 }
%struct.tb = type { %struct.device, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [0 x i32] }
%struct.tb_nhi = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.ida, i8, %struct.work_struct, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.80, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.80 = type { ptr }
%struct.tb_cm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tb_switch = type { %struct.device, %struct.tb_regs_switch_header, ptr, ptr, %struct.tb_switch_tmu, ptr, i64, ptr, i16, i16, ptr, ptr, i32, i32, i8, i32, i32, i32, i32, i32, i8, ptr, ptr, i8, i8, i8, i8, i32, i32, ptr, ptr, i8, i8, i8, i8, %struct.completion, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.tb_regs_switch_header = type <{ i16, i16, i32, i32, i64 }>
%struct.tb_switch_tmu = type { i32, i8, i32, i8, i8, i32 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.tb_xdomain = type { %struct.device, ptr, ptr, ptr, i64, i16, i16, i32, i32, %struct.mutex, ptr, ptr, i32, i32, i8, i8, %struct.ida, %struct.ida, %struct.ida, ptr, i32, i32, ptr, i32, %struct.delayed_work, i32, %struct.delayed_work, i32, %struct.delayed_work, i32, i8, i8 }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thunderbolt\00", [20 x i8] zeroinitializer }, align 32
@tb_bus_type = dso_local global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tb_service_match, ptr null, ptr @tb_service_probe, ptr null, ptr @tb_service_remove, ptr @tb_service_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"thunderbolt_domain\00", [45 x i8] zeroinitializer }, align 32
@tb_domain_type = dso_local global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.1, ptr null, ptr null, ptr null, ptr @tb_domain_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@tb_domain_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&tb->lock\00", [22 x i8] zeroinitializer }, align 32
@tb_domain_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"thunderbolt%d\00", [18 x i8] zeroinitializer }, align 32
@domain_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @domain_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"domain%d\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/thunderbolt/domain.c\00", [35 x i8] zeroinitializer }, align 32
@tb_domain_add.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.5, ptr @.str.7, i8 0, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tb_domain_add\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"security level set to %s\0A\00", [38 x i8] zeroinitializer }, align 32
@tb_security_names = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hmac(sha256)\00", [19 x i8] zeroinitializer }, align 32
@tb_service_type = external dso_local global %struct.device_type, align 4
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tb_domain_ida.xa_lock\00", [42 x i8] zeroinitializer }, align 32
@tb_domain_event_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 348, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"domain does not have event handler\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tb_domain_event_cb\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tb_domain_event_cb._entry_ptr = internal global ptr @tb_domain_event_cb._entry, section ".printk_index", align 4
@domain_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @domain_attr_is_visible, ptr null, ptr @domain_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@domain_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_boot_acl, ptr @dev_attr_deauthorization, ptr @dev_attr_iommu_dma_protection, ptr @dev_attr_security, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_boot_acl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @boot_acl_show, ptr @boot_acl_store }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"boot_acl\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pUb\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@uuid_null = external dso_local constant %struct.uuid_t, align 1
@dev_attr_deauthorization = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @deauthorization_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_iommu_dma_protection = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iommu_dma_protection_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_security = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @security_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"deauthorization\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iommu_dma_protection\00", [43 x i8] zeroinitializer }, align 32
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"security\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"user\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"secure\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dponly\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbonly\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nopcie\00", [25 x i8] zeroinitializer }, align 32
@tb_switch_type = external dso_local global %struct.device_type, align 4
@tb_xdomain_type = external dso_local global %struct.device_type, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 36]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 319, i32 10 }
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"tb_bus_type\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 318, i32 17 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 338, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"tb_domain_type\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 337, i32 20 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 398, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [14 x i8] c"tb_domain_ida\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 404, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"domain_attr_groups\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 313, i32 38 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 416, i32 25 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 446, i32 6 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 462, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"tb_security_names\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 113, i32 27 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 731, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 21, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 348, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"domain_attr_group\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 308, i32 37 }
@___asan_gen_.97 = private unnamed_addr constant [13 x i8] c"domain_attrs\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 283, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"dev_attr_boot_acl\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 238, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 149, i32 49 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 152, i32 48 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 153, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 153, i32 41 }
@___asan_gen_.118 = private unnamed_addr constant [25 x i8] c"dev_attr_deauthorization\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [30 x i8] c"dev_attr_iommu_dma_protection\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [18 x i8] c"dev_attr_security\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 254, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 252, i32 22 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 268, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 281, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 274, i32 21 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 279, i32 22 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 114, i32 23 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 115, i32 23 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 116, i32 25 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 117, i32 25 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 118, i32 26 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private constant [32 x i8] c"../drivers/thunderbolt/domain.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 119, i32 25 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @tb_domain_event_cb._entry, ptr @tb_domain_event_cb._entry_ptr, ptr @.str, ptr @tb_bus_type, ptr @.str.1, ptr @tb_domain_type, ptr @tb_domain_alloc.__key, ptr @.str.2, ptr @tb_domain_ida, ptr @.str.3, ptr @domain_attr_groups, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @tb_security_names, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @domain_attr_group, ptr @domain_attrs, ptr @dev_attr_boot_acl, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @dev_attr_deauthorization, ptr @dev_attr_iommu_dma_protection, ptr @dev_attr_security, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_domain_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_domain_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_domain_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @domain_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_security_names to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_domain_event_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @domain_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @domain_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_boot_acl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_deauthorization to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_iommu_dma_protection to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_security to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_service_match(ptr noundef readonly %dev, ptr nocapture noundef readonly %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i.i, align 4
  %cmp.i.i.i = icmp ne ptr %1, @tb_service_type
  %tobool.not16.i = icmp eq ptr %dev, null
  %tobool.not.i = or i1 %tobool.not16.i, %cmp.i.i.i
  br i1 %tobool.not.i, label %entry.__tb_service_match.exit_crit_edge, label %if.end.i

entry.__tb_service_match.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__tb_service_match.exit

if.end.i:                                         ; preds = %entry
  %id_table.i = getelementptr inbounds %struct.tb_service_driver, ptr %drv, i32 0, i32 4
  %2 = ptrtoint ptr %id_table.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_table.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %if.end.i.__tb_service_match.exit_crit_edge, label %for.cond.preheader.i

if.end.i.__tb_service_match.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__tb_service_match.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not17.i = icmp eq i32 %5, 0
  br i1 %cmp.not17.i, label %for.cond.preheader.i.__tb_service_match.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.__tb_service_match.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__tb_service_match.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %key.i.i = getelementptr inbounds %struct.tb_service, ptr %dev, i32 0, i32 2
  %prtcid.i.i = getelementptr inbounds %struct.tb_service, ptr %dev, i32 0, i32 3
  %prtcvers.i.i = getelementptr inbounds %struct.tb_service, ptr %dev, i32 0, i32 4
  %prtcrevs.i.i = getelementptr inbounds %struct.tb_service, ptr %dev, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %6 = phi i32 [ %5, %for.body.lr.ph.i ], [ %22, %for.inc.i.for.body.i_crit_edge ]
  %ids.018.i = phi ptr [ %3, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.if.end3.i.i_crit_edge, label %if.then.i.i

for.body.i.if.end3.i.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %protocol_key.i.i = getelementptr inbounds %struct.tb_service_id, ptr %ids.018.i, i32 0, i32 1
  %7 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %key.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %protocol_key.i.i, ptr noundef %8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i.if.end3.i.i_crit_edge, label %if.then.i.i.for.inc.i_crit_edge

if.then.i.i.for.inc.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i.i.if.end3.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then.i.i.if.end3.i.i_crit_edge, %for.body.i.if.end3.i.i_crit_edge
  %and5.i.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end3.i.i.if.end10.i.i_crit_edge, label %if.then7.i.i

if.end3.i.i.if.end10.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i

if.then7.i.i:                                     ; preds = %if.end3.i.i
  %protocol_id.i.i = getelementptr inbounds %struct.tb_service_id, ptr %ids.018.i, i32 0, i32 2
  %9 = ptrtoint ptr %protocol_id.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %protocol_id.i.i, align 4
  %11 = ptrtoint ptr %prtcid.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %prtcid.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not.i.i = icmp eq i32 %10, %12
  br i1 %cmp.not.i.i, label %if.then7.i.i.if.end10.i.i_crit_edge, label %if.then7.i.i.for.inc.i_crit_edge

if.then7.i.i.for.inc.i_crit_edge:                 ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then7.i.i.if.end10.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then7.i.i.if.end10.i.i_crit_edge, %if.end3.i.i.if.end10.i.i_crit_edge
  %and12.i.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end10.i.i.__tb_service_match.exit_crit_edge, label %if.then14.i.i

if.end10.i.i.__tb_service_match.exit_crit_edge:   ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__tb_service_match.exit

if.then14.i.i:                                    ; preds = %if.end10.i.i
  %protocol_version.i.i = getelementptr inbounds %struct.tb_service_id, ptr %ids.018.i, i32 0, i32 3
  %13 = ptrtoint ptr %protocol_version.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %protocol_version.i.i, align 4
  %15 = ptrtoint ptr %prtcvers.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prtcvers.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp15.not.i.i = icmp eq i32 %14, %16
  br i1 %cmp15.not.i.i, label %if.then22.i.i, label %if.then14.i.i.for.inc.i_crit_edge

if.then14.i.i.for.inc.i_crit_edge:                ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then22.i.i:                                    ; preds = %if.then14.i.i
  %protocol_revision.i.i = getelementptr inbounds %struct.tb_service_id, ptr %ids.018.i, i32 0, i32 4
  %17 = ptrtoint ptr %protocol_revision.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %protocol_revision.i.i, align 4
  %19 = ptrtoint ptr %prtcrevs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %prtcrevs.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp23.not.i.i = icmp eq i32 %18, %20
  br i1 %cmp23.not.i.i, label %if.then22.i.i.__tb_service_match.exit_crit_edge, label %if.then22.i.i.for.inc.i_crit_edge

if.then22.i.i.for.inc.i_crit_edge:                ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then22.i.i.__tb_service_match.exit_crit_edge:  ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__tb_service_match.exit

for.inc.i:                                        ; preds = %if.then22.i.i.for.inc.i_crit_edge, %if.then14.i.i.for.inc.i_crit_edge, %if.then7.i.i.for.inc.i_crit_edge, %if.then.i.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.tb_service_id, ptr %ids.018.i, i32 1
  %21 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %22, 0
  br i1 %cmp.not.i, label %for.inc.i.__tb_service_match.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.__tb_service_match.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__tb_service_match.exit

__tb_service_match.exit:                          ; preds = %for.inc.i.__tb_service_match.exit_crit_edge, %if.then22.i.i.__tb_service_match.exit_crit_edge, %if.end10.i.i.__tb_service_match.exit_crit_edge, %for.cond.preheader.i.__tb_service_match.exit_crit_edge, %if.end.i.__tb_service_match.exit_crit_edge, %entry.__tb_service_match.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.__tb_service_match.exit_crit_edge ], [ null, %if.end.i.__tb_service_match.exit_crit_edge ], [ null, %for.cond.preheader.i.__tb_service_match.exit_crit_edge ], [ %ids.018.i, %if.then22.i.i.__tb_service_match.exit_crit_edge ], [ %ids.018.i, %if.end10.i.i.__tb_service_match.exit_crit_edge ], [ null, %for.inc.i.__tb_service_match.exit_crit_edge ]
  %tobool = icmp ne ptr %retval.0.i, null
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_service_probe(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %driver1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %driver1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver1, align 4
  %cmp.i.i.i = icmp ne ptr %1, @tb_service_type
  %tobool.not16.i = icmp eq ptr %dev, null
  %tobool.not.i = or i1 %tobool.not16.i, %cmp.i.i.i
  br i1 %tobool.not.i, label %entry.__tb_service_match.exit_crit_edge, label %if.end.i

entry.__tb_service_match.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__tb_service_match.exit

if.end.i:                                         ; preds = %entry
  %id_table.i = getelementptr inbounds %struct.tb_service_driver, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %id_table.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id_table.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.end.i.__tb_service_match.exit_crit_edge, label %for.cond.preheader.i

if.end.i.__tb_service_match.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__tb_service_match.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not17.i = icmp eq i32 %7, 0
  br i1 %cmp.not17.i, label %for.cond.preheader.i.__tb_service_match.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.__tb_service_match.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__tb_service_match.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %key.i.i = getelementptr inbounds %struct.tb_service, ptr %dev, i32 0, i32 2
  %prtcid.i.i = getelementptr inbounds %struct.tb_service, ptr %dev, i32 0, i32 3
  %prtcvers.i.i = getelementptr inbounds %struct.tb_service, ptr %dev, i32 0, i32 4
  %prtcrevs.i.i = getelementptr inbounds %struct.tb_service, ptr %dev, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %8 = phi i32 [ %7, %for.body.lr.ph.i ], [ %24, %for.inc.i.for.body.i_crit_edge ]
  %ids.018.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.if.end3.i.i_crit_edge, label %if.then.i.i

for.body.i.if.end3.i.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %protocol_key.i.i = getelementptr inbounds %struct.tb_service_id, ptr %ids.018.i, i32 0, i32 1
  %9 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %key.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %protocol_key.i.i, ptr noundef %10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i.if.end3.i.i_crit_edge, label %if.then.i.i.for.inc.i_crit_edge

if.then.i.i.for.inc.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i.i.if.end3.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then.i.i.if.end3.i.i_crit_edge, %for.body.i.if.end3.i.i_crit_edge
  %and5.i.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end3.i.i.if.end10.i.i_crit_edge, label %if.then7.i.i

if.end3.i.i.if.end10.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i

if.then7.i.i:                                     ; preds = %if.end3.i.i
  %protocol_id.i.i = getelementptr inbounds %struct.tb_service_id, ptr %ids.018.i, i32 0, i32 2
  %11 = ptrtoint ptr %protocol_id.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %protocol_id.i.i, align 4
  %13 = ptrtoint ptr %prtcid.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %prtcid.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not.i.i = icmp eq i32 %12, %14
  br i1 %cmp.not.i.i, label %if.then7.i.i.if.end10.i.i_crit_edge, label %if.then7.i.i.for.inc.i_crit_edge

if.then7.i.i.for.inc.i_crit_edge:                 ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then7.i.i.if.end10.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then7.i.i.if.end10.i.i_crit_edge, %if.end3.i.i.if.end10.i.i_crit_edge
  %and12.i.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end10.i.i.__tb_service_match.exit_crit_edge, label %if.then14.i.i

if.end10.i.i.__tb_service_match.exit_crit_edge:   ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__tb_service_match.exit

if.then14.i.i:                                    ; preds = %if.end10.i.i
  %protocol_version.i.i = getelementptr inbounds %struct.tb_service_id, ptr %ids.018.i, i32 0, i32 3
  %15 = ptrtoint ptr %protocol_version.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %protocol_version.i.i, align 4
  %17 = ptrtoint ptr %prtcvers.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prtcvers.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp15.not.i.i = icmp eq i32 %16, %18
  br i1 %cmp15.not.i.i, label %if.then22.i.i, label %if.then14.i.i.for.inc.i_crit_edge

if.then14.i.i.for.inc.i_crit_edge:                ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then22.i.i:                                    ; preds = %if.then14.i.i
  %protocol_revision.i.i = getelementptr inbounds %struct.tb_service_id, ptr %ids.018.i, i32 0, i32 4
  %19 = ptrtoint ptr %protocol_revision.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %protocol_revision.i.i, align 4
  %21 = ptrtoint ptr %prtcrevs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prtcrevs.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp23.not.i.i = icmp eq i32 %20, %22
  br i1 %cmp23.not.i.i, label %if.then22.i.i.__tb_service_match.exit_crit_edge, label %if.then22.i.i.for.inc.i_crit_edge

if.then22.i.i.for.inc.i_crit_edge:                ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then22.i.i.__tb_service_match.exit_crit_edge:  ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__tb_service_match.exit

for.inc.i:                                        ; preds = %if.then22.i.i.for.inc.i_crit_edge, %if.then14.i.i.for.inc.i_crit_edge, %if.then7.i.i.for.inc.i_crit_edge, %if.then.i.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.tb_service_id, ptr %ids.018.i, i32 1
  %23 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %24, 0
  br i1 %cmp.not.i, label %for.inc.i.__tb_service_match.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.__tb_service_match.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__tb_service_match.exit

__tb_service_match.exit:                          ; preds = %for.inc.i.__tb_service_match.exit_crit_edge, %if.then22.i.i.__tb_service_match.exit_crit_edge, %if.end10.i.i.__tb_service_match.exit_crit_edge, %for.cond.preheader.i.__tb_service_match.exit_crit_edge, %if.end.i.__tb_service_match.exit_crit_edge, %entry.__tb_service_match.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.__tb_service_match.exit_crit_edge ], [ null, %if.end.i.__tb_service_match.exit_crit_edge ], [ null, %for.cond.preheader.i.__tb_service_match.exit_crit_edge ], [ %ids.018.i, %if.then22.i.i.__tb_service_match.exit_crit_edge ], [ %ids.018.i, %if.end10.i.i.__tb_service_match.exit_crit_edge ], [ null, %for.inc.i.__tb_service_match.exit_crit_edge ]
  %cmp.i.i = icmp eq ptr %1, @tb_service_type
  %dev..i = select i1 %cmp.i.i, ptr %dev, ptr null
  %probe = getelementptr inbounds %struct.tb_service_driver, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %probe, align 4
  %call4 = tail call i32 %26(ptr noundef %dev..i, ptr noundef %retval.0.i) #12
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tb_service_remove(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver1, align 4
  %remove = getelementptr inbounds %struct.tb_service_driver, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %type.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %5, @tb_service_type
  %dev..i = select i1 %cmp.i.i, ptr %dev, ptr null
  tail call void %3(ptr noundef %dev..i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tb_service_shutdown(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp ne ptr %1, @tb_service_type
  %tobool.not14 = icmp eq ptr %dev, null
  %tobool.not = or i1 %tobool.not14, %cmp.i.i
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %driver1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %driver1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %shutdown = getelementptr inbounds %struct.tb_service_driver, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shutdown, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %5(ptr noundef nonnull %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tb_domain_release(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl = getelementptr inbounds %struct.tb, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl, align 8
  tail call void @tb_ctl_free(ptr noundef %1) #12
  %wq = getelementptr inbounds %struct.tb, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #12
  %index = getelementptr inbounds %struct.tb, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 8
  tail call void @ida_free(ptr noundef nonnull @tb_domain_ida, i32 noundef %5) #12
  %lock = getelementptr inbounds %struct.tb, ptr %dev, i32 0, i32 1
  tail call void @mutex_destroy(ptr noundef %lock) #12
  tail call void @kfree(ptr noundef %dev) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tb_domain_alloc(ptr noundef %nhi, i32 noundef %timeout_msec, i32 noundef %privsize) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %privsize, 1056
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %nhi7 = getelementptr inbounds %struct.tb, ptr %call9.i.i, i32 0, i32 2
  %0 = ptrtoint ptr %nhi7 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %nhi, ptr %nhi7, align 4
  %lock = getelementptr inbounds %struct.tb, ptr %call9.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @tb_domain_alloc.__key) #12
  %call11 = tail call i32 @ida_alloc_range(ptr noundef nonnull @tb_domain_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #12
  %index = getelementptr inbounds %struct.tb, ptr %call9.i.i, i32 0, i32 7
  %1 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call11, ptr %index, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end.err_free_crit_edge, label %if.end14

if.end.err_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free

if.end14:                                         ; preds = %if.end
  %call16 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.3, i32 noundef 655362, i32 noundef 1, i32 noundef %call11) #12
  %wq = getelementptr inbounds %struct.tb, ptr %call9.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call16, ptr %wq, align 4
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %if.end14.err_remove_ida_crit_edge, label %if.end20

if.end14.err_remove_ida_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_remove_ida

if.end20:                                         ; preds = %if.end14
  %call21 = tail call ptr @tb_ctl_alloc(ptr noundef %nhi, i32 noundef %timeout_msec, ptr noundef nonnull @tb_domain_event_cb, ptr noundef nonnull %call9.i.i) #12
  %ctl = getelementptr inbounds %struct.tb, ptr %call9.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call21, ptr %ctl, align 128
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %err_destroy_wq, label %if.end25

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %nhi, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %parent = getelementptr inbounds %struct.device, ptr %call9.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %parent, align 8
  %bus = getelementptr inbounds %struct.device, ptr %call9.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tb_bus_type, ptr %bus, align 8
  %type = getelementptr inbounds %struct.device, ptr %call9.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @tb_domain_type, ptr %type, align 4
  %groups = getelementptr inbounds %struct.device, ptr %call9.i.i, i32 0, i32 34
  %9 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @domain_attr_groups, ptr %groups, align 8
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 16
  %call32 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call9.i.i, ptr noundef nonnull @.str.4, i32 noundef %11) #12
  tail call void @device_initialize(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

err_destroy_wq:                                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %13) #12
  br label %err_remove_ida

err_remove_ida:                                   ; preds = %err_destroy_wq, %if.end14.err_remove_ida_crit_edge
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 16
  tail call void @ida_free(ptr noundef nonnull @tb_domain_ida, i32 noundef %15) #12
  br label %err_free

err_free:                                         ; preds = %err_remove_ida, %if.end.err_free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end25, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err_free ], [ %call9.i.i, %if.end25 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_ctl_alloc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tb_domain_event_cb(ptr noundef %data, i32 noundef %type, ptr noundef %buf, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_ops = getelementptr inbounds %struct.tb, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cm_ops, align 4
  %handle_event = getelementptr inbounds %struct.tb_cm_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %handle_event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle_event, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %nhi = getelementptr inbounds %struct.tb, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = and i32 %type, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %switch = icmp eq i32 %8, 6
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  %call = tail call zeroext i1 @tb_is_xdomain_enabled() #12
  br i1 %call, label %if.then1, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then1:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call zeroext i1 @tb_xdomain_handle_request(ptr noundef %data, i32 noundef %type, ptr noundef %buf, i32 noundef %size) #12
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %3(ptr noundef %data, i32 noundef %type, ptr noundef %buf, i32 noundef %size) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.then1, %sw.bb.cleanup_crit_edge, %do.end
  %retval.0 = phi i1 [ %call2, %if.then1 ], [ true, %do.end ], [ true, %sw.bb.cleanup_crit_edge ], [ true, %sw.default ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_domain_add(ptr noundef %tb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_ops = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 6
  %0 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cm_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !88

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 446, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end23:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %ctl = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 3
  %2 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl, align 8
  tail call void @tb_ctl_start(ptr noundef %3) #12
  %4 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cm_ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool25.not = icmp eq ptr %7, null
  br i1 %tobool25.not, label %if.end23.do.body33_crit_edge, label %if.then26

if.end23.do.body33_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body33

if.then26:                                        ; preds = %if.end23
  %call = tail call i32 %7(ptr noundef %tb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool29.not = icmp eq i32 %call, 0
  br i1 %tobool29.not, label %if.then26.do.body33_crit_edge, label %if.then26.err_ctl_stop_crit_edge

if.then26.err_ctl_stop_crit_edge:                 ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_ctl_stop

if.then26.do.body33_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body33

do.body33:                                        ; preds = %if.then26.do.body33_crit_edge, %if.end23.do.body33_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_domain_add.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_domain_add, %if.then43)) #12
          to label %do.end46 [label %if.then43], !srcloc !89

if.then43:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %8 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %security_level = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 8
  %12 = ptrtoint ptr %security_level to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %security_level, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @tb_security_names, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_domain_add.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %15) #12
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %do.body33
  %call48 = tail call i32 @device_add(ptr noundef %tb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %do.end46.err_ctl_stop_crit_edge

do.end46.err_ctl_stop_crit_edge:                  ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_ctl_stop

if.end51:                                         ; preds = %do.end46
  %16 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cm_ops, align 4
  %start = getelementptr inbounds %struct.tb_cm_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %start, align 4
  %tobool53.not = icmp eq ptr %19, null
  br i1 %tobool53.not, label %if.end51.if.end61_crit_edge, label %if.then54

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then54:                                        ; preds = %if.end51
  %call57 = tail call i32 %19(ptr noundef %tb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then54.if.end61_crit_edge, label %err_domain_del

if.then54.if.end61_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.end61:                                         ; preds = %if.then54.if.end61_crit_edge, %if.end51.if.end61_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #12
  %call64 = tail call i32 @device_init_wakeup(ptr noundef %tb, i1 noundef zeroext true) #12
  tail call void @pm_runtime_no_callbacks(ptr noundef %tb) #12
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %tb, i32 noundef 0) #12
  tail call void @pm_runtime_enable(ptr noundef %tb) #12
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %tb, i32 noundef 15000) #12
  %call.i102 = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %tb, i32 0, i32 12, i32 22
  %20 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %call.i102, ptr %last_busy.i, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %tb, i1 noundef zeroext true) #12
  br label %cleanup

err_domain_del:                                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @device_del(ptr noundef %tb) #12
  br label %err_ctl_stop

err_ctl_stop:                                     ; preds = %err_domain_del, %do.end46.err_ctl_stop_crit_edge, %if.then26.err_ctl_stop_crit_edge
  %ret.0 = phi i32 [ %call, %if.then26.err_ctl_stop_crit_edge ], [ %call48, %do.end46.err_ctl_stop_crit_edge ], [ %call57, %err_domain_del ]
  %21 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctl, align 8
  tail call void @tb_ctl_stop(ptr noundef %22) #12
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %err_ctl_stop, %if.end61, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %err_ctl_stop ], [ 0, %if.end61 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_ctl_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_no_callbacks(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_ctl_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_domain_remove(ptr noundef %tb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %cm_ops = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 6
  %0 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cm_ops, align 4
  %stop = getelementptr inbounds %struct.tb_cm_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %3(ptr noundef %tb) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ctl = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 3
  %4 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl, align 8
  tail call void @tb_ctl_stop(ptr noundef %5) #12
  tail call void @mutex_unlock(ptr noundef %lock) #12
  %wq = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 4
  %6 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wq, align 4
  tail call void @flush_workqueue(ptr noundef %7) #12
  tail call void @device_unregister(ptr noundef %tb) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_domain_suspend_noirq(ptr noundef %tb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %cm_ops = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 6
  %0 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cm_ops, align 4
  %suspend_noirq = getelementptr inbounds %struct.tb_cm_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %suspend_noirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suspend_noirq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.then4_crit_edge, label %if.end

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.end:                                           ; preds = %entry
  %call = tail call i32 %3(ptr noundef %tb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end.if.then4_crit_edge, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %entry.if.then4_crit_edge
  %ctl = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 3
  %4 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl, align 8
  tail call void @tb_ctl_stop(ptr noundef %5) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %ret.015 = phi i32 [ 0, %if.then4 ], [ %call, %if.end.if.end5_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %ret.015
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_domain_resume_noirq(ptr noundef %tb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %ctl = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 3
  %0 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl, align 8
  tail call void @tb_ctl_start(ptr noundef %1) #12
  %cm_ops = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 6
  %2 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cm_ops, align 4
  %resume_noirq = getelementptr inbounds %struct.tb_cm_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %resume_noirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resume_noirq, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %5(ptr noundef %tb) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_domain_suspend(ptr noundef %tb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_ops = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 6
  %0 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cm_ops, align 4
  %suspend = getelementptr inbounds %struct.tb_cm_ops, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %suspend, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %3(ptr noundef %tb) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_domain_freeze_noirq(ptr noundef %tb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %cm_ops = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 6
  %0 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cm_ops, align 4
  %freeze_noirq = getelementptr inbounds %struct.tb_cm_ops, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %freeze_noirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %freeze_noirq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.then4_crit_edge, label %if.end

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.end:                                           ; preds = %entry
  %call = tail call i32 %3(ptr noundef %tb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end.if.then4_crit_edge, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %entry.if.then4_crit_edge
  %ctl = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 3
  %4 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl, align 8
  tail call void @tb_ctl_stop(ptr noundef %5) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %ret.015 = phi i32 [ 0, %if.then4 ], [ %call, %if.end.if.end5_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %ret.015
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_domain_thaw_noirq(ptr noundef %tb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %ctl = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 3
  %0 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl, align 8
  tail call void @tb_ctl_start(ptr noundef %1) #12
  %cm_ops = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 6
  %2 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cm_ops, align 4
  %thaw_noirq = getelementptr inbounds %struct.tb_cm_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %thaw_noirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %thaw_noirq, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %5(ptr noundef %tb) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_domain_complete(ptr noundef %tb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_ops = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 6
  %0 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cm_ops, align 4
  %complete = getelementptr inbounds %struct.tb_cm_ops, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %complete, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %3(ptr noundef %tb) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_domain_runtime_suspend(ptr noundef %tb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_ops = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 6
  %0 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cm_ops, align 4
  %runtime_suspend = getelementptr inbounds %struct.tb_cm_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %runtime_suspend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime_suspend, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 %3(ptr noundef %tb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ctl = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 3
  %4 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl, align 8
  tail call void @tb_ctl_stop(ptr noundef %5) #12
  br label %return

return:                                           ; preds = %if.end5, %if.then.return_crit_edge
  %retval.1 = phi i32 [ %call, %if.then.return_crit_edge ], [ 0, %if.end5 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_domain_runtime_resume(ptr noundef %tb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 3
  %0 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl, align 8
  tail call void @tb_ctl_start(ptr noundef %1) #12
  %cm_ops = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 6
  %2 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cm_ops, align 4
  %runtime_resume = getelementptr inbounds %struct.tb_cm_ops, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %runtime_resume to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime_resume, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 %5(ptr noundef %tb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  br label %return

return:                                           ; preds = %if.end5, %if.then.return_crit_edge
  %retval.1 = phi i32 [ %call, %if.then.return_crit_edge ], [ 0, %if.end5 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_domain_disapprove_switch(ptr noundef %tb, ptr noundef %sw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_ops = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 6
  %0 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cm_ops, align 4
  %disapprove_switch = getelementptr inbounds %struct.tb_cm_ops, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %disapprove_switch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disapprove_switch, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %3(ptr noundef %tb, ptr noundef %sw) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_domain_approve_switch(ptr noundef %tb, ptr noundef %sw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_ops = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 6
  %0 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cm_ops, align 4
  %approve_switch = getelementptr inbounds %struct.tb_cm_ops, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %approve_switch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %approve_switch, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.device, ptr %sw, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %type.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp ne ptr %7, @tb_switch_type
  %tobool1.not12 = icmp eq ptr %5, null
  %tobool1.not = select i1 %cmp.i.i, i1 true, i1 %tobool1.not12
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %authorized = getelementptr inbounds %struct.tb_switch, ptr %5, i32 0, i32 27
  %8 = ptrtoint ptr %authorized to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %authorized, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 %3(ptr noundef %tb, ptr noundef %sw) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end4 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_domain_approve_switch_key(ptr noundef %tb, ptr noundef %sw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_ops = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 6
  %0 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cm_ops, align 4
  %approve_switch = getelementptr inbounds %struct.tb_cm_ops, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %approve_switch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %approve_switch, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %add_switch_key = getelementptr inbounds %struct.tb_cm_ops, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %add_switch_key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add_switch_key, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %parent = getelementptr inbounds %struct.device, ptr %sw, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %type.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp ne ptr %9, @tb_switch_type
  %tobool3.not27 = icmp eq ptr %7, null
  %tobool3.not = select i1 %cmp.i.i, i1 true, i1 %tobool3.not27
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %authorized = getelementptr inbounds %struct.tb_switch, ptr %7, i32 0, i32 27
  %10 = ptrtoint ptr %authorized to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %authorized, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end7

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false4
  %call10 = tail call i32 %5(ptr noundef %tb, ptr noundef %sw) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cm_ops, align 4
  %approve_switch15 = getelementptr inbounds %struct.tb_cm_ops, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %approve_switch15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %approve_switch15, align 4
  %call16 = tail call i32 %15(ptr noundef %tb, ptr noundef %sw) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end7.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end13 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call10, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_domain_challenge_switch_key(ptr noundef %tb, ptr noundef %sw) local_unnamed_addr #1 align 64 {
entry:
  %challenge = alloca [32 x i8], align 1
  %response = alloca [32 x i8], align 1
  %hmac = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %challenge) #12
  %0 = call ptr @memset(ptr %challenge, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %response) #12
  %1 = call ptr @memset(ptr %response, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hmac) #12
  %cm_ops = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 6
  %2 = call ptr @memset(ptr %hmac, i32 255, i32 32)
  %3 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cm_ops, align 4
  %approve_switch = getelementptr inbounds %struct.tb_cm_ops, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %approve_switch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %approve_switch, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %challenge_switch_key = getelementptr inbounds %struct.tb_cm_ops, ptr %4, i32 0, i32 19
  %7 = ptrtoint ptr %challenge_switch_key to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %challenge_switch_key, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %parent = getelementptr inbounds %struct.device, ptr %sw, i32 0, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  %type.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp ne ptr %12, @tb_switch_type
  %tobool3.not82 = icmp eq ptr %10, null
  %tobool3.not = select i1 %cmp.i.i, i1 true, i1 %tobool3.not82
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %authorized = getelementptr inbounds %struct.tb_switch, ptr %10, i32 0, i32 27
  %13 = ptrtoint ptr %authorized to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %authorized, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end7

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false4
  call void @get_random_bytes(ptr noundef nonnull %challenge, i32 noundef 32) #12
  %15 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cm_ops, align 4
  %challenge_switch_key9 = getelementptr inbounds %struct.tb_cm_ops, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %challenge_switch_key9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %challenge_switch_key9, align 4
  %call12 = call i32 %18(ptr noundef %tb, ptr noundef %sw, ptr noundef nonnull %challenge, ptr noundef nonnull %response) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call16 = call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0) #12
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %key = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 30
  %20 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %key, align 4
  %call21 = call i32 @crypto_shash_setkey(ptr noundef %call16, ptr noundef %21, i32 noundef 32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end8.i.i, label %if.end20.err_free_tfm_crit_edge

if.end20.err_free_tfm_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_tfm

if.end8.i.i:                                      ; preds = %if.end20
  %22 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call16, align 128
  %add = add i32 %23, 8
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #16
  %tobool27.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool27.not, label %if.end8.i.i.err_free_tfm_crit_edge, label %if.end29

if.end8.i.i.err_free_tfm_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_tfm

if.end29:                                         ; preds = %if.end8.i.i
  %24 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call16, ptr %call9.i.i, align 128
  %25 = call ptr @memset(ptr %hmac, i32 0, i32 32)
  %call34 = call i32 @crypto_shash_digest(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %challenge, i32 noundef 32, ptr noundef nonnull %hmac) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end29.err_free_shash_crit_edge

if.end29.err_free_shash_crit_edge:                ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_shash

if.end37:                                         ; preds = %if.end29
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(32) %response, ptr noundef nonnull dereferenceable(32) %hmac, i32 32) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool41.not = icmp eq i32 %bcmp, 0
  br i1 %tobool41.not, label %if.end43, label %if.end37.err_free_shash_crit_edge

if.end37.err_free_shash_crit_edge:                ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_shash

if.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call16, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %call16, ptr noundef %base.i.i) #12
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  %26 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cm_ops, align 4
  %approve_switch45 = getelementptr inbounds %struct.tb_cm_ops, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %approve_switch45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %approve_switch45, align 4
  %call46 = call i32 %29(ptr noundef %tb, ptr noundef %sw) #12
  br label %cleanup

err_free_shash:                                   ; preds = %if.end37.err_free_shash_crit_edge, %if.end29.err_free_shash_crit_edge
  %ret.0 = phi i32 [ %call34, %if.end29.err_free_shash_crit_edge ], [ -129, %if.end37.err_free_shash_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %err_free_tfm

err_free_tfm:                                     ; preds = %err_free_shash, %if.end8.i.i.err_free_tfm_crit_edge, %if.end20.err_free_tfm_crit_edge
  %ret.1 = phi i32 [ %call21, %if.end20.err_free_tfm_crit_edge ], [ %ret.0, %err_free_shash ], [ -12, %if.end8.i.i.err_free_tfm_crit_edge ]
  %base.i.i77 = getelementptr inbounds %struct.crypto_shash, ptr %call16, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %call16, ptr noundef %base.i.i77) #12
  br label %cleanup

cleanup:                                          ; preds = %err_free_tfm, %if.end43, %if.then18, %if.end7.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.then18 ], [ %ret.1, %err_free_tfm ], [ %call46, %if.end43 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call12, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hmac) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %response) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %challenge) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_domain_disconnect_pcie_paths(ptr noundef %tb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_ops = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 6
  %0 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cm_ops, align 4
  %disconnect_pcie_paths = getelementptr inbounds %struct.tb_cm_ops, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %disconnect_pcie_paths to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disconnect_pcie_paths, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %3(ptr noundef %tb) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_domain_approve_xdomain_paths(ptr noundef %tb, ptr noundef %xd, i32 noundef %transmit_path, i32 noundef %transmit_ring, i32 noundef %receive_path, i32 noundef %receive_ring) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_ops = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 6
  %0 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cm_ops, align 4
  %approve_xdomain_paths = getelementptr inbounds %struct.tb_cm_ops, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %approve_xdomain_paths to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %approve_xdomain_paths, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %3(ptr noundef %tb, ptr noundef %xd, i32 noundef %transmit_path, i32 noundef %transmit_ring, i32 noundef %receive_path, i32 noundef %receive_ring) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -524, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_domain_disconnect_xdomain_paths(ptr noundef %tb, ptr noundef %xd, i32 noundef %transmit_path, i32 noundef %transmit_ring, i32 noundef %receive_path, i32 noundef %receive_ring) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_ops = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 6
  %0 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cm_ops, align 4
  %disconnect_xdomain_paths = getelementptr inbounds %struct.tb_cm_ops, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %disconnect_xdomain_paths to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disconnect_xdomain_paths, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 %3(ptr noundef %tb, ptr noundef %xd, i32 noundef %transmit_path, i32 noundef %transmit_ring, i32 noundef %receive_path, i32 noundef %receive_ring) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -524, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_domain_disconnect_all_paths(ptr noundef %tb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cm_ops.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 6
  %0 = ptrtoint ptr %cm_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cm_ops.i, align 4
  %disconnect_pcie_paths.i = getelementptr inbounds %struct.tb_cm_ops, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %disconnect_pcie_paths.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disconnect_pcie_paths.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %tb_domain_disconnect_pcie_paths.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

tb_domain_disconnect_pcie_paths.exit:             ; preds = %entry
  %call.i = tail call i32 %3(ptr noundef %tb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %tb_domain_disconnect_pcie_paths.exit.cleanup_crit_edge

tb_domain_disconnect_pcie_paths.exit.cleanup_crit_edge: ; preds = %tb_domain_disconnect_pcie_paths.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %tb_domain_disconnect_pcie_paths.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @tb_bus_type, ptr noundef null, ptr noundef %tb, ptr noundef nonnull @disconnect_xdomain) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %tb_domain_disconnect_pcie_paths.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i, %tb_domain_disconnect_pcie_paths.exit.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @disconnect_xdomain(ptr noundef %dev, ptr noundef readnone %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp ne ptr %1, @tb_xdomain_type
  %tobool.not5 = icmp eq ptr %dev, null
  %tobool.not = or i1 %tobool.not5, %cmp.i.i
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tb1 = getelementptr inbounds %struct.tb_xdomain, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %tb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tb1, align 8
  %cmp = icmp eq ptr %3, %data
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @tb_xdomain_disable_paths(ptr noundef nonnull %dev, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_domain_init() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tb_test_init() #12
  tail call void @tb_debugfs_init() #12
  %call2 = tail call i32 @tb_xdomain_init() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.err_acpi_crit_edge

entry.err_acpi_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_acpi

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @bus_register(ptr noundef nonnull @tb_bus_type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %err_xdomain

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_xdomain:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @tb_xdomain_exit() #12
  br label %err_acpi

err_acpi:                                         ; preds = %err_xdomain, %entry.err_acpi_crit_edge
  %ret.0 = phi i32 [ %call2, %entry.err_acpi_crit_edge ], [ %call3, %err_xdomain ]
  tail call void @tb_debugfs_exit() #12
  tail call void @tb_test_exit() #12
  br label %cleanup

cleanup:                                          ; preds = %err_acpi, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_acpi ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_test_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_debugfs_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_xdomain_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_xdomain_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_debugfs_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_test_exit() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_domain_exit() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bus_unregister(ptr noundef nonnull @tb_bus_type) #12
  tail call void @ida_destroy(ptr noundef nonnull @tb_domain_ida) #12
  tail call void @tb_nvm_exit() #12
  tail call void @tb_xdomain_exit() #12
  tail call void @tb_debugfs_exit() #12
  tail call void @tb_test_exit() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_nvm_exit() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_ctl_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tb_is_xdomain_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tb_xdomain_handle_request(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @domain_attr_is_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %n) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %attr, @dev_attr_boot_acl
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %nboot_acl = getelementptr inbounds %struct.tb, ptr %kobj, i32 0, i32 9
  %0 = ptrtoint ptr %nboot_acl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nboot_acl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %land.lhs.true

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %cm_ops = getelementptr inbounds %struct.tb, ptr %kobj, i32 0, i32 6
  %2 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cm_ops, align 4
  %get_boot_acl = getelementptr inbounds %struct.tb_cm_ops, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %get_boot_acl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_boot_acl, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true2

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true2:                                   ; preds = %land.lhs.true
  %set_boot_acl = getelementptr inbounds %struct.tb_cm_ops, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %set_boot_acl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_boot_acl, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.cleanup.sink.split_crit_edge

land.lhs.true2.cleanup.sink.split_crit_edge:      ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mode7 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end6, %land.lhs.true2.cleanup.sink.split_crit_edge
  %mode7.sink = phi ptr [ %mode7, %if.end6 ], [ getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_boot_acl, i32 0, i32 0, i32 1), %land.lhs.true2.cleanup.sink.split_crit_edge ]
  %8 = ptrtoint ptr %mode7.sink to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mode7.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true2.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %land.lhs.true2.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ %9, %cleanup.sink.split ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boot_acl_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nboot_acl = getelementptr inbounds %struct.tb, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %nboot_acl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nboot_acl, align 8
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 16) #12
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !88

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #12
  %lock = getelementptr inbounds %struct.tb, ptr %dev, i32 0, i32 1
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end6:                                          ; preds = %if.end
  %cm_ops = getelementptr inbounds %struct.tb, ptr %dev, i32 0, i32 6
  %5 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cm_ops, align 4
  %get_boot_acl = getelementptr inbounds %struct.tb_cm_ops, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %get_boot_acl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_boot_acl, align 4
  %9 = ptrtoint ptr %nboot_acl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nboot_acl, align 8
  %call8 = tail call i32 %8(ptr noundef %dev, ptr noundef nonnull %call8.i.i, i32 noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br i1 %tobool9.not, label %if.end12, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end12:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %nboot_acl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nboot_acl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp70.not = icmp eq i32 %12, 0
  br i1 %cmp70.not, label %if.end12.out_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %if.end12.for.body_crit_edge
  %i.072 = phi i32 [ %inc, %if.end20.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %ret.071 = phi i32 [ %add27, %if.end20.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.uuid_t, ptr %call8.i.i, i32 %i.072
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %arrayidx, ptr noundef nonnull dereferenceable(16) @uuid_null, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %for.body.if.end20_crit_edge, label %if.then16

for.body.if.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr17 = getelementptr i8, ptr %buf, i32 %ret.071
  %sub = sub i32 4096, %ret.071
  %call19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub, ptr noundef nonnull @.str.15, ptr noundef %arrayidx) #12
  %add = add i32 %call19, %ret.071
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %for.body.if.end20_crit_edge
  %ret.1 = phi i32 [ %ret.071, %for.body.if.end20_crit_edge ], [ %add, %if.then16 ]
  %add.ptr21 = getelementptr i8, ptr %buf, i32 %ret.1
  %sub22 = sub i32 4096, %ret.1
  %13 = ptrtoint ptr %nboot_acl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nboot_acl, align 8
  %sub24 = add i32 %14, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.072, i32 %sub24)
  %cmp25 = icmp ult i32 %i.072, %sub24
  %cond = select i1 %cmp25, ptr @.str.17, ptr @.str.18
  %call26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr21, i32 noundef %sub22, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond) #12
  %add27 = add i32 %call26, %ret.1
  %inc = add nuw i32 %i.072, 1
  %15 = ptrtoint ptr %nboot_acl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nboot_acl, align 8
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %if.end20.for.body_crit_edge, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

out:                                              ; preds = %if.end20.out_crit_edge, %if.end12.out_crit_edge, %if.end6.out_crit_edge, %if.end.out_crit_edge
  %ret.2 = phi i32 [ -512, %if.end.out_crit_edge ], [ 0, %if.end12.out_crit_edge ], [ %call8, %if.end6.out_crit_edge ], [ %add27, %if.end20.out_crit_edge ]
  %call.i61 = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %17 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store volatile i64 %call.i61, ptr %last_busy.i, align 8
  %call.i62 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #12
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @boot_acl_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %uuid_str = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uuid_str) #12
  %nboot_acl = getelementptr inbounds %struct.tb, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %nboot_acl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nboot_acl, align 8
  %mul = mul i32 %1, 37
  %add = add i32 %mul, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %count)
  %cmp = icmp ult i32 %add, %count
  %sub = add i32 %1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %count)
  %cmp2 = icmp ugt i32 %sub, %count
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %entry.cleanup51_crit_edge, label %if.end4

entry.cleanup51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup51

if.end4:                                          ; preds = %entry
  %call = tail call noalias ptr @kstrdup(ptr noundef %buf, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end4.cleanup51_crit_edge, label %if.end6

if.end4.cleanup51_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup51

if.end6:                                          ; preds = %if.end4
  %2 = ptrtoint ptr %nboot_acl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nboot_acl, align 8
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 16) #12
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end6.err_free_str.thread_crit_edge, label %if.end7.i.i, !prof !88

if.end6.err_free_str.thread_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_str.thread

if.end7.i.i:                                      ; preds = %if.end6
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #16
  %tobool9.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool9.not, label %if.end7.i.i.err_free_str.thread_crit_edge, label %if.end11

if.end7.i.i.err_free_str.thread_crit_edge:        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_str.thread

if.end11:                                         ; preds = %if.end7.i.i
  %call12 = tail call ptr @strim(ptr noundef nonnull %call) #12
  %7 = ptrtoint ptr %uuid_str to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call12, ptr %uuid_str, align 4
  %call13102 = call ptr @strsep(ptr noundef nonnull %uuid_str, ptr noundef nonnull @.str.17) #12
  %cmp14.not103 = icmp eq ptr %call13102, null
  br i1 %cmp14.not103, label %if.end11.lor.lhs.false.critedge_crit_edge, label %if.end11.land.rhs_crit_edge

if.end11.land.rhs_crit_edge:                      ; preds = %if.end11
  br label %land.rhs

if.end11.lor.lhs.false.critedge_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.critedge

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %if.end11.land.rhs_crit_edge
  %call13106 = phi ptr [ %call13, %cleanup.land.rhs_crit_edge ], [ %call13102, %if.end11.land.rhs_crit_edge ]
  %i.0104 = phi i32 [ %inc, %cleanup.land.rhs_crit_edge ], [ 0, %if.end11.land.rhs_crit_edge ]
  %8 = ptrtoint ptr %nboot_acl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nboot_acl, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0104, i32 %9)
  %cmp16 = icmp ult i32 %i.0104, %9
  br i1 %cmp16, label %while.body, label %land.rhs.err_free_str_crit_edge

land.rhs.err_free_str_crit_edge:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_str

while.body:                                       ; preds = %land.rhs
  %call17 = call i32 @strlen(ptr noundef nonnull %call13106) #18
  %10 = zext i32 %call17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call17, label %while.body.err_free_str_crit_edge [
    i32 0, label %while.body.cleanup_crit_edge
    i32 36, label %if.end22
  ]

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.err_free_str_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_str

if.end22:                                         ; preds = %while.body
  %arrayidx = getelementptr %struct.uuid_t, ptr %call8.i.i, i32 %i.0104
  %call23 = call i32 @uuid_parse(ptr noundef nonnull %call13106, ptr noundef %arrayidx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end22.err_free_str_crit_edge

if.end22.err_free_str_crit_edge:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_str

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end22.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %inc = add nuw i32 %i.0104, 1
  %call13 = call ptr @strsep(ptr noundef nonnull %uuid_str, ptr noundef nonnull @.str.17) #12
  %cmp14.not = icmp eq ptr %call13, null
  br i1 %cmp14.not, label %cleanup.lor.lhs.false.critedge_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

cleanup.lor.lhs.false.critedge_crit_edge:         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.critedge

lor.lhs.false.critedge:                           ; preds = %cleanup.lor.lhs.false.critedge_crit_edge, %if.end11.lor.lhs.false.critedge_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end11.lor.lhs.false.critedge_crit_edge ], [ %inc, %cleanup.lor.lhs.false.critedge_crit_edge ]
  %11 = ptrtoint ptr %nboot_acl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nboot_acl, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %12)
  %cmp30 = icmp ult i32 %i.0.lcssa, %12
  br i1 %cmp30, label %lor.lhs.false.critedge.err_free_str_crit_edge, label %if.end32

lor.lhs.false.critedge.err_free_str_crit_edge:    ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_str

if.end32:                                         ; preds = %lor.lhs.false.critedge
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #12
  %lock = getelementptr inbounds %struct.tb, ptr %dev, i32 0, i32 1
  %call35 = call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end32.err_rpm_put_crit_edge

if.end32.err_rpm_put_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_rpm_put

if.end38:                                         ; preds = %if.end32
  %cm_ops = getelementptr inbounds %struct.tb, ptr %dev, i32 0, i32 6
  %13 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cm_ops, align 4
  %set_boot_acl = getelementptr inbounds %struct.tb_cm_ops, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %set_boot_acl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_boot_acl, align 4
  %17 = ptrtoint ptr %nboot_acl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nboot_acl, align 8
  %call40 = call i32 %16(ptr noundef %dev, ptr noundef nonnull %call8.i.i, i32 noundef %18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.end38.if.end45_crit_edge

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %call44 = call i32 @kobject_uevent(ptr noundef %dev, i32 noundef 2) #12
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end38.if.end45_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #12
  br label %err_rpm_put

err_rpm_put:                                      ; preds = %if.end45, %if.end32.err_rpm_put_crit_edge
  %ret.3 = phi i32 [ %call40, %if.end45 ], [ -512, %if.end32.err_rpm_put_crit_edge ]
  %call.i86 = call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %19 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store volatile i64 %call.i86, ptr %last_busy.i, align 8
  %call.i87 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #12
  br label %err_free_str

err_free_str.thread:                              ; preds = %if.end7.i.i.err_free_str.thread_crit_edge, %if.end6.err_free_str.thread_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #12
  br label %cleanup51

err_free_str:                                     ; preds = %err_rpm_put, %lor.lhs.false.critedge.err_free_str_crit_edge, %if.end22.err_free_str_crit_edge, %while.body.err_free_str_crit_edge, %land.rhs.err_free_str_crit_edge
  %ret.4 = phi i32 [ %ret.3, %err_rpm_put ], [ -22, %lor.lhs.false.critedge.err_free_str_crit_edge ], [ -22, %while.body.err_free_str_crit_edge ], [ %call23, %if.end22.err_free_str_crit_edge ], [ -22, %land.rhs.err_free_str_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #12
  call void @kfree(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %tobool50.not = icmp eq i32 %ret.4, 0
  %spec.select = select i1 %tobool50.not, i32 %count, i32 %ret.4
  br label %cleanup51

cleanup51:                                        ; preds = %err_free_str, %err_free_str.thread, %if.end4.cleanup51_crit_edge, %entry.cleanup51_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup51_crit_edge ], [ -12, %if.end4.cleanup51_crit_edge ], [ -12, %err_free_str.thread ], [ %spec.select, %err_free_str ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uuid_str) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uuid_parse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deauthorization_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %security_level = getelementptr inbounds %struct.tb, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %security_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %security_level, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cm_ops = getelementptr inbounds %struct.tb, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %cm_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cm_ops, align 4
  %disapprove_switch = getelementptr inbounds %struct.tb_cm_ops, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %disapprove_switch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disapprove_switch, align 4
  %tobool = icmp ne ptr %5, null
  %phi.cast = zext i1 %tobool to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %deauthorization.0.off0 = phi i32 [ %phi.cast, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %deauthorization.0.off0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iommu_dma_protection_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @iommu_present(ptr noundef nonnull @pci_bus_type) #12
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef 0)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iommu_present(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @security_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %security_level = getelementptr inbounds %struct.tb, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %security_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %security_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp ult i32 %1, 6
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [6 x ptr], ptr @tb_security_names, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %name.0 = phi ptr [ %3, %if.then ], [ @.str.23, %entry.if.end_crit_edge ]
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.24, ptr noundef %name.0)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_xdomain_disable_paths(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !23, !25, !26, !28, !29, !30, !31, !32, !33, !35, !37, !39, !40, !42, !44, !46, !48, !50, !52, !53, !55, !57, !58, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thunderbolt/domain.c", i32 319, i32 10}
!2 = !{ptr @tb_bus_type, !3, !"tb_bus_type", i1 false, i1 false}
!3 = !{!"../drivers/thunderbolt/domain.c", i32 318, i32 17}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/thunderbolt/domain.c", i32 338, i32 10}
!6 = !{ptr @tb_domain_type, !7, !"tb_domain_type", i1 false, i1 false}
!7 = !{!"../drivers/thunderbolt/domain.c", i32 337, i32 20}
!8 = !{ptr @tb_domain_alloc.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/thunderbolt/domain.c", i32 398, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/thunderbolt/domain.c", i32 404, i32 11}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/thunderbolt/domain.c", i32 416, i32 25}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/thunderbolt/domain.c", i32 446, i32 6}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/thunderbolt/domain.c", i32 462, i32 2}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tb_domain_add.__UNIQUE_ID_ddebug240, !18, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/thunderbolt/domain.c", i32 731, i32 27}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/thunderbolt/domain.c", i32 21, i32 8}
!25 = !{ptr @tb_domain_ida, !24, !"tb_domain_ida", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/thunderbolt/domain.c", i32 348, i32 3}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @tb_domain_event_cb._entry, !27, !"_entry", i1 false, i1 false}
!32 = !{ptr @tb_domain_event_cb._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @domain_attr_groups, !34, !"domain_attr_groups", i1 false, i1 false}
!34 = !{!"../drivers/thunderbolt/domain.c", i32 313, i32 38}
!35 = !{ptr @domain_attr_group, !36, !"domain_attr_group", i1 false, i1 false}
!36 = !{!"../drivers/thunderbolt/domain.c", i32 308, i32 37}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/thunderbolt/domain.c", i32 238, i32 8}
!39 = !{ptr @dev_attr_boot_acl, !38, !"dev_attr_boot_acl", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/thunderbolt/domain.c", i32 149, i32 49}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/thunderbolt/domain.c", i32 152, i32 48}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/thunderbolt/domain.c", i32 153, i32 35}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/thunderbolt/domain.c", i32 153, i32 41}
!48 = !{ptr @domain_attrs, !49, !"domain_attrs", i1 false, i1 false}
!49 = !{!"../drivers/thunderbolt/domain.c", i32 283, i32 26}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/thunderbolt/domain.c", i32 254, i32 8}
!52 = !{ptr @dev_attr_deauthorization, !51, !"dev_attr_deauthorization", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/thunderbolt/domain.c", i32 252, i32 22}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/thunderbolt/domain.c", i32 268, i32 8}
!57 = !{ptr @dev_attr_iommu_dma_protection, !56, !"dev_attr_iommu_dma_protection", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/thunderbolt/domain.c", i32 281, i32 8}
!60 = !{ptr @dev_attr_security, !59, !"dev_attr_security", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/thunderbolt/domain.c", i32 274, i32 21}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/thunderbolt/domain.c", i32 279, i32 22}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/thunderbolt/domain.c", i32 114, i32 23}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/thunderbolt/domain.c", i32 115, i32 23}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/thunderbolt/domain.c", i32 116, i32 25}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/thunderbolt/domain.c", i32 117, i32 25}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/thunderbolt/domain.c", i32 118, i32 26}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/thunderbolt/domain.c", i32 119, i32 25}
!77 = !{ptr @tb_security_names, !78, !"tb_security_names", i1 false, i1 false}
!78 = !{!"../drivers/thunderbolt/domain.c", i32 113, i32 27}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i64 2148297463, i64 2148297468, i64 2148297481, i64 2148297525, i64 2148297559, i64 2148297580}
