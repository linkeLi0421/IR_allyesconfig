; ModuleID = '/llk/IR_all_yes/drivers/rapidio/rio-sysfs.c_pt.bc'
source_filename = "../drivers/rapidio/rio-sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.bus_attribute = type { %struct.attribute, ptr, ptr }
%struct.rio_net = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i8, %struct.device, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.rio_mport = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, %struct.resource, [16 x %struct.resource], [4 x %struct.rio_msg], [4 x %struct.rio_msg], i32, ptr, i8, i8, i32, i32, i32, [40 x i8], %struct.device, ptr, %struct.dma_device, ptr, %struct.atomic_t, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rio_msg = type { ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rio_dev = type { %struct.list_head, %struct.list_head, ptr, i8, i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.device, [16 x %struct.resource], ptr, i16, i8, ptr, %struct.atomic_t, [0 x %struct.rio_switch] }
%struct.rio_switch = type { %struct.list_head, ptr, i32, ptr, %struct.spinlock, [0 x ptr] }

@rio_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @rio_dev_is_attr_visible, ptr null, ptr @rio_dev_attrs, ptr @rio_dev_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@rio_dev_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @rio_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@rio_bus_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rio_bus_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rio_bus_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @rio_bus_group, ptr null], [24 x i8] zeroinitializer }, align 32
@rio_mport_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rio_mport_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rio_mport_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @rio_mport_group, ptr null], [24 x i8] zeroinitializer }, align 32
@rio_dev_attrs = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @dev_attr_did, ptr @dev_attr_vid, ptr @dev_attr_device_rev, ptr @dev_attr_asm_did, ptr @dev_attr_asm_vid, ptr @dev_attr_asm_rev, ptr @dev_attr_lprev, ptr @dev_attr_destid, ptr @dev_attr_modalias, ptr @dev_attr_routes, ptr @dev_attr_lnext, ptr @dev_attr_hopcount, ptr null], [44 x i8] zeroinitializer }, align 32
@rio_dev_bin_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @rio_config_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_routes = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @routes_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lnext = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lnext_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hopcount = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hopcount_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"routes\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%04x %02x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lnext\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"null\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hopcount\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02x\0A\00", [24 x i8] zeroinitializer }, align 32
@dev_attr_did = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @did_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_device_rev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @device_rev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_asm_did = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @asm_did_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_asm_vid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @asm_vid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_asm_rev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @asm_rev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_lprev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lprev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_destid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @destid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_modalias = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @modalias_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"did\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vid\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"device_rev\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"asm_did\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"asm_vid\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"asm_rev\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lprev\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"root\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"destid\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"modalias\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rapidio:v%04Xd%04Xav%04Xad%04X\0A\00", [32 x i8] zeroinitializer }, align 32
@rio_config_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 16777216, ptr null, ptr null, ptr @rio_read_config, ptr @rio_write_config, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"config\00", [25 x i8] zeroinitializer }, align 32
@rio_bus_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bus_attr_scan, ptr null], [24 x i8] zeroinitializer }, align 32
@bus_attr_scan = internal global { %struct.bus_attribute, [36 x i8] } { %struct.bus_attribute { %struct.attribute { ptr @.str.21, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @scan_store }, [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"scan\00", [27 x i8] zeroinitializer }, align 32
@rio_mport_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_port_destid, ptr @dev_attr_sys_size, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_port_destid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @port_destid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sys_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sys_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"port_destid\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_size\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"rio_dev_group\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 278, i32 37 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"rio_dev_groups\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 284, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"rio_bus_group\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 319, i32 37 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"rio_bus_groups\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 323, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"rio_mport_group\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 359, i32 37 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"rio_mport_groups\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 363, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"rio_dev_attrs\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 97, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"rio_dev_bin_attrs\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 254, i32 30 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"dev_attr_routes\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"dev_attr_lnext\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"dev_attr_hopcount\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 54, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 48, i32 20 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 85, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 76, i32 25 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 79, i32 25 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 35, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant [13 x i8] c"dev_attr_did\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [13 x i8] c"dev_attr_vid\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c"dev_attr_device_rev\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"dev_attr_asm_did\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"dev_attr_asm_vid\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"dev_attr_asm_rev\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"dev_attr_lprev\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"dev_attr_destid\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [18 x i8] c"dev_attr_modalias\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 28, i32 1 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 29, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 30, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 31, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 32, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 33, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 64, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 62, i32 42 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 34, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 95, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 92, i32 22 }
@___asan_gen_.145 = private unnamed_addr constant [16 x i8] c"rio_config_attr\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 244, i32 29 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 246, i32 12 }
@___asan_gen_.151 = private unnamed_addr constant [14 x i8] c"rio_bus_attrs\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 314, i32 26 }
@___asan_gen_.154 = private unnamed_addr constant [14 x i8] c"bus_attr_scan\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 312, i32 8 }
@___asan_gen_.160 = private unnamed_addr constant [16 x i8] c"rio_mport_attrs\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 353, i32 26 }
@___asan_gen_.163 = private unnamed_addr constant [21 x i8] c"dev_attr_port_destid\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [18 x i8] c"dev_attr_sys_size\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 339, i32 8 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 351, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private constant [31 x i8] c"../drivers/rapidio/rio-sysfs.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 347, i32 23 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @rio_dev_group, ptr @rio_dev_groups, ptr @rio_bus_group, ptr @rio_bus_groups, ptr @rio_mport_group, ptr @rio_mport_groups, ptr @rio_dev_attrs, ptr @rio_dev_bin_attrs, ptr @dev_attr_routes, ptr @dev_attr_lnext, ptr @dev_attr_hopcount, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @dev_attr_did, ptr @dev_attr_vid, ptr @dev_attr_device_rev, ptr @dev_attr_asm_did, ptr @dev_attr_asm_vid, ptr @dev_attr_asm_rev, ptr @dev_attr_lprev, ptr @dev_attr_destid, ptr @dev_attr_modalias, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @rio_config_attr, ptr @.str.20, ptr @rio_bus_attrs, ptr @bus_attr_scan, ptr @.str.21, ptr @rio_mport_attrs, ptr @dev_attr_port_destid, ptr @dev_attr_sys_size, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_bus_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_bus_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_mport_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_mport_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_dev_attrs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_dev_bin_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_routes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lnext to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hopcount to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_did to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device_rev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_asm_did to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_asm_vid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_asm_rev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_lprev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_destid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_modalias to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_config_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_bus_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_attr_scan to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_mport_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_port_destid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sys_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @rio_dev_is_attr_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %mode1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mode1, align 4
  %pef = getelementptr i8, ptr %kobj, i32 -48
  %2 = ptrtoint ptr %pef to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pef, align 8
  %and = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cmp = icmp eq ptr %attr, @dev_attr_routes
  %cmp2 = icmp eq ptr %attr, @dev_attr_lnext
  %or.cond = or i1 %cmp, %cmp2
  %cmp4 = icmp eq ptr %attr, @dev_attr_hopcount
  %or.cond8 = or i1 %cmp4, %or.cond
  %spec.select = select i1 %or.cond8, i16 0, i16 %1
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %mode.0 = phi i16 [ %1, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  ret i16 %mode.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @routes_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr i8, ptr %dev, i32 -72
  %route_table = getelementptr i8, ptr %dev, i32 1464
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.023 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %str.022 = phi ptr [ %buf, %entry ], [ %str.1, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %route_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %route_table, align 8
  %arrayidx = getelementptr i8, ptr %1, i32 %i.023
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp1 = icmp eq i8 %3, -1
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %str.022, ptr noundef nonnull @.str.1, i32 noundef %i.023, i32 noundef %conv)
  %add.ptr8 = getelementptr i8, ptr %str.022, i32 %call
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %str.1 = phi ptr [ %str.022, %for.body.for.inc_crit_edge ], [ %add.ptr8, %if.end ]
  %inc = add nuw nsw i32 %i.023, 1
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 8
  %hport = getelementptr inbounds %struct.rio_net, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %hport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hport, align 8
  %sys_size = getelementptr inbounds %struct.rio_mport, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sys_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %cond = select i1 %tobool.not, i32 256, i32 65536
  %cmp = icmp ult i32 %inc, %cond
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %sub.ptr.lhs.cast = ptrtoint ptr %str.1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lnext_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pef = getelementptr i8, ptr %dev, i32 -48
  %0 = ptrtoint ptr %pef to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pef, align 8
  %and = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %for.cond.preheader

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.cond.preheader:                               ; preds = %entry
  %swpinfo = getelementptr i8, ptr %dev, i32 -44
  %2 = ptrtoint ptr %swpinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %swpinfo, align 4
  %4 = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp26.not = icmp eq i32 %4, 0
  br i1 %cmp26.not, label %for.cond.preheader.if.end12_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end12_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %nextdev = getelementptr i8, ptr %dev, i32 1520
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %str.027 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr9, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x ptr], ptr %nextdev, i32 0, i32 %i.028
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %for.body
  %init_name.i.i = getelementptr inbounds %struct.rio_dev, ptr %6, i32 0, i32 21, i32 3
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then3.rio_name.exit_crit_edge

if.then3.rio_name.exit_crit_edge:                 ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_name.exit

if.end.i.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.rio_dev, ptr %6, i32 0, i32 21
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  br label %rio_name.exit

rio_name.exit:                                    ; preds = %if.end.i.i, %if.then3.rio_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.then3.rio_name.exit_crit_edge ]
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %str.027, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i.i)
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %11 = call ptr @memcpy(ptr %str.027, ptr @.str.4, i32 6)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %rio_name.exit
  %call8.sink = phi i32 [ %call8, %rio_name.exit ], [ 5, %if.else ]
  %add.ptr9 = getelementptr i8, ptr %str.027, i32 %call8.sink
  %inc = add nuw nsw i32 %i.028, 1
  %12 = ptrtoint ptr %swpinfo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %swpinfo, align 4
  %and1 = lshr i32 %13, 8
  %shr = and i32 %and1, 255
  %cmp = icmp ult i32 %inc, %shr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end12_crit_edge

