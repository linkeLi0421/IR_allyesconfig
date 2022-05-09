; ModuleID = '/llk/IR_all_yes/drivers/char/tpm/tpm_tis_i2c_cr50.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm_tis_i2c_cr50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tpm_class_ops = type { i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.tpm_i2c_cr50_priv_data = type { i32, %struct.completion, [64 x i8] }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_tpm_tis_i2c_cr50__294_794_cr50_i2c_driver_init6 = internal global ptr @cr50_i2c_driver_init, section ".initcall6.init", align 4
@cr50_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @tpm_cr50_i2c_remove, ptr @tpm_cr50_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_cr50_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cr50_i2c_pm, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cr50_i2c_driver_exit = internal global ptr @cr50_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [49 x i8] c"tpm_tis_i2c_cr50.description=cr50 TPM I2C Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [56 x i8] c"tpm_tis_i2c_cr50.file=drivers/char/tpm/tpm_tis_i2c_cr50\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [29 x i8] c"tpm_tis_i2c_cr50.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cr50_i2c\00", [23 x i8] zeroinitializer }, align 32
@of_cr50_i2c_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,cr50\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cr50_i2c_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tpm_pm_suspend, ptr @tpm_pm_resume, ptr @tpm_pm_suspend, ptr @tpm_pm_resume, ptr @tpm_pm_suspend, ptr @tpm_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tpm_cr50_i2c_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 771, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Could not get client data at remove\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tpm_cr50_i2c_remove\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/char/tpm/tpm_tis_i2c_cr50.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tpm_cr50_i2c_remove._entry_ptr = internal global ptr @tpm_cr50_i2c_remove._entry, section ".printk_index", align 4
@tpm_cr50_i2c_transfer_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 163, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"i2c transfer failed (attempt %d/%d): %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tpm_cr50_i2c_transfer_message\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tpm_cr50_i2c_transfer_message._entry_ptr = internal global ptr @tpm_cr50_i2c_transfer_message._entry, section ".printk_index", align 4
@tpm_cr50_i2c_wait_tpm_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 104, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Timeout waiting for TPM ready\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tpm_cr50_i2c_wait_tpm_ready\00", [36 x i8] zeroinitializer }, align 32
@tpm_cr50_i2c_wait_tpm_ready._entry_ptr = internal global ptr @tpm_cr50_i2c_wait_tpm_ready._entry, section ".printk_index", align 4
@cr50_i2c = internal constant { %struct.tpm_class_ops, [40 x i8] } { %struct.tpm_class_ops { i32 1, i8 -112, i8 -112, ptr @tpm_cr50_i2c_req_canceled, ptr @tpm_cr50_i2c_tis_recv, ptr @tpm_cr50_i2c_tis_send, ptr @tpm_cr50_i2c_tis_set_ready, ptr @tpm_cr50_i2c_tis_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tpm_cr50_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 720, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to probe IRQ %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tpm_cr50_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@tpm_cr50_i2c_probe._entry_ptr = internal global ptr @tpm_cr50_i2c_probe._entry, section ".printk_index", align 4
@tpm_cr50_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 727, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No IRQ, will use %ums delay for TPM ready\0A\00", [53 x i8] zeroinitializer }, align 32
@tpm_cr50_i2c_probe._entry_ptr.15 = internal global ptr @tpm_cr50_i2c_probe._entry.13, section ".printk_index", align 4
@tpm_cr50_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.3, i32 732, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not request locality\0A\00", [36 x i8] zeroinitializer }, align 32
@tpm_cr50_i2c_probe._entry_ptr.18 = internal global ptr @tpm_cr50_i2c_probe._entry.16, section ".printk_index", align 4
@tpm_cr50_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.3, i32 739, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not read vendor id\0A\00", [38 x i8] zeroinitializer }, align 32
@tpm_cr50_i2c_probe._entry_ptr.21 = internal global ptr @tpm_cr50_i2c_probe._entry.19, section ".printk_index", align 4
@tpm_cr50_i2c_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.3, i32 746, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Vendor ID did not match! ID was %08x\0A\00", [58 x i8] zeroinitializer }, align 32
@tpm_cr50_i2c_probe._entry_ptr.24 = internal global ptr @tpm_cr50_i2c_probe._entry.22, section ".printk_index", align 4
@tpm_cr50_i2c_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.12, ptr @.str.3, i32 752, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cr50 TPM 2.0 (i2c 0x%02x irq %d id 0x%x)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tpm_cr50_i2c_probe._entry_ptr.28 = internal global ptr @tpm_cr50_i2c_probe._entry.25, section ".printk_index", align 4
@tpm_cr50_i2c_tis_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 470, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unexpected burstcnt: %zu (max=%zu, min=%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tpm_cr50_i2c_tis_recv\00", [42 x i8] zeroinitializer }, align 32
@tpm_cr50_i2c_tis_recv._entry_ptr = internal global ptr @tpm_cr50_i2c_tis_recv._entry, section ".printk_index", align 4
@tpm_cr50_i2c_tis_recv._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 478, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Read of first chunk failed\0A\00", [36 x i8] zeroinitializer }, align 32
@tpm_cr50_i2c_tis_recv._entry_ptr.33 = internal global ptr @tpm_cr50_i2c_tis_recv._entry.31, section ".printk_index", align 4
@tpm_cr50_i2c_tis_recv._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.3, i32 485, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer too small to receive i2c data\0A\00", [58 x i8] zeroinitializer }, align 32
@tpm_cr50_i2c_tis_recv._entry_ptr.36 = internal global ptr @tpm_cr50_i2c_tis_recv._entry.34, section ".printk_index", align 4
@tpm_cr50_i2c_tis_recv._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.3, i32 501, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Read failed\0A\00", [19 x i8] zeroinitializer }, align 32
@tpm_cr50_i2c_tis_recv._entry_ptr.39 = internal global ptr @tpm_cr50_i2c_tis_recv._entry.37, section ".printk_index", align 4
@tpm_cr50_i2c_tis_recv._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str.3, i32 513, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Data still available\0A\00", [42 x i8] zeroinitializer }, align 32
@tpm_cr50_i2c_tis_recv._entry_ptr.42 = internal global ptr @tpm_cr50_i2c_tis_recv._entry.40, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tpm_cr50_i2c_get_burst_and_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 437, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Timeout reading burst and status\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tpm_cr50_i2c_get_burst_and_status\00", [62 x i8] zeroinitializer }, align 32
@tpm_cr50_i2c_get_burst_and_status._entry_ptr = internal global ptr @tpm_cr50_i2c_get_burst_and_status._entry, section ".printk_index", align 4
@tpm_cr50_i2c_tis_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 582, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Write failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tpm_cr50_i2c_tis_send\00", [42 x i8] zeroinitializer }, align 32
@tpm_cr50_i2c_tis_send._entry_ptr = internal global ptr @tpm_cr50_i2c_tis_send._entry, section ".printk_index", align 4
@tpm_cr50_i2c_tis_send._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 595, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Data still expected\0A\00", [43 x i8] zeroinitializer }, align 32
@tpm_cr50_i2c_tis_send._entry_ptr.49 = internal global ptr @tpm_cr50_i2c_tis_send._entry.47, section ".printk_index", align 4
@tpm_cr50_i2c_tis_send._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.3, i32 604, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Start command failed\0A\00", [42 x i8] zeroinitializer }, align 32
@tpm_cr50_i2c_tis_send._entry_ptr.52 = internal global ptr @tpm_cr50_i2c_tis_send._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"firmware-power-managed\00", [41 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"cr50_i2c_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 783, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 787, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"of_cr50_i2c_match\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 664, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [12 x i8] c"cr50_i2c_pm\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 781, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 771, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 162, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 104, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [9 x i8] c"cr50_i2c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 644, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 720, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 726, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 732, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 739, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 746, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 751, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 468, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 478, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 485, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 501, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 513, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 437, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 582, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 595, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 604, i32 3 }
@___asan_gen_.215 = private constant [39 x i8] c"../drivers/char/tpm/tpm_tis_i2c_cr50.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 637, i32 37 }
@___asan_gen_.217 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 87, i32 2 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_cr50_i2c_driver_exit, ptr @__initcall__kmod_tpm_tis_i2c_cr50__294_794_cr50_i2c_driver_init6, ptr @cr50_i2c_driver_exit, ptr @tpm_cr50_i2c_get_burst_and_status._entry, ptr @tpm_cr50_i2c_get_burst_and_status._entry_ptr, ptr @tpm_cr50_i2c_probe._entry, ptr @tpm_cr50_i2c_probe._entry.13, ptr @tpm_cr50_i2c_probe._entry.16, ptr @tpm_cr50_i2c_probe._entry.19, ptr @tpm_cr50_i2c_probe._entry.22, ptr @tpm_cr50_i2c_probe._entry.25, ptr @tpm_cr50_i2c_probe._entry_ptr, ptr @tpm_cr50_i2c_probe._entry_ptr.15, ptr @tpm_cr50_i2c_probe._entry_ptr.18, ptr @tpm_cr50_i2c_probe._entry_ptr.21, ptr @tpm_cr50_i2c_probe._entry_ptr.24, ptr @tpm_cr50_i2c_probe._entry_ptr.28, ptr @tpm_cr50_i2c_remove._entry, ptr @tpm_cr50_i2c_remove._entry_ptr, ptr @tpm_cr50_i2c_tis_recv._entry, ptr @tpm_cr50_i2c_tis_recv._entry.31, ptr @tpm_cr50_i2c_tis_recv._entry.34, ptr @tpm_cr50_i2c_tis_recv._entry.37, ptr @tpm_cr50_i2c_tis_recv._entry.40, ptr @tpm_cr50_i2c_tis_recv._entry_ptr, ptr @tpm_cr50_i2c_tis_recv._entry_ptr.33, ptr @tpm_cr50_i2c_tis_recv._entry_ptr.36, ptr @tpm_cr50_i2c_tis_recv._entry_ptr.39, ptr @tpm_cr50_i2c_tis_recv._entry_ptr.42, ptr @tpm_cr50_i2c_tis_send._entry, ptr @tpm_cr50_i2c_tis_send._entry.47, ptr @tpm_cr50_i2c_tis_send._entry.50, ptr @tpm_cr50_i2c_tis_send._entry_ptr, ptr @tpm_cr50_i2c_tis_send._entry_ptr.49, ptr @tpm_cr50_i2c_tis_send._entry_ptr.52, ptr @tpm_cr50_i2c_transfer_message._entry, ptr @tpm_cr50_i2c_transfer_message._entry_ptr, ptr @tpm_cr50_i2c_wait_tpm_ready._entry, ptr @tpm_cr50_i2c_wait_tpm_ready._entry_ptr, ptr @cr50_i2c_driver, ptr @.str, ptr @of_cr50_i2c_match, ptr @cr50_i2c_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @cr50_i2c, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @init_completion.__key, ptr @.str.54], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr50_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_cr50_i2c_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr50_i2c_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_cr50_i2c_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_cr50_i2c_transfer_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_cr50_i2c_wait_tpm_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr50_i2c to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_cr50_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_cr50_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_cr50_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_cr50_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_cr50_i2c_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_cr50_i2c_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_cr50_i2c_tis_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_cr50_i2c_tis_recv._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_cr50_i2c_tis_recv._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_cr50_i2c_tis_recv._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_cr50_i2c_tis_recv._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_cr50_i2c_get_burst_and_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_cr50_i2c_tis_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_cr50_i2c_tis_send._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_cr50_i2c_tis_send._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cr50_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cr50_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cr50_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @cr50_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_cr50_i2c_remove(ptr noundef %client) #2 align 64 {
entry:
  %buf.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @tpm_chip_unregister(ptr noundef nonnull %1) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #7
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf.i, align 1, !annotation !116
  %call.i = call fastcc i32 @tpm_cr50_i2c_read(ptr noundef nonnull %1, i8 noundef zeroext 0, ptr noundef nonnull %buf.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.tpm_cr50_release_locality.exit_crit_edge, label %if.end.i

if.end.tpm_cr50_release_locality.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_cr50_release_locality.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 32, ptr %buf.i, align 1
  %call6.i = call fastcc i32 @tpm_cr50_i2c_write(ptr noundef nonnull %1, i8 noundef zeroext 0, ptr noundef nonnull %buf.i, i32 noundef 1) #7
  br label %tpm_cr50_release_locality.exit

tpm_cr50_release_locality.exit:                   ; preds = %if.end.i, %if.end.tpm_cr50_release_locality.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #7
  br label %cleanup

cleanup:                                          ; preds = %tpm_cr50_release_locality.exit, %do.end
  %retval.0 = phi i32 [ 0, %tpm_cr50_release_locality.exit ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_cr50_i2c_probe(ptr noundef %client) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #7
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf, align 4
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %2) #7
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @tpmm_chip_alloc(ptr noundef %dev1, ptr noundef nonnull @cr50_i2c) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 124, i32 noundef 3520) #7
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %flags = getelementptr inbounds %struct.tpm_chip, ptr %call2, i32 0, i32 9
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %or = or i32 %9, 2
  store i32 %or, ptr %flags, align 4
  %call11 = tail call fastcc zeroext i1 @tpm_cr50_i2c_is_firmware_power_managed(ptr noundef %dev1)
  br i1 %call11, label %if.then12, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %or14 = or i32 %11, 64
  store i32 %or14, ptr %flags, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10.if.end15_crit_edge
  %timeout_a = getelementptr inbounds %struct.tpm_chip, ptr %call2, i32 0, i32 15
  %12 = ptrtoint ptr %timeout_a to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 75, ptr %timeout_a, align 8
  %timeout_b = getelementptr inbounds %struct.tpm_chip, ptr %call2, i32 0, i32 16
  %13 = ptrtoint ptr %timeout_b to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 200, ptr %timeout_b, align 4
  %timeout_c = getelementptr inbounds %struct.tpm_chip, ptr %call2, i32 0, i32 17
  %14 = ptrtoint ptr %timeout_c to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 75, ptr %timeout_c, align 8
  %timeout_d = getelementptr inbounds %struct.tpm_chip, ptr %call2, i32 0, i32 18
  %15 = ptrtoint ptr %timeout_d to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 75, ptr %timeout_d, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %call2, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i, align 4
  %tpm_ready = getelementptr inbounds %struct.tpm_i2c_cr50_priv_data, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %tpm_ready to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %tpm_ready, align 4
  %wait.i = getelementptr inbounds %struct.tpm_i2c_cr50_priv_data, ptr %call.i, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @init_completion.__key) #7
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp sgt i32 %19, 0
  br i1 %cmp, label %if.then21, label %do.end32

if.then21:                                        ; preds = %if.end15
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %20 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call.i107 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %19, ptr noundef nonnull @tpm_cr50_i2c_int_handler, ptr noundef null, i32 noundef 532482, ptr noundef %23, ptr noundef %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %cmp24 = icmp slt i32 %call.i107, 0
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  br i1 %cmp24, label %do.end, label %if.end27

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %25) #10
  br label %cleanup

