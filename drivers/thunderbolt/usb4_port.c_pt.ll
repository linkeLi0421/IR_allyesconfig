; ModuleID = '/llk/IR_all_yes/drivers/thunderbolt/usb4_port.c_pt.bc'
source_filename = "../drivers/thunderbolt/usb4_port.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb4_port = type { %struct.device, ptr, i8, i8 }
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
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.tb_port = type { %struct.tb_regs_port_header, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i8, i8, i8, ptr, i8, %struct.ida, %struct.ida, %struct.list_head, i32, i32, i32 }
%struct.tb_regs_port_header = type { i16, i16, [12 x i8], i32, i32, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tb_switch = type { %struct.device, %struct.tb_regs_switch_header, ptr, ptr, %struct.tb_switch_tmu, ptr, i64, ptr, i16, i16, ptr, ptr, i32, i32, i8, i32, i32, i32, i32, i32, i8, ptr, ptr, i8, i8, i8, i8, i32, i32, ptr, ptr, i8, i8, i8, i8, %struct.completion, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.tb_regs_switch_header = type <{ i16, i16, i32, i32, i64 }>
%struct.tb_switch_tmu = type { i32, i8, i32, i8, i8, i32 }
%struct.tb = type { %struct.device, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [0 x i32] }
%struct.tb_nhi = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.ida, i8, %struct.work_struct, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb4_port\00", [22 x i8] zeroinitializer }, align 32
@usb4_port_device_groups = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @common_group, ptr @service_group, ptr null], [20 x i8] zeroinitializer }, align 32
@usb4_port_device_type = dso_local global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str, ptr @usb4_port_device_groups, ptr null, ptr null, ptr @usb4_port_device_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb4_port%d\00", [20 x i8] zeroinitializer }, align 32
@common_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @common_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@service_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @service_attr_is_visible, ptr null, ptr @service_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@common_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_link, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_link = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @link_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb4\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbt\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@service_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_offline, ptr @dev_attr_rescan, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_offline = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @offline_show, ptr @offline_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rescan = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @rescan_store }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"offline\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@offline_store.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thunderbolt\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"offline_store\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/thunderbolt/usb4_port.c\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%llx:%x: %s offline mode\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"enter\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"exit\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rescan\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 217, i32 10 }
@___asan_gen_.19 = private unnamed_addr constant [24 x i8] c"usb4_port_device_groups\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 203, i32 38 }
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"usb4_port_device_type\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 216, i32 20 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 241, i32 27 }
@___asan_gen_.28 = private unnamed_addr constant [13 x i8] c"common_group\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 42, i32 37 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"service_group\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 198, i32 37 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"common_attrs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 37, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"dev_attr_link\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 35, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 25, i32 32 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 25, i32 41 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 29, i32 10 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 33, i32 25 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"service_attrs\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 179, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"dev_attr_offline\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"dev_attr_rescan\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 135, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 83, i32 25 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 125, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [35 x i8] c"../drivers/thunderbolt/usb4_port.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 177, i32 8 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @.str, ptr @usb4_port_device_groups, ptr @usb4_port_device_type, ptr @.str.1, ptr @common_group, ptr @service_group, ptr @common_attrs, ptr @dev_attr_link, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @service_attrs, ptr @dev_attr_offline, ptr @dev_attr_rescan, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb4_port_device_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb4_port_device_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @common_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @service_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @common_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_link to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @service_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_offline to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rescan to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb4_port_device_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @usb4_port_device_add(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 936) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %port2 = getelementptr inbounds %struct.usb4_port, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %port2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %port, ptr %port2, align 8
  %type = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @usb4_port_device_type, ptr %type, align 4
  %sw = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %3 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sw, align 4
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %parent, align 8
  %port6 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %6 = ptrtoint ptr %port6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port6, align 4
  %conv = zext i8 %7 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, i32 noundef %conv) #5
  %call9 = tail call i32 @device_register(ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #5
  %8 = inttoptr i32 %call9 to ptr
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pm_runtime_no_callbacks(ptr noundef nonnull %call7.i.i) #5
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef nonnull %call7.i.i, i32 noundef 0) #5
  tail call void @pm_runtime_enable(ptr noundef nonnull %call7.i.i) #5
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef nonnull %call7.i.i, i32 noundef 15000) #5
  %call.i39 = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 12, i32 22
  %9 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store volatile i64 %call.i39, ptr %last_busy.i, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef nonnull %call7.i.i, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %8, %if.then11 ], [ %call7.i.i, %if.end14 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_no_callbacks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb4_port_device_remove(ptr noundef %usb4) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_unregister(ptr noundef %usb4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_port_device_resume(ptr nocapture noundef readonly %usb4) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offline = getelementptr inbounds %struct.usb4_port, ptr %usb4, i32 0, i32 3
  %0 = ptrtoint ptr %offline to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %offline, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  %port1.i = getelementptr inbounds %struct.usb4_port, ptr %usb4, i32 0, i32 1
  %2 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1.i, align 8
  %call2.i = tail call i32 @usb4_port_router_offline(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end6.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

if.end6.i:                                        ; preds = %cond.true
  %call7.i = tail call i32 @tb_retimer_scan(ptr noundef %3, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.cond.end_crit_edge, label %if.then9.i

if.end6.i.cond.end_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i = tail call i32 @usb4_port_router_online(ptr noundef %3) #5
  br label %cond.end

cond.end:                                         ; preds = %if.then9.i, %if.end6.i.cond.end_crit_edge, %cond.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi i32 [ 0, %entry.cond.end_crit_edge ], [ %call7.i, %if.then9.i ], [ 0, %if.end6.i.cond.end_crit_edge ], [ %call2.i, %cond.true.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @link_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @usb4_port_device_type
  %dev..i = select i1 %cmp.i.i, ptr %dev, ptr null
  %port1 = getelementptr inbounds %struct.usb4_port, ptr %dev..i, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 8
  %sw = getelementptr inbounds %struct.tb_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw, align 4
  %tb2 = getelementptr inbounds %struct.tb_switch, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %tb2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tb2, align 8
  %lock = getelementptr inbounds %struct.tb, ptr %7, i32 0, i32 1
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sw, align 4
  %ports.i.i = getelementptr inbounds %struct.tb_switch, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ports.i.i, align 4
  %upstream_port_number.i.i = getelementptr inbounds %struct.tb_switch, ptr %9, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %upstream_port_number.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load.i.i = load i32, ptr %upstream_port_number.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 18
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 63
  %arrayidx.i.i = getelementptr %struct.tb_port, ptr %11, i32 %bf.clear.i.i
  %cmp.i = icmp eq ptr %arrayidx.i.i, %3
  br i1 %cmp.i, label %if.end.if.end16.sink.split_crit_edge, label %tb_is_upstream_port.exit

if.end.if.end16.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.sink.split

tb_is_upstream_port.exit:                         ; preds = %if.end
  %dual_link_port.i = getelementptr inbounds %struct.tb_port, ptr %3, i32 0, i32 12
  %13 = ptrtoint ptr %dual_link_port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dual_link_port.i, align 4
  %cmp1.i = icmp eq ptr %14, %arrayidx.i.i
  br i1 %cmp1.i, label %tb_is_upstream_port.exit.if.end16.sink.split_crit_edge, label %tb_is_upstream_port.exit.i

tb_is_upstream_port.exit.if.end16.sink.split_crit_edge: ; preds = %tb_is_upstream_port.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.sink.split

tb_is_upstream_port.exit.i:                       ; preds = %tb_is_upstream_port.exit
  %15 = ptrtoint ptr %dual_link_port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dual_link_port.i, align 4
  %cmp1.i.i = icmp eq ptr %16, %arrayidx.i.i
  br i1 %cmp1.i.i, label %tb_is_upstream_port.exit.i.if.end16_crit_edge, label %if.end.i

tb_is_upstream_port.exit.i.if.end16_crit_edge:    ; preds = %tb_is_upstream_port.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end.i:                                         ; preds = %tb_is_upstream_port.exit.i
  %remote.i = getelementptr inbounds %struct.tb_port, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %remote.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end.i.if.end16_crit_edge, label %if.end2.i

if.end.i.if.end16_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end2.i:                                        ; preds = %if.end.i
  %tobool3.not.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i, label %if.end2.i.if.then9_crit_edge, label %land.lhs.true.i

if.end2.i.if.then9_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

land.lhs.true.i:                                  ; preds = %if.end2.i
  %link_nr.i = getelementptr inbounds %struct.tb_port, ptr %3, i32 0, i32 13
  %19 = ptrtoint ptr %link_nr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %link_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool4.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.then9_crit_edge, label %land.lhs.true.i.if.end16_crit_edge

land.lhs.true.i.if.end16_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

land.lhs.true.i.if.then9_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

if.then9:                                         ; preds = %land.lhs.true.i.if.then9_crit_edge, %if.end2.i.if.then9_crit_edge
  %20 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remote.i, align 4
  %sw10 = getelementptr inbounds %struct.tb_port, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %sw10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sw10, align 4
  br label %if.end16.sink.split

if.end16.sink.split:                              ; preds = %if.then9, %tb_is_upstream_port.exit.if.end16.sink.split_crit_edge, %if.end.if.end16.sink.split_crit_edge
  %.sink = phi ptr [ %23, %if.then9 ], [ %9, %if.end.if.end16.sink.split_crit_edge ], [ %9, %tb_is_upstream_port.exit.if.end16.sink.split_crit_edge ]
  %link_usb411 = getelementptr inbounds %struct.tb_switch, ptr %.sink, i32 0, i32 14
  %24 = ptrtoint ptr %link_usb411 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %link_usb411, align 8, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool12.not = icmp eq i8 %25, 0
  %cond13 = select i1 %tobool12.not, ptr @.str.4, ptr @.str.3
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %land.lhs.true.i.if.end16_crit_edge, %if.end.i.if.end16_crit_edge, %tb_is_upstream_port.exit.i.if.end16_crit_edge
  %link.0 = phi ptr [ @.str.5, %tb_is_upstream_port.exit.i.if.end16_crit_edge ], [ @.str.5, %if.end.i.if.end16_crit_edge ], [ @.str.5, %land.lhs.true.i.if.end16_crit_edge ], [ %cond13, %if.end16.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  %call18 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.6, ptr noundef nonnull %link.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end16 ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @service_attr_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %n) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @usb4_port_device_type
  %dev..i = select i1 %cmp.i.i, ptr %kobj, ptr null
  %can_offline = getelementptr inbounds %struct.usb4_port, ptr %dev..i, i32 0, i32 2
  %2 = ptrtoint ptr %can_offline to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %can_offline, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mode, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i16 [ %5, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i16 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @offline_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @usb4_port_device_type
  %dev..i = select i1 %cmp.i.i, ptr %dev, ptr null
  %offline = getelementptr inbounds %struct.usb4_port, ptr %dev..i, i32 0, i32 3
  %2 = ptrtoint ptr %offline to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %offline, align 1, !range !52
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %4) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @offline_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @usb4_port_device_type
  %dev..i = select i1 %cmp.i.i, ptr %dev, ptr null
  %port1 = getelementptr inbounds %struct.usb4_port, ptr %dev..i, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 8
  %sw = getelementptr inbounds %struct.tb_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw, align 4
  %tb2 = getelementptr inbounds %struct.tb_switch, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %tb2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tb2, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val, align 1, !annotation !53
  %call3 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %dev..i, i32 noundef 4) #5
  %lock = getelementptr inbounds %struct.tb, ptr %7, i32 0, i32 1
  %call6 = call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.out_rpm_crit_edge

if.end.out_rpm_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_rpm

if.end9:                                          ; preds = %if.end
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val, align 1, !range !52
  %offline = getelementptr inbounds %struct.usb4_port, ptr %dev..i, i32 0, i32 3
  %11 = ptrtoint ptr %offline to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %offline, align 1, !range !52
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp = icmp eq i8 %10, %12
  br i1 %cmp, label %if.end9.out_unlock_crit_edge, label %if.end15

if.end9.out_unlock_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end15:                                         ; preds = %if.end9
  %13 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sw, align 4
  %ports.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ports.i.i.i, align 4
  %upstream_port_number.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %14, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %upstream_port_number.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load.i.i.i = load i32, ptr %upstream_port_number.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 18
  %bf.clear.i.i.i = and i32 %bf.lshr.i.i.i, 63
  %arrayidx.i.i.i = getelementptr %struct.tb_port, ptr %16, i32 %bf.clear.i.i.i
  %cmp.i.i74 = icmp eq ptr %arrayidx.i.i.i, %3
  br i1 %cmp.i.i74, label %if.end15.if.end18_crit_edge, label %tb_is_upstream_port.exit.i

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

tb_is_upstream_port.exit.i:                       ; preds = %if.end15
  %dual_link_port.i.i = getelementptr inbounds %struct.tb_port, ptr %3, i32 0, i32 12
  %18 = ptrtoint ptr %dual_link_port.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dual_link_port.i.i, align 4
  %cmp1.i.i = icmp eq ptr %19, %arrayidx.i.i.i
  br i1 %cmp1.i.i, label %tb_is_upstream_port.exit.i.if.end18_crit_edge, label %if.end.i

tb_is_upstream_port.exit.i.if.end18_crit_edge:    ; preds = %tb_is_upstream_port.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end.i:                                         ; preds = %tb_is_upstream_port.exit.i
  %remote.i = getelementptr inbounds %struct.tb_port, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %remote.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i.if.end18_crit_edge, label %if.end2.i

if.end.i.if.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end2.i:                                        ; preds = %if.end.i
  %tobool3.not.i = icmp eq ptr %19, null
  br i1 %tobool3.not.i, label %if.end2.i.out_unlock_crit_edge, label %land.lhs.true.i

if.end2.i.out_unlock_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

land.lhs.true.i:                                  ; preds = %if.end2.i
  %link_nr.i = getelementptr inbounds %struct.tb_port, ptr %3, i32 0, i32 13
  %22 = ptrtoint ptr %link_nr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %link_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool4.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.out_unlock_crit_edge, label %land.lhs.true.i.if.end18_crit_edge

land.lhs.true.i.if.end18_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true.i.out_unlock_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end18:                                         ; preds = %land.lhs.true.i.if.end18_crit_edge, %if.end.i.if.end18_crit_edge, %tb_is_upstream_port.exit.i.if.end18_crit_edge, %if.end15.if.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool19.not = icmp eq i8 %10, 0
  %23 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port1, align 8
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end18
  %call2.i = call i32 @usb4_port_router_offline(ptr noundef %24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i76 = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i76, label %if.end6.i77, label %if.then20.out_unlock_crit_edge

if.then20.out_unlock_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end6.i77:                                      ; preds = %if.then20
  %call7.i = call i32 @tb_retimer_scan(ptr noundef %24, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i77.if.end25_crit_edge, label %if.then9.i

if.end6.i77.if.end25_crit_edge:                   ; preds = %if.end6.i77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then9.i:                                       ; preds = %if.end6.i77
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i = call i32 @usb4_port_router_online(ptr noundef %24) #5
  br label %out_unlock

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call.i80 = call i32 @usb4_port_router_online(ptr noundef %24) #5
  call void @tb_retimer_remove_all(ptr noundef %3) #5
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.end6.i77.if.end25_crit_edge
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %val, align 1, !range !52
  %27 = ptrtoint ptr %offline to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %offline, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @offline_store.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@offline_store, %if.then34)) #5
          to label %out_unlock [label %if.then34], !srcloc !54

if.then34:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sw, align 4
  %tb36 = getelementptr inbounds %struct.tb_switch, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %tb36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tb36, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 4
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %29, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %bf.load.i81 = load i64, ptr %route_hi.i, align 4
  %37 = lshr i64 %bf.load.i81, 1
  %shl.i = and i64 %37, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %29, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %39 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port40 = getelementptr inbounds %struct.tb_port, ptr %3, i32 0, i32 9
  %40 = ptrtoint ptr %port40 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %port40, align 4
  %conv41 = zext i8 %41 to i32
  %42 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %val, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool42.not = icmp eq i8 %43, 0
  %cond = select i1 %tobool42.not, ptr @.str.14, ptr @.str.13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @offline_store.__UNIQUE_ID_ddebug237, ptr noundef %dev37, ptr noundef nonnull @.str.12, i64 noundef %or.i, i32 noundef %conv41, ptr noundef nonnull %cond) #5
  br label %out_unlock

out_unlock:                                       ; preds = %if.then34, %if.end25, %if.then9.i, %if.then20.out_unlock_crit_edge, %land.lhs.true.i.out_unlock_crit_edge, %if.end2.i.out_unlock_crit_edge, %if.end9.out_unlock_crit_edge
  %ret.1 = phi i32 [ 0, %if.end9.out_unlock_crit_edge ], [ 0, %if.then34 ], [ -16, %if.end2.i.out_unlock_crit_edge ], [ -16, %land.lhs.true.i.out_unlock_crit_edge ], [ 0, %if.end25 ], [ %call2.i, %if.then20.out_unlock_crit_edge ], [ %call7.i, %if.then9.i ]
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %out_rpm

out_rpm:                                          ; preds = %out_unlock, %if.end.out_rpm_crit_edge
  %ret.2 = phi i32 [ %ret.1, %out_unlock ], [ -512, %if.end.out_rpm_crit_edge ]
  %call.i82 = call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev..i, i32 0, i32 12, i32 22
  %44 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store volatile i64 %call.i82, ptr %last_busy.i, align 8
  %call.i83 = call i32 @__pm_runtime_suspend(ptr noundef %dev..i, i32 noundef 13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool51.not = icmp eq i32 %ret.2, 0
  %spec.select = select i1 %tobool51.not, i32 %count, i32 %ret.2
  br label %cleanup

cleanup:                                          ; preds = %out_rpm, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ %spec.select, %out_rpm ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_retimer_remove_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb4_port_router_online(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rescan_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @usb4_port_device_type
  %dev..i = select i1 %cmp.i.i, ptr %dev, ptr null
  %port1 = getelementptr inbounds %struct.usb4_port, ptr %dev..i, i32 0, i32 1
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 8
  %sw = getelementptr inbounds %struct.tb_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw, align 4
  %tb2 = getelementptr inbounds %struct.tb_switch, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %tb2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tb2, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val, align 1, !annotation !53
  %call3 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %dev..i, i32 noundef 4) #5
  %lock = getelementptr inbounds %struct.tb, ptr %7, i32 0, i32 1
  %call9 = call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.out_rpm_crit_edge

if.end6.out_rpm_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_rpm

if.end12:                                         ; preds = %if.end6
  %offline = getelementptr inbounds %struct.usb4_port, ptr %dev..i, i32 0, i32 3
  %11 = ptrtoint ptr %offline to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %offline, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool13.not = icmp eq i8 %12, 0
  br i1 %tobool13.not, label %if.end12.out_unlock_crit_edge, label %if.end15

if.end12.out_unlock_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  call void @tb_retimer_remove_all(ptr noundef %3) #5
  %call16 = call i32 @tb_retimer_scan(ptr noundef %3, i1 noundef zeroext true) #5
  br label %out_unlock

out_unlock:                                       ; preds = %if.end15, %if.end12.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call16, %if.end15 ], [ -22, %if.end12.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #5
  br label %out_rpm

out_rpm:                                          ; preds = %out_unlock, %if.end6.out_rpm_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_unlock ], [ -512, %if.end6.out_rpm_crit_edge ]
  %call.i37 = call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev..i, i32 0, i32 12, i32 22
  %13 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store volatile i64 %call.i37, ptr %last_busy.i, align 8
  %call.i38 = call i32 @__pm_runtime_suspend(ptr noundef %dev..i, i32 noundef 13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool21.not = icmp eq i32 %ret.1, 0
  %spec.select = select i1 %tobool21.not, i32 %count, i32 %ret.1
  br label %cleanup

cleanup:                                          ; preds = %out_rpm, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %spec.select, %out_rpm ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_retimer_scan(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb4_port_router_offline(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thunderbolt/usb4_port.c", i32 217, i32 10}
!2 = !{ptr @usb4_port_device_type, !3, !"usb4_port_device_type", i1 false, i1 false}
!3 = !{!"../drivers/thunderbolt/usb4_port.c", i32 216, i32 20}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/thunderbolt/usb4_port.c", i32 241, i32 27}
!6 = !{ptr @usb4_port_device_groups, !7, !"usb4_port_device_groups", i1 false, i1 false}
!7 = !{!"../drivers/thunderbolt/usb4_port.c", i32 203, i32 38}
!8 = !{ptr @common_group, !9, !"common_group", i1 false, i1 false}
!9 = !{!"../drivers/thunderbolt/usb4_port.c", i32 42, i32 37}
!10 = !{ptr @common_attrs, !11, !"common_attrs", i1 false, i1 false}
!11 = !{!"../drivers/thunderbolt/usb4_port.c", i32 37, i32 26}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/thunderbolt/usb4_port.c", i32 35, i32 8}
!14 = !{ptr @dev_attr_link, !13, !"dev_attr_link", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/thunderbolt/usb4_port.c", i32 25, i32 32}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/thunderbolt/usb4_port.c", i32 25, i32 41}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/thunderbolt/usb4_port.c", i32 29, i32 10}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/thunderbolt/usb4_port.c", i32 33, i32 25}
!23 = !{ptr @service_group, !24, !"service_group", i1 false, i1 false}
!24 = !{!"../drivers/thunderbolt/usb4_port.c", i32 198, i32 37}
!25 = !{ptr @service_attrs, !26, !"service_attrs", i1 false, i1 false}
!26 = !{!"../drivers/thunderbolt/usb4_port.c", i32 179, i32 26}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/thunderbolt/usb4_port.c", i32 135, i32 8}
!29 = !{ptr @dev_attr_offline, !28, !"dev_attr_offline", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/thunderbolt/usb4_port.c", i32 83, i32 25}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/thunderbolt/usb4_port.c", i32 125, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @offline_store.__UNIQUE_ID_ddebug237, !33, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!38 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/thunderbolt/usb4_port.c", i32 177, i32 8}
!42 = !{ptr @dev_attr_rescan, !41, !"dev_attr_rescan", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i8 0, i8 2}
!53 = !{!"auto-init"}
!54 = !{i64 2148301752, i64 2148301757, i64 2148301770, i64 2148301814, i64 2148301848, i64 2148301869}
