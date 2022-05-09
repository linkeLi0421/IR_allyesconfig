; ModuleID = '/llk/IR_all_yes/drivers/char/tpm/tpm-sysfs.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm-sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tpm_pcr_attr = type { i32, i32, %struct.device_attribute }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.tpm_bank_info = type { i16, i16, i16 }
%struct.tpm_buf = type { i32, ptr }
%struct.tpm_header = type <{ i16, i32, %union.anon.71 }>
%union.anon.71 = type { i32 }
%union.cap_t = type { %struct.timeout_t, [8 x i8] }
%struct.timeout_t = type { i32, i32, i32, i32 }
%struct.permanent_flags_t = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.stclear_flags_t = type <{ i16, i8, i8, i8, i8, i8 }>
%struct.tpm1_version2 = type { i16, %struct.tpm1_version }
%struct.tpm1_version = type { i8, i8, i8, i8 }
%struct.tpm_class_ops = type { i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tpm_digest = type { i16, [64 x i8] }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/char/tpm/tpm-sysfs.c\00", [35 x i8] zeroinitializer }, align 32
@tpm2_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @tpm2_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@tpm1_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @tpm1_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pcr_group_sha1 = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.42, ptr null, ptr null, ptr @pcr_group_attrs_sha1, ptr null }, [44 x i8] zeroinitializer }, align 32
@pcr_group_sha256 = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.66, ptr null, ptr null, ptr @pcr_group_attrs_sha256, ptr null }, [44 x i8] zeroinitializer }, align 32
@pcr_group_sha384 = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.67, ptr null, ptr null, ptr @pcr_group_attrs_sha384, ptr null }, [44 x i8] zeroinitializer }, align 32
@pcr_group_sha512 = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.68, ptr null, ptr null, ptr @pcr_group_attrs_sha512, ptr null }, [44 x i8] zeroinitializer }, align 32
@pcr_group_sm3 = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.69, ptr null, ptr null, ptr @pcr_group_attrs_sm3, ptr null }, [44 x i8] zeroinitializer }, align 32
@tpm_sysfs_add_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 518, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"TPM with unsupported bank algorithm 0x%04x\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tpm_sysfs_add_device\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tpm_sysfs_add_device._entry_ptr = internal global ptr @tpm_sysfs_add_device._entry, section ".printk_index", align 4
@tpm2_dev_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_tpm_version_major, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_tpm_version_major = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tpm_version_major_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tpm_version_major\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@tpm1_dev_attrs = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @dev_attr_pubek, ptr @dev_attr_pcrs, ptr @dev_attr_enabled, ptr @dev_attr_active, ptr @dev_attr_owned, ptr @dev_attr_temp_deactivated, ptr @dev_attr_caps, ptr @dev_attr_cancel, ptr @dev_attr_durations, ptr @dev_attr_timeouts, ptr @dev_attr_tpm_version_major, ptr null], [48 x i8] zeroinitializer }, align 32
@dev_attr_pubek = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pubek_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pcrs = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcrs_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_enabled = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @enabled_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_owned = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @owned_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_temp_deactivated = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_deactivated_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_caps = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @caps_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cancel = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @cancel_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_durations = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @durations_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_timeouts = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @timeouts_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pubek\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"attempting to read the PUBEK\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"Algorithm: %4ph\0AEncscheme: %2ph\0ASigscheme: %2ph\0AParameters: %12ph\0AModulus length: %d\0AModulus:\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%16ph\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/tpm.h\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tpm_buf: overflow\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcrs\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"attempting to determine the number of PCRS\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCR-%02d: \00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02X \00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"attempting to determine the permanent enabled state\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"attempting to determine the permanent active state\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"owned\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"attempting to determine the owner state\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp_deactivated\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"attempting to determine the temporary state\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"caps\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"attempting to determine the manufacturer\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Manufacturer: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"attempting to determine the 1.2 version\00", [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"attempting to determine the 1.1 version\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"TCG version: %d.%d\0AFirmware version: %d.%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cancel\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"durations\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%d %d %d [%s]\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adjusted\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"original\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"timeouts\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%d %d %d %d [%s]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcr-sha1\00", [23 x i8] zeroinitializer }, align 32
@pcr_group_attrs_sha1 = internal global { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_0, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_1, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_2, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_3, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_4, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_5, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_6, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_7, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_8, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_9, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_10, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_11, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_12, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_13, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_14, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_15, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_16, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_17, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_18, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_19, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_20, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_21, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_22, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha1_23, i64 8), ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_0 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 0, %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_1 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 1, %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_2 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 2, %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_3 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 3, %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_4 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 4, %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_5 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 5, %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_6 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 6, %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_7 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 7, %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_8 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 8, %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_9 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 9, %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_10 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 10, %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_11 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 11, %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_12 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 12, %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_13 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 13, %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_14 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 14, %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_15 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 15, %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_16 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 16, %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_17 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 17, %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_18 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 18, %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_19 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 19, %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_20 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 20, %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_21 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 21, %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_22 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 22, %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha1_23 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 4, i32 23, %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02X\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"5\00", [30 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"6\00", [30 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"7\00", [30 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"8\00", [30 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"9\00", [30 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"10\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"11\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"12\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"13\00", [29 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"14\00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"15\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"16\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"17\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"18\00", [29 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"19\00", [29 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"20\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"21\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"22\00", [29 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"23\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcr-sha256\00", [21 x i8] zeroinitializer }, align 32
@pcr_group_attrs_sha256 = internal global { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_0, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_1, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_2, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_3, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_4, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_5, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_6, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_7, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_8, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_9, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_10, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_11, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_12, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_13, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_14, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_15, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_16, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_17, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_18, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_19, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_20, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_21, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_22, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha256_23, i64 8), ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_0 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 0, %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_1 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 1, %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_2 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 2, %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_3 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 3, %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_4 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 4, %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_5 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 5, %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_6 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 6, %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_7 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 7, %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_8 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 8, %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_9 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 9, %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_10 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 10, %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_11 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 11, %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_12 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 12, %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_13 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 13, %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_14 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 14, %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_15 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 15, %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_16 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 16, %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_17 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 17, %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_18 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 18, %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_19 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 19, %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_20 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 20, %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_21 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 21, %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_22 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 22, %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha256_23 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 11, i32 23, %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcr-sha384\00", [21 x i8] zeroinitializer }, align 32
@pcr_group_attrs_sha384 = internal global { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_0, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_1, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_2, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_3, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_4, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_5, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_6, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_7, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_8, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_9, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_10, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_11, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_12, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_13, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_14, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_15, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_16, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_17, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_18, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_19, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_20, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_21, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_22, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha384_23, i64 8), ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_0 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 0, %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_1 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 1, %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_2 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 2, %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_3 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 3, %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_4 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 4, %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_5 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 5, %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_6 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 6, %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_7 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 7, %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_8 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 8, %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_9 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 9, %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_10 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 10, %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_11 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 11, %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_12 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 12, %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_13 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 13, %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_14 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 14, %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_15 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 15, %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_16 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 16, %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_17 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 17, %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_18 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 18, %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_19 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 19, %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_20 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 20, %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_21 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 21, %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_22 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 22, %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha384_23 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 12, i32 23, %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcr-sha512\00", [21 x i8] zeroinitializer }, align 32
@pcr_group_attrs_sha512 = internal global { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_0, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_1, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_2, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_3, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_4, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_5, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_6, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_7, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_8, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_9, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_10, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_11, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_12, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_13, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_14, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_15, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_16, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_17, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_18, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_19, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_20, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_21, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_22, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sha512_23, i64 8), ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_0 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 0, %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_1 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 1, %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_2 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 2, %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_3 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 3, %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_4 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 4, %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_5 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 5, %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_6 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 6, %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_7 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 7, %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_8 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 8, %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_9 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 9, %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_10 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 10, %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_11 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 11, %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_12 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 12, %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_13 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 13, %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_14 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 14, %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_15 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 15, %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_16 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 16, %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_17 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 17, %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_18 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 18, %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_19 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 19, %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_20 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 20, %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_21 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 21, %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_22 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 22, %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sha512_23 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 13, i32 23, %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcr-sm3\00", [24 x i8] zeroinitializer }, align 32
@pcr_group_attrs_sm3 = internal global { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_0, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_1, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_2, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_3, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_4, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_5, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_6, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_7, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_8, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_9, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_10, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_11, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_12, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_13, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_14, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_15, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_16, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_17, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_18, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_19, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_20, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_21, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_22, i64 8), ptr getelementptr (i8, ptr @dev_attr_pcr_sm3_23, i64 8), ptr null], [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_0 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 0, %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_1 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 1, %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_2 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 2, %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_3 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 3, %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_4 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 4, %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_5 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 5, %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_6 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 6, %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_7 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 7, %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_8 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 8, %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_9 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 9, %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_10 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 10, %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_11 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 11, %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_12 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 12, %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_13 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 13, %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_14 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 14, %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_15 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 15, %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_16 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 16, %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_17 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 17, %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_18 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 18, %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_19 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 19, %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_20 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 20, %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_21 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 21, %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_22 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 22, %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@dev_attr_pcr_sm3_23 = internal global { %struct.tpm_pcr_attr, [60 x i8] } { %struct.tpm_pcr_attr { i32 18, i32 23, %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pcr_value_show, ptr null } }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 4, i64 11, i64 12, i64 13, i64 18]
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 481, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"tpm2_dev_group\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 336, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant [15 x i8] c"tpm1_dev_group\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 332, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant [15 x i8] c"pcr_group_sha1\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"pcr_group_sha256\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"pcr_group_sha384\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"pcr_group_sha512\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [14 x i8] c"pcr_group_sm3\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 516, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [15 x i8] c"tpm2_dev_attrs\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 327, i32 26 }
@___asan_gen_.112 = private unnamed_addr constant [27 x i8] c"dev_attr_tpm_version_major\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 310, i32 8 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 307, i32 22 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 308, i32 12 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 308, i32 18 }
@___asan_gen_.127 = private unnamed_addr constant [15 x i8] c"tpm1_dev_attrs\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 312, i32 26 }
@___asan_gen_.130 = private unnamed_addr constant [15 x i8] c"dev_attr_pubek\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [14 x i8] c"dev_attr_pcrs\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"dev_attr_enabled\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [16 x i8] c"dev_attr_active\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [15 x i8] c"dev_attr_owned\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [26 x i8] c"dev_attr_temp_deactivated\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [14 x i8] c"dev_attr_caps\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [16 x i8] c"dev_attr_cancel\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [19 x i8] c"dev_attr_durations\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [18 x i8] c"dev_attr_timeouts\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 80, i32 8 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 53, i32 9 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 59, i32 7 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 72, i32 23 }
@___asan_gen_.176 = private unnamed_addr constant [23 x i8] c"../include/linux/tpm.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 376, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 115, i32 8 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 95, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 107, i32 23 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 109, i32 24 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 137, i32 8 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 128, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 132, i32 20 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 159, i32 8 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 150, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 181, i32 8 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 172, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 203, i32 8 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 194, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 254, i32 8 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 218, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 222, i32 22 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 227, i32 5 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 235, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 244, i32 10 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 268, i32 8 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 285, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 278, i32 22 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 283, i32 12 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 283, i32 25 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 300, i32 8 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 292, i32 22 }
@___asan_gen_.259 = private unnamed_addr constant [21 x i8] c"pcr_group_attrs_sha1\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sha1_0\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sha1_1\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sha1_2\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sha1_3\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sha1_4\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sha1_5\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sha1_6\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sha1_7\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sha1_8\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sha1_9\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [21 x i8] c"dev_attr_pcr_sha1_10\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [21 x i8] c"dev_attr_pcr_sha1_11\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [21 x i8] c"dev_attr_pcr_sha1_12\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [21 x i8] c"dev_attr_pcr_sha1_13\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [21 x i8] c"dev_attr_pcr_sha1_14\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [21 x i8] c"dev_attr_pcr_sha1_15\00", align 1
@___asan_gen_.310 = private unnamed_addr constant [21 x i8] c"dev_attr_pcr_sha1_16\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [21 x i8] c"dev_attr_pcr_sha1_17\00", align 1
@___asan_gen_.316 = private unnamed_addr constant [21 x i8] c"dev_attr_pcr_sha1_18\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [21 x i8] c"dev_attr_pcr_sha1_19\00", align 1
@___asan_gen_.322 = private unnamed_addr constant [21 x i8] c"dev_attr_pcr_sha1_20\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [21 x i8] c"dev_attr_pcr_sha1_21\00", align 1
@___asan_gen_.328 = private unnamed_addr constant [21 x i8] c"dev_attr_pcr_sha1_22\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [21 x i8] c"dev_attr_pcr_sha1_23\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 372, i32 23 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 470, i32 1 }
@___asan_gen_.406 = private unnamed_addr constant [23 x i8] c"pcr_group_attrs_sha256\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha256_0\00", align 1
@___asan_gen_.412 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha256_1\00", align 1
@___asan_gen_.415 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha256_2\00", align 1
@___asan_gen_.418 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha256_3\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha256_4\00", align 1
@___asan_gen_.424 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha256_5\00", align 1
@___asan_gen_.427 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha256_6\00", align 1
@___asan_gen_.430 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha256_7\00", align 1
@___asan_gen_.433 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha256_8\00", align 1
@___asan_gen_.436 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha256_9\00", align 1
@___asan_gen_.439 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha256_10\00", align 1
@___asan_gen_.442 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha256_11\00", align 1
@___asan_gen_.445 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha256_12\00", align 1
@___asan_gen_.448 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha256_13\00", align 1
@___asan_gen_.451 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha256_14\00", align 1
@___asan_gen_.454 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha256_15\00", align 1
@___asan_gen_.457 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha256_16\00", align 1
@___asan_gen_.460 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha256_17\00", align 1
@___asan_gen_.463 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha256_18\00", align 1
@___asan_gen_.466 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha256_19\00", align 1
@___asan_gen_.469 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha256_20\00", align 1
@___asan_gen_.472 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha256_21\00", align 1
@___asan_gen_.475 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha256_22\00", align 1
@___asan_gen_.478 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha256_23\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 471, i32 1 }
@___asan_gen_.484 = private unnamed_addr constant [23 x i8] c"pcr_group_attrs_sha384\00", align 1
@___asan_gen_.487 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha384_0\00", align 1
@___asan_gen_.490 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha384_1\00", align 1
@___asan_gen_.493 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha384_2\00", align 1
@___asan_gen_.496 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha384_3\00", align 1
@___asan_gen_.499 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha384_4\00", align 1
@___asan_gen_.502 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha384_5\00", align 1
@___asan_gen_.505 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha384_6\00", align 1
@___asan_gen_.508 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha384_7\00", align 1
@___asan_gen_.511 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha384_8\00", align 1
@___asan_gen_.514 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha384_9\00", align 1
@___asan_gen_.517 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha384_10\00", align 1
@___asan_gen_.520 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha384_11\00", align 1
@___asan_gen_.523 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha384_12\00", align 1
@___asan_gen_.526 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha384_13\00", align 1
@___asan_gen_.529 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha384_14\00", align 1
@___asan_gen_.532 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha384_15\00", align 1
@___asan_gen_.535 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha384_16\00", align 1
@___asan_gen_.538 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha384_17\00", align 1
@___asan_gen_.541 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha384_18\00", align 1
@___asan_gen_.544 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha384_19\00", align 1
@___asan_gen_.547 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha384_20\00", align 1
@___asan_gen_.550 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha384_21\00", align 1
@___asan_gen_.553 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha384_22\00", align 1
@___asan_gen_.556 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha384_23\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 472, i32 1 }
@___asan_gen_.562 = private unnamed_addr constant [23 x i8] c"pcr_group_attrs_sha512\00", align 1
@___asan_gen_.565 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha512_0\00", align 1
@___asan_gen_.568 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha512_1\00", align 1
@___asan_gen_.571 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha512_2\00", align 1
@___asan_gen_.574 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha512_3\00", align 1
@___asan_gen_.577 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha512_4\00", align 1
@___asan_gen_.580 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha512_5\00", align 1
@___asan_gen_.583 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha512_6\00", align 1
@___asan_gen_.586 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha512_7\00", align 1
@___asan_gen_.589 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha512_8\00", align 1
@___asan_gen_.592 = private unnamed_addr constant [22 x i8] c"dev_attr_pcr_sha512_9\00", align 1
@___asan_gen_.595 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha512_10\00", align 1
@___asan_gen_.598 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha512_11\00", align 1
@___asan_gen_.601 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha512_12\00", align 1
@___asan_gen_.604 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha512_13\00", align 1
@___asan_gen_.607 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha512_14\00", align 1
@___asan_gen_.610 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha512_15\00", align 1
@___asan_gen_.613 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha512_16\00", align 1
@___asan_gen_.616 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha512_17\00", align 1
@___asan_gen_.619 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha512_18\00", align 1
@___asan_gen_.622 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha512_19\00", align 1
@___asan_gen_.625 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha512_20\00", align 1
@___asan_gen_.628 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha512_21\00", align 1
@___asan_gen_.631 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha512_22\00", align 1
@___asan_gen_.634 = private unnamed_addr constant [23 x i8] c"dev_attr_pcr_sha512_23\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 473, i32 1 }
@___asan_gen_.637 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.640 = private unnamed_addr constant [20 x i8] c"pcr_group_attrs_sm3\00", align 1
@___asan_gen_.643 = private unnamed_addr constant [19 x i8] c"dev_attr_pcr_sm3_0\00", align 1
@___asan_gen_.646 = private unnamed_addr constant [19 x i8] c"dev_attr_pcr_sm3_1\00", align 1
@___asan_gen_.649 = private unnamed_addr constant [19 x i8] c"dev_attr_pcr_sm3_2\00", align 1
@___asan_gen_.652 = private unnamed_addr constant [19 x i8] c"dev_attr_pcr_sm3_3\00", align 1
@___asan_gen_.655 = private unnamed_addr constant [19 x i8] c"dev_attr_pcr_sm3_4\00", align 1
@___asan_gen_.658 = private unnamed_addr constant [19 x i8] c"dev_attr_pcr_sm3_5\00", align 1
@___asan_gen_.661 = private unnamed_addr constant [19 x i8] c"dev_attr_pcr_sm3_6\00", align 1
@___asan_gen_.664 = private unnamed_addr constant [19 x i8] c"dev_attr_pcr_sm3_7\00", align 1
@___asan_gen_.667 = private unnamed_addr constant [19 x i8] c"dev_attr_pcr_sm3_8\00", align 1
@___asan_gen_.670 = private unnamed_addr constant [19 x i8] c"dev_attr_pcr_sm3_9\00", align 1
@___asan_gen_.673 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sm3_10\00", align 1
@___asan_gen_.676 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sm3_11\00", align 1
@___asan_gen_.679 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sm3_12\00", align 1
@___asan_gen_.682 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sm3_13\00", align 1
@___asan_gen_.685 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sm3_14\00", align 1
@___asan_gen_.688 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sm3_15\00", align 1
@___asan_gen_.691 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sm3_16\00", align 1
@___asan_gen_.694 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sm3_17\00", align 1
@___asan_gen_.697 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sm3_18\00", align 1
@___asan_gen_.700 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sm3_19\00", align 1
@___asan_gen_.703 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sm3_20\00", align 1
@___asan_gen_.706 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sm3_21\00", align 1
@___asan_gen_.709 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sm3_22\00", align 1
@___asan_gen_.712 = private unnamed_addr constant [20 x i8] c"dev_attr_pcr_sm3_23\00", align 1
@___asan_gen_.713 = private constant [32 x i8] c"../drivers/char/tpm/tpm-sysfs.c\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.713, i32 474, i32 1 }
@llvm.compiler.used = appending global [216 x ptr] [ptr @tpm_sysfs_add_device._entry, ptr @tpm_sysfs_add_device._entry_ptr, ptr @.str, ptr @tpm2_dev_group, ptr @tpm1_dev_group, ptr @pcr_group_sha1, ptr @pcr_group_sha256, ptr @pcr_group_sha384, ptr @pcr_group_sha512, ptr @pcr_group_sm3, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @tpm2_dev_attrs, ptr @dev_attr_tpm_version_major, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @tpm1_dev_attrs, ptr @dev_attr_pubek, ptr @dev_attr_pcrs, ptr @dev_attr_enabled, ptr @dev_attr_active, ptr @dev_attr_owned, ptr @dev_attr_temp_deactivated, ptr @dev_attr_caps, ptr @dev_attr_cancel, ptr @dev_attr_durations, ptr @dev_attr_timeouts, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @pcr_group_attrs_sha1, ptr @dev_attr_pcr_sha1_0, ptr @dev_attr_pcr_sha1_1, ptr @dev_attr_pcr_sha1_2, ptr @dev_attr_pcr_sha1_3, ptr @dev_attr_pcr_sha1_4, ptr @dev_attr_pcr_sha1_5, ptr @dev_attr_pcr_sha1_6, ptr @dev_attr_pcr_sha1_7, ptr @dev_attr_pcr_sha1_8, ptr @dev_attr_pcr_sha1_9, ptr @dev_attr_pcr_sha1_10, ptr @dev_attr_pcr_sha1_11, ptr @dev_attr_pcr_sha1_12, ptr @dev_attr_pcr_sha1_13, ptr @dev_attr_pcr_sha1_14, ptr @dev_attr_pcr_sha1_15, ptr @dev_attr_pcr_sha1_16, ptr @dev_attr_pcr_sha1_17, ptr @dev_attr_pcr_sha1_18, ptr @dev_attr_pcr_sha1_19, ptr @dev_attr_pcr_sha1_20, ptr @dev_attr_pcr_sha1_21, ptr @dev_attr_pcr_sha1_22, ptr @dev_attr_pcr_sha1_23, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @pcr_group_attrs_sha256, ptr @dev_attr_pcr_sha256_0, ptr @dev_attr_pcr_sha256_1, ptr @dev_attr_pcr_sha256_2, ptr @dev_attr_pcr_sha256_3, ptr @dev_attr_pcr_sha256_4, ptr @dev_attr_pcr_sha256_5, ptr @dev_attr_pcr_sha256_6, ptr @dev_attr_pcr_sha256_7, ptr @dev_attr_pcr_sha256_8, ptr @dev_attr_pcr_sha256_9, ptr @dev_attr_pcr_sha256_10, ptr @dev_attr_pcr_sha256_11, ptr @dev_attr_pcr_sha256_12, ptr @dev_attr_pcr_sha256_13, ptr @dev_attr_pcr_sha256_14, ptr @dev_attr_pcr_sha256_15, ptr @dev_attr_pcr_sha256_16, ptr @dev_attr_pcr_sha256_17, ptr @dev_attr_pcr_sha256_18, ptr @dev_attr_pcr_sha256_19, ptr @dev_attr_pcr_sha256_20, ptr @dev_attr_pcr_sha256_21, ptr @dev_attr_pcr_sha256_22, ptr @dev_attr_pcr_sha256_23, ptr @.str.67, ptr @pcr_group_attrs_sha384, ptr @dev_attr_pcr_sha384_0, ptr @dev_attr_pcr_sha384_1, ptr @dev_attr_pcr_sha384_2, ptr @dev_attr_pcr_sha384_3, ptr @dev_attr_pcr_sha384_4, ptr @dev_attr_pcr_sha384_5, ptr @dev_attr_pcr_sha384_6, ptr @dev_attr_pcr_sha384_7, ptr @dev_attr_pcr_sha384_8, ptr @dev_attr_pcr_sha384_9, ptr @dev_attr_pcr_sha384_10, ptr @dev_attr_pcr_sha384_11, ptr @dev_attr_pcr_sha384_12, ptr @dev_attr_pcr_sha384_13, ptr @dev_attr_pcr_sha384_14, ptr @dev_attr_pcr_sha384_15, ptr @dev_attr_pcr_sha384_16, ptr @dev_attr_pcr_sha384_17, ptr @dev_attr_pcr_sha384_18, ptr @dev_attr_pcr_sha384_19, ptr @dev_attr_pcr_sha384_20, ptr @dev_attr_pcr_sha384_21, ptr @dev_attr_pcr_sha384_22, ptr @dev_attr_pcr_sha384_23, ptr @.str.68, ptr @pcr_group_attrs_sha512, ptr @dev_attr_pcr_sha512_0, ptr @dev_attr_pcr_sha512_1, ptr @dev_attr_pcr_sha512_2, ptr @dev_attr_pcr_sha512_3, ptr @dev_attr_pcr_sha512_4, ptr @dev_attr_pcr_sha512_5, ptr @dev_attr_pcr_sha512_6, ptr @dev_attr_pcr_sha512_7, ptr @dev_attr_pcr_sha512_8, ptr @dev_attr_pcr_sha512_9, ptr @dev_attr_pcr_sha512_10, ptr @dev_attr_pcr_sha512_11, ptr @dev_attr_pcr_sha512_12, ptr @dev_attr_pcr_sha512_13, ptr @dev_attr_pcr_sha512_14, ptr @dev_attr_pcr_sha512_15, ptr @dev_attr_pcr_sha512_16, ptr @dev_attr_pcr_sha512_17, ptr @dev_attr_pcr_sha512_18, ptr @dev_attr_pcr_sha512_19, ptr @dev_attr_pcr_sha512_20, ptr @dev_attr_pcr_sha512_21, ptr @dev_attr_pcr_sha512_22, ptr @dev_attr_pcr_sha512_23, ptr @.str.69, ptr @pcr_group_attrs_sm3, ptr @dev_attr_pcr_sm3_0, ptr @dev_attr_pcr_sm3_1, ptr @dev_attr_pcr_sm3_2, ptr @dev_attr_pcr_sm3_3, ptr @dev_attr_pcr_sm3_4, ptr @dev_attr_pcr_sm3_5, ptr @dev_attr_pcr_sm3_6, ptr @dev_attr_pcr_sm3_7, ptr @dev_attr_pcr_sm3_8, ptr @dev_attr_pcr_sm3_9, ptr @dev_attr_pcr_sm3_10, ptr @dev_attr_pcr_sm3_11, ptr @dev_attr_pcr_sm3_12, ptr @dev_attr_pcr_sm3_13, ptr @dev_attr_pcr_sm3_14, ptr @dev_attr_pcr_sm3_15, ptr @dev_attr_pcr_sm3_16, ptr @dev_attr_pcr_sm3_17, ptr @dev_attr_pcr_sm3_18, ptr @dev_attr_pcr_sm3_19, ptr @dev_attr_pcr_sm3_20, ptr @dev_attr_pcr_sm3_21, ptr @dev_attr_pcr_sm3_22, ptr @dev_attr_pcr_sm3_23], section "llvm.metadata"
@0 = internal global [215 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm2_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm1_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcr_group_sha1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcr_group_sha256 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcr_group_sha384 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcr_group_sha512 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcr_group_sm3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_sysfs_add_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm2_dev_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tpm_version_major to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm1_dev_attrs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pubek to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enabled to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_owned to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp_deactivated to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_caps to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cancel to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_durations to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_timeouts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcr_group_attrs_sha1 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_0 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha1_23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcr_group_attrs_sha256 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_0 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha256_23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcr_group_attrs_sha384 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_0 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha384_23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcr_group_attrs_sha512 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_0 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sha512_23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcr_group_attrs_sm3 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_0 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pcr_sm3_23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tpm_sysfs_add_device(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %groups_cnt = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 24
  %0 = ptrtoint ptr %groups_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %groups_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !274

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 481, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %flags.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 9
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  %4 = ptrtoint ptr %groups_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %groups_cnt, align 4
  %inc26 = add i32 %5, 1
  store i32 %inc26, ptr %groups_cnt, align 4
  %arrayidx27 = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 23, i32 %5
  %tpm1_dev_group.tpm2_dev_group = select i1 %tobool21.not, ptr @tpm1_dev_group, ptr @tpm2_dev_group
  %6 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tpm1_dev_group.tpm2_dev_group, ptr %arrayidx27, align 4
  %nr_allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 25
  %7 = ptrtoint ptr %nr_allocated_banks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_allocated_banks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp29122.not = icmp eq i32 %8, 0
  br i1 %cmp29122.not, label %if.end20.for.end_crit_edge, label %for.body.lr.ph

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end20
  %allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0123 = phi i32 [ 0, %for.body.lr.ph ], [ %inc62, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %allocated_banks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %allocated_banks, align 4
  %arrayidx30 = getelementptr %struct.tpm_bank_info, ptr %10, i32 %i.0123
  %11 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx30, align 2
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i16 %12, label %do.end57 [
    i16 4, label %sw.bb
    i16 11, label %sw.bb35
    i16 12, label %sw.bb40
    i16 13, label %sw.bb45
    i16 18, label %sw.bb50
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %groups_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %groups_cnt, align 4
  %inc33 = add i32 %15, 1
  store i32 %inc33, ptr %groups_cnt, align 4
  %arrayidx34 = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 23, i32 %15
  %16 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @pcr_group_sha1, ptr %arrayidx34, align 4
  br label %for.inc

sw.bb35:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %groups_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %groups_cnt, align 4
  %inc38 = add i32 %18, 1
  store i32 %inc38, ptr %groups_cnt, align 4
  %arrayidx39 = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 23, i32 %18
  %19 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @pcr_group_sha256, ptr %arrayidx39, align 4
  br label %for.inc

sw.bb40:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %groups_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %groups_cnt, align 4
  %inc43 = add i32 %21, 1
  store i32 %inc43, ptr %groups_cnt, align 4
  %arrayidx44 = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 23, i32 %21
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @pcr_group_sha384, ptr %arrayidx44, align 4
  br label %for.inc

sw.bb45:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %groups_cnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %groups_cnt, align 4
  %inc48 = add i32 %24, 1
  store i32 %inc48, ptr %groups_cnt, align 4
  %arrayidx49 = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 23, i32 %24
  %25 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @pcr_group_sha512, ptr %arrayidx49, align 4
  br label %for.inc

sw.bb50:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %groups_cnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %groups_cnt, align 4
  %inc53 = add i32 %27, 1
  store i32 %inc53, ptr %groups_cnt, align 4
  %arrayidx54 = getelementptr %struct.tpm_chip, ptr %chip, i32 0, i32 23, i32 %27
  %28 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @pcr_group_sm3, ptr %arrayidx54, align 4
  br label %for.inc

do.end57:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.1, i32 noundef %conv) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end57, %sw.bb50, %sw.bb45, %sw.bb40, %sw.bb35, %sw.bb
  %inc62 = add nuw i32 %i.0123, 1
  %29 = ptrtoint ptr %nr_allocated_banks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_allocated_banks, align 8
  %cmp29 = icmp ult i32 %inc62, %30
  br i1 %cmp29, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end20.for.end_crit_edge
  %31 = ptrtoint ptr %groups_cnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %groups_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %32)
  %cmp65 = icmp ugt i32 %32, 6
  br i1 %cmp65, label %do.end82, label %for.end.cleanup_crit_edge, !prof !275

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end82:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 528, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end82, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_version_major_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.tpm_chip, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.8, ptr @.str.7
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pubek_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %tpm_buf = alloca %struct.tpm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tpm_buf) #6
  %0 = ptrtoint ptr %tpm_buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tpm_buf, align 4, !annotation !276
  %1 = getelementptr inbounds %struct.tpm_buf, ptr %tpm_buf, i32 0, i32 1
  %call = tail call i32 @tpm_try_get_ops(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #6
  %2 = inttoptr i32 %call.i to ptr
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.out_ops_crit_edge, label %if.end4

if.end.out_ops_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_ops

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %tpm_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tpm_buf, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 193, ptr %2, align 1
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 10, ptr %length.i.i, align 1
  %7 = getelementptr inbounds %struct.tpm_header, ptr %2, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 124, ptr %7, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %length.i.i38 = getelementptr inbounds %struct.tpm_header, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %length.i.i38 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %length.i.i38, align 1
  %13 = load i32, ptr %tpm_buf, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i39 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i39, label %if.end.i40, label %if.end4.tpm_buf_append.exit_crit_edge

if.end4.tpm_buf_append.exit_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %tpm_buf_append.exit

if.end.i40:                                       ; preds = %if.end4
  %add.i = add i32 %12, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 4096
  br i1 %cmp.i, label %do.end.i, label %if.end20.i

do.end.i:                                         ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.14) #6
  %14 = ptrtoint ptr %tpm_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tpm_buf, align 4
  %or.i = or i32 %15, 1
  store i32 %or.i, ptr %tpm_buf, align 4
  br label %tpm_buf_append.exit

if.end20.i:                                       ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr i8, ptr %10, i32 %12
  %16 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 20)
  %17 = ptrtoint ptr %length.i.i38 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %add.i, ptr %length.i.i38, align 1
  br label %tpm_buf_append.exit