if.end27:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %call.i, align 4
  br label %if.end33

do.end32:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef 20) #10
  br label %if.end33

if.end33:                                         ; preds = %do.end32, %if.end27
  %call34 = tail call fastcc i32 @tpm_cr50_request_locality(ptr noundef %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end39, label %if.end40

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end40:                                         ; preds = %if.end33
  %call41 = call fastcc i32 @tpm_cr50_i2c_read(ptr noundef %call2, i8 noundef zeroext 6, ptr noundef nonnull %buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %do.end46, label %if.end47

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #10
  call fastcc void @tpm_cr50_release_locality(ptr noundef %call2, i1 noundef zeroext true)
  br label %cleanup

if.end47:                                         ; preds = %if.end40
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -535156736, i32 %28)
  %cmp50.not = icmp eq i32 %28, -535156736
  br i1 %cmp50.not, label %do.end58, label %do.end54

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %29 = call i32 @llvm.bswap.i32(i32 %28) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %29) #10
  call fastcc void @tpm_cr50_release_locality(ptr noundef %call2, i1 noundef zeroext true)
  br label %cleanup

do.end58:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr, align 2
  %conv = zext i16 %31 to i32
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %conv, i32 noundef %33, i32 noundef 40) #10
  %call60 = call i32 @tpm_chip_register(ptr noundef %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %do.end54, %do.end46, %do.end39, %do.end, %if.end6.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then4 ], [ %call.i107, %do.end ], [ %call34, %do.end39 ], [ %call41, %do.end46 ], [ -19, %do.end54 ], [ %call60, %do.end58 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_chip_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tpm_cr50_release_locality(ptr noundef %chip, i1 noundef zeroext %force) unnamed_addr #2 align 64 {
entry:
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #7
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !116
  %call = call fastcc i32 @tpm_cr50_i2c_read(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %buf, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %force, label %if.end.if.then5_crit_edge, label %lor.lhs.false

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buf, align 1
  %3 = and i8 %2, -124
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %3)
  %cmp3 = icmp eq i8 %3, -124
  br i1 %cmp3, label %lor.lhs.false.if.then5_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 32, ptr %buf, align 1
  %call6 = call fastcc i32 @tpm_cr50_i2c_write(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %buf, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tpm_cr50_i2c_read(ptr noundef %chip, i8 noundef zeroext %addr, ptr noundef %buffer, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %addr.addr = alloca i8, align 1
  %msg_reg_addr = alloca %struct.i2c_msg, align 4
  %msg_response = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %addr, ptr %addr.addr, align 1
  %parent = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg_reg_addr) #7
  %3 = getelementptr inbounds i8, ptr %msg_reg_addr, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %addr2 = getelementptr i8, ptr %2, i32 -30
  %5 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr2, align 2
  %7 = ptrtoint ptr %msg_reg_addr to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msg_reg_addr, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg_reg_addr, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %msg_reg_addr, i32 0, i32 2
  %9 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %len3, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg_reg_addr, i32 0, i32 3
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %addr.addr, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg_response) #7
  %11 = getelementptr inbounds i8, ptr %msg_response, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4
  %13 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr2, align 2
  %15 = ptrtoint ptr %msg_response to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msg_response, align 4
  %flags6 = getelementptr inbounds %struct.i2c_msg, ptr %msg_response, i32 0, i32 1
  %16 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6, align 2
  %len7 = getelementptr inbounds %struct.i2c_msg, ptr %msg_response, i32 0, i32 2
  %conv = trunc i32 %len to i16
  %17 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %len7, align 4
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msg_response, i32 0, i32 3
  %18 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buffer, ptr %buf8, align 4
  %adapter = getelementptr i8, ptr %2, i32 -8
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 8
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock_ops.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  call void %24(ptr noundef %20, i32 noundef 2) #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i = icmp sgt i32 %28, 0
  br i1 %cmp.i, label %if.then.i, label %entry.tpm_cr50_i2c_enable_tpm_irq.exit_crit_edge

entry.tpm_cr50_i2c_enable_tpm_irq.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_cr50_i2c_enable_tpm_irq.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tpm_ready.i = getelementptr inbounds %struct.tpm_i2c_cr50_priv_data, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %tpm_ready.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %tpm_ready.i, align 4
  call void @enable_irq(i32 noundef %28) #7
  br label %tpm_cr50_i2c_enable_tpm_irq.exit

tpm_cr50_i2c_enable_tpm_irq.exit:                 ; preds = %if.then.i, %entry.tpm_cr50_i2c_enable_tpm_irq.exit_crit_edge
  %30 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter, align 8
  %call = call fastcc i32 @tpm_cr50_i2c_transfer_message(ptr noundef %chip, ptr noundef %31, ptr noundef nonnull %msg_reg_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %tpm_cr50_i2c_enable_tpm_irq.exit.out_crit_edge, label %if.end

tpm_cr50_i2c_enable_tpm_irq.exit.out_crit_edge:   ; preds = %tpm_cr50_i2c_enable_tpm_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %tpm_cr50_i2c_enable_tpm_irq.exit
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver_data.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.i42 = icmp slt i32 %35, 1
  br i1 %cmp.i42, label %if.then.i43, label %if.end.i

if.then.i43:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 20) #7
  br label %if.end16

if.end.i:                                         ; preds = %if.end
  %tpm_ready.i44 = getelementptr inbounds %struct.tpm_i2c_cr50_priv_data, ptr %33, i32 0, i32 1
  %timeout_a.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 15
  %36 = ptrtoint ptr %timeout_a.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %timeout_a.i, align 8
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %37) #7
  %call2.i = call i32 @wait_for_completion_timeout(ptr noundef %tpm_ready.i44, i32 noundef %call2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %tpm_cr50_i2c_wait_tpm_ready.exit, label %if.end.i.if.end16_crit_edge

if.end.i.if.end16_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

tpm_cr50_i2c_wait_tpm_ready.exit:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %chip, ptr noundef nonnull @.str.9) #10
  br label %out