for.inc.if.end12_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end12:                                         ; preds = %for.inc.if.end12_crit_edge, %for.cond.preheader.if.end12_crit_edge, %entry.if.end12_crit_edge
  %str.2 = phi ptr [ %buf, %entry.if.end12_crit_edge ], [ %buf, %for.cond.preheader.if.end12_crit_edge ], [ %add.ptr9, %for.inc.if.end12_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %str.2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i32 %sub.ptr.sub
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hopcount_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hopcount = getelementptr i8, ptr %dev, i32 1446
  %0 = ptrtoint ptr %hopcount to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hopcount, align 2
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.6, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @did_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %did = getelementptr i8, ptr %dev, i32 -66
  %0 = ptrtoint ptr %did to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %did, align 2
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vid = getelementptr i8, ptr %dev, i32 -64
  %0 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vid, align 8
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_rev_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device_rev = getelementptr i8, ptr %dev, i32 -60
  %0 = ptrtoint ptr %device_rev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_rev, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asm_did_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asm_did = getelementptr i8, ptr %dev, i32 -56
  %0 = ptrtoint ptr %asm_did to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %asm_did, align 8
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asm_vid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asm_vid = getelementptr i8, ptr %dev, i32 -54
  %0 = ptrtoint ptr %asm_vid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %asm_vid, align 2
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asm_rev_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asm_rev = getelementptr i8, ptr %dev, i32 -52
  %0 = ptrtoint ptr %asm_rev to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %asm_rev, align 4
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lprev_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prev = getelementptr i8, ptr %dev, i32 1448
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.rio_dev, ptr %1, i32 0, i32 21, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

if.end.i.i:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.rio_dev, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i.i, %cond.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi ptr [ @.str.16, %entry.cond.end_crit_edge ], [ %5, %if.end.i.i ], [ %3, %cond.true.cond.end_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, ptr noundef %cond)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @destid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %destid = getelementptr i8, ptr %dev, i32 1444
  %0 = ptrtoint ptr %destid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %destid, align 4
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vid = getelementptr i8, ptr %dev, i32 -64
  %0 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vid, align 8
  %conv = zext i16 %1 to i32
  %did = getelementptr i8, ptr %dev, i32 -66
  %2 = ptrtoint ptr %did to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %did, align 2
  %conv1 = zext i16 %3 to i32
  %asm_vid = getelementptr i8, ptr %dev, i32 -54
  %4 = ptrtoint ptr %asm_vid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %asm_vid, align 2
  %conv2 = zext i16 %5 to i32
  %asm_did = getelementptr i8, ptr %dev, i32 -56
  %6 = ptrtoint ptr %asm_did to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %asm_did, align 8
  %conv3 = zext i16 %7 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rio_read_config(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #4 align 64 {
entry:
  %val = alloca i8, align 1
  %val25 = alloca i16, align 2
  %val46 = alloca i32, align 4
  %val80 = alloca i16, align 2
  %val103 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call zeroext i1 @capable(i32 noundef 21) #6
  %spec.select = select i1 %call1, i32 16777216, i32 256
  %conv = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %off)
  %cmp.not = icmp sgt i64 %conv, %off
  br i1 %cmp.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %entry
  %conv5 = zext i32 %count to i64
  %add = add i64 %conv5, %off
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp7 = icmp sgt i64 %add, %conv
  %0 = trunc i64 %off to i32
  %conv11 = sub i32 %spec.select, %0
  %size.1 = select i1 %cmp7, i32 %conv11, i32 %count
  %and = and i64 %off, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end4.if.end18_crit_edge, label %land.lhs.true

if.end4.if.end18_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.1)
  %tobool13.not = icmp eq i32 %size.1, 0
  br i1 %tobool13.not, label %land.lhs.true.cleanup_crit_edge, label %if.then14

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val, align 1, !annotation !93
  %net.i = getelementptr i8, ptr %kobj, i32 -72
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 8
  %hport.i = getelementptr inbounds %struct.rio_net, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %hport.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hport.i, align 8
  %destid.i = getelementptr i8, ptr %kobj, i32 1444
  %6 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %destid.i, align 4
  %hopcount.i = getelementptr i8, ptr %kobj, i32 1446
  %8 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hopcount.i, align 2
  %call.i = call i32 @rio_mport_read_config_8(ptr noundef %5, i16 noundef zeroext %7, i8 noundef zeroext %9, i32 noundef %0, ptr noundef nonnull %val) #6
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val, align 1
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %buf, align 1
  %inc = add nsw i64 %off, 1
  %dec = add i32 %size.1, -1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end4.if.end18_crit_edge
  %off.addr.0 = phi i64 [ %inc, %if.then14 ], [ %off, %if.end4.if.end18_crit_edge ]
  %size.2 = phi i32 [ %dec, %if.then14 ], [ %size.1, %if.end4.if.end18_crit_edge ]
  %and19 = and i64 %off.addr.0, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19)
  %tobool20.not = icmp ne i64 %and19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size.2)
  %cmp22 = icmp ugt i32 %size.2, 2
  %or.cond = select i1 %tobool20.not, i1 %cmp22, i1 false
  br i1 %or.cond, label %if.then24, label %if.end18.if.end43_crit_edge