tpm_buf_append.exit:                              ; preds = %if.end20.i, %do.end.i, %if.end4.tpm_buf_append.exit_crit_edge
  %call5 = call i32 @tpm_transmit_cmd(ptr noundef %dev, ptr noundef nonnull %tpm_buf, i32 noundef 284, ptr noundef nonnull @.str.10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %tpm_buf_append.exit.out_buf_crit_edge

tpm_buf_append.exit.out_buf_crit_edge:            ; preds = %tpm_buf_append.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_buf

if.end8:                                          ; preds = %tpm_buf_append.exit
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr i8, ptr %19, i32 10
  %encscheme = getelementptr i8, ptr %19, i32 14
  %sigscheme = getelementptr i8, ptr %19, i32 16
  %parameters = getelementptr i8, ptr %19, i32 22
  %keysize = getelementptr i8, ptr %19, i32 34
  %20 = ptrtoint ptr %keysize to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %keysize, align 1
  %call13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, ptr noundef %arrayidx, ptr noundef %encscheme, ptr noundef %sigscheme, ptr noundef %parameters, i32 noundef %21)
  %add.ptr14 = getelementptr i8, ptr %buf, i32 %call13
  %modulus = getelementptr i8, ptr %19, i32 38
  %call16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr14, ptr noundef nonnull @.str.12, ptr noundef %modulus)
  %add.ptr17 = getelementptr i8, ptr %add.ptr14, i32 %call16
  %arrayidx15.1 = getelementptr i8, ptr %19, i32 54
  %call16.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17, ptr noundef nonnull @.str.12, ptr noundef %arrayidx15.1)
  %add.ptr17.1 = getelementptr i8, ptr %add.ptr17, i32 %call16.1
  %arrayidx15.2 = getelementptr i8, ptr %19, i32 70
  %call16.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17.1, ptr noundef nonnull @.str.12, ptr noundef %arrayidx15.2)
  %add.ptr17.2 = getelementptr i8, ptr %add.ptr17.1, i32 %call16.2
  %arrayidx15.3 = getelementptr i8, ptr %19, i32 86
  %call16.3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17.2, ptr noundef nonnull @.str.12, ptr noundef %arrayidx15.3)
  %add.ptr17.3 = getelementptr i8, ptr %add.ptr17.2, i32 %call16.3
  %arrayidx15.4 = getelementptr i8, ptr %19, i32 102
  %call16.4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17.3, ptr noundef nonnull @.str.12, ptr noundef %arrayidx15.4)
  %add.ptr17.4 = getelementptr i8, ptr %add.ptr17.3, i32 %call16.4
  %arrayidx15.5 = getelementptr i8, ptr %19, i32 118
  %call16.5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17.4, ptr noundef nonnull @.str.12, ptr noundef %arrayidx15.5)
  %add.ptr17.5 = getelementptr i8, ptr %add.ptr17.4, i32 %call16.5
  %arrayidx15.6 = getelementptr i8, ptr %19, i32 134
  %call16.6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17.5, ptr noundef nonnull @.str.12, ptr noundef %arrayidx15.6)
  %add.ptr17.6 = getelementptr i8, ptr %add.ptr17.5, i32 %call16.6
  %arrayidx15.7 = getelementptr i8, ptr %19, i32 150
  %call16.7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17.6, ptr noundef nonnull @.str.12, ptr noundef %arrayidx15.7)
  %add.ptr17.7 = getelementptr i8, ptr %add.ptr17.6, i32 %call16.7
  %arrayidx15.8 = getelementptr i8, ptr %19, i32 166
  %call16.8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17.7, ptr noundef nonnull @.str.12, ptr noundef %arrayidx15.8)
  %add.ptr17.8 = getelementptr i8, ptr %add.ptr17.7, i32 %call16.8
  %arrayidx15.9 = getelementptr i8, ptr %19, i32 182
  %call16.9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17.8, ptr noundef nonnull @.str.12, ptr noundef %arrayidx15.9)
  %add.ptr17.9 = getelementptr i8, ptr %add.ptr17.8, i32 %call16.9
  %arrayidx15.10 = getelementptr i8, ptr %19, i32 198
  %call16.10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17.9, ptr noundef nonnull @.str.12, ptr noundef %arrayidx15.10)
  %add.ptr17.10 = getelementptr i8, ptr %add.ptr17.9, i32 %call16.10
  %arrayidx15.11 = getelementptr i8, ptr %19, i32 214
  %call16.11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17.10, ptr noundef nonnull @.str.12, ptr noundef %arrayidx15.11)
  %add.ptr17.11 = getelementptr i8, ptr %add.ptr17.10, i32 %call16.11
  %arrayidx15.12 = getelementptr i8, ptr %19, i32 230
  %call16.12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17.11, ptr noundef nonnull @.str.12, ptr noundef %arrayidx15.12)
  %add.ptr17.12 = getelementptr i8, ptr %add.ptr17.11, i32 %call16.12
  %arrayidx15.13 = getelementptr i8, ptr %19, i32 246
  %call16.13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17.12, ptr noundef nonnull @.str.12, ptr noundef %arrayidx15.13)
  %add.ptr17.13 = getelementptr i8, ptr %add.ptr17.12, i32 %call16.13
  %arrayidx15.14 = getelementptr i8, ptr %19, i32 262
  %call16.14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17.13, ptr noundef nonnull @.str.12, ptr noundef %arrayidx15.14)
  %add.ptr17.14 = getelementptr i8, ptr %add.ptr17.13, i32 %call16.14
  %arrayidx15.15 = getelementptr i8, ptr %19, i32 278
  %call16.15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr17.14, ptr noundef nonnull @.str.12, ptr noundef %arrayidx15.15)
  %add.ptr17.15 = getelementptr i8, ptr %add.ptr17.14, i32 %call16.15
  br label %out_buf