if.end16:                                         ; preds = %if.end.i.if.end16_crit_edge, %if.then.i43
  %38 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter, align 8
  %call19 = call fastcc i32 @tpm_cr50_i2c_transfer_message(ptr noundef %chip, ptr noundef %39, ptr noundef nonnull %msg_response)
  br label %out

out:                                              ; preds = %if.end16, %tpm_cr50_i2c_wait_tpm_ready.exit, %tpm_cr50_i2c_enable_tpm_irq.exit.out_crit_edge
  %rc.0 = phi i32 [ %call, %tpm_cr50_i2c_enable_tpm_irq.exit.out_crit_edge ], [ -110, %tpm_cr50_i2c_wait_tpm_ready.exit ], [ %call19, %if.end16 ]
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i46 = icmp sgt i32 %43, 0
  br i1 %cmp.i46, label %if.then.i47, label %out.tpm_cr50_i2c_disable_tpm_irq.exit_crit_edge

out.tpm_cr50_i2c_disable_tpm_irq.exit_crit_edge:  ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_cr50_i2c_disable_tpm_irq.exit

if.then.i47:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  call void @disable_irq(i32 noundef %43) #7
  br label %tpm_cr50_i2c_disable_tpm_irq.exit

tpm_cr50_i2c_disable_tpm_irq.exit:                ; preds = %if.then.i47, %out.tpm_cr50_i2c_disable_tpm_irq.exit_crit_edge
  %44 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter, align 8
  %lock_ops.i49 = getelementptr inbounds %struct.i2c_adapter, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %lock_ops.i49 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lock_ops.i49, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %unlock_bus.i, align 4
  call void %49(ptr noundef %45, i32 noundef 2) #7
  %50 = call i32 @llvm.smin.i32(i32 %rc.0, i32 0)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg_response) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg_reg_addr) #7
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tpm_cr50_i2c_write(ptr noundef %chip, i8 noundef zeroext %addr, ptr nocapture noundef readonly %buffer, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %addr3 = getelementptr i8, ptr %3, i32 -30
  %6 = ptrtoint ptr %addr3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr3, align 2
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 2
  %len4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %10 = trunc i32 %len to i16
  %conv = add i16 %10, 1
  %11 = ptrtoint ptr %len4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %len4, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %buf5 = getelementptr inbounds %struct.tpm_i2c_cr50_priv_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf5, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %len)
  %cmp = icmp ugt i32 %len, 63
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %buf5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %addr, ptr %buf5, align 4
  %add.ptr10 = getelementptr %struct.tpm_i2c_cr50_priv_data, ptr %1, i32 0, i32 2, i32 1
  %14 = call ptr @memcpy(ptr %add.ptr10, ptr %buffer, i32 %len)
  %adapter = getelementptr i8, ptr %3, i32 -8
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 8
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock_ops.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  tail call void %20(ptr noundef %16, i32 noundef 2) #7
  %21 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i = icmp sgt i32 %24, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.tpm_cr50_i2c_enable_tpm_irq.exit_crit_edge