if.end18.if.end43_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val25) #6
  %13 = ptrtoint ptr %val25 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %val25, align 2, !annotation !93
  %conv26 = trunc i64 %off.addr.0 to i32
  %net.i177 = getelementptr i8, ptr %kobj, i32 -72
  %14 = ptrtoint ptr %net.i177 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net.i177, align 8
  %hport.i178 = getelementptr inbounds %struct.rio_net, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %hport.i178 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hport.i178, align 8
  %destid.i179 = getelementptr i8, ptr %kobj, i32 1444
  %18 = ptrtoint ptr %destid.i179 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %destid.i179, align 4
  %hopcount.i180 = getelementptr i8, ptr %kobj, i32 1446
  %20 = ptrtoint ptr %hopcount.i180 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hopcount.i180, align 2
  %call.i181 = call i32 @rio_mport_read_config_16(ptr noundef %17, i16 noundef zeroext %19, i8 noundef zeroext %21, i32 noundef %conv26, ptr noundef nonnull %val25) #6
  %22 = ptrtoint ptr %val25 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %val25, align 2
  %24 = lshr i16 %23, 8
  %conv30 = trunc i16 %24 to i8
  %sub31 = sub i64 %off.addr.0, %off
  %idxprom32 = trunc i64 %sub31 to i32
  %arrayidx33 = getelementptr i8, ptr %buf, i32 %idxprom32
  %25 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv30, ptr %arrayidx33, align 1
  %conv36 = trunc i16 %23 to i8
  %idxprom39 = add i32 %idxprom32, 1
  %arrayidx40 = getelementptr i8, ptr %buf, i32 %idxprom39
  %26 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv36, ptr %arrayidx40, align 1
  %add41 = add i64 %off.addr.0, 2
  %sub42 = add i32 %size.2, -2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val25) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then24, %if.end18.if.end43_crit_edge
  %off.addr.1 = phi i64 [ %add41, %if.then24 ], [ %off.addr.0, %if.end18.if.end43_crit_edge ]
  %size.3 = phi i32 [ %sub42, %if.then24 ], [ %size.2, %if.end18.if.end43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size.3)
  %cmp44203 = icmp ugt i32 %size.3, 3
  br i1 %cmp44203, label %while.body.lr.ph, label %if.end43.while.end_crit_edge

