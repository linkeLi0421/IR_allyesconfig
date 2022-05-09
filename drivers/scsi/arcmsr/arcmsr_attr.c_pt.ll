; ModuleID = '/llk/IR_all_yes/drivers/scsi/arcmsr/arcmsr_attr.c_pt.bc'
source_filename = "../drivers/scsi/arcmsr/arcmsr_attr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.AdapterControlBlock = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i64, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %union.anon.84, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, [1024 x ptr], %struct.list_head, %struct.atomic_t, ptr, i32, i32, ptr, i32, [4096 x i8], i32, i32, [4096 x i8], i32, i32, [17 x [8 x i8]], i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], [20 x i8], [20 x i8], %struct.work_struct, %struct.timer_list, i16, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, i32, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.84 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@arcmsr_sysfs_message_read_attr = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.9, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 1032, ptr null, ptr null, ptr @arcmsr_sysfs_iop_message_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@arcmsr_alloc_sysfs_attr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013arcmsr: alloc sysfs mu_read failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"arcmsr_alloc_sysfs_attr\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/scsi/arcmsr/arcmsr_attr.c\00", [62 x i8] zeroinitializer }, align 32
@arcmsr_alloc_sysfs_attr._entry_ptr = internal global ptr @arcmsr_alloc_sysfs_attr._entry, section ".printk_index", align 4
@arcmsr_sysfs_message_write_attr = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.10, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 1032, ptr null, ptr null, ptr null, ptr @arcmsr_sysfs_iop_message_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@arcmsr_alloc_sysfs_attr._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013arcmsr: alloc sysfs mu_write failed\0A\00", [57 x i8] zeroinitializer }, align 32
@arcmsr_alloc_sysfs_attr._entry_ptr.5 = internal global ptr @arcmsr_alloc_sysfs_attr._entry.3, section ".printk_index", align 4
@arcmsr_sysfs_message_clear_attr = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.11, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 1, ptr null, ptr null, ptr null, ptr @arcmsr_sysfs_iop_message_clear, ptr null }, [52 x i8] zeroinitializer }, align 32
@arcmsr_alloc_sysfs_attr._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013arcmsr: alloc sysfs mu_clear failed\0A\00", [57 x i8] zeroinitializer }, align 32
@arcmsr_alloc_sysfs_attr._entry_ptr.8 = internal global ptr @arcmsr_alloc_sysfs_attr._entry.6, section ".printk_index", align 4
@arcmsr_host_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @arcmsr_host_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@arcmsr_host_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @arcmsr_host_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mu_read\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mu_write\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mu_clear\00", [23 x i8] zeroinitializer }, align 32
@arcmsr_host_attrs = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @dev_attr_host_driver_version, ptr @dev_attr_host_driver_posted_cmd, ptr @dev_attr_host_driver_reset, ptr @dev_attr_host_driver_abort, ptr @dev_attr_host_fw_model, ptr @dev_attr_host_fw_version, ptr @dev_attr_host_fw_request_len, ptr @dev_attr_host_fw_numbers_queue, ptr @dev_attr_host_fw_sdram_size, ptr @dev_attr_host_fw_hd_channels, ptr null], [52 x i8] zeroinitializer }, align 32
@dev_attr_host_driver_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arcmsr_attr_host_driver_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_host_driver_posted_cmd = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arcmsr_attr_host_driver_posted_cmd, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_host_driver_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arcmsr_attr_host_driver_reset, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_host_driver_abort = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arcmsr_attr_host_driver_abort, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_host_fw_model = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arcmsr_attr_host_fw_model, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_host_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arcmsr_attr_host_fw_version, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_host_fw_request_len = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arcmsr_attr_host_fw_request_len, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_host_fw_numbers_queue = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arcmsr_attr_host_fw_numbers_queue, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_host_fw_sdram_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arcmsr_attr_host_fw_sdram_size, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_host_fw_hd_channels = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @arcmsr_attr_host_fw_hd_channels, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"host_driver_version\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"v1.50.00.05-20210429\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"host_driver_posted_cmd\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%4d\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"host_driver_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"host_driver_abort\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"host_fw_model\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"host_fw_version\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"host_fw_request_len\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"host_fw_numbers_queue\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"host_fw_sdram_size\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"host_fw_hd_channels\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [31 x i8] c"arcmsr_sysfs_message_read_attr\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 191, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 225, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [32 x i8] c"arcmsr_sysfs_message_write_attr\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 200, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 230, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [32 x i8] c"arcmsr_sysfs_message_clear_attr\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 209, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 235, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [23 x i8] c"arcmsr_host_attr_group\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 404, i32 37 }
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"arcmsr_host_groups\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 408, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 193, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 202, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 211, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"arcmsr_host_attrs\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 390, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant [29 x i8] c"dev_attr_host_driver_version\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [32 x i8] c"dev_attr_host_driver_posted_cmd\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [27 x i8] c"dev_attr_host_driver_reset\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [27 x i8] c"dev_attr_host_driver_abort\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [23 x i8] c"dev_attr_host_fw_model\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [25 x i8] c"dev_attr_host_fw_version\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [29 x i8] c"dev_attr_host_fw_request_len\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [31 x i8] c"dev_attr_host_fw_numbers_queue\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [28 x i8] c"dev_attr_host_fw_sdram_size\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [29 x i8] c"dev_attr_host_fw_hd_channels\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 379, i32 8 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 262, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 263, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 380, i32 8 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 274, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 381, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 382, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 383, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 384, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 385, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 386, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 387, i32 8 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [37 x i8] c"../drivers/scsi/arcmsr/arcmsr_attr.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 388, i32 8 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @arcmsr_alloc_sysfs_attr._entry, ptr @arcmsr_alloc_sysfs_attr._entry.3, ptr @arcmsr_alloc_sysfs_attr._entry.6, ptr @arcmsr_alloc_sysfs_attr._entry_ptr, ptr @arcmsr_alloc_sysfs_attr._entry_ptr.5, ptr @arcmsr_alloc_sysfs_attr._entry_ptr.8, ptr @arcmsr_sysfs_message_read_attr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @arcmsr_sysfs_message_write_attr, ptr @.str.4, ptr @arcmsr_sysfs_message_clear_attr, ptr @.str.7, ptr @arcmsr_host_attr_group, ptr @arcmsr_host_groups, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @arcmsr_host_attrs, ptr @dev_attr_host_driver_version, ptr @dev_attr_host_driver_posted_cmd, ptr @dev_attr_host_driver_reset, ptr @dev_attr_host_driver_abort, ptr @dev_attr_host_fw_model, ptr @dev_attr_host_fw_version, ptr @dev_attr_host_fw_request_len, ptr @dev_attr_host_fw_numbers_queue, ptr @dev_attr_host_fw_sdram_size, ptr @dev_attr_host_fw_hd_channels, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcmsr_sysfs_message_read_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcmsr_alloc_sysfs_attr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcmsr_sysfs_message_write_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcmsr_alloc_sysfs_attr._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcmsr_sysfs_message_clear_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcmsr_alloc_sysfs_attr._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcmsr_host_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcmsr_host_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcmsr_host_attrs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_host_driver_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_host_driver_posted_cmd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_host_driver_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_host_driver_abort to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_host_fw_model to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_host_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_host_fw_request_len to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_host_fw_numbers_queue to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_host_fw_sdram_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_host_fw_hd_channels to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arcmsr_alloc_sysfs_attr(ptr nocapture noundef readonly %acb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.AdapterControlBlock, ptr %acb, i32 0, i32 3
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %shost_dev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 50
  %call = tail call i32 @sysfs_create_bin_file(ptr noundef %shost_dev, ptr noundef nonnull @arcmsr_sysfs_message_read_attr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @sysfs_create_bin_file(ptr noundef %shost_dev, ptr noundef nonnull @arcmsr_sysfs_message_write_attr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %error_bin_file_message_write

if.end13:                                         ; preds = %if.end
  %call16 = tail call i32 @sysfs_create_bin_file(ptr noundef %shost_dev, ptr noundef nonnull @arcmsr_sysfs_message_clear_attr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end13.cleanup_crit_edge, label %do.end21

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  tail call void @sysfs_remove_bin_file(ptr noundef %shost_dev, ptr noundef nonnull @arcmsr_sysfs_message_write_attr) #6
  br label %error_bin_file_message_write

error_bin_file_message_write:                     ; preds = %do.end21, %do.end10
  %error.0 = phi i32 [ %call5, %do.end10 ], [ %call16, %do.end21 ]
  tail call void @sysfs_remove_bin_file(ptr noundef %shost_dev, ptr noundef nonnull @arcmsr_sysfs_message_read_attr) #6
  br label %cleanup

cleanup:                                          ; preds = %error_bin_file_message_write, %if.end13.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end13.cleanup_crit_edge ], [ %call, %do.end ], [ %error.0, %error_bin_file_message_write ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arcmsr_free_sysfs_attr(ptr nocapture noundef readonly %acb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.AdapterControlBlock, ptr %acb, i32 0, i32 3
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %shost_dev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 50
  tail call void @sysfs_remove_bin_file(ptr noundef %shost_dev, ptr noundef nonnull @arcmsr_sysfs_message_clear_attr) #6
  tail call void @sysfs_remove_bin_file(ptr noundef %shost_dev, ptr noundef nonnull @arcmsr_sysfs_message_write_attr) #6
  tail call void @sysfs_remove_bin_file(ptr noundef %shost_dev, ptr noundef nonnull @arcmsr_sysfs_message_read_attr) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcmsr_sysfs_iop_message_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %kobj, i32 936
  %call = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rqbuffer_lock = getelementptr i8, ptr %kobj, i32 1152
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rqbuffer_lock) #6
  %rqbuf_getIndex = getelementptr i8, ptr %kobj, i32 9496
  %0 = ptrtoint ptr %rqbuf_getIndex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rqbuf_getIndex, align 8
  %rqbuf_putIndex = getelementptr i8, ptr %kobj, i32 9500
  %2 = ptrtoint ptr %rqbuf_putIndex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rqbuf_putIndex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp10.not = icmp eq i32 %3, %1
  br i1 %cmp10.not, label %if.end.if.end40_crit_edge, label %if.then12

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then12:                                        ; preds = %if.end
  %sub = sub i32 4096, %1
  %add = add i32 %3, %sub
  %and = and i32 %add, 4095
  %4 = tail call i32 @llvm.smin.i32(i32 %and, i32 %sub)
  %sub18 = sub i32 %3, %1
  %and19 = and i32 %sub18, 4095
  %5 = tail call i32 @llvm.umin.i32(i32 %and19, i32 1032)
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %4)
  %cmp24.not = icmp ugt i32 %5, %4
  %rqbuffer29 = getelementptr i8, ptr %kobj, i32 5400
  %add.ptr31 = getelementptr i8, ptr %rqbuffer29, i32 %1
  br i1 %cmp24.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %6 = call ptr @memcpy(ptr %buf, ptr %add.ptr31, i32 %5)
  br label %if.end36

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %7 = call ptr @memcpy(ptr %buf, ptr %add.ptr31, i32 %4)
  %add.ptr32 = getelementptr i8, ptr %buf, i32 %4
  %sub35 = sub i32 %5, %4
  %8 = call ptr @memcpy(ptr %add.ptr32, ptr %rqbuffer29, i32 %sub35)
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then26
  %9 = ptrtoint ptr %rqbuf_getIndex to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rqbuf_getIndex, align 8
  %add38 = add i32 %10, %5
  %rem = srem i32 %add38, 4096
  store i32 %rem, ptr %rqbuf_getIndex, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.end36, %if.end.if.end40_crit_edge
  %allxfer_len.0 = phi i32 [ %5, %if.end36 ], [ 0, %if.end.if.end40_crit_edge ]
  %acb_flags = getelementptr i8, ptr %kobj, i32 1264
  %11 = ptrtoint ptr %acb_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %acb_flags, align 8
  %and41 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool.not = icmp eq i32 %and41, 0
  br i1 %tobool.not, label %if.end40.if.end52_crit_edge, label %if.then42

if.end40.if.end52_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then42:                                        ; preds = %if.end40
  %and44 = and i32 %12, -9
  %13 = ptrtoint ptr %acb_flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and44, ptr %acb_flags, align 8
  %call45 = tail call ptr @arcmsr_get_iop_rqbuffer(ptr noundef %hostdata) #6
  %call46 = tail call i32 @arcmsr_Read_iop_rqbuffer_data(ptr noundef %hostdata, ptr noundef %call45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.then42.if.end52_crit_edge

if.then42.if.end52_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then49:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %acb_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %acb_flags, align 8
  %or = or i32 %15, 8
  store i32 %or, ptr %acb_flags, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.then42.if.end52_crit_edge, %if.end40.if.end52_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rqbuffer_lock, i32 noundef %call7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %allxfer_len.0, %if.end52 ], [ -13, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @arcmsr_get_iop_rqbuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arcmsr_Read_iop_rqbuffer_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcmsr_sysfs_iop_message_write(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin, ptr nocapture noundef readonly %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %kobj, i32 936
  %call = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1032, i32 %count)
  %cmp = icmp ugt i32 %count, 1032
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %wqbuffer_lock = getelementptr i8, ptr %kobj, i32 1196
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wqbuffer_lock) #6
  %wqbuf_putIndex = getelementptr i8, ptr %kobj, i32 13604
  %0 = ptrtoint ptr %wqbuf_putIndex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wqbuf_putIndex, align 4
  %wqbuf_getIndex = getelementptr i8, ptr %kobj, i32 13600
  %2 = ptrtoint ptr %wqbuf_getIndex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wqbuf_getIndex, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp13.not = icmp eq i32 %1, %3
  br i1 %cmp13.not, label %if.else, label %if.end5.cleanup.sink.split.sink.split_crit_edge

if.end5.cleanup.sink.split.sink.split_crit_edge:  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

if.else:                                          ; preds = %if.end5
  %wqbuffer = getelementptr i8, ptr %kobj, i32 9504
  %arrayidx = getelementptr [4096 x i8], ptr %wqbuffer, i32 0, i32 %1
  %sub = sub i32 4096, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %count)
  %cmp19 = icmp slt i32 %sub, %count
  br i1 %cmp19, label %if.then21, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %4 = call ptr @memcpy(ptr %arrayidx, ptr %buf, i32 %sub)
  %add.ptr22 = getelementptr i8, ptr %buf, i32 %sub
  %sub23 = sub i32 %count, %sub
  %5 = ptrtoint ptr %wqbuf_putIndex to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wqbuf_putIndex, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %if.else.if.end27_crit_edge
  %user_len.0 = phi i32 [ %sub23, %if.then21 ], [ %count, %if.else.if.end27_crit_edge ]
  %pQbuffer.0 = phi ptr [ %wqbuffer, %if.then21 ], [ %arrayidx, %if.else.if.end27_crit_edge ]
  %ptmpuserbuffer.0 = phi ptr [ %add.ptr22, %if.then21 ], [ %buf, %if.else.if.end27_crit_edge ]
  %6 = call ptr @memcpy(ptr %pQbuffer.0, ptr %ptmpuserbuffer.0, i32 %user_len.0)
  %7 = ptrtoint ptr %wqbuf_putIndex to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wqbuf_putIndex, align 4
  %add = add i32 %8, %user_len.0
  %rem = srem i32 %add, 4096
  store i32 %rem, ptr %wqbuf_putIndex, align 4
  %acb_flags = getelementptr i8, ptr %kobj, i32 1264
  %9 = ptrtoint ptr %acb_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %acb_flags, align 8
  %and = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end27.cleanup.sink.split_crit_edge, label %if.then30

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %and32 = and i32 %10, -17
  %11 = ptrtoint ptr %acb_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and32, ptr %acb_flags, align 8
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then30, %if.end5.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ %count, %if.then30 ], [ 0, %if.end5.cleanup.sink.split.sink.split_crit_edge ]
  tail call void @arcmsr_write_ioctldata2iop(ptr noundef %hostdata) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end27.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %count, %if.end27.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wqbuffer_lock, i32 noundef %call10) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arcmsr_write_ioctldata2iop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcmsr_sysfs_iop_message_clear(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin, ptr nocapture noundef readnone %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hostdata = getelementptr i8, ptr %kobj, i32 936
  tail call void @arcmsr_clear_iop2drv_rqueue_buffer(ptr noundef %hostdata) #6
  %acb_flags = getelementptr i8, ptr %kobj, i32 1264
  %0 = ptrtoint ptr %acb_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %acb_flags, align 8
  %or = or i32 %1, 112
  store i32 %or, ptr %acb_flags, align 8
  %rqbuffer_lock = getelementptr i8, ptr %kobj, i32 1152
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rqbuffer_lock) #6
  %rqbuf_getIndex = getelementptr i8, ptr %kobj, i32 9496
  %2 = ptrtoint ptr %rqbuf_getIndex to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %rqbuf_getIndex, align 8
  %rqbuf_putIndex = getelementptr i8, ptr %kobj, i32 9500
  %3 = ptrtoint ptr %rqbuf_putIndex to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %rqbuf_putIndex, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rqbuffer_lock, i32 noundef %call7) #6
  %wqbuffer_lock = getelementptr i8, ptr %kobj, i32 1196
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wqbuffer_lock) #6
  %wqbuf_getIndex = getelementptr i8, ptr %kobj, i32 13600
  %4 = ptrtoint ptr %wqbuf_getIndex to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wqbuf_getIndex, align 8
  %wqbuf_putIndex = getelementptr i8, ptr %kobj, i32 13604
  %5 = ptrtoint ptr %wqbuf_putIndex to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wqbuf_putIndex, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wqbuffer_lock, i32 noundef %call19) #6
  %rqbuffer = getelementptr i8, ptr %kobj, i32 5400
  %6 = call ptr @memset(ptr %rqbuffer, i32 0, i32 128)
  %wqbuffer = getelementptr i8, ptr %kobj, i32 9504
  %7 = call ptr @memset(ptr %wqbuffer, i32 0, i32 128)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -13, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arcmsr_clear_iop2drv_rqueue_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcmsr_attr_host_driver_version(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcmsr_attr_host_driver_posted_cmd(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ccboutstandingcount = getelementptr i8, ptr %dev, i32 5376
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ccboutstandingcount, i32 noundef 4) #6
  %0 = ptrtoint ptr %ccboutstandingcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ccboutstandingcount, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcmsr_attr_host_driver_reset(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_resets = getelementptr i8, ptr %dev, i32 13744
  %0 = ptrtoint ptr %num_resets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_resets, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcmsr_attr_host_driver_abort(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_aborts = getelementptr i8, ptr %dev, i32 13748
  %0 = ptrtoint ptr %num_aborts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_aborts, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcmsr_attr_host_fw_model(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %firm_model = getelementptr i8, ptr %dev, i32 13776
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.13, ptr noundef %firm_model)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcmsr_attr_host_fw_version(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %firm_version = getelementptr i8, ptr %dev, i32 13788
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.13, ptr noundef %firm_version)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcmsr_attr_host_fw_request_len(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %firm_request_len = getelementptr i8, ptr %dev, i32 13756
  %0 = ptrtoint ptr %firm_request_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %firm_request_len, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcmsr_attr_host_fw_numbers_queue(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %firm_numbers_queue = getelementptr i8, ptr %dev, i32 13760
  %0 = ptrtoint ptr %firm_numbers_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %firm_numbers_queue, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcmsr_attr_host_fw_sdram_size(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %firm_sdram_size = getelementptr i8, ptr %dev, i32 13764
  %0 = ptrtoint ptr %firm_sdram_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %firm_sdram_size, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcmsr_attr_host_fw_hd_channels(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %firm_hd_channels = getelementptr i8, ptr %dev, i32 13768
  %0 = ptrtoint ptr %firm_hd_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %firm_hd_channels, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !42, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 225, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @arcmsr_alloc_sysfs_attr._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @arcmsr_alloc_sysfs_attr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 230, i32 3}
!8 = !{ptr @arcmsr_alloc_sysfs_attr._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @arcmsr_alloc_sysfs_attr._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 235, i32 3}
!12 = !{ptr @arcmsr_alloc_sysfs_attr._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @arcmsr_alloc_sysfs_attr._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @arcmsr_host_groups, !15, !"arcmsr_host_groups", i1 false, i1 false}
!15 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 408, i32 31}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 193, i32 11}
!18 = !{ptr @arcmsr_sysfs_message_read_attr, !19, !"arcmsr_sysfs_message_read_attr", i1 false, i1 false}
!19 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 191, i32 35}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 202, i32 11}
!22 = !{ptr @arcmsr_sysfs_message_write_attr, !23, !"arcmsr_sysfs_message_write_attr", i1 false, i1 false}
!23 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 200, i32 35}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 211, i32 11}
!26 = !{ptr @arcmsr_sysfs_message_clear_attr, !27, !"arcmsr_sysfs_message_clear_attr", i1 false, i1 false}
!27 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 209, i32 35}
!28 = !{ptr @arcmsr_host_attr_group, !29, !"arcmsr_host_attr_group", i1 false, i1 false}
!29 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 404, i32 37}
!30 = !{ptr @arcmsr_host_attrs, !31, !"arcmsr_host_attrs", i1 false, i1 false}
!31 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 390, i32 26}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 379, i32 8}
!34 = !{ptr @dev_attr_host_driver_version, !33, !"dev_attr_host_driver_version", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 262, i32 4}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 263, i32 4}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 380, i32 8}
!41 = !{ptr @dev_attr_host_driver_posted_cmd, !40, !"dev_attr_host_driver_posted_cmd", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 274, i32 4}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 381, i32 8}
!46 = !{ptr @dev_attr_host_driver_reset, !45, !"dev_attr_host_driver_reset", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 382, i32 8}
!49 = !{ptr @dev_attr_host_driver_abort, !48, !"dev_attr_host_driver_abort", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 383, i32 8}
!52 = !{ptr @dev_attr_host_fw_model, !51, !"dev_attr_host_fw_model", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 384, i32 8}
!55 = !{ptr @dev_attr_host_fw_version, !54, !"dev_attr_host_fw_version", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 385, i32 8}
!58 = !{ptr @dev_attr_host_fw_request_len, !57, !"dev_attr_host_fw_request_len", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 386, i32 8}
!61 = !{ptr @dev_attr_host_fw_numbers_queue, !60, !"dev_attr_host_fw_numbers_queue", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 387, i32 8}
!64 = !{ptr @dev_attr_host_fw_sdram_size, !63, !"dev_attr_host_fw_sdram_size", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/arcmsr/arcmsr_attr.c", i32 388, i32 8}
!67 = !{ptr @dev_attr_host_fw_hd_channels, !66, !"dev_attr_host_fw_hd_channels", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