if.end.tpm_cr50_i2c_enable_tpm_irq.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_cr50_i2c_enable_tpm_irq.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %tpm_ready.i = getelementptr inbounds %struct.tpm_i2c_cr50_priv_data, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %tpm_ready.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %tpm_ready.i, align 4
  tail call void @enable_irq(i32 noundef %24) #7
  br label %tpm_cr50_i2c_enable_tpm_irq.exit

tpm_cr50_i2c_enable_tpm_irq.exit:                 ; preds = %if.then.i, %if.end.tpm_cr50_i2c_enable_tpm_irq.exit_crit_edge
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  %call13 = call fastcc i32 @tpm_cr50_i2c_transfer_message(ptr noundef %chip, ptr noundef %27, ptr noundef nonnull %msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %tpm_cr50_i2c_enable_tpm_irq.exit.out_crit_edge, label %if.end17

tpm_cr50_i2c_enable_tpm_irq.exit.out_crit_edge:   ; preds = %tpm_cr50_i2c_enable_tpm_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end17:                                         ; preds = %tpm_cr50_i2c_enable_tpm_irq.exit
  %28 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i42 = icmp slt i32 %31, 1
  br i1 %cmp.i42, label %if.then.i43, label %if.end.i

if.then.i43:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 20) #7
  br label %out

if.end.i:                                         ; preds = %if.end17
  %tpm_ready.i44 = getelementptr inbounds %struct.tpm_i2c_cr50_priv_data, ptr %29, i32 0, i32 1
  %timeout_a.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 15
  %32 = ptrtoint ptr %timeout_a.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %timeout_a.i, align 8
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %33) #7
  %call2.i = call i32 @wait_for_completion_timeout(ptr noundef %tpm_ready.i44, i32 noundef %call2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %chip, ptr noundef nonnull @.str.9) #10
  br label %out

out:                                              ; preds = %do.end.i, %if.end.i.out_crit_edge, %if.then.i43, %tpm_cr50_i2c_enable_tpm_irq.exit.out_crit_edge
  %34 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i46 = icmp sgt i32 %37, 0
  br i1 %cmp.i46, label %if.then.i47, label %out.tpm_cr50_i2c_disable_tpm_irq.exit_crit_edge

out.tpm_cr50_i2c_disable_tpm_irq.exit_crit_edge:  ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_cr50_i2c_disable_tpm_irq.exit

if.then.i47:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  call void @disable_irq(i32 noundef %37) #7
  br label %tpm_cr50_i2c_disable_tpm_irq.exit

tpm_cr50_i2c_disable_tpm_irq.exit:                ; preds = %if.then.i47, %out.tpm_cr50_i2c_disable_tpm_irq.exit_crit_edge
  %38 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter, align 8
  %lock_ops.i49 = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %lock_ops.i49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lock_ops.i49, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %unlock_bus.i, align 4
  call void %43(ptr noundef %39, i32 noundef 2) #7
  %44 = call i32 @llvm.smin.i32(i32 %call13, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %tpm_cr50_i2c_disable_tpm_irq.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %44, %tpm_cr50_i2c_disable_tpm_irq.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tpm_cr50_i2c_transfer_message(ptr noundef %dev, ptr noundef %adapter, ptr noundef %msg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__i2c_transfer(ptr noundef %adapter, ptr noundef %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp1 = icmp eq i32 %call, 1
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #7
  %call.1 = tail call i32 @__i2c_transfer(ptr noundef %adapter, ptr noundef %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.1)
  %cmp1.1 = icmp eq i32 %call.1, 1
  br i1 %cmp1.1, label %if.end3.cleanup_crit_edge, label %if.end3.1

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.1:                                        ; preds = %if.end3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef 2, i32 noundef 3, i32 noundef %call.1) #10
  tail call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #7
  %call.2 = tail call i32 @__i2c_transfer(ptr noundef %adapter, ptr noundef %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.2)
  %cmp1.2 = icmp eq i32 %call.2, 1
  br i1 %cmp1.2, label %if.end3.1.cleanup_crit_edge, label %if.end3.2

if.end3.1.cleanup_crit_edge:                      ; preds = %if.end3.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.2:                                        ; preds = %if.end3.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef 3, i32 noundef 3, i32 noundef %call.2) #10
  tail call void @usleep_range_state(i32 noundef 55, i32 noundef 65, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3.2, %if.end3.1.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %if.end3.1.cleanup_crit_edge ], [ -5, %if.end3.2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tpmm_chip_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tpm_cr50_i2c_is_firmware_power_managed(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !116
  %call.i = call i32 @device_property_read_u8_array(ptr noundef %dev, ptr noundef nonnull @.str.53, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1 = icmp ne i8 %2, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool1, %if.end ], [ true, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_cr50_i2c_int_handler(i32 noundef %dummy, ptr nocapture noundef readonly %tpm_info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %tpm_info, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tpm_ready = getelementptr inbounds %struct.tpm_i2c_cr50_priv_data, ptr %1, i32 0, i32 1
  tail call void @complete(ptr noundef %tpm_ready) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tpm_cr50_request_locality(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  %buf.i15 = alloca i8, align 1
  %buf.i = alloca i8, align 1
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #7
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #7
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %buf.i, align 1, !annotation !116
  %call.i = call fastcc i32 @tpm_cr50_i2c_read(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %buf.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf.i, align 1
  %4 = and i8 %3, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %4)
  %cmp3.i = icmp eq i8 %4, -96
  br i1 %cmp3.i, label %tpm_cr50_check_locality.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

tpm_cr50_check_locality.exit:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #7
  %call1 = call fastcc i32 @tpm_cr50_i2c_write(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %buf, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %timeout_a = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 15
  %6 = ptrtoint ptr %timeout_a to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timeout_a, align 8
  %8 = add i32 %7, %5
  br label %do.body

do.body:                                          ; preds = %if.end7.do.body_crit_edge, %if.end3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i15) #7
  %9 = ptrtoint ptr %buf.i15 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %buf.i15, align 1, !annotation !116
  %call.i16 = call fastcc i32 @tpm_cr50_i2c_read(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %buf.i15, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %cmp.i17 = icmp slt i32 %call.i16, 0
  br i1 %cmp.i17, label %do.body.if.end7_crit_edge, label %if.end.i20

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end.i20:                                       ; preds = %do.body
  %10 = ptrtoint ptr %buf.i15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf.i15, align 1
  %12 = and i8 %11, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %12)
  %cmp3.i18 = icmp eq i8 %12, -96
  br i1 %cmp3.i18, label %tpm_cr50_check_locality.exit22, label %if.end.i20.if.end7_crit_edge

if.end.i20.if.end7_crit_edge:                     ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

tpm_cr50_check_locality.exit22:                   ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i15) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end.i20.if.end7_crit_edge, %do.body.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i15) #7
  call void @msleep(i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %13, %8
  %cmp8 = icmp slt i32 %sub, 0
  br i1 %cmp8, label %if.end7.do.body_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

cleanup:                                          ; preds = %if.end7.cleanup_crit_edge, %tpm_cr50_check_locality.exit22, %if.end.cleanup_crit_edge, %tpm_cr50_check_locality.exit
  %retval.0 = phi i32 [ 0, %tpm_cr50_check_locality.exit ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %tpm_cr50_check_locality.exit22 ], [ -110, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_chip_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tpm_cr50_i2c_req_canceled(ptr nocapture noundef readnone %chip, i8 noundef zeroext %status) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %status)
  %cmp = icmp eq i8 %status, 64
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_cr50_i2c_tis_recv(ptr noundef %chip, ptr noundef %buf, i32 noundef %buf_len) #2 align 64 {
entry:
  %buf.i147 = alloca i8, align 1
  %buf.i145 = alloca [4 x i8], align 4
  %buf.i140 = alloca [4 x i8], align 4
  %buf.i136 = alloca i8, align 1
  %buf.i116 = alloca [4 x i8], align 4
  %buf.i96 = alloca [4 x i8], align 4
  %buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %buf_len)
  %cmp = icmp ult i32 %buf_len, 10
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %0 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %buf.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %timeout_b.i = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 16
  %3 = ptrtoint ptr %timeout_b.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeout_b.i, align 4
  %5 = add i32 %4, %2
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end
  %call.i = call fastcc i32 @tpm_cr50_i2c_read(ptr noundef %chip, i8 noundef zeroext 1, ptr noundef nonnull %buf.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i.do.cond.i_crit_edge, label %if.end.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.i

if.end.i:                                         ; preds = %do.body.i
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf.i, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %0, align 2
  %10 = call i16 @llvm.bswap.i16(i16 %9) #7
  %11 = and i8 %7, -112
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %11)
  %cmp7.i = icmp eq i8 %11, -112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp9.not.i = icmp ne i16 %9, 0
  %or.cond.i = select i1 %cmp7.i, i1 %cmp9.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %10)
  %cmp12.i = icmp ult i16 %10, 64
  %or.cond29.i = select i1 %or.cond.i, i1 %cmp12.i, i1 false
  br i1 %or.cond29.i, label %if.end3, label %if.end.i.do.cond.i_crit_edge

if.end.i.do.cond.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.end.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge
  call void @msleep(i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %12, %5
  %cmp16.i = icmp slt i32 %sub.i, 0
  br i1 %cmp16.i, label %do.cond.i.do.body.i_crit_edge, label %tpm_cr50_i2c_get_burst_and_status.exit.thread

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

tpm_cr50_i2c_get_burst_and_status.exit.thread:    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.43) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  br label %out_err

if.end3:                                          ; preds = %if.end.i
  %conv4.i.le = zext i16 %10 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4.i.le, i32 %buf_len)
  %cmp4 = icmp ugt i32 %conv4.i.le, %buf_len
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %10)
  %cmp5 = icmp ult i16 %10, 10
  %or.cond = or i1 %cmp5, %cmp4
  br i1 %or.cond, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.29, i32 noundef %conv4.i.le, i32 noundef %buf_len, i32 noundef 10) #10
  br label %out_err