if.end43.while.end_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end43
  %net.i182 = getelementptr i8, ptr %kobj, i32 -72
  %destid.i184 = getelementptr i8, ptr %kobj, i32 1444
  %hopcount.i185 = getelementptr i8, ptr %kobj, i32 1446
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %size.4205 = phi i32 [ %size.3, %while.body.lr.ph ], [ %sub76, %while.body.while.body_crit_edge ]
  %off.addr.2204 = phi i64 [ %off.addr.1, %while.body.lr.ph ], [ %add75, %while.body.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val46) #6
  %27 = ptrtoint ptr %val46 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %val46, align 4, !annotation !93
  %conv47 = trunc i64 %off.addr.2204 to i32
  %28 = ptrtoint ptr %net.i182 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net.i182, align 8
  %hport.i183 = getelementptr inbounds %struct.rio_net, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %hport.i183 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hport.i183, align 8
  %32 = ptrtoint ptr %destid.i184 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %destid.i184, align 4
  %34 = ptrtoint ptr %hopcount.i185 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hopcount.i185, align 2
  %call.i186 = call i32 @rio_mport_read_config_32(ptr noundef %31, i16 noundef zeroext %33, i8 noundef zeroext %35, i32 noundef %conv47, ptr noundef nonnull %val46) #6
  %36 = ptrtoint ptr %val46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val46, align 4
  %shr49 = lshr i32 %37, 24
  %conv51 = trunc i32 %shr49 to i8
  %sub52 = sub i64 %off.addr.2204, %off
  %idxprom53 = trunc i64 %sub52 to i32
  %arrayidx54 = getelementptr i8, ptr %buf, i32 %idxprom53
  %38 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv51, ptr %arrayidx54, align 1
  %shr55 = lshr i32 %37, 16
  %conv57 = trunc i32 %shr55 to i8
  %idxprom60 = add i32 %idxprom53, 1
  %arrayidx61 = getelementptr i8, ptr %buf, i32 %idxprom60
  %39 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv57, ptr %arrayidx61, align 1
  %shr62 = lshr i32 %37, 8
  %conv64 = trunc i32 %shr62 to i8
  %idxprom67 = add i32 %idxprom53, 2
  %arrayidx68 = getelementptr i8, ptr %buf, i32 %idxprom67
  %40 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv64, ptr %arrayidx68, align 1
  %conv70 = trunc i32 %37 to i8
  %idxprom73 = add i32 %idxprom53, 3
  %arrayidx74 = getelementptr i8, ptr %buf, i32 %idxprom73
  %41 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv70, ptr %arrayidx74, align 1
  %add75 = add i64 %off.addr.2204, 4
  %sub76 = add i32 %size.4205, -4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val46) #6
  %cmp44 = icmp ugt i32 %sub76, 3
  br i1 %cmp44, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end43.while.end_crit_edge
  %off.addr.2.lcssa = phi i64 [ %off.addr.1, %if.end43.while.end_crit_edge ], [ %add75, %while.body.while.end_crit_edge ]
  %size.4.lcssa = phi i32 [ %size.3, %if.end43.while.end_crit_edge ], [ %sub76, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size.4.lcssa)
  %cmp77 = icmp ugt i32 %size.4.lcssa, 1
  br i1 %cmp77, label %if.then79, label %while.end.if.end99_crit_edge