out_buf:                                          ; preds = %if.end8, %tpm_buf_append.exit.out_buf_crit_edge
  %str.1 = phi ptr [ %buf, %tpm_buf_append.exit.out_buf_crit_edge ], [ %add.ptr17.15, %if.end8 ]
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @free_pages(i32 noundef %24, i32 noundef 0) #6
  br label %out_ops

out_ops:                                          ; preds = %out_buf, %if.end.out_ops_crit_edge
  %str.2 = phi ptr [ %str.1, %out_buf ], [ %buf, %if.end.out_ops_crit_edge ]
  call void @tpm_put_ops(ptr noundef %dev) #6
  %sub.ptr.lhs.cast = ptrtoint ptr %str.2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %out_ops, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub, %out_ops ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tpm_buf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_try_get_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_transmit_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_put_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcrs_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %cap = alloca %union.cap_t, align 4
  %digest = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cap) #6
  %0 = call ptr @memset(ptr %cap, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %digest) #6
  %1 = getelementptr inbounds [20 x i8], ptr %digest, i32 0, i32 1
  %2 = getelementptr inbounds [20 x i8], ptr %digest, i32 0, i32 2
  %3 = getelementptr inbounds [20 x i8], ptr %digest, i32 0, i32 3
  %4 = getelementptr inbounds [20 x i8], ptr %digest, i32 0, i32 4
  %5 = getelementptr inbounds [20 x i8], ptr %digest, i32 0, i32 5
  %6 = getelementptr inbounds [20 x i8], ptr %digest, i32 0, i32 6
  %7 = getelementptr inbounds [20 x i8], ptr %digest, i32 0, i32 7
  %8 = getelementptr inbounds [20 x i8], ptr %digest, i32 0, i32 8
  %9 = getelementptr inbounds [20 x i8], ptr %digest, i32 0, i32 9
  %10 = getelementptr inbounds [20 x i8], ptr %digest, i32 0, i32 10
  %11 = getelementptr inbounds [20 x i8], ptr %digest, i32 0, i32 11
  %12 = getelementptr inbounds [20 x i8], ptr %digest, i32 0, i32 12
  %13 = getelementptr inbounds [20 x i8], ptr %digest, i32 0, i32 13
  %14 = getelementptr inbounds [20 x i8], ptr %digest, i32 0, i32 14
  %15 = getelementptr inbounds [20 x i8], ptr %digest, i32 0, i32 15
  %16 = getelementptr inbounds [20 x i8], ptr %digest, i32 0, i32 16
  %17 = getelementptr inbounds [20 x i8], ptr %digest, i32 0, i32 17
  %18 = getelementptr inbounds [20 x i8], ptr %digest, i32 0, i32 18
  %19 = getelementptr inbounds [20 x i8], ptr %digest, i32 0, i32 19
  %20 = call ptr @memset(ptr %digest, i32 255, i32 20)
  %call = tail call i32 @tpm_try_get_ops(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @tpm1_getcap(ptr noundef %dev, i32 noundef 257, ptr noundef nonnull %cap, ptr noundef nonnull @.str.16, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @tpm_put_ops(ptr noundef %dev) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %21 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp46.not = icmp eq i32 %22, 0
  br i1 %cmp46.not, label %if.end4.for.end20_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.for.end20_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end20

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %if.end4.for.body_crit_edge
  %i.048 = phi i32 [ %inc19, %if.end8.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %str.047 = phi ptr [ %add.ptr17, %if.end8.for.body_crit_edge ], [ %buf, %if.end4.for.body_crit_edge ]
  %call5 = call i32 @tpm1_pcr_read(ptr noundef %dev, i32 noundef %i.048, ptr noundef nonnull %digest) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %for.body.for.end20_crit_edge

for.body.for.end20_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end20

if.end8:                                          ; preds = %for.body
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %str.047, ptr noundef nonnull @.str.17, i32 noundef %i.048)
  %add.ptr10 = getelementptr i8, ptr %str.047, i32 %call9
  %23 = ptrtoint ptr %digest to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %digest, align 1
  %conv = zext i8 %24 to i32
  %call14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr10, ptr noundef nonnull @.str.18, i32 noundef %conv)
  %add.ptr15 = getelementptr i8, ptr %add.ptr10, i32 %call14
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %1, align 1
  %conv.1 = zext i8 %26 to i32
  %call14.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15, ptr noundef nonnull @.str.18, i32 noundef %conv.1)
  %add.ptr15.1 = getelementptr i8, ptr %add.ptr15, i32 %call14.1
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %2, align 1
  %conv.2 = zext i8 %28 to i32
  %call14.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15.1, ptr noundef nonnull @.str.18, i32 noundef %conv.2)
  %add.ptr15.2 = getelementptr i8, ptr %add.ptr15.1, i32 %call14.2
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %3, align 1
  %conv.3 = zext i8 %30 to i32
  %call14.3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15.2, ptr noundef nonnull @.str.18, i32 noundef %conv.3)
  %add.ptr15.3 = getelementptr i8, ptr %add.ptr15.2, i32 %call14.3
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %4, align 1
  %conv.4 = zext i8 %32 to i32
  %call14.4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15.3, ptr noundef nonnull @.str.18, i32 noundef %conv.4)
  %add.ptr15.4 = getelementptr i8, ptr %add.ptr15.3, i32 %call14.4
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %5, align 1
  %conv.5 = zext i8 %34 to i32
  %call14.5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15.4, ptr noundef nonnull @.str.18, i32 noundef %conv.5)
  %add.ptr15.5 = getelementptr i8, ptr %add.ptr15.4, i32 %call14.5
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %6, align 1
  %conv.6 = zext i8 %36 to i32
  %call14.6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15.5, ptr noundef nonnull @.str.18, i32 noundef %conv.6)
  %add.ptr15.6 = getelementptr i8, ptr %add.ptr15.5, i32 %call14.6
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %7, align 1
  %conv.7 = zext i8 %38 to i32
  %call14.7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15.6, ptr noundef nonnull @.str.18, i32 noundef %conv.7)
  %add.ptr15.7 = getelementptr i8, ptr %add.ptr15.6, i32 %call14.7
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %8, align 1
  %conv.8 = zext i8 %40 to i32
  %call14.8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15.7, ptr noundef nonnull @.str.18, i32 noundef %conv.8)
  %add.ptr15.8 = getelementptr i8, ptr %add.ptr15.7, i32 %call14.8
  %41 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %9, align 1
  %conv.9 = zext i8 %42 to i32
  %call14.9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15.8, ptr noundef nonnull @.str.18, i32 noundef %conv.9)
  %add.ptr15.9 = getelementptr i8, ptr %add.ptr15.8, i32 %call14.9
  %43 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %10, align 1
  %conv.10 = zext i8 %44 to i32
  %call14.10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15.9, ptr noundef nonnull @.str.18, i32 noundef %conv.10)
  %add.ptr15.10 = getelementptr i8, ptr %add.ptr15.9, i32 %call14.10
  %45 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %11, align 1
  %conv.11 = zext i8 %46 to i32
  %call14.11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15.10, ptr noundef nonnull @.str.18, i32 noundef %conv.11)
  %add.ptr15.11 = getelementptr i8, ptr %add.ptr15.10, i32 %call14.11
  %47 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %12, align 1
  %conv.12 = zext i8 %48 to i32
  %call14.12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15.11, ptr noundef nonnull @.str.18, i32 noundef %conv.12)
  %add.ptr15.12 = getelementptr i8, ptr %add.ptr15.11, i32 %call14.12
  %49 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %13, align 1
  %conv.13 = zext i8 %50 to i32
  %call14.13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15.12, ptr noundef nonnull @.str.18, i32 noundef %conv.13)
  %add.ptr15.13 = getelementptr i8, ptr %add.ptr15.12, i32 %call14.13
  %51 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %14, align 1
  %conv.14 = zext i8 %52 to i32
  %call14.14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15.13, ptr noundef nonnull @.str.18, i32 noundef %conv.14)
  %add.ptr15.14 = getelementptr i8, ptr %add.ptr15.13, i32 %call14.14
  %53 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %15, align 1
  %conv.15 = zext i8 %54 to i32
  %call14.15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15.14, ptr noundef nonnull @.str.18, i32 noundef %conv.15)
  %add.ptr15.15 = getelementptr i8, ptr %add.ptr15.14, i32 %call14.15
  %55 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %16, align 1
  %conv.16 = zext i8 %56 to i32
  %call14.16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15.15, ptr noundef nonnull @.str.18, i32 noundef %conv.16)
  %add.ptr15.16 = getelementptr i8, ptr %add.ptr15.15, i32 %call14.16
  %57 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %17, align 1
  %conv.17 = zext i8 %58 to i32
  %call14.17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15.16, ptr noundef nonnull @.str.18, i32 noundef %conv.17)
  %add.ptr15.17 = getelementptr i8, ptr %add.ptr15.16, i32 %call14.17
  %59 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %18, align 1
  %conv.18 = zext i8 %60 to i32
  %call14.18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15.17, ptr noundef nonnull @.str.18, i32 noundef %conv.18)
  %add.ptr15.18 = getelementptr i8, ptr %add.ptr15.17, i32 %call14.18
  %61 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %19, align 1
  %conv.19 = zext i8 %62 to i32
  %call14.19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr15.18, ptr noundef nonnull @.str.18, i32 noundef %conv.19)
  %add.ptr15.19 = getelementptr i8, ptr %add.ptr15.18, i32 %call14.19
  %63 = ptrtoint ptr %add.ptr15.19 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 2560, ptr %add.ptr15.19, align 1
  %add.ptr17 = getelementptr i8, ptr %add.ptr15.19, i32 1
  %inc19 = add nuw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc19, %22
  br i1 %exitcond.not, label %if.end8.for.end20_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end8.for.end20_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end20