if.end7:                                          ; preds = %if.end3
  %call8 = call fastcc i32 @tpm_cr50_i2c_read(ptr noundef %chip, i8 noundef zeroext 5, ptr noundef %buf, i32 noundef %conv4.i.le)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.32) #10
  br label %out_err

if.end15:                                         ; preds = %if.end7
  %add.ptr = getelementptr i8, ptr %buf, i32 2
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %buf_len)
  %cmp17 = icmp ugt i32 %14, %buf_len
  br i1 %cmp17, label %do.end21, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end15
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv4.i.le)
  %cmp24184 = icmp ugt i32 %14, %conv4.i.le
  br i1 %cmp24184, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %15 = getelementptr inbounds [4 x i8], ptr %buf.i96, i32 0, i32 1
  br label %while.body

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.35) #10
  br label %out_err

while.cond:                                       ; preds = %if.end28
  %add = add i32 %28, %cur.0185
  %cmp24 = icmp ugt i32 %14, %add
  br i1 %cmp24, label %while.cond.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %cur.0185 = phi i32 [ %conv4.i.le, %while.body.lr.ph ], [ %add, %while.cond.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i96) #7
  %16 = ptrtoint ptr %buf.i96 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %buf.i96, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %18 = ptrtoint ptr %timeout_b.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timeout_b.i, align 4
  %20 = add i32 %19, %17
  br label %do.body.i100

do.body.i100:                                     ; preds = %do.cond.i112.do.body.i100_crit_edge, %while.body
  %call.i98 = call fastcc i32 @tpm_cr50_i2c_read(ptr noundef %chip, i8 noundef zeroext 1, ptr noundef nonnull %buf.i96, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %cmp.i99 = icmp slt i32 %call.i98, 0
  br i1 %cmp.i99, label %do.body.i100.do.cond.i112_crit_edge, label %if.end.i109

do.body.i100.do.cond.i112_crit_edge:              ; preds = %do.body.i100
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.i112

if.end.i109:                                      ; preds = %do.body.i100
  %21 = ptrtoint ptr %buf.i96 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %buf.i96, align 4
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %15, align 2
  %25 = call i16 @llvm.bswap.i16(i16 %24) #7
  %26 = and i8 %22, -112
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %26)
  %cmp7.i104 = icmp eq i8 %26, -112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp9.not.i105 = icmp ne i16 %24, 0
  %or.cond.i106 = select i1 %cmp7.i104, i1 %cmp9.not.i105, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %25)
  %cmp12.i107 = icmp ult i16 %25, 64
  %or.cond29.i108 = select i1 %or.cond.i106, i1 %cmp12.i107, i1 false
  br i1 %or.cond29.i108, label %if.end28, label %if.end.i109.do.cond.i112_crit_edge

if.end.i109.do.cond.i112_crit_edge:               ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.i112

do.cond.i112:                                     ; preds = %if.end.i109.do.cond.i112_crit_edge, %do.body.i100.do.cond.i112_crit_edge
  call void @msleep(i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %sub.i110 = sub i32 %27, %20
  %cmp16.i111 = icmp slt i32 %sub.i110, 0
  br i1 %cmp16.i111, label %do.cond.i112.do.body.i100_crit_edge, label %tpm_cr50_i2c_get_burst_and_status.exit115.thread

do.cond.i112.do.body.i100_crit_edge:              ; preds = %do.cond.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i100

tpm_cr50_i2c_get_burst_and_status.exit115.thread: ; preds = %do.cond.i112
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.43) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i96) #7
  br label %out_err

if.end28:                                         ; preds = %if.end.i109
  %conv4.i102 = zext i16 %25 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i96) #7
  %sub = sub i32 %14, %cur.0185
  %28 = call i32 @llvm.umin.i32(i32 %sub, i32 %conv4.i102)
  %add.ptr30 = getelementptr i8, ptr %buf, i32 %cur.0185
  %call31 = call fastcc i32 @tpm_cr50_i2c_read(ptr noundef %chip, i8 noundef zeroext 5, ptr noundef %add.ptr30, i32 noundef %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end36, label %while.cond

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.38) #10
  br label %out_err

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %cur.0.lcssa = phi i32 [ %conv4.i.le, %while.cond.preheader.while.end_crit_edge ], [ %add, %while.cond.while.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i116) #7
  %29 = getelementptr inbounds [4 x i8], ptr %buf.i116, i32 0, i32 1
  %30 = ptrtoint ptr %buf.i116 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %buf.i116, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %32 = ptrtoint ptr %timeout_b.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %timeout_b.i, align 4
  %34 = add i32 %33, %31
  br label %do.body.i120

do.body.i120:                                     ; preds = %do.cond.i132.do.body.i120_crit_edge, %while.end
  %call.i118 = call fastcc i32 @tpm_cr50_i2c_read(ptr noundef %chip, i8 noundef zeroext 1, ptr noundef nonnull %buf.i116, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %cmp.i119 = icmp slt i32 %call.i118, 0
  br i1 %cmp.i119, label %do.body.i120.do.cond.i132_crit_edge, label %if.end.i129

do.body.i120.do.cond.i132_crit_edge:              ; preds = %do.body.i120
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.i132

if.end.i129:                                      ; preds = %do.body.i120
  %35 = ptrtoint ptr %buf.i116 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %buf.i116, align 4
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %29, align 2
  %39 = call i16 @llvm.bswap.i16(i16 %38) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp7.i124 = icmp slt i8 %36, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp9.not.i125 = icmp ne i16 %38, 0
  %or.cond.i126 = select i1 %cmp7.i124, i1 %cmp9.not.i125, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %39)
  %cmp12.i127 = icmp ult i16 %39, 64
  %or.cond29.i128 = select i1 %or.cond.i126, i1 %cmp12.i127, i1 false
  br i1 %or.cond29.i128, label %if.end42, label %if.end.i129.do.cond.i132_crit_edge

if.end.i129.do.cond.i132_crit_edge:               ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.i132

do.cond.i132:                                     ; preds = %if.end.i129.do.cond.i132_crit_edge, %do.body.i120.do.cond.i132_crit_edge
  call void @msleep(i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %sub.i130 = sub i32 %40, %34
  %cmp16.i131 = icmp slt i32 %sub.i130, 0
  br i1 %cmp16.i131, label %do.cond.i132.do.body.i120_crit_edge, label %tpm_cr50_i2c_get_burst_and_status.exit135.thread

do.cond.i132.do.body.i120_crit_edge:              ; preds = %do.cond.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i120

tpm_cr50_i2c_get_burst_and_status.exit135.thread: ; preds = %do.cond.i132
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.43) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i116) #7
  br label %out_err