while.end.if.end99_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

if.then79:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val80) #6
  %42 = ptrtoint ptr %val80 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -1, ptr %val80, align 2, !annotation !93
  %conv81 = trunc i64 %off.addr.2.lcssa to i32
  %net.i187 = getelementptr i8, ptr %kobj, i32 -72
  %43 = ptrtoint ptr %net.i187 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net.i187, align 8
  %hport.i188 = getelementptr inbounds %struct.rio_net, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %hport.i188 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hport.i188, align 8
  %destid.i189 = getelementptr i8, ptr %kobj, i32 1444
  %47 = ptrtoint ptr %destid.i189 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %destid.i189, align 4
  %hopcount.i190 = getelementptr i8, ptr %kobj, i32 1446
  %49 = ptrtoint ptr %hopcount.i190 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %hopcount.i190, align 2
  %call.i191 = call i32 @rio_mport_read_config_16(ptr noundef %46, i16 noundef zeroext %48, i8 noundef zeroext %50, i32 noundef %conv81, ptr noundef nonnull %val80) #6
  %51 = ptrtoint ptr %val80 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %val80, align 2
  %53 = lshr i16 %52, 8
  %conv86 = trunc i16 %53 to i8
  %sub87 = sub i64 %off.addr.2.lcssa, %off
  %idxprom88 = trunc i64 %sub87 to i32
  %arrayidx89 = getelementptr i8, ptr %buf, i32 %idxprom88
  %54 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv86, ptr %arrayidx89, align 1
  %conv92 = trunc i16 %52 to i8
  %idxprom95 = add i32 %idxprom88, 1
  %arrayidx96 = getelementptr i8, ptr %buf, i32 %idxprom95
  %55 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv92, ptr %arrayidx96, align 1
  %add97 = add i64 %off.addr.2.lcssa, 2
  %sub98 = add nsw i32 %size.4.lcssa, -2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val80) #6
  br label %if.end99

if.end99:                                         ; preds = %if.then79, %while.end.if.end99_crit_edge
  %off.addr.3 = phi i64 [ %add97, %if.then79 ], [ %off.addr.2.lcssa, %while.end.if.end99_crit_edge ]
  %size.5 = phi i32 [ %sub98, %if.then79 ], [ %size.4.lcssa, %while.end.if.end99_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.5)
  %cmp100.not = icmp eq i32 %size.5, 0
  br i1 %cmp100.not, label %if.end99.cleanup_crit_edge, label %if.then102

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val103) #6
  %56 = ptrtoint ptr %val103 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %val103, align 1, !annotation !93
  %conv104 = trunc i64 %off.addr.3 to i32
  %net.i192 = getelementptr i8, ptr %kobj, i32 -72
  %57 = ptrtoint ptr %net.i192 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net.i192, align 8
  %hport.i193 = getelementptr inbounds %struct.rio_net, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %hport.i193 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hport.i193, align 8
  %destid.i194 = getelementptr i8, ptr %kobj, i32 1444
  %61 = ptrtoint ptr %destid.i194 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %destid.i194, align 4
  %hopcount.i195 = getelementptr i8, ptr %kobj, i32 1446
  %63 = ptrtoint ptr %hopcount.i195 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %hopcount.i195, align 2
  %call.i196 = call i32 @rio_mport_read_config_8(ptr noundef %60, i16 noundef zeroext %62, i8 noundef zeroext %64, i32 noundef %conv104, ptr noundef nonnull %val103) #6
  %65 = ptrtoint ptr %val103 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %val103, align 1
  %sub106 = sub i64 %off.addr.3, %off
  %idxprom107 = trunc i64 %sub106 to i32
  %arrayidx108 = getelementptr i8, ptr %buf, i32 %idxprom107
  %67 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx108, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val103) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then102, %if.end99.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %size.1, %if.then102 ], [ %size.1, %if.end99.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rio_write_config(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef readonly %buf, i64 noundef %off, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777215, i64 %off)
  %cmp = icmp sgt i64 %off, 16777215
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %count to i64
  %add = add nsw i64 %conv, %off
  call void @__sanitizer_cov_trace_const_cmp8(i64 16777216, i64 %add)
  %cmp1 = icmp sgt i64 %add, 16777216
  %0 = trunc i64 %off to i32
  %conv4 = sub i32 16777216, %0
  %count.addr.0 = select i1 %cmp1, i32 %conv4, i32 %count
  %and = and i64 %off, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.0)
  %tobool6.not = icmp eq i32 %count.addr.0, 0
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %if.then7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buf, align 1
  %net.i = getelementptr i8, ptr %kobj, i32 -72
  %3 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i, align 8
  %hport.i = getelementptr inbounds %struct.rio_net, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %hport.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hport.i, align 8
  %destid.i = getelementptr i8, ptr %kobj, i32 1444
  %7 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %destid.i, align 4
  %hopcount.i = getelementptr i8, ptr %kobj, i32 1446
  %9 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hopcount.i, align 2
  %call.i = tail call i32 @rio_mport_write_config_8(ptr noundef %6, i16 noundef zeroext %8, i8 noundef zeroext %10, i32 noundef %0, i8 noundef zeroext %2) #6
  %inc = add nsw i64 %off, 1
  %dec = add i32 %count.addr.0, -1
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  %size.1 = phi i32 [ %dec, %if.then7 ], [ %count.addr.0, %if.end.if.end11_crit_edge ]
  %off.addr.0 = phi i64 [ %inc, %if.then7 ], [ %off, %if.end.if.end11_crit_edge ]
  %and12 = and i64 %off.addr.0, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12)
  %tobool13.not = icmp ne i64 %and12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size.1)
  %cmp15 = icmp ugt i32 %size.1, 2
  %or.cond = and i1 %cmp15, %tobool13.not
  br i1 %or.cond, label %if.then17, label %if.end11.if.end34_crit_edge