for.end20:                                        ; preds = %if.end8.for.end20_crit_edge, %for.body.for.end20_crit_edge, %if.end4.for.end20_crit_edge
  %str.2 = phi ptr [ %buf, %if.end4.for.end20_crit_edge ], [ %buf, %for.body.for.end20_crit_edge ], [ %add.ptr17, %if.end8.for.end20_crit_edge ]
  call void @tpm_put_ops(ptr noundef %dev) #6
  %sub.ptr.lhs.cast = ptrtoint ptr %str.2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %for.end20, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ %sub.ptr.sub, %for.end20 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %digest) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cap) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm1_getcap(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm1_pcr_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enabled_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %cap = alloca %union.cap_t, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cap) #6
  %0 = call ptr @memset(ptr %cap, i32 255, i32 24)
  %call = tail call i32 @tpm_try_get_ops(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @tpm1_getcap(ptr noundef %dev, i32 noundef 264, ptr noundef nonnull %cap, ptr noundef nonnull @.str.21, i32 noundef 22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_ops_crit_edge

if.end.out_ops_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_ops

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %disable = getelementptr inbounds %struct.permanent_flags_t, ptr %cap, i32 0, i32 1
  %1 = ptrtoint ptr %disable to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %disable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool5.not = icmp eq i8 %2, 0
  %lnot.ext = zext i1 %tobool5.not to i32
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %lnot.ext)
  br label %out_ops

out_ops:                                          ; preds = %if.end4, %if.end.out_ops_crit_edge
  %rc.0 = phi i32 [ 0, %if.end.out_ops_crit_edge ], [ %call6, %if.end4 ]
  call void @tpm_put_ops(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %out_ops, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_ops ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cap) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %cap = alloca %union.cap_t, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cap) #6
  %0 = getelementptr inbounds %struct.timeout_t, ptr %cap, i32 0, i32 1
  %1 = call ptr @memset(ptr %cap, i32 255, i32 24)
  %call = tail call i32 @tpm_try_get_ops(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @tpm1_getcap(ptr noundef %dev, i32 noundef 264, ptr noundef nonnull %cap, ptr noundef nonnull @.str.24, i32 noundef 22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_ops_crit_edge

if.end.out_ops_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_ops

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  %lnot.ext = zext i1 %tobool5.not to i32
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %lnot.ext)
  br label %out_ops

out_ops:                                          ; preds = %if.end4, %if.end.out_ops_crit_edge
  %rc.0 = phi i32 [ 0, %if.end.out_ops_crit_edge ], [ %call6, %if.end4 ]
  call void @tpm_put_ops(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %out_ops, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_ops ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cap) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owned_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %cap = alloca %union.cap_t, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cap) #6
  %0 = call ptr @memset(ptr %cap, i32 255, i32 24)
  %call = tail call i32 @tpm_try_get_ops(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @tpm1_getcap(ptr noundef %dev, i32 noundef 273, ptr noundef nonnull %cap, ptr noundef nonnull @.str.26, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_ops_crit_edge

if.end.out_ops_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_ops

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %cap to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cap, align 4
  %conv = zext i8 %2 to i32
  %call8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %conv)
  br label %out_ops

out_ops:                                          ; preds = %if.end7, %if.end.out_ops_crit_edge
  %rc.0 = phi i32 [ 0, %if.end.out_ops_crit_edge ], [ %call8, %if.end7 ]
  call void @tpm_put_ops(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %out_ops, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_ops ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cap) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_deactivated_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %cap = alloca %union.cap_t, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cap) #6
  %0 = call ptr @memset(ptr %cap, i32 255, i32 24)
  %call = tail call i32 @tpm_try_get_ops(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @tpm1_getcap(ptr noundef %dev, i32 noundef 265, ptr noundef nonnull %cap, ptr noundef nonnull @.str.28, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_ops_crit_edge

if.end.out_ops_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_ops

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %deactivated = getelementptr inbounds %struct.stclear_flags_t, ptr %cap, i32 0, i32 1
  %1 = ptrtoint ptr %deactivated to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %deactivated, align 2
  %conv = zext i8 %2 to i32
  %call8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %conv)
  br label %out_ops

out_ops:                                          ; preds = %if.end7, %if.end.out_ops_crit_edge
  %rc.0 = phi i32 [ 0, %if.end.out_ops_crit_edge ], [ %call8, %if.end7 ]
  call void @tpm_put_ops(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %out_ops, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_ops ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cap) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caps_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %cap = alloca %union.cap_t, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cap) #6
  %0 = call ptr @memset(ptr %cap, i32 255, i32 24)
  %call = tail call i32 @tpm_try_get_ops(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @tpm1_getcap(ptr noundef %dev, i32 noundef 259, ptr noundef nonnull %cap, ptr noundef nonnull @.str.30, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_ops_crit_edge

if.end.out_ops_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_ops

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cap, align 4
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %2)
  %add.ptr6 = getelementptr i8, ptr %buf, i32 %call5
  %call7 = call i32 @tpm1_getcap(ptr noundef %dev, i32 noundef 26, ptr noundef nonnull %cap, ptr noundef nonnull @.str.32, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %version10 = getelementptr inbounds %struct.tpm1_version2, ptr %cap, i32 0, i32 1
  br label %out_print

if.end11:                                         ; preds = %if.end4
  %call12 = call i32 @tpm1_getcap(ptr noundef %dev, i32 noundef 6, ptr noundef nonnull %cap, ptr noundef nonnull @.str.33, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.out_print_crit_edge, label %if.end11.out_ops_crit_edge

if.end11.out_ops_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_ops

if.end11.out_print_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_print

out_print:                                        ; preds = %if.end11.out_print_crit_edge, %if.then9
  %version.0 = phi ptr [ %version10, %if.then9 ], [ %cap, %if.end11.out_print_crit_edge ]
  %3 = ptrtoint ptr %version.0 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %version.0, align 1
  %conv = zext i8 %4 to i32
  %minor = getelementptr inbounds %struct.tpm1_version, ptr %version.0, i32 0, i32 1
  %5 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %minor, align 1
  %conv16 = zext i8 %6 to i32
  %rev_major = getelementptr inbounds %struct.tpm1_version, ptr %version.0, i32 0, i32 2
  %7 = ptrtoint ptr %rev_major to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rev_major, align 1
  %conv17 = zext i8 %8 to i32
  %rev_minor = getelementptr inbounds %struct.tpm1_version, ptr %version.0, i32 0, i32 3
  %9 = ptrtoint ptr %rev_minor to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rev_minor, align 1
  %conv18 = zext i8 %10 to i32
  %call19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr6, ptr noundef nonnull @.str.34, i32 noundef %conv, i32 noundef %conv16, i32 noundef %conv17, i32 noundef %conv18)
  %add.ptr20 = getelementptr i8, ptr %add.ptr6, i32 %call19
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr20 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %out_ops

out_ops:                                          ; preds = %out_print, %if.end11.out_ops_crit_edge, %if.end.out_ops_crit_edge
  %rc.0 = phi i32 [ 0, %if.end.out_ops_crit_edge ], [ 0, %if.end11.out_ops_crit_edge ], [ %sub.ptr.sub, %out_print ]
  call void @tpm_put_ops(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %out_ops, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out_ops ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cap) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cancel_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tpm_try_get_ops(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.tpm_chip, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 8
  %cancel = getelementptr inbounds %struct.tpm_class_ops, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %cancel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cancel, align 4
  tail call void %3(ptr noundef %dev) #6
  tail call void @tpm_put_ops(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @durations_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.tpm_chip, ptr %dev, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %duration = getelementptr inbounds %struct.tpm_chip, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %duration to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %duration, align 4
  %call = tail call i32 @jiffies_to_usecs(i32 noundef %3) #6
  %arrayidx4 = getelementptr %struct.tpm_chip, ptr %dev, i32 0, i32 20, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %call5 = tail call i32 @jiffies_to_usecs(i32 noundef %5) #6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call8 = tail call i32 @jiffies_to_usecs(i32 noundef %7) #6
  %duration_adjusted = getelementptr inbounds %struct.tpm_chip, ptr %dev, i32 0, i32 21
  %8 = ptrtoint ptr %duration_adjusted to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %duration_adjusted, align 4, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %cond = select i1 %tobool.not, ptr @.str.39, ptr @.str.38
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %call, i32 noundef %call5, i32 noundef %call8, ptr noundef nonnull %cond)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timeouts_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout_a = getelementptr inbounds %struct.tpm_chip, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %timeout_a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout_a, align 8
  %call = tail call i32 @jiffies_to_usecs(i32 noundef %1) #6
  %timeout_b = getelementptr inbounds %struct.tpm_chip, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %timeout_b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout_b, align 4
  %call1 = tail call i32 @jiffies_to_usecs(i32 noundef %3) #6
  %timeout_c = getelementptr inbounds %struct.tpm_chip, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %timeout_c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout_c, align 8
  %call2 = tail call i32 @jiffies_to_usecs(i32 noundef %5) #6
  %timeout_d = getelementptr inbounds %struct.tpm_chip, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %timeout_d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timeout_d, align 4
  %call3 = tail call i32 @jiffies_to_usecs(i32 noundef %7) #6
  %timeout_adjusted = getelementptr inbounds %struct.tpm_chip, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %timeout_adjusted to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %timeout_adjusted, align 8, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %cond = select i1 %tobool.not, ptr @.str.39, ptr @.str.38
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %call, i32 noundef %call1, i32 noundef %call2, i32 noundef %call3, ptr noundef nonnull %cond)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcr_value_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  %digest = alloca %struct.tpm_digest, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %attr, i32 -8
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %digest) #6
  %0 = getelementptr inbounds i8, ptr %digest, i32 2
  %1 = call ptr @memset(ptr %0, i32 255, i32 64)
  %nr_allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %dev, i32 0, i32 25
  %2 = ptrtoint ptr %nr_allocated_banks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_allocated_banks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp57.not = icmp eq i32 %3, 0
  br i1 %cmp57.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %dev, i32 0, i32 26
  %6 = ptrtoint ptr %allocated_banks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %allocated_banks, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %digest_size.060 = phi i32 [ 0, %for.body.lr.ph ], [ %digest_size.1, %for.inc.for.body_crit_edge ]
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tpm_bank_info, ptr %7, i32 %i.058
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp5 = icmp eq i32 %5, %conv
  br i1 %cmp5, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %digest_size9 = getelementptr %struct.tpm_bank_info, ptr %7, i32 %i.058, i32 1
  %10 = ptrtoint ptr %digest_size9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %digest_size9, align 2
  %conv10 = zext i16 %11 to i32
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %digest_size.1 = phi i32 [ %conv10, %if.then ], [ %digest_size.060, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %digest_size.1)
  %tobool.not = icmp eq i32 %digest_size.1, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end12

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %for.end
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  %conv14 = trunc i32 %13 to i16
  %14 = ptrtoint ptr %digest to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv14, ptr %digest, align 2
  %pcr = getelementptr i8, ptr %attr, i32 -4
  %15 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pcr, align 4
  %call = call i32 @tpm_pcr_read(ptr noundef %dev, i32 noundef %16, ptr noundef nonnull %digest) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %for.cond19.preheader, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond19.preheader:                             ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %digest_size.1)
  %cmp2061 = icmp sgt i32 %digest_size.1, 0
  br i1 %cmp2061, label %for.cond19.preheader.for.body22_crit_edge, label %for.cond19.preheader.for.end30_crit_edge