if.end42:                                         ; preds = %if.end.i129
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i116) #7
  %41 = and i8 %36, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not = icmp eq i8 %41, 0
  br i1 %tobool.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.41) #10
  br label %out_err

if.end48:                                         ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i136) #7
  %42 = ptrtoint ptr %buf.i136 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %buf.i136, align 1, !annotation !116
  %call.i137 = call fastcc i32 @tpm_cr50_i2c_read(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %buf.i136, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %cmp.i138 = icmp slt i32 %call.i137, 0
  br i1 %cmp.i138, label %if.end48.tpm_cr50_release_locality.exit_crit_edge, label %if.end.i139

if.end48.tpm_cr50_release_locality.exit_crit_edge: ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_cr50_release_locality.exit

if.end.i139:                                      ; preds = %if.end48
  %43 = ptrtoint ptr %buf.i136 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %buf.i136, align 1
  %45 = and i8 %44, -124
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %45)
  %cmp3.i = icmp eq i8 %45, -124
  br i1 %cmp3.i, label %if.then5.i, label %if.end.i139.tpm_cr50_release_locality.exit_crit_edge

if.end.i139.tpm_cr50_release_locality.exit_crit_edge: ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_cr50_release_locality.exit

if.then5.i:                                       ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %buf.i136 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 32, ptr %buf.i136, align 1
  %call6.i = call fastcc i32 @tpm_cr50_i2c_write(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %buf.i136, i32 noundef 1) #7
  br label %tpm_cr50_release_locality.exit

tpm_cr50_release_locality.exit:                   ; preds = %if.then5.i, %if.end.i139.tpm_cr50_release_locality.exit_crit_edge, %if.end48.tpm_cr50_release_locality.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i136) #7
  br label %cleanup

out_err:                                          ; preds = %do.end46, %tpm_cr50_i2c_get_burst_and_status.exit135.thread, %do.end36, %tpm_cr50_i2c_get_burst_and_status.exit115.thread, %do.end21, %do.end13, %do.end, %tpm_cr50_i2c_get_burst_and_status.exit.thread
  %rc.0 = phi i32 [ -5, %do.end ], [ %call8, %do.end13 ], [ -7, %do.end21 ], [ %call31, %do.end36 ], [ -5, %do.end46 ], [ -110, %tpm_cr50_i2c_get_burst_and_status.exit.thread ], [ -110, %tpm_cr50_i2c_get_burst_and_status.exit115.thread ], [ -110, %tpm_cr50_i2c_get_burst_and_status.exit135.thread ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i140) #7
  %47 = ptrtoint ptr %buf.i140 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %buf.i140, align 4
  %call.i141 = call fastcc i32 @tpm_cr50_i2c_read(ptr noundef %chip, i8 noundef zeroext 1, ptr noundef nonnull %buf.i140, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %cmp.i142 = icmp slt i32 %call.i141, 0
  br i1 %cmp.i142, label %tpm_cr50_i2c_tis_status.exit.thread, label %tpm_cr50_i2c_tis_status.exit

tpm_cr50_i2c_tis_status.exit.thread:              ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i140) #7
  br label %if.end53

tpm_cr50_i2c_tis_status.exit:                     ; preds = %out_err
  %48 = ptrtoint ptr %buf.i140 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %buf.i140, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i140) #7
  %50 = and i8 %49, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool51.not = icmp eq i8 %50, 0
  br i1 %tobool51.not, label %tpm_cr50_i2c_tis_status.exit.if.end53_crit_edge, label %if.then52

tpm_cr50_i2c_tis_status.exit.if.end53_crit_edge:  ; preds = %tpm_cr50_i2c_tis_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then52:                                        ; preds = %tpm_cr50_i2c_tis_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i145) #7
  %51 = ptrtoint ptr %buf.i145 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1073741824, ptr %buf.i145, align 4
  %call.i146 = call fastcc i32 @tpm_cr50_i2c_write(ptr noundef %chip, i8 noundef zeroext 1, ptr noundef nonnull %buf.i145, i32 noundef 4) #7
  call void @msleep(i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i145) #7
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %tpm_cr50_i2c_tis_status.exit.if.end53_crit_edge, %tpm_cr50_i2c_tis_status.exit.thread
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i147) #7
  %52 = ptrtoint ptr %buf.i147 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %buf.i147, align 1, !annotation !116
  %call.i148 = call fastcc i32 @tpm_cr50_i2c_read(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %buf.i147, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %cmp.i149 = icmp slt i32 %call.i148, 0
  br i1 %cmp.i149, label %if.end53.tpm_cr50_release_locality.exit154_crit_edge, label %if.end.i150

if.end53.tpm_cr50_release_locality.exit154_crit_edge: ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_cr50_release_locality.exit154

if.end.i150:                                      ; preds = %if.end53
  %53 = ptrtoint ptr %buf.i147 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %buf.i147, align 1
  %55 = and i8 %54, -124
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %55)
  %cmp3.i151 = icmp eq i8 %55, -124
  br i1 %cmp3.i151, label %if.then5.i153, label %if.end.i150.tpm_cr50_release_locality.exit154_crit_edge

if.end.i150.tpm_cr50_release_locality.exit154_crit_edge: ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_cr50_release_locality.exit154

if.then5.i153:                                    ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %buf.i147 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 32, ptr %buf.i147, align 1
  %call6.i152 = call fastcc i32 @tpm_cr50_i2c_write(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %buf.i147, i32 noundef 1) #7
  br label %tpm_cr50_release_locality.exit154

tpm_cr50_release_locality.exit154:                ; preds = %if.then5.i153, %if.end.i150.tpm_cr50_release_locality.exit154_crit_edge, %if.end53.tpm_cr50_release_locality.exit154_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i147) #7
  br label %cleanup