if.end11.if.end34_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %sub18 = sub i64 %off.addr.0, %off
  %11 = trunc i64 %sub18 to i32
  %idxprom20 = add i32 %11, 1
  %arrayidx21 = getelementptr i8, ptr %buf, i32 %idxprom20
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx21, align 1
  %arrayidx25 = getelementptr i8, ptr %buf, i32 %11
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx25, align 1
  %conv27 = zext i8 %15 to i16
  %shl = shl nuw i16 %conv27, 8
  %conv28 = zext i8 %13 to i16
  %or = or i16 %shl, %conv28
  %conv30 = trunc i64 %off.addr.0 to i32
  %net.i167 = getelementptr i8, ptr %kobj, i32 -72
  %16 = ptrtoint ptr %net.i167 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net.i167, align 8
  %hport.i168 = getelementptr inbounds %struct.rio_net, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %hport.i168 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hport.i168, align 8
  %destid.i169 = getelementptr i8, ptr %kobj, i32 1444
  %20 = ptrtoint ptr %destid.i169 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %destid.i169, align 4
  %hopcount.i170 = getelementptr i8, ptr %kobj, i32 1446
  %22 = ptrtoint ptr %hopcount.i170 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hopcount.i170, align 2
  %call.i171 = tail call i32 @rio_mport_write_config_16(ptr noundef %19, i16 noundef zeroext %21, i8 noundef zeroext %23, i32 noundef %conv30, i16 noundef zeroext %or) #6
  %add32 = add nsw i64 %off.addr.0, 2
  %sub33 = add i32 %size.1, -2
  br label %if.end34

if.end34:                                         ; preds = %if.then17, %if.end11.if.end34_crit_edge
  %size.2 = phi i32 [ %sub33, %if.then17 ], [ %size.1, %if.end11.if.end34_crit_edge ]
  %off.addr.1 = phi i64 [ %add32, %if.then17 ], [ %off.addr.0, %if.end11.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size.2)
  %cmp35193 = icmp ugt i32 %size.2, 3
  br i1 %cmp35193, label %while.body.lr.ph, label %if.end34.while.end_crit_edge

if.end34.while.end_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end34
  %net.i172 = getelementptr i8, ptr %kobj, i32 -72
  %destid.i174 = getelementptr i8, ptr %kobj, i32 1444
  %hopcount.i175 = getelementptr i8, ptr %kobj, i32 1446
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %off.addr.2195 = phi i64 [ %off.addr.1, %while.body.lr.ph ], [ %add65, %while.body.while.body_crit_edge ]
  %size.3194 = phi i32 [ %size.2, %while.body.lr.ph ], [ %sub66, %while.body.while.body_crit_edge ]
  %sub38 = sub i64 %off.addr.2195, %off
  %24 = trunc i64 %sub38 to i32
  %idxprom40 = add i32 %24, 3
  %arrayidx41 = getelementptr i8, ptr %buf, i32 %idxprom40
  %25 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %26 to i32
  %idxprom45 = add i32 %24, 2
  %arrayidx46 = getelementptr i8, ptr %buf, i32 %idxprom45
  %27 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %28 to i32
  %shl48 = shl nuw nsw i32 %conv47, 8
  %or49 = or i32 %shl48, %conv42
  %idxprom52 = add i32 %24, 1
  %arrayidx53 = getelementptr i8, ptr %buf, i32 %idxprom52
  %29 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %30 to i32
  %shl55 = shl nuw nsw i32 %conv54, 16
  %or56 = or i32 %or49, %shl55
  %arrayidx59 = getelementptr i8, ptr %buf, i32 %24
  %31 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %32 to i32
  %shl61 = shl nuw i32 %conv60, 24
  %or62 = or i32 %or56, %shl61
  %conv63 = trunc i64 %off.addr.2195 to i32
  %33 = ptrtoint ptr %net.i172 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net.i172, align 8
  %hport.i173 = getelementptr inbounds %struct.rio_net, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %hport.i173 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hport.i173, align 8
  %37 = ptrtoint ptr %destid.i174 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %destid.i174, align 4
  %39 = ptrtoint ptr %hopcount.i175 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %hopcount.i175, align 2
  %call.i176 = tail call i32 @rio_mport_write_config_32(ptr noundef %36, i16 noundef zeroext %38, i8 noundef zeroext %40, i32 noundef %conv63, i32 noundef %or62) #6
  %add65 = add i64 %off.addr.2195, 4
  %sub66 = add i32 %size.3194, -4
  %cmp35 = icmp ugt i32 %sub66, 3
  br i1 %cmp35, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end34.while.end_crit_edge
  %size.3.lcssa = phi i32 [ %size.2, %if.end34.while.end_crit_edge ], [ %sub66, %while.body.while.end_crit_edge ]
  %off.addr.2.lcssa = phi i64 [ %off.addr.1, %if.end34.while.end_crit_edge ], [ %add65, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size.3.lcssa)
  %cmp67 = icmp ugt i32 %size.3.lcssa, 1
  br i1 %cmp67, label %if.then69, label %while.end.if.end89_crit_edge