for.cond19.preheader.for.end30_crit_edge:         ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30

for.cond19.preheader.for.body22_crit_edge:        ; preds = %for.cond19.preheader
  br label %for.body22

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.cond19.preheader.for.body22_crit_edge
  %str.063 = phi ptr [ %add.ptr27, %for.body22.for.body22_crit_edge ], [ %buf, %for.cond19.preheader.for.body22_crit_edge ]
  %i.162 = phi i32 [ %inc29, %for.body22.for.body22_crit_edge ], [ 0, %for.cond19.preheader.for.body22_crit_edge ]
  %arrayidx24 = getelementptr %struct.tpm_digest, ptr %digest, i32 0, i32 1, i32 %i.162
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %18 to i32
  %call26 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %str.063, ptr noundef nonnull @.str.44, i32 noundef %conv25)
  %add.ptr27 = getelementptr i8, ptr %str.063, i32 %call26
  %inc29 = add nuw nsw i32 %i.162, 1
  %exitcond65.not = icmp eq i32 %inc29, %digest_size.1
  br i1 %exitcond65.not, label %for.body22.for.end30_crit_edge, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body22

for.body22.for.end30_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30

for.end30:                                        ; preds = %for.body22.for.end30_crit_edge, %for.cond19.preheader.for.end30_crit_edge
  %str.0.lcssa = phi ptr [ %buf, %for.cond19.preheader.for.end30_crit_edge ], [ %add.ptr27, %for.body22.for.end30_crit_edge ]
  %19 = ptrtoint ptr %str.0.lcssa to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 2560, ptr %str.0.lcssa, align 1
  %add.ptr32 = getelementptr i8, ptr %str.0.lcssa, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr32 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup

cleanup:                                          ; preds = %for.end30, %if.end12.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub, %for.end30 ], [ -22, %for.end.cleanup_crit_edge ], [ %call, %if.end12.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %digest) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_pcr_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 215)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 215)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37, !38, !40, !41, !43, !45, !47, !49, !51, !52, !54, !56, !58, !59, !61, !63, !64, !66, !68, !69, !71, !73, !74, !76, !78, !80, !82, !84, !86, !87, !89, !90, !92, !94, !96, !98, !99, !101, !103, !104, !105, !106, !107, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264}
!llvm.module.flags = !{!265, !266, !267, !268, !269, !270, !271, !272}
!llvm.ident = !{!273}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 481, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 516, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @tpm_sysfs_add_device._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @tpm_sysfs_add_device._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @tpm2_dev_group, !10, !"tpm2_dev_group", i1 false, i1 false}
!10 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 336, i32 37}
!11 = !{ptr @tpm2_dev_attrs, !12, !"tpm2_dev_attrs", i1 false, i1 false}
!12 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 327, i32 26}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 310, i32 8}
!15 = !{ptr @dev_attr_tpm_version_major, !14, !"dev_attr_tpm_version_major", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 307, i32 22}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 308, i32 12}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 308, i32 18}
!22 = !{ptr @tpm1_dev_group, !23, !"tpm1_dev_group", i1 false, i1 false}
!23 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 332, i32 37}
!24 = !{ptr @tpm1_dev_attrs, !25, !"tpm1_dev_attrs", i1 false, i1 false}
!25 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 312, i32 26}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 80, i32 8}
!28 = !{ptr @dev_attr_pubek, !27, !"dev_attr_pubek", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 53, i32 9}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 59, i32 7}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 72, i32 23}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/tpm.h", i32 376, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 115, i32 8}
!40 = !{ptr @dev_attr_pcrs, !39, !"dev_attr_pcrs", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 95, i32 4}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 107, i32 23}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 109, i32 24}
!47 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 110, i32 23}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 137, i32 8}
!51 = !{ptr @dev_attr_enabled, !50, !"dev_attr_enabled", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 128, i32 4}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 132, i32 20}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 159, i32 8}
!58 = !{ptr @dev_attr_active, !57, !"dev_attr_active", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 150, i32 4}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 181, i32 8}
!63 = !{ptr @dev_attr_owned, !62, !"dev_attr_owned", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 172, i32 4}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 203, i32 8}
!68 = !{ptr @dev_attr_temp_deactivated, !67, !"dev_attr_temp_deactivated", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 194, i32 4}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 254, i32 8}
!73 = !{ptr @dev_attr_caps, !72, !"dev_attr_caps", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 218, i32 4}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 222, i32 22}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 227, i32 5}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 235, i32 4}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 244, i32 10}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 268, i32 8}
!86 = !{ptr @dev_attr_cancel, !85, !"dev_attr_cancel", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 285, i32 8}
!89 = !{ptr @dev_attr_durations, !88, !"dev_attr_durations", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 278, i32 22}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 283, i32 12}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 283, i32 25}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 300, i32 8}
!98 = !{ptr @dev_attr_timeouts, !97, !"dev_attr_timeouts", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 292, i32 22}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 470, i32 1}
!103 = !{ptr @pcr_group_sha1, !102, !"pcr_group_sha1", i1 false, i1 false}
!104 = !{ptr @pcr_group_attrs_sha1, !102, !"pcr_group_attrs_sha1", i1 false, i1 false}
!105 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @dev_attr_pcr_sha1_0, !102, !"dev_attr_pcr_sha1_0", i1 false, i1 false}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 372, i32 23}
!109 = !{ptr @dev_attr_pcr_sha1_1, !102, !"dev_attr_pcr_sha1_1", i1 false, i1 false}
!110 = !{ptr @dev_attr_pcr_sha1_2, !102, !"dev_attr_pcr_sha1_2", i1 false, i1 false}
!111 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @dev_attr_pcr_sha1_3, !102, !"dev_attr_pcr_sha1_3", i1 false, i1 false}
!113 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @dev_attr_pcr_sha1_4, !102, !"dev_attr_pcr_sha1_4", i1 false, i1 false}
!115 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @dev_attr_pcr_sha1_5, !102, !"dev_attr_pcr_sha1_5", i1 false, i1 false}
!117 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @dev_attr_pcr_sha1_6, !102, !"dev_attr_pcr_sha1_6", i1 false, i1 false}
!119 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @dev_attr_pcr_sha1_7, !102, !"dev_attr_pcr_sha1_7", i1 false, i1 false}
!121 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @dev_attr_pcr_sha1_8, !102, !"dev_attr_pcr_sha1_8", i1 false, i1 false}
!123 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @dev_attr_pcr_sha1_9, !102, !"dev_attr_pcr_sha1_9", i1 false, i1 false}
!125 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @dev_attr_pcr_sha1_10, !102, !"dev_attr_pcr_sha1_10", i1 false, i1 false}
!127 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @dev_attr_pcr_sha1_11, !102, !"dev_attr_pcr_sha1_11", i1 false, i1 false}
!129 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @dev_attr_pcr_sha1_12, !102, !"dev_attr_pcr_sha1_12", i1 false, i1 false}
!131 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @dev_attr_pcr_sha1_13, !102, !"dev_attr_pcr_sha1_13", i1 false, i1 false}
!133 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @dev_attr_pcr_sha1_14, !102, !"dev_attr_pcr_sha1_14", i1 false, i1 false}
!135 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @dev_attr_pcr_sha1_15, !102, !"dev_attr_pcr_sha1_15", i1 false, i1 false}
!137 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @dev_attr_pcr_sha1_16, !102, !"dev_attr_pcr_sha1_16", i1 false, i1 false}
!139 = !{ptr @.str.59, !102, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @dev_attr_pcr_sha1_17, !102, !"dev_attr_pcr_sha1_17", i1 false, i1 false}
!141 = !{ptr @.str.60, !102, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @dev_attr_pcr_sha1_18, !102, !"dev_attr_pcr_sha1_18", i1 false, i1 false}
!143 = !{ptr @.str.61, !102, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @dev_attr_pcr_sha1_19, !102, !"dev_attr_pcr_sha1_19", i1 false, i1 false}
!145 = !{ptr @.str.62, !102, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @dev_attr_pcr_sha1_20, !102, !"dev_attr_pcr_sha1_20", i1 false, i1 false}
!147 = !{ptr @.str.63, !102, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @dev_attr_pcr_sha1_21, !102, !"dev_attr_pcr_sha1_21", i1 false, i1 false}
!149 = !{ptr @.str.64, !102, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @dev_attr_pcr_sha1_22, !102, !"dev_attr_pcr_sha1_22", i1 false, i1 false}
!151 = !{ptr @.str.65, !102, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @dev_attr_pcr_sha1_23, !102, !"dev_attr_pcr_sha1_23", i1 false, i1 false}
!153 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 471, i32 1}
!155 = !{ptr @pcr_group_sha256, !154, !"pcr_group_sha256", i1 false, i1 false}
!156 = !{ptr @pcr_group_attrs_sha256, !154, !"pcr_group_attrs_sha256", i1 false, i1 false}
!157 = !{ptr @dev_attr_pcr_sha256_0, !154, !"dev_attr_pcr_sha256_0", i1 false, i1 false}
!158 = !{ptr @dev_attr_pcr_sha256_1, !154, !"dev_attr_pcr_sha256_1", i1 false, i1 false}
!159 = !{ptr @dev_attr_pcr_sha256_2, !154, !"dev_attr_pcr_sha256_2", i1 false, i1 false}
!160 = !{ptr @dev_attr_pcr_sha256_3, !154, !"dev_attr_pcr_sha256_3", i1 false, i1 false}
!161 = !{ptr @dev_attr_pcr_sha256_4, !154, !"dev_attr_pcr_sha256_4", i1 false, i1 false}
!162 = !{ptr @dev_attr_pcr_sha256_5, !154, !"dev_attr_pcr_sha256_5", i1 false, i1 false}
!163 = !{ptr @dev_attr_pcr_sha256_6, !154, !"dev_attr_pcr_sha256_6", i1 false, i1 false}
!164 = !{ptr @dev_attr_pcr_sha256_7, !154, !"dev_attr_pcr_sha256_7", i1 false, i1 false}
!165 = !{ptr @dev_attr_pcr_sha256_8, !154, !"dev_attr_pcr_sha256_8", i1 false, i1 false}
!166 = !{ptr @dev_attr_pcr_sha256_9, !154, !"dev_attr_pcr_sha256_9", i1 false, i1 false}
!167 = !{ptr @dev_attr_pcr_sha256_10, !154, !"dev_attr_pcr_sha256_10", i1 false, i1 false}
!168 = !{ptr @dev_attr_pcr_sha256_11, !154, !"dev_attr_pcr_sha256_11", i1 false, i1 false}
!169 = !{ptr @dev_attr_pcr_sha256_12, !154, !"dev_attr_pcr_sha256_12", i1 false, i1 false}
!170 = !{ptr @dev_attr_pcr_sha256_13, !154, !"dev_attr_pcr_sha256_13", i1 false, i1 false}
!171 = !{ptr @dev_attr_pcr_sha256_14, !154, !"dev_attr_pcr_sha256_14", i1 false, i1 false}
!172 = !{ptr @dev_attr_pcr_sha256_15, !154, !"dev_attr_pcr_sha256_15", i1 false, i1 false}
!173 = !{ptr @dev_attr_pcr_sha256_16, !154, !"dev_attr_pcr_sha256_16", i1 false, i1 false}
!174 = !{ptr @dev_attr_pcr_sha256_17, !154, !"dev_attr_pcr_sha256_17", i1 false, i1 false}
!175 = !{ptr @dev_attr_pcr_sha256_18, !154, !"dev_attr_pcr_sha256_18", i1 false, i1 false}
!176 = !{ptr @dev_attr_pcr_sha256_19, !154, !"dev_attr_pcr_sha256_19", i1 false, i1 false}
!177 = !{ptr @dev_attr_pcr_sha256_20, !154, !"dev_attr_pcr_sha256_20", i1 false, i1 false}
!178 = !{ptr @dev_attr_pcr_sha256_21, !154, !"dev_attr_pcr_sha256_21", i1 false, i1 false}
!179 = !{ptr @dev_attr_pcr_sha256_22, !154, !"dev_attr_pcr_sha256_22", i1 false, i1 false}
!180 = !{ptr @dev_attr_pcr_sha256_23, !154, !"dev_attr_pcr_sha256_23", i1 false, i1 false}
!181 = !{ptr @.str.67, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 472, i32 1}
!183 = !{ptr @pcr_group_sha384, !182, !"pcr_group_sha384", i1 false, i1 false}
!184 = !{ptr @pcr_group_attrs_sha384, !182, !"pcr_group_attrs_sha384", i1 false, i1 false}
!185 = !{ptr @dev_attr_pcr_sha384_0, !182, !"dev_attr_pcr_sha384_0", i1 false, i1 false}
!186 = !{ptr @dev_attr_pcr_sha384_1, !182, !"dev_attr_pcr_sha384_1", i1 false, i1 false}
!187 = !{ptr @dev_attr_pcr_sha384_2, !182, !"dev_attr_pcr_sha384_2", i1 false, i1 false}
!188 = !{ptr @dev_attr_pcr_sha384_3, !182, !"dev_attr_pcr_sha384_3", i1 false, i1 false}
!189 = !{ptr @dev_attr_pcr_sha384_4, !182, !"dev_attr_pcr_sha384_4", i1 false, i1 false}
!190 = !{ptr @dev_attr_pcr_sha384_5, !182, !"dev_attr_pcr_sha384_5", i1 false, i1 false}
!191 = !{ptr @dev_attr_pcr_sha384_6, !182, !"dev_attr_pcr_sha384_6", i1 false, i1 false}
!192 = !{ptr @dev_attr_pcr_sha384_7, !182, !"dev_attr_pcr_sha384_7", i1 false, i1 false}
!193 = !{ptr @dev_attr_pcr_sha384_8, !182, !"dev_attr_pcr_sha384_8", i1 false, i1 false}
!194 = !{ptr @dev_attr_pcr_sha384_9, !182, !"dev_attr_pcr_sha384_9", i1 false, i1 false}
!195 = !{ptr @dev_attr_pcr_sha384_10, !182, !"dev_attr_pcr_sha384_10", i1 false, i1 false}
!196 = !{ptr @dev_attr_pcr_sha384_11, !182, !"dev_attr_pcr_sha384_11", i1 false, i1 false}
!197 = !{ptr @dev_attr_pcr_sha384_12, !182, !"dev_attr_pcr_sha384_12", i1 false, i1 false}
!198 = !{ptr @dev_attr_pcr_sha384_13, !182, !"dev_attr_pcr_sha384_13", i1 false, i1 false}
!199 = !{ptr @dev_attr_pcr_sha384_14, !182, !"dev_attr_pcr_sha384_14", i1 false, i1 false}
!200 = !{ptr @dev_attr_pcr_sha384_15, !182, !"dev_attr_pcr_sha384_15", i1 false, i1 false}
!201 = !{ptr @dev_attr_pcr_sha384_16, !182, !"dev_attr_pcr_sha384_16", i1 false, i1 false}
!202 = !{ptr @dev_attr_pcr_sha384_17, !182, !"dev_attr_pcr_sha384_17", i1 false, i1 false}
!203 = !{ptr @dev_attr_pcr_sha384_18, !182, !"dev_attr_pcr_sha384_18", i1 false, i1 false}
!204 = !{ptr @dev_attr_pcr_sha384_19, !182, !"dev_attr_pcr_sha384_19", i1 false, i1 false}
!205 = !{ptr @dev_attr_pcr_sha384_20, !182, !"dev_attr_pcr_sha384_20", i1 false, i1 false}
!206 = !{ptr @dev_attr_pcr_sha384_21, !182, !"dev_attr_pcr_sha384_21", i1 false, i1 false}
!207 = !{ptr @dev_attr_pcr_sha384_22, !182, !"dev_attr_pcr_sha384_22", i1 false, i1 false}
!208 = !{ptr @dev_attr_pcr_sha384_23, !182, !"dev_attr_pcr_sha384_23", i1 false, i1 false}
!209 = !{ptr @.str.68, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 473, i32 1}
!211 = !{ptr @pcr_group_sha512, !210, !"pcr_group_sha512", i1 false, i1 false}
!212 = !{ptr @pcr_group_attrs_sha512, !210, !"pcr_group_attrs_sha512", i1 false, i1 false}
!213 = !{ptr @dev_attr_pcr_sha512_0, !210, !"dev_attr_pcr_sha512_0", i1 false, i1 false}
!214 = !{ptr @dev_attr_pcr_sha512_1, !210, !"dev_attr_pcr_sha512_1", i1 false, i1 false}
!215 = !{ptr @dev_attr_pcr_sha512_2, !210, !"dev_attr_pcr_sha512_2", i1 false, i1 false}
!216 = !{ptr @dev_attr_pcr_sha512_3, !210, !"dev_attr_pcr_sha512_3", i1 false, i1 false}
!217 = !{ptr @dev_attr_pcr_sha512_4, !210, !"dev_attr_pcr_sha512_4", i1 false, i1 false}
!218 = !{ptr @dev_attr_pcr_sha512_5, !210, !"dev_attr_pcr_sha512_5", i1 false, i1 false}
!219 = !{ptr @dev_attr_pcr_sha512_6, !210, !"dev_attr_pcr_sha512_6", i1 false, i1 false}
!220 = !{ptr @dev_attr_pcr_sha512_7, !210, !"dev_attr_pcr_sha512_7", i1 false, i1 false}
!221 = !{ptr @dev_attr_pcr_sha512_8, !210, !"dev_attr_pcr_sha512_8", i1 false, i1 false}
!222 = !{ptr @dev_attr_pcr_sha512_9, !210, !"dev_attr_pcr_sha512_9", i1 false, i1 false}
!223 = !{ptr @dev_attr_pcr_sha512_10, !210, !"dev_attr_pcr_sha512_10", i1 false, i1 false}
!224 = !{ptr @dev_attr_pcr_sha512_11, !210, !"dev_attr_pcr_sha512_11", i1 false, i1 false}
!225 = !{ptr @dev_attr_pcr_sha512_12, !210, !"dev_attr_pcr_sha512_12", i1 false, i1 false}
!226 = !{ptr @dev_attr_pcr_sha512_13, !210, !"dev_attr_pcr_sha512_13", i1 false, i1 false}
!227 = !{ptr @dev_attr_pcr_sha512_14, !210, !"dev_attr_pcr_sha512_14", i1 false, i1 false}
!228 = !{ptr @dev_attr_pcr_sha512_15, !210, !"dev_attr_pcr_sha512_15", i1 false, i1 false}
!229 = !{ptr @dev_attr_pcr_sha512_16, !210, !"dev_attr_pcr_sha512_16", i1 false, i1 false}
!230 = !{ptr @dev_attr_pcr_sha512_17, !210, !"dev_attr_pcr_sha512_17", i1 false, i1 false}
!231 = !{ptr @dev_attr_pcr_sha512_18, !210, !"dev_attr_pcr_sha512_18", i1 false, i1 false}
!232 = !{ptr @dev_attr_pcr_sha512_19, !210, !"dev_attr_pcr_sha512_19", i1 false, i1 false}
!233 = !{ptr @dev_attr_pcr_sha512_20, !210, !"dev_attr_pcr_sha512_20", i1 false, i1 false}
!234 = !{ptr @dev_attr_pcr_sha512_21, !210, !"dev_attr_pcr_sha512_21", i1 false, i1 false}
!235 = !{ptr @dev_attr_pcr_sha512_22, !210, !"dev_attr_pcr_sha512_22", i1 false, i1 false}
!236 = !{ptr @dev_attr_pcr_sha512_23, !210, !"dev_attr_pcr_sha512_23", i1 false, i1 false}
!237 = !{ptr @.str.69, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/char/tpm/tpm-sysfs.c", i32 474, i32 1}
!239 = !{ptr @pcr_group_sm3, !238, !"pcr_group_sm3", i1 false, i1 false}
!240 = !{ptr @pcr_group_attrs_sm3, !238, !"pcr_group_attrs_sm3", i1 false, i1 false}
!241 = !{ptr @dev_attr_pcr_sm3_0, !238, !"dev_attr_pcr_sm3_0", i1 false, i1 false}
!242 = !{ptr @dev_attr_pcr_sm3_1, !238, !"dev_attr_pcr_sm3_1", i1 false, i1 false}
!243 = !{ptr @dev_attr_pcr_sm3_2, !238, !"dev_attr_pcr_sm3_2", i1 false, i1 false}
!244 = !{ptr @dev_attr_pcr_sm3_3, !238, !"dev_attr_pcr_sm3_3", i1 false, i1 false}
!245 = !{ptr @dev_attr_pcr_sm3_4, !238, !"dev_attr_pcr_sm3_4", i1 false, i1 false}
!246 = !{ptr @dev_attr_pcr_sm3_5, !238, !"dev_attr_pcr_sm3_5", i1 false, i1 false}
!247 = !{ptr @dev_attr_pcr_sm3_6, !238, !"dev_attr_pcr_sm3_6", i1 false, i1 false}
!248 = !{ptr @dev_attr_pcr_sm3_7, !238, !"dev_attr_pcr_sm3_7", i1 false, i1 false}
!249 = !{ptr @dev_attr_pcr_sm3_8, !238, !"dev_attr_pcr_sm3_8", i1 false, i1 false}
!250 = !{ptr @dev_attr_pcr_sm3_9, !238, !"dev_attr_pcr_sm3_9", i1 false, i1 false}
!251 = !{ptr @dev_attr_pcr_sm3_10, !238, !"dev_attr_pcr_sm3_10", i1 false, i1 false}
!252 = !{ptr @dev_attr_pcr_sm3_11, !238, !"dev_attr_pcr_sm3_11", i1 false, i1 false}
!253 = !{ptr @dev_attr_pcr_sm3_12, !238, !"dev_attr_pcr_sm3_12", i1 false, i1 false}
!254 = !{ptr @dev_attr_pcr_sm3_13, !238, !"dev_attr_pcr_sm3_13", i1 false, i1 false}
!255 = !{ptr @dev_attr_pcr_sm3_14, !238, !"dev_attr_pcr_sm3_14", i1 false, i1 false}
!256 = !{ptr @dev_attr_pcr_sm3_15, !238, !"dev_attr_pcr_sm3_15", i1 false, i1 false}
!257 = !{ptr @dev_attr_pcr_sm3_16, !238, !"dev_attr_pcr_sm3_16", i1 false, i1 false}
!258 = !{ptr @dev_attr_pcr_sm3_17, !238, !"dev_attr_pcr_sm3_17", i1 false, i1 false}
!259 = !{ptr @dev_attr_pcr_sm3_18, !238, !"dev_attr_pcr_sm3_18", i1 false, i1 false}
!260 = !{ptr @dev_attr_pcr_sm3_19, !238, !"dev_attr_pcr_sm3_19", i1 false, i1 false}
!261 = !{ptr @dev_attr_pcr_sm3_20, !238, !"dev_attr_pcr_sm3_20", i1 false, i1 false}
!262 = !{ptr @dev_attr_pcr_sm3_21, !238, !"dev_attr_pcr_sm3_21", i1 false, i1 false}
!263 = !{ptr @dev_attr_pcr_sm3_22, !238, !"dev_attr_pcr_sm3_22", i1 false, i1 false}
!264 = !{ptr @dev_attr_pcr_sm3_23, !238, !"dev_attr_pcr_sm3_23", i1 false, i1 false}
!265 = !{i32 1, !"wchar_size", i32 2}
!266 = !{i32 1, !"min_enum_size", i32 4}
!267 = !{i32 8, !"branch-target-enforcement", i32 0}
!268 = !{i32 8, !"sign-return-address", i32 0}
!269 = !{i32 8, !"sign-return-address-all", i32 0}
!270 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!271 = !{i32 7, !"uwtable", i32 1}
!272 = !{i32 7, !"frame-pointer", i32 2}
!273 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!274 = !{!"branch_weights", i32 2000, i32 1}
!275 = !{!"branch_weights", i32 1, i32 2000}
!276 = !{!"auto-init"}
!277 = !{i8 0, i8 2}