cleanup:                                          ; preds = %tpm_cr50_release_locality.exit154, %tpm_cr50_release_locality.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %tpm_cr50_release_locality.exit154 ], [ %cur.0.lcssa, %tpm_cr50_release_locality.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_cr50_i2c_tis_send(ptr noundef %chip, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  %buf.i131 = alloca i8, align 1
  %buf.i129 = alloca [4 x i8], align 4
  %buf.i123 = alloca [4 x i8], align 4
  %buf.i103 = alloca [4 x i8], align 4
  %buf.i98 = alloca [4 x i8], align 4
  %buf.i96 = alloca [4 x i8], align 4
  %buf.i = alloca [4 x i8], align 4
  %tpm_go = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tpm_go) #7
  %0 = ptrtoint ptr %tpm_go to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 536870912, ptr %tpm_go, align 4
  %call = tail call fastcc i32 @tpm_cr50_request_locality(ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup60_crit_edge, label %if.end

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup60

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %timeout_b = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 16
  %2 = ptrtoint ptr %timeout_b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout_b, align 4
  %add = add i32 %3, %1
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %buf.i, align 4
  %call.i = call fastcc i32 @tpm_cr50_i2c_read(ptr noundef %chip, i8 noundef zeroext 1, ptr noundef nonnull %buf.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %tpm_cr50_i2c_tis_status.exit.thread, label %tpm_cr50_i2c_tis_status.exit

tpm_cr50_i2c_tis_status.exit.thread:              ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  br label %while.body

tpm_cr50_i2c_tis_status.exit:                     ; preds = %while.cond
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  %7 = and i8 %6, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %tpm_cr50_i2c_tis_status.exit.while.body_crit_edge, label %while.cond6.preheader

tpm_cr50_i2c_tis_status.exit.while.body_crit_edge: ; preds = %tpm_cr50_i2c_tis_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond6.preheader:                            ; preds = %tpm_cr50_i2c_tis_status.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp7.not160 = icmp eq i32 %len, 0
  br i1 %cmp7.not160, label %while.cond6.preheader.while.end31_crit_edge, label %while.body9.lr.ph

while.cond6.preheader.while.end31_crit_edge:      ; preds = %while.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end31

while.body9.lr.ph:                                ; preds = %while.cond6.preheader
  %8 = getelementptr inbounds [4 x i8], ptr %buf.i98, i32 0, i32 1
  br label %while.body9

while.body:                                       ; preds = %tpm_cr50_i2c_tis_status.exit.while.body_crit_edge, %tpm_cr50_i2c_tis_status.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %9
  %cmp2 = icmp slt i32 %sub, 0
  br i1 %cmp2, label %while.body.out_err_crit_edge, label %if.end5

while.body.out_err_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

if.end5:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i96) #7
  %10 = ptrtoint ptr %buf.i96 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1073741824, ptr %buf.i96, align 4
  %call.i97 = call fastcc i32 @tpm_cr50_i2c_write(ptr noundef %chip, i8 noundef zeroext 1, ptr noundef nonnull %buf.i96, i32 noundef 4) #7
  call void @msleep(i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i96) #7
  br label %while.cond

while.body9:                                      ; preds = %cleanup.while.body9_crit_edge, %while.body9.lr.ph
  %sent.0162 = phi i32 [ 0, %while.body9.lr.ph ], [ %add29, %cleanup.while.body9_crit_edge ]
  %len.addr.0161 = phi i32 [ %len, %while.body9.lr.ph ], [ %sub30, %cleanup.while.body9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sent.0162)
  %cmp10.not = icmp eq i32 %sent.0162, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i98) #7
  %11 = ptrtoint ptr %buf.i98 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %buf.i98, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %13 = ptrtoint ptr %timeout_b to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %timeout_b, align 4
  %conv5.i = select i1 %cmp10.not, i32 128, i32 136
  %15 = add i32 %14, %12
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %while.body9
  %call.i99 = call fastcc i32 @tpm_cr50_i2c_read(ptr noundef %chip, i8 noundef zeroext 1, ptr noundef nonnull %buf.i98, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %cmp.i100 = icmp slt i32 %call.i99, 0
  br i1 %cmp.i100, label %do.body.i.do.cond.i_crit_edge, label %if.end.i101

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.i

if.end.i101:                                      ; preds = %do.body.i
  %16 = ptrtoint ptr %buf.i98 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buf.i98, align 4
  %conv.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %8, align 2
  %20 = call i16 @llvm.bswap.i16(i16 %19) #7
  %and.i = and i32 %conv5.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv5.i)
  %cmp7.i = icmp eq i32 %and.i, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp9.not.i = icmp ne i16 %19, 0
  %or.cond.i = select i1 %cmp7.i, i1 %cmp9.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %20)
  %cmp12.i = icmp ult i16 %20, 64
  %or.cond29.i = select i1 %or.cond.i, i1 %cmp12.i, i1 false
  br i1 %or.cond29.i, label %if.end20, label %if.end.i101.do.cond.i_crit_edge

if.end.i101.do.cond.i_crit_edge:                  ; preds = %if.end.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.end.i101.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge
  call void @msleep(i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %21, %15
  %cmp16.i = icmp slt i32 %sub.i, 0
  br i1 %cmp16.i, label %do.cond.i.do.body.i_crit_edge, label %tpm_cr50_i2c_get_burst_and_status.exit.thread

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

tpm_cr50_i2c_get_burst_and_status.exit.thread:    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.43) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i98) #7
  br label %out_err

if.end20:                                         ; preds = %if.end.i101
  %conv4.i = zext i16 %20 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i98) #7
  %sub21 = add nsw i32 %conv4.i, -1
  %22 = call i32 @llvm.umin.i32(i32 %sub21, i32 %len.addr.0161)
  %arrayidx = getelementptr i8, ptr %buf, i32 %sent.0162
  %call24 = call fastcc i32 @tpm_cr50_i2c_write(ptr noundef %chip, i8 noundef zeroext 5, ptr noundef %arrayidx, i32 noundef %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end, label %cleanup

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.45) #10
  br label %out_err

cleanup:                                          ; preds = %if.end20
  %add29 = add i32 %22, %sent.0162
  %sub30 = sub i32 %len.addr.0161, %22
  %cmp7.not = icmp eq i32 %sub30, 0
  br i1 %cmp7.not, label %cleanup.while.end31_crit_edge, label %cleanup.while.body9_crit_edge

cleanup.while.body9_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body9

cleanup.while.end31_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end31

while.end31:                                      ; preds = %cleanup.while.end31_crit_edge, %while.cond6.preheader.while.end31_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i103) #7
  %23 = getelementptr inbounds [4 x i8], ptr %buf.i103, i32 0, i32 1
  %24 = ptrtoint ptr %buf.i103 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %buf.i103, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %26 = ptrtoint ptr %timeout_b to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %timeout_b, align 4
  %28 = add i32 %27, %25
  br label %do.body.i107

do.body.i107:                                     ; preds = %do.cond.i119.do.body.i107_crit_edge, %while.end31
  %call.i105 = call fastcc i32 @tpm_cr50_i2c_read(ptr noundef %chip, i8 noundef zeroext 1, ptr noundef nonnull %buf.i103, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %cmp.i106 = icmp slt i32 %call.i105, 0
  br i1 %cmp.i106, label %do.body.i107.do.cond.i119_crit_edge, label %if.end.i116

do.body.i107.do.cond.i119_crit_edge:              ; preds = %do.body.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.i119

if.end.i116:                                      ; preds = %do.body.i107
  %29 = ptrtoint ptr %buf.i103 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %buf.i103, align 4
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %23, align 2
  %33 = call i16 @llvm.bswap.i16(i16 %32) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp7.i111 = icmp slt i8 %30, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp9.not.i112 = icmp ne i16 %32, 0
  %or.cond.i113 = select i1 %cmp7.i111, i1 %cmp9.not.i112, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %33)
  %cmp12.i114 = icmp ult i16 %33, 64
  %or.cond29.i115 = select i1 %or.cond.i113, i1 %cmp12.i114, i1 false
  br i1 %or.cond29.i115, label %if.end36, label %if.end.i116.do.cond.i119_crit_edge

if.end.i116.do.cond.i119_crit_edge:               ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.i119

do.cond.i119:                                     ; preds = %if.end.i116.do.cond.i119_crit_edge, %do.body.i107.do.cond.i119_crit_edge
  call void @msleep(i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %sub.i117 = sub i32 %34, %28
  %cmp16.i118 = icmp slt i32 %sub.i117, 0
  br i1 %cmp16.i118, label %do.cond.i119.do.body.i107_crit_edge, label %tpm_cr50_i2c_get_burst_and_status.exit122.thread

do.cond.i119.do.body.i107_crit_edge:              ; preds = %do.cond.i119
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i107

tpm_cr50_i2c_get_burst_and_status.exit122.thread: ; preds = %do.cond.i119
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.43) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i103) #7
  br label %out_err

if.end36:                                         ; preds = %if.end.i116
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i103) #7
  %35 = and i8 %30, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool38.not = icmp eq i8 %35, 0
  br i1 %tobool38.not, label %if.end44, label %do.end42

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.48) #10
  br label %out_err

if.end44:                                         ; preds = %if.end36
  %call45 = call fastcc i32 @tpm_cr50_i2c_write(ptr noundef %chip, i8 noundef zeroext 1, ptr noundef nonnull %tpm_go, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %do.end51, label %if.end44.cleanup60_crit_edge

if.end44.cleanup60_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup60

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.51) #10
  br label %out_err

out_err:                                          ; preds = %do.end51, %do.end42, %tpm_cr50_i2c_get_burst_and_status.exit122.thread, %do.end, %tpm_cr50_i2c_get_burst_and_status.exit.thread, %while.body.out_err_crit_edge
  %rc.1 = phi i32 [ -5, %do.end42 ], [ %call45, %do.end51 ], [ -110, %tpm_cr50_i2c_get_burst_and_status.exit122.thread ], [ -110, %tpm_cr50_i2c_get_burst_and_status.exit.thread ], [ %call24, %do.end ], [ -110, %while.body.out_err_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i123) #7
  %36 = ptrtoint ptr %buf.i123 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %buf.i123, align 4
  %call.i124 = call fastcc i32 @tpm_cr50_i2c_read(ptr noundef %chip, i8 noundef zeroext 1, ptr noundef nonnull %buf.i123, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %cmp.i125 = icmp slt i32 %call.i124, 0
  br i1 %cmp.i125, label %tpm_cr50_i2c_tis_status.exit128.thread, label %tpm_cr50_i2c_tis_status.exit128

tpm_cr50_i2c_tis_status.exit128.thread:           ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i123) #7
  br label %if.end59