while.end.if.end89_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.then69:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub71 = sub i64 %off.addr.2.lcssa, %off
  %41 = trunc i64 %sub71 to i32
  %idxprom73 = add i32 %41, 1
  %arrayidx74 = getelementptr i8, ptr %buf, i32 %idxprom73
  %42 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx74, align 1
  %arrayidx78 = getelementptr i8, ptr %buf, i32 %41
  %44 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx78, align 1
  %conv80 = zext i8 %45 to i16
  %shl81 = shl nuw i16 %conv80, 8
  %conv82 = zext i8 %43 to i16
  %or83 = or i16 %shl81, %conv82
  %conv85 = trunc i64 %off.addr.2.lcssa to i32
  %net.i177 = getelementptr i8, ptr %kobj, i32 -72
  %46 = ptrtoint ptr %net.i177 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net.i177, align 8
  %hport.i178 = getelementptr inbounds %struct.rio_net, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %hport.i178 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hport.i178, align 8
  %destid.i179 = getelementptr i8, ptr %kobj, i32 1444
  %50 = ptrtoint ptr %destid.i179 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %destid.i179, align 4
  %hopcount.i180 = getelementptr i8, ptr %kobj, i32 1446
  %52 = ptrtoint ptr %hopcount.i180 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %hopcount.i180, align 2
  %call.i181 = tail call i32 @rio_mport_write_config_16(ptr noundef %49, i16 noundef zeroext %51, i8 noundef zeroext %53, i32 noundef %conv85, i16 noundef zeroext %or83) #6
  %add87 = add i64 %off.addr.2.lcssa, 2
  %sub88 = add nsw i32 %size.3.lcssa, -2
  br label %if.end89