tpm_cr50_i2c_tis_status.exit128:                  ; preds = %out_err
  %37 = ptrtoint ptr %buf.i123 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %buf.i123, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i123) #7
  %39 = and i8 %38, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool57.not = icmp eq i8 %39, 0
  br i1 %tobool57.not, label %tpm_cr50_i2c_tis_status.exit128.if.end59_crit_edge, label %if.then58

tpm_cr50_i2c_tis_status.exit128.if.end59_crit_edge: ; preds = %tpm_cr50_i2c_tis_status.exit128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then58:                                        ; preds = %tpm_cr50_i2c_tis_status.exit128
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i129) #7
  %40 = ptrtoint ptr %buf.i129 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1073741824, ptr %buf.i129, align 4
  %call.i130 = call fastcc i32 @tpm_cr50_i2c_write(ptr noundef %chip, i8 noundef zeroext 1, ptr noundef nonnull %buf.i129, i32 noundef 4) #7
  call void @msleep(i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i129) #7
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %tpm_cr50_i2c_tis_status.exit128.if.end59_crit_edge, %tpm_cr50_i2c_tis_status.exit128.thread
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i131) #7
  %41 = ptrtoint ptr %buf.i131 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %buf.i131, align 1, !annotation !116
  %call.i132 = call fastcc i32 @tpm_cr50_i2c_read(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %buf.i131, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %cmp.i133 = icmp slt i32 %call.i132, 0
  br i1 %cmp.i133, label %if.end59.tpm_cr50_release_locality.exit_crit_edge, label %if.end.i134

if.end59.tpm_cr50_release_locality.exit_crit_edge: ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_cr50_release_locality.exit

if.end.i134:                                      ; preds = %if.end59
  %42 = ptrtoint ptr %buf.i131 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %buf.i131, align 1
  %44 = and i8 %43, -124
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %44)
  %cmp3.i = icmp eq i8 %44, -124
  br i1 %cmp3.i, label %if.then5.i, label %if.end.i134.tpm_cr50_release_locality.exit_crit_edge

if.end.i134.tpm_cr50_release_locality.exit_crit_edge: ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #9
  br label %tpm_cr50_release_locality.exit

if.then5.i:                                       ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %buf.i131 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 32, ptr %buf.i131, align 1
  %call6.i = call fastcc i32 @tpm_cr50_i2c_write(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %buf.i131, i32 noundef 1) #7
  br label %tpm_cr50_release_locality.exit

tpm_cr50_release_locality.exit:                   ; preds = %if.then5.i, %if.end.i134.tpm_cr50_release_locality.exit_crit_edge, %if.end59.tpm_cr50_release_locality.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i131) #7
  br label %cleanup60

cleanup60:                                        ; preds = %tpm_cr50_release_locality.exit, %if.end44.cleanup60_crit_edge, %entry.cleanup60_crit_edge
  %retval.0 = phi i32 [ %rc.1, %tpm_cr50_release_locality.exit ], [ %call, %entry.cleanup60_crit_edge ], [ 0, %if.end44.cleanup60_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tpm_go) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tpm_cr50_i2c_tis_set_ready(ptr noundef %chip) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #7
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1073741824, ptr %buf, align 4
  %call = call fastcc i32 @tpm_cr50_i2c_write(ptr noundef %chip, i8 noundef zeroext 1, ptr noundef nonnull %buf, i32 noundef 4)
  tail call void @msleep(i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @tpm_cr50_i2c_tis_status(ptr noundef %chip) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #7
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf, align 4
  %call = call fastcc i32 @tpm_cr50_i2c_read(ptr noundef %chip, i8 noundef zeroext 1, ptr noundef nonnull %buf, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #7
  ret i8 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_pm_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_pm_resume(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !103, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__initcall__kmod_tpm_tis_i2c_cr50__294_794_cr50_i2c_driver_init6, !1, !"__initcall__kmod_tpm_tis_i2c_cr50__294_794_cr50_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 794, i32 1}
!2 = !{ptr @__exitcall_cr50_i2c_driver_exit, !1, !"__exitcall_cr50_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 796, i32 1}
!5 = !{ptr @__UNIQUE_ID_file296, !6, !"__UNIQUE_ID_file296", i1 false, i1 false}
!6 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 797, i32 1}
!7 = !{ptr @__UNIQUE_ID_license297, !6, !"__UNIQUE_ID_license297", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 787, i32 11}
!10 = !{ptr @cr50_i2c_driver, !11, !"cr50_i2c_driver", i1 false, i1 false}
!11 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 783, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 771, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @tpm_cr50_i2c_remove._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @tpm_cr50_i2c_remove._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 162, i32 4}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tpm_cr50_i2c_transfer_message._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @tpm_cr50_i2c_transfer_message._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 104, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @tpm_cr50_i2c_wait_tpm_ready._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @tpm_cr50_i2c_wait_tpm_ready._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 720, i32 4}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tpm_cr50_i2c_probe._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @tpm_cr50_i2c_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 726, i32 3}
!38 = !{ptr @tpm_cr50_i2c_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tpm_cr50_i2c_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 732, i32 3}
!42 = !{ptr @tpm_cr50_i2c_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tpm_cr50_i2c_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 739, i32 3}
!46 = !{ptr @tpm_cr50_i2c_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tpm_cr50_i2c_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 746, i32 3}
!50 = !{ptr @tpm_cr50_i2c_probe._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @tpm_cr50_i2c_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 751, i32 2}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @tpm_cr50_i2c_probe._entry.25, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @tpm_cr50_i2c_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @cr50_i2c, !58, !"cr50_i2c", i1 false, i1 false}
!58 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 644, i32 35}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 468, i32 3}
!61 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @tpm_cr50_i2c_tis_recv._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @tpm_cr50_i2c_tis_recv._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 478, i32 3}
!66 = !{ptr @tpm_cr50_i2c_tis_recv._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @tpm_cr50_i2c_tis_recv._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 485, i32 3}
!70 = !{ptr @tpm_cr50_i2c_tis_recv._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @tpm_cr50_i2c_tis_recv._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 501, i32 4}
!74 = !{ptr @tpm_cr50_i2c_tis_recv._entry.37, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @tpm_cr50_i2c_tis_recv._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 513, i32 3}
!78 = !{ptr @tpm_cr50_i2c_tis_recv._entry.40, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @tpm_cr50_i2c_tis_recv._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 437, i32 2}
!82 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @tpm_cr50_i2c_get_burst_and_status._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @tpm_cr50_i2c_get_burst_and_status._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 582, i32 4}
!87 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @tpm_cr50_i2c_tis_send._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @tpm_cr50_i2c_tis_send._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 595, i32 3}
!92 = !{ptr @tpm_cr50_i2c_tis_send._entry.47, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @tpm_cr50_i2c_tis_send._entry_ptr.49, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 604, i32 3}
!96 = !{ptr @tpm_cr50_i2c_tis_send._entry.50, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @tpm_cr50_i2c_tis_send._entry_ptr.52, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 637, i32 37}
!100 = !{ptr @init_completion.__key, !101, !"__key", i1 false, i1 false}
!101 = !{!"../include/linux/completion.h", i32 87, i32 2}
!102 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @of_cr50_i2c_match, !104, !"of_cr50_i2c_match", i1 false, i1 false}
!104 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 664, i32 34}
!105 = !{ptr @cr50_i2c_pm, !106, !"cr50_i2c_pm", i1 false, i1 false}
!106 = !{!"../drivers/char/tpm/tpm_tis_i2c_cr50.c", i32 781, i32 8}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{!"auto-init"}