if.end89:                                         ; preds = %if.then69, %while.end.if.end89_crit_edge
  %size.4 = phi i32 [ %sub88, %if.then69 ], [ %size.3.lcssa, %while.end.if.end89_crit_edge ]
  %off.addr.3 = phi i64 [ %add87, %if.then69 ], [ %off.addr.2.lcssa, %while.end.if.end89_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.4)
  %tobool90.not = icmp eq i32 %size.4, 0
  br i1 %tobool90.not, label %if.end89.cleanup_crit_edge, label %if.then91

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then91:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  %conv92 = trunc i64 %off.addr.3 to i32
  %sub93 = sub i64 %off.addr.3, %off
  %idxprom94 = trunc i64 %sub93 to i32
  %arrayidx95 = getelementptr i8, ptr %buf, i32 %idxprom94
  %54 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx95, align 1
  %net.i182 = getelementptr i8, ptr %kobj, i32 -72
  %56 = ptrtoint ptr %net.i182 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net.i182, align 8
  %hport.i183 = getelementptr inbounds %struct.rio_net, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %hport.i183 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hport.i183, align 8
  %destid.i184 = getelementptr i8, ptr %kobj, i32 1444
  %60 = ptrtoint ptr %destid.i184 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %destid.i184, align 4
  %hopcount.i185 = getelementptr i8, ptr %kobj, i32 1446
  %62 = ptrtoint ptr %hopcount.i185 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %hopcount.i185, align 2
  %call.i186 = tail call i32 @rio_mport_write_config_8(ptr noundef %59, i16 noundef zeroext %61, i8 noundef zeroext %63, i32 noundef %conv92, i8 noundef zeroext %55) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %if.end89.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %count.addr.0, %if.then91 ], [ %count.addr.0, %if.end89.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_read_config_8(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_read_config_16(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_read_config_32(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_write_config_8(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_write_config_16(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_write_config_32(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scan_store(ptr nocapture noundef readnone %bus, ptr noundef %buf, i32 noundef %count) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !93
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp1 = icmp eq i32 %2, -1
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call i32 @rio_init_mports() #6
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %2)
  %3 = icmp ugt i32 %2, 7
  br i1 %3, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = call i32 @rio_mport_scan(i32 noundef %2) #6
  br label %exit

exit:                                             ; preds = %if.end8, %if.then2
  %rc.0 = phi i32 [ %call3, %if.then2 ], [ %call9, %if.end8 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool.not = icmp eq i32 %rc.0, 0
  %spec.select = select i1 %tobool.not, i32 %count, i32 %rc.0
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_init_mports() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_scan(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_destid_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -800
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %host_deviceid = getelementptr i8, ptr %dev, i32 -64
  %0 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %host_deviceid, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sys_size_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -800
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sys_size = getelementptr i8, ptr %dev, i32 -52
  %0 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sys_size, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.24, i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18, !20, !22, !23, !24, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !53, !54, !56, !57, !59, !61, !63, !65, !67, !69, !71, !72, !74, !76, !78, !79, !81, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @rio_dev_groups, !1, !"rio_dev_groups", i1 false, i1 false}
!1 = !{!"../drivers/rapidio/rio-sysfs.c", i32 284, i32 31}
!2 = !{ptr @rio_bus_groups, !3, !"rio_bus_groups", i1 false, i1 false}
!3 = !{!"../drivers/rapidio/rio-sysfs.c", i32 323, i32 31}
!4 = !{ptr @rio_mport_groups, !5, !"rio_mport_groups", i1 false, i1 false}
!5 = !{!"../drivers/rapidio/rio-sysfs.c", i32 363, i32 31}
!6 = !{ptr @rio_dev_group, !7, !"rio_dev_group", i1 false, i1 false}
!7 = !{!"../drivers/rapidio/rio-sysfs.c", i32 278, i32 37}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/rapidio/rio-sysfs.c", i32 54, i32 8}
!10 = !{ptr @dev_attr_routes, !9, !"dev_attr_routes", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/rapidio/rio-sysfs.c", i32 48, i32 20}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/rapidio/rio-sysfs.c", i32 85, i32 8}
!15 = !{ptr @dev_attr_lnext, !14, !"dev_attr_lnext", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rapidio/rio-sysfs.c", i32 76, i32 25}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rapidio/rio-sysfs.c", i32 79, i32 25}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/rapidio/rio-sysfs.c", i32 35, i32 1}
!22 = !{ptr @dev_attr_hopcount, !21, !"dev_attr_hopcount", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rio_dev_attrs, !25, !"rio_dev_attrs", i1 false, i1 false}
!25 = !{!"../drivers/rapidio/rio-sysfs.c", i32 97, i32 26}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/rapidio/rio-sysfs.c", i32 28, i32 1}
!28 = !{ptr @dev_attr_did, !27, !"dev_attr_did", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rapidio/rio-sysfs.c", i32 29, i32 1}
!32 = !{ptr @dev_attr_vid, !31, !"dev_attr_vid", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rapidio/rio-sysfs.c", i32 30, i32 1}
!35 = !{ptr @dev_attr_device_rev, !34, !"dev_attr_device_rev", i1 false, i1 false}
!36 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rapidio/rio-sysfs.c", i32 31, i32 1}
!39 = !{ptr @dev_attr_asm_did, !38, !"dev_attr_asm_did", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rapidio/rio-sysfs.c", i32 32, i32 1}
!42 = !{ptr @dev_attr_asm_vid, !41, !"dev_attr_asm_vid", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rapidio/rio-sysfs.c", i32 33, i32 1}
!45 = !{ptr @dev_attr_asm_rev, !44, !"dev_attr_asm_rev", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/rapidio/rio-sysfs.c", i32 64, i32 8}
!48 = !{ptr @dev_attr_lprev, !47, !"dev_attr_lprev", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/rapidio/rio-sysfs.c", i32 62, i32 42}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rapidio/rio-sysfs.c", i32 34, i32 1}
!53 = !{ptr @dev_attr_destid, !52, !"dev_attr_destid", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/rapidio/rio-sysfs.c", i32 95, i32 8}
!56 = !{ptr @dev_attr_modalias, !55, !"dev_attr_modalias", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/rapidio/rio-sysfs.c", i32 92, i32 22}
!59 = !{ptr @rio_dev_bin_attrs, !60, !"rio_dev_bin_attrs", i1 false, i1 false}
!60 = !{!"../drivers/rapidio/rio-sysfs.c", i32 254, i32 30}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/rapidio/rio-sysfs.c", i32 246, i32 12}
!63 = !{ptr @rio_config_attr, !64, !"rio_config_attr", i1 false, i1 false}
!64 = !{!"../drivers/rapidio/rio-sysfs.c", i32 244, i32 29}
!65 = !{ptr @rio_bus_group, !66, !"rio_bus_group", i1 false, i1 false}
!66 = !{!"../drivers/rapidio/rio-sysfs.c", i32 319, i32 37}
!67 = !{ptr @rio_bus_attrs, !68, !"rio_bus_attrs", i1 false, i1 false}
!68 = !{!"../drivers/rapidio/rio-sysfs.c", i32 314, i32 26}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/rapidio/rio-sysfs.c", i32 312, i32 8}
!71 = !{ptr @bus_attr_scan, !70, !"bus_attr_scan", i1 false, i1 false}
!72 = !{ptr @rio_mport_group, !73, !"rio_mport_group", i1 false, i1 false}
!73 = !{!"../drivers/rapidio/rio-sysfs.c", i32 359, i32 37}
!74 = !{ptr @rio_mport_attrs, !75, !"rio_mport_attrs", i1 false, i1 false}
!75 = !{!"../drivers/rapidio/rio-sysfs.c", i32 353, i32 26}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/rapidio/rio-sysfs.c", i32 339, i32 8}
!78 = !{ptr @dev_attr_port_destid, !77, !"dev_attr_port_destid", i1 false, i1 false}
!79 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/rapidio/rio-sysfs.c", i32 351, i32 8}
!81 = !{ptr @dev_attr_sys_size, !80, !"dev_attr_sys_size", i1 false, i1 false}
!82 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/rapidio/rio-sysfs.c", i32 347, i32 23}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
