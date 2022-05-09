; ModuleID = '/llk/IR_all_yes/drivers/char/tpm/tpm_i2c_nuvoton.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm_i2c_nuvoton.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tpm_class_ops = type { i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.priv_data = type { i32, i32, %struct.wait_queue_head }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_tpm_i2c_nuvoton__304_663_i2c_nuvoton_driver_init6 = internal global ptr @i2c_nuvoton_driver_init, section ".initcall6.init", align 4
@i2c_nuvoton_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @i2c_nuvoton_probe, ptr @i2c_nuvoton_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @i2c_nuvoton_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2c_nuvoton_pm_ops, ptr null, ptr null }, ptr @i2c_nuvoton_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_i2c_nuvoton_driver_exit = internal global ptr @i2c_nuvoton_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author305 = internal constant [57 x i8] c"tpm_i2c_nuvoton.author=Dan Morav (dan.morav@nuvoton.com)\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [51 x i8] c"tpm_i2c_nuvoton.description=Nuvoton TPM I2C Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [54 x i8] c"tpm_i2c_nuvoton.file=drivers/char/tpm/tpm_i2c_nuvoton\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [28 x i8] c"tpm_i2c_nuvoton.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tpm_i2c_nuvoton\00", [16 x i8] zeroinitializer }, align 32
@i2c_nuvoton_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,npct501\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"winbond,wpct301\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,npct601\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@i2c_nuvoton_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tpm_pm_suspend, ptr @tpm_pm_resume, ptr @tpm_pm_suspend, ptr @tpm_pm_resume, ptr @tpm_pm_suspend, ptr @tpm_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@i2c_nuvoton_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tpm_i2c_nuvoton\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tpm2_i2c_nuvoton\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@i2c_nuvoton_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 539, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VID: %04X DID: %02X RID: %02X\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c_nuvoton_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/char/tpm/tpm_i2c_nuvoton.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_nuvoton_probe._entry_ptr = internal global ptr @i2c_nuvoton_probe._entry, section ".printk_index", align 4
@tpm_i2c = internal constant { %struct.tpm_class_ops, [40 x i8] } { %struct.tpm_class_ops { i32 1, i8 -112, i8 -112, ptr @i2c_nuvoton_req_canceled, ptr @i2c_nuvoton_recv, ptr @i2c_nuvoton_send, ptr @i2c_nuvoton_ready, ptr @i2c_nuvoton_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@i2c_nuvoton_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->read_queue\00", [46 x i8] zeroinitializer }, align 32
@i2c_nuvoton_probe.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s() priv->irq\0A\00", [16 x i8] zeroinitializer }, align 32
@i2c_nuvoton_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 584, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s() Unable to request irq: %d for use\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@i2c_nuvoton_probe._entry_ptr.11 = internal global ptr @i2c_nuvoton_probe._entry.8, section ".printk_index", align 4
@get_vid.vid_did_rid_value = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"P\10\FE", [29 x i8] zeroinitializer }, align 32
@i2c_nuvoton_read_buf.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"i2c_nuvoton_read_buf\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(offset=%u size=%u data=%*ph) -> sts=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@i2c_nuvoton_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 278, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s() count < header size\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2c_nuvoton_recv\00", [47 x i8] zeroinitializer }, align 32
@i2c_nuvoton_recv._entry_ptr = internal global ptr @i2c_nuvoton_recv._entry, section ".printk_index", align 4
@i2c_nuvoton_recv._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 294, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s() timeout on dataAvail\0A\00", [37 x i8] zeroinitializer }, align 32
@i2c_nuvoton_recv._entry_ptr.18 = internal global ptr @i2c_nuvoton_recv._entry.16, section ".printk_index", align 4
@i2c_nuvoton_recv._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.3, i32 300, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s() fail to get burstCount\0A\00", [35 x i8] zeroinitializer }, align 32
@i2c_nuvoton_recv._entry_ptr.21 = internal global ptr @i2c_nuvoton_recv._entry.19, section ".printk_index", align 4
@i2c_nuvoton_recv._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.3, i32 307, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s() fail to read header\0A\00", [38 x i8] zeroinitializer }, align 32
@i2c_nuvoton_recv._entry_ptr.24 = internal global ptr @i2c_nuvoton_recv._entry.22, section ".printk_index", align 4
@i2c_nuvoton_recv._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.3, i32 317, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s() expected > count\0A\00", [41 x i8] zeroinitializer }, align 32
@i2c_nuvoton_recv._entry_ptr.27 = internal global ptr @i2c_nuvoton_recv._entry.25, section ".printk_index", align 4
@i2c_nuvoton_recv._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.15, ptr @.str.3, i32 326, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s() fail to read remainder of result\0A\00", [57 x i8] zeroinitializer }, align 32
@i2c_nuvoton_recv._entry_ptr.30 = internal global ptr @i2c_nuvoton_recv._entry.28, section ".printk_index", align 4
@i2c_nuvoton_recv._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.15, ptr @.str.3, i32 334, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s() error left over data\0A\00", [37 x i8] zeroinitializer }, align 32
@i2c_nuvoton_recv._entry_ptr.33 = internal global ptr @i2c_nuvoton_recv._entry.31, section ".printk_index", align 4
@i2c_nuvoton_recv.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.34, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s() -> %d\0A\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@i2c_nuvoton_recv_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 244, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s() fail to read burstCount=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"i2c_nuvoton_recv_data\00", [42 x i8] zeroinitializer }, align 32
@i2c_nuvoton_recv_data._entry_ptr = internal global ptr @i2c_nuvoton_recv_data._entry, section ".printk_index", align 4
@i2c_nuvoton_recv_data._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 253, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s() fail on i2c_nuvoton_read_buf()=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@i2c_nuvoton_recv_data._entry_ptr.39 = internal global ptr @i2c_nuvoton_recv_data._entry.37, section ".printk_index", align 4
@i2c_nuvoton_recv_data.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.40, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(%d):\00", [24 x i8] zeroinitializer }, align 32
@i2c_nuvoton_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 368, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s() timeout on commandReady\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2c_nuvoton_send\00", [47 x i8] zeroinitializer }, align 32
@i2c_nuvoton_send._entry_ptr = internal global ptr @i2c_nuvoton_send._entry, section ".printk_index", align 4
@i2c_nuvoton_send._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 378, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s() fail get burstCount\0A\00", [38 x i8] zeroinitializer }, align 32
@i2c_nuvoton_send._entry_ptr.45 = internal global ptr @i2c_nuvoton_send._entry.43, section ".printk_index", align 4
@i2c_nuvoton_send._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.3, i32 388, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s() fail i2cWriteBuf\0A\00", [41 x i8] zeroinitializer }, align 32
@i2c_nuvoton_send._entry_ptr.48 = internal global ptr @i2c_nuvoton_send._entry.46, section ".printk_index", align 4
@i2c_nuvoton_send.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.3, ptr @.str.40, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@i2c_nuvoton_send._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.3, i32 402, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s() timeout on Expect\0A\00", [40 x i8] zeroinitializer }, align 32
@i2c_nuvoton_send._entry_ptr.51 = internal global ptr @i2c_nuvoton_send._entry.49, section ".printk_index", align 4
@i2c_nuvoton_send._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.42, ptr @.str.3, i32 415, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s() fail to write last byte\0A\00", [34 x i8] zeroinitializer }, align 32
@i2c_nuvoton_send._entry_ptr.54 = internal global ptr @i2c_nuvoton_send._entry.52, section ".printk_index", align 4
@i2c_nuvoton_send.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.3, ptr @.str.55, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s(last): %02x\00", [17 x i8] zeroinitializer }, align 32
@i2c_nuvoton_send._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.42, ptr @.str.3, i32 426, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s() timeout on Expect to clear\0A\00", [63 x i8] zeroinitializer }, align 32
@i2c_nuvoton_send._entry_ptr.58 = internal global ptr @i2c_nuvoton_send._entry.56, section ".printk_index", align 4
@i2c_nuvoton_send._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.42, ptr @.str.3, i32 440, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s() fail to write Go\0A\00", [41 x i8] zeroinitializer }, align 32
@i2c_nuvoton_send._entry_ptr.61 = internal global ptr @i2c_nuvoton_send._entry.59, section ".printk_index", align 4
@i2c_nuvoton_send._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.42, ptr @.str.3, i32 450, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s() timeout command duration %ld\0A\00", [61 x i8] zeroinitializer }, align 32
@i2c_nuvoton_send._entry_ptr.64 = internal global ptr @i2c_nuvoton_send._entry.62, section ".printk_index", align 4
@i2c_nuvoton_send.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.3, ptr @.str.65, i8 0, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s() -> %zd\0A\00", [19 x i8] zeroinitializer }, align 32
@i2c_nuvoton_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 130, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s() fail to write TPM_STS.commandReady\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c_nuvoton_ready\00", [46 x i8] zeroinitializer }, align 32
@i2c_nuvoton_ready._entry_ptr = internal global ptr @i2c_nuvoton_ready._entry, section ".printk_index", align 4
@i2c_nuvoton_wait_for_stat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 214, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(%02x, %02x) -> timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"i2c_nuvoton_wait_for_stat\00", [38 x i8] zeroinitializer }, align 32
@i2c_nuvoton_wait_for_stat._entry_ptr = internal global ptr @i2c_nuvoton_wait_for_stat._entry, section ".printk_index", align 4
@i2c_nuvoton_write_buf.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.3, ptr @.str.13, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"i2c_nuvoton_write_buf\00", [42 x i8] zeroinitializer }, align 32
@i2c_nuvoton_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 97, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s() error return %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i2c_nuvoton_read_status\00", [40 x i8] zeroinitializer }, align 32
@i2c_nuvoton_read_status._entry_ptr = internal global ptr @i2c_nuvoton_read_status._entry, section ".printk_index", align 4
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c"i2c_nuvoton_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 652, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 657, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [21 x i8] c"i2c_nuvoton_of_match\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 641, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"i2c_nuvoton_pm_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 650, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"i2c_nuvoton_id\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 633, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 538, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [8 x i8] c"tpm_i2c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 464, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 559, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 576, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 583, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [18 x i8] c"vid_did_rid_value\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 493, i32 18 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 58, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 278, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 294, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 300, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 307, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 317, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 325, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 334, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 341, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 242, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 251, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 256, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 367, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 377, i32 5 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 387, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 401, i32 5 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 414, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 419, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 425, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 440, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 449, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 455, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 129, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 213, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 70, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.287 = private constant [38 x i8] c"../drivers/char/tpm/tpm_i2c_nuvoton.c\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 96, i32 3 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_i2c_nuvoton_driver_exit, ptr @__initcall__kmod_tpm_i2c_nuvoton__304_663_i2c_nuvoton_driver_init6, ptr @i2c_nuvoton_driver_exit, ptr @i2c_nuvoton_probe._entry, ptr @i2c_nuvoton_probe._entry.8, ptr @i2c_nuvoton_probe._entry_ptr, ptr @i2c_nuvoton_probe._entry_ptr.11, ptr @i2c_nuvoton_read_status._entry, ptr @i2c_nuvoton_read_status._entry_ptr, ptr @i2c_nuvoton_ready._entry, ptr @i2c_nuvoton_ready._entry_ptr, ptr @i2c_nuvoton_recv._entry, ptr @i2c_nuvoton_recv._entry.16, ptr @i2c_nuvoton_recv._entry.19, ptr @i2c_nuvoton_recv._entry.22, ptr @i2c_nuvoton_recv._entry.25, ptr @i2c_nuvoton_recv._entry.28, ptr @i2c_nuvoton_recv._entry.31, ptr @i2c_nuvoton_recv._entry_ptr, ptr @i2c_nuvoton_recv._entry_ptr.18, ptr @i2c_nuvoton_recv._entry_ptr.21, ptr @i2c_nuvoton_recv._entry_ptr.24, ptr @i2c_nuvoton_recv._entry_ptr.27, ptr @i2c_nuvoton_recv._entry_ptr.30, ptr @i2c_nuvoton_recv._entry_ptr.33, ptr @i2c_nuvoton_recv_data._entry, ptr @i2c_nuvoton_recv_data._entry.37, ptr @i2c_nuvoton_recv_data._entry_ptr, ptr @i2c_nuvoton_recv_data._entry_ptr.39, ptr @i2c_nuvoton_send._entry, ptr @i2c_nuvoton_send._entry.43, ptr @i2c_nuvoton_send._entry.46, ptr @i2c_nuvoton_send._entry.49, ptr @i2c_nuvoton_send._entry.52, ptr @i2c_nuvoton_send._entry.56, ptr @i2c_nuvoton_send._entry.59, ptr @i2c_nuvoton_send._entry.62, ptr @i2c_nuvoton_send._entry_ptr, ptr @i2c_nuvoton_send._entry_ptr.45, ptr @i2c_nuvoton_send._entry_ptr.48, ptr @i2c_nuvoton_send._entry_ptr.51, ptr @i2c_nuvoton_send._entry_ptr.54, ptr @i2c_nuvoton_send._entry_ptr.58, ptr @i2c_nuvoton_send._entry_ptr.61, ptr @i2c_nuvoton_send._entry_ptr.64, ptr @i2c_nuvoton_wait_for_stat._entry, ptr @i2c_nuvoton_wait_for_stat._entry_ptr, ptr @i2c_nuvoton_driver, ptr @.str, ptr @i2c_nuvoton_of_match, ptr @i2c_nuvoton_pm_ops, ptr @i2c_nuvoton_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tpm_i2c, ptr @i2c_nuvoton_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @get_vid.vid_did_rid_value, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_i2c to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_vid.vid_did_rid_value to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_recv._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_recv._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_recv._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_recv._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_recv._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_recv._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_recv_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_recv_data._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_send._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_send._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_send._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_send._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_send._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_send._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_send._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_wait_for_stat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_nuvoton_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_nuvoton_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @i2c_nuvoton_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_nuvoton_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @i2c_nuvoton_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_nuvoton_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %rc = alloca i32, align 4
  %vid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rc) #8
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vid) #8
  %0 = ptrtoint ptr %vid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %vid, align 4
  %call = call fastcc i32 @get_vid(ptr noundef %client, ptr noundef nonnull %vid)
  %1 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %vid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vid, align 4
  %conv2 = and i32 %3, 65535
  %shr = lshr i32 %3, 16
  %conv4 = and i32 %shr, 255
  %shr5 = lshr i32 %3, 24
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %shr5) #11
  %call8 = tail call ptr @tpmm_chip_alloc(ptr noundef %dev1, ptr noundef nonnull @tpm_i2c) #8
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 60, i32 noundef 3520) #8
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool17.not = icmp eq ptr %6, null
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end16
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %7 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver, align 4
  %of_match_table = getelementptr inbounds %struct.device_driver, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_match_table, align 4
  %call19 = tail call ptr @of_match_device(ptr noundef %10, ptr noundef %dev1) #8
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then18.do.body31_crit_edge, label %land.lhs.true

if.then18.do.body31_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body31

land.lhs.true:                                    ; preds = %if.then18
  %data = getelementptr inbounds %struct.of_device_id, ptr %call19, i32 0, i32 3
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %cmp = icmp eq ptr %12, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %land.lhs.true.do.body31.sink.split_crit_edge, label %land.lhs.true.do.body31_crit_edge

land.lhs.true.do.body31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body31

land.lhs.true.do.body31.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body31.sink.split

if.else:                                          ; preds = %if.end16
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %13 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp24 = icmp eq i32 %14, 1
  br i1 %cmp24, label %if.else.do.body31.sink.split_crit_edge, label %if.else.do.body31_crit_edge

if.else.do.body31_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body31

if.else.do.body31.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body31.sink.split

do.body31.sink.split:                             ; preds = %if.else.do.body31.sink.split_crit_edge, %land.lhs.true.do.body31.sink.split_crit_edge
  %flags27 = getelementptr inbounds %struct.tpm_chip, ptr %call8, i32 0, i32 9
  %15 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags27, align 4
  %or = or i32 %16, 2
  store i32 %or, ptr %flags27, align 4
  br label %do.body31

do.body31:                                        ; preds = %do.body31.sink.split, %if.else.do.body31_crit_edge, %land.lhs.true.do.body31_crit_edge, %if.then18.do.body31_crit_edge
  %read_queue = getelementptr inbounds %struct.priv_data, ptr %call.i, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %read_queue, ptr noundef nonnull @.str.6, ptr noundef nonnull @i2c_nuvoton_probe.__key) #8
  %timeout_a = getelementptr inbounds %struct.tpm_chip, ptr %call8, i32 0, i32 15
  %17 = ptrtoint ptr %timeout_a to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 75, ptr %timeout_a, align 8
  %timeout_b = getelementptr inbounds %struct.tpm_chip, ptr %call8, i32 0, i32 16
  %18 = ptrtoint ptr %timeout_b to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 200, ptr %timeout_b, align 4
  %timeout_c = getelementptr inbounds %struct.tpm_chip, ptr %call8, i32 0, i32 17
  %19 = ptrtoint ptr %timeout_c to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 75, ptr %timeout_c, align 8
  %timeout_d = getelementptr inbounds %struct.tpm_chip, ptr %call8, i32 0, i32 18
  %20 = ptrtoint ptr %timeout_d to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 75, ptr %timeout_d, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %call8, i32 0, i32 8
  %21 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool41.not = icmp eq i32 %23, 0
  br i1 %tobool41.not, label %do.body31.if.end85_crit_edge, label %do.body43

do.body31.if.end85_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

do.body43:                                        ; preds = %do.body31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_nuvoton_probe.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_nuvoton_probe, %if.then48)) #8
          to label %do.end51 [label %if.then48], !srcloc !159

if.then48:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_nuvoton_probe.__UNIQUE_ID_ddebug303, ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2) #8
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %do.body43
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %call8, i32 0, i32 3
  %27 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end51.dev_name.exit_crit_edge

do.end51.dev_name.exit_crit_edge:                 ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call8, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end51.dev_name.exit_crit_edge
  %retval.0.i127 = phi ptr [ %30, %if.end.i ], [ %28, %do.end51.dev_name.exit_crit_edge ]
  %call.i128 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %26, ptr noundef nonnull @i2c_nuvoton_int_handler, ptr noundef null, i32 noundef 8, ptr noundef %retval.0.i127, ptr noundef %call8) #8
  %31 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call.i128, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool56.not = icmp eq i32 %call.i128, 0
  br i1 %tobool56.not, label %if.else63, label %do.end60

do.end60:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef %33) #11
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %call.i, align 4
  br label %if.end85

if.else63:                                        ; preds = %dev_name.exit
  %flags64 = getelementptr inbounds %struct.tpm_chip, ptr %call8, i32 0, i32 9
  %35 = ptrtoint ptr %flags64 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags64, align 4
  %or65 = or i32 %36, 4
  store i32 %or65, ptr %flags64, align 4
  tail call void @i2c_nuvoton_ready(ptr noundef %call8)
  %37 = ptrtoint ptr %timeout_b to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %timeout_b, align 4
  %call67 = tail call fastcc i32 @i2c_nuvoton_wait_for_stat(ptr noundef %call8, i8 noundef zeroext 64, i8 noundef zeroext 64, i32 noundef %38, ptr noundef null)
  %39 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call67, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp eq i32 %call67, 0
  br i1 %cmp68, label %if.then70, label %if.else76

if.then70:                                        ; preds = %if.else63
  %call71 = call fastcc i32 @i2c_nuvoton_write_buf(ptr noundef %client, i8 noundef zeroext 32, i8 noundef zeroext 1, ptr noundef nonnull %rc)
  %40 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call71, ptr %rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then70.cleanup_crit_edge, label %if.end75

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end75:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  call void @i2c_nuvoton_ready(ptr noundef %call8)
  br label %if.end85

if.else76:                                        ; preds = %if.else63
  %call77 = tail call zeroext i8 @i2c_nuvoton_read_status(ptr noundef %call8)
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %call77)
  %cmp79.not = icmp eq i8 %call77, -128
  br i1 %cmp79.not, label %if.else76.if.end85_crit_edge, label %if.else76.cleanup_crit_edge

if.else76.cleanup_crit_edge:                      ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else76.if.end85_crit_edge:                     ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.end85:                                         ; preds = %if.else76.if.end85_crit_edge, %if.end75, %do.end60, %do.body31.if.end85_crit_edge
  %call86 = call i32 @tpm_chip_register(ptr noundef %call8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.else76.cleanup_crit_edge, %if.then70.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then10 ], [ %call86, %if.end85 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ %call71, %if.then70.cleanup_crit_edge ], [ -5, %if.else76.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vid) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rc) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_nuvoton_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @tpm_chip_unregister(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_vid(ptr noundef %client, ptr nocapture noundef writeonly %res) unnamed_addr #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #8
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temp, align 4, !annotation !160
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
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
  %call.i.i = tail call i32 %6(ptr noundef %2) #8
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext 96, i8 noundef zeroext 4, ptr noundef nonnull %temp) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_nuvoton_read_buf.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_vid, %if.then.i)) #8
          to label %i2c_nuvoton_read_buf.exit [label %if.then.i], !srcloc !159

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_nuvoton_read_buf.__UNIQUE_ID_ddebug290, ptr noundef %dev.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 96, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %temp, i32 noundef %call.i) #8
  br label %i2c_nuvoton_read_buf.exit

i2c_nuvoton_read_buf.exit:                        ; preds = %if.then.i, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %i2c_nuvoton_read_buf.exit.cleanup_crit_edge, label %if.end3

i2c_nuvoton_read_buf.exit.cleanup_crit_edge:      ; preds = %i2c_nuvoton_read_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %i2c_nuvoton_read_buf.exit
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %temp, ptr noundef nonnull dereferenceable(3) @get_vid.vid_did_rid_value, i32 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool5.not = icmp eq i32 %bcmp, 0
  br i1 %tobool5.not, label %if.end3.if.end15_crit_edge, label %if.then6

if.end3.if.end15_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then6:                                         ; preds = %if.end3
  %call.i23 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext 32, i8 noundef zeroext 4, ptr noundef nonnull %temp) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_nuvoton_read_buf.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_vid, %if.then.i25)) #8
          to label %i2c_nuvoton_read_buf.exit26 [label %if.then.i25], !srcloc !159

if.then.i25:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i24 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_nuvoton_read_buf.__UNIQUE_ID_ddebug290, ptr noundef %dev.i24, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 32, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %temp, i32 noundef %call.i23) #8
  br label %i2c_nuvoton_read_buf.exit26

i2c_nuvoton_read_buf.exit26:                      ; preds = %if.then.i25, %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %cmp8 = icmp slt i32 %call.i23, 0
  br i1 %cmp8, label %i2c_nuvoton_read_buf.exit26.cleanup_crit_edge, label %if.end10

i2c_nuvoton_read_buf.exit26.cleanup_crit_edge:    ; preds = %i2c_nuvoton_read_buf.exit26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %i2c_nuvoton_read_buf.exit26
  %bcmp22 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %temp, ptr noundef nonnull dereferenceable(3) @get_vid.vid_did_rid_value, i32 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp22)
  %tobool12.not = icmp eq i32 %bcmp22, 0
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15:                                         ; preds = %if.end10.if.end15_crit_edge, %if.end3.if.end15_crit_edge
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp, align 4
  %9 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end10.cleanup_crit_edge, %i2c_nuvoton_read_buf.exit26.cleanup_crit_edge, %i2c_nuvoton_read_buf.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -19, %entry.cleanup_crit_edge ], [ %call.i, %i2c_nuvoton_read_buf.exit.cleanup_crit_edge ], [ %call.i23, %i2c_nuvoton_read_buf.exit26.cleanup_crit_edge ], [ -19, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tpmm_chip_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_nuvoton_int_handler(i32 noundef %dummy, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %intrs = getelementptr inbounds %struct.priv_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %intrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intrs, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %intrs, align 4
  %read_queue = getelementptr inbounds %struct.priv_data, ptr %1, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %read_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  tail call void @disable_irq_nosync(i32 noundef %5) #8
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_nuvoton_ready(ptr noundef %chip) #2 align 64 {
entry:
  %data.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i)
  %2 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 64, ptr %data.addr.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.06.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %data.addr.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_nuvoton_write_buf.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_nuvoton_ready, %if.then.i.i)) #8
          to label %i2c_nuvoton_write_buf.exit.i [label %if.then.i.i], !srcloc !159

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_nuvoton_write_buf.__UNIQUE_ID_ddebug291, ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.70, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %data.addr.i, i32 noundef %call.i.i) #8
  br label %i2c_nuvoton_write_buf.exit.i

i2c_nuvoton_write_buf.exit.i:                     ; preds = %if.then.i.i, %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %for.inc.i, label %i2c_nuvoton_write_status.exit

for.inc.i:                                        ; preds = %i2c_nuvoton_write_buf.exit.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1300, i32 noundef 2) #8
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not, label %do.end, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

i2c_nuvoton_write_status.exit:                    ; preds = %i2c_nuvoton_write_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  br label %if.end

do.end:                                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %i2c_nuvoton_write_status.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_nuvoton_wait_for_stat(ptr noundef %chip, i8 noundef zeroext %mask, i8 noundef zeroext %value, i32 noundef %timeout, ptr noundef %queue) unnamed_addr #2 align 64 {
entry:
  %data.i.i111 = alloca i8, align 1
  %data.i.i = alloca i8, align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool1.not = icmp eq ptr %queue, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %intrs = getelementptr inbounds %struct.priv_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %intrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %intrs, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  tail call void @enable_irq(i32 noundef %7) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 181) #8
  %8 = ptrtoint ptr %intrs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %intrs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp.not = icmp eq i32 %5, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool8.not = icmp eq i32 %timeout, 0
  %spec.store.select = select i1 %tobool8.not, i32 1, i32 %timeout
  %__ret.0 = select i1 %cmp.not, i32 %timeout, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool11.not = icmp ne i32 %__ret.0, 0
  %10 = and i1 %cmp.not, %tobool11.not
  br i1 %10, label %if.then13, label %if.then.if.end40_crit_edge

if.then.if.end40_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then13:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %11 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call15135 = call i32 @prepare_to_wait_event(ptr noundef nonnull %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %12 = ptrtoint ptr %intrs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intrs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %13)
  %cmp18.not136 = icmp eq i32 %5, %13
  %__ret14.1139 = select i1 %cmp18.not136, i32 %timeout, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1139)
  %tobool28.not140 = icmp ne i32 %__ret14.1139, 0
  %14 = and i1 %cmp18.not136, %tobool28.not140
  br i1 %14, label %if.then13.if.end34_crit_edge, label %if.then13.for.end_crit_edge

if.then13.for.end_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then13.if.end34_crit_edge:                     ; preds = %if.then13
  br label %if.end34

if.end34:                                         ; preds = %cleanup.if.end34_crit_edge, %if.then13.if.end34_crit_edge
  %__ret14.1143 = phi i32 [ %__ret14.1, %cleanup.if.end34_crit_edge ], [ %__ret14.1139, %if.then13.if.end34_crit_edge ]
  %call15142 = phi i32 [ %call15, %cleanup.if.end34_crit_edge ], [ %call15135, %if.then13.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15142)
  %tobool35.not = icmp eq i32 %call15142, 0
  br i1 %tobool35.not, label %cleanup, label %if.end34.__out_crit_edge

if.end34.__out_crit_edge:                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %__out

cleanup:                                          ; preds = %if.end34
  %call38 = call i32 @schedule_timeout(i32 noundef %__ret14.1143) #8
  %call15 = call i32 @prepare_to_wait_event(ptr noundef nonnull %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %15 = ptrtoint ptr %intrs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %intrs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %16)
  %cmp18.not = icmp eq i32 %5, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool22.not = icmp eq i32 %call38, 0
  %spec.store.select82 = select i1 %tobool22.not, i32 1, i32 %call38
  %__ret14.1 = select i1 %cmp18.not, i32 %call38, i32 %spec.store.select82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret14.1)
  %tobool28.not = icmp eq i32 %__ret14.1, 0
  %not.cmp18.not = xor i1 %cmp18.not, true
  %17 = select i1 %not.cmp18.not, i1 true, i1 %tobool28.not
  br i1 %17, label %cleanup.for.end_crit_edge, label %cleanup.if.end34_crit_edge

cleanup.if.end34_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then13.for.end_crit_edge
  %__ret14.1.lcssa = phi i32 [ %__ret14.1139, %if.then13.for.end_crit_edge ], [ %__ret14.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef nonnull %queue, ptr noundef nonnull %__wq_entry) #8
  br label %__out

__out:                                            ; preds = %for.end, %if.end34.__out_crit_edge
  %__ret14.2125 = phi i32 [ %__ret14.1.lcssa, %for.end ], [ %call15142, %if.end34.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end40

if.end40:                                         ; preds = %__out, %if.then.if.end40_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %if.then.if.end40_crit_edge ], [ %__ret14.2125, %__out ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret.1)
  %cmp42 = icmp slt i32 %__ret.1, 1
  br i1 %cmp42, label %if.end40.do.end79_crit_edge, label %if.end40.return_crit_edge

if.end40.return_crit_edge:                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end40.do.end79_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end79

if.else:                                          ; preds = %entry
  %parent.i.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 1
  %18 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 -32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #8
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %data.i.i, align 1, !annotation !160
  %call.i.i.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr.i.i, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %data.i.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_nuvoton_read_buf.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_nuvoton_wait_for_stat, %if.then.i.i.i)) #8
          to label %i2c_nuvoton_read_buf.exit.i.i [label %if.then.i.i.i], !srcloc !159

if.then.i.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_nuvoton_read_buf.__UNIQUE_ID_ddebug290, ptr noundef %19, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %data.i.i, i32 noundef %call.i.i.i) #8
  br label %i2c_nuvoton_read_buf.exit.i.i

i2c_nuvoton_read_buf.exit.i.i:                    ; preds = %if.then.i.i.i, %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %i2c_nuvoton_read_buf.exit.i.i.i2c_nuvoton_check_status.exit_crit_edge

i2c_nuvoton_read_buf.exit.i.i.i2c_nuvoton_check_status.exit_crit_edge: ; preds = %i2c_nuvoton_read_buf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_nuvoton_check_status.exit

do.end.i.i:                                       ; preds = %i2c_nuvoton_read_buf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %call.i.i.i) #11
  %21 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 7, ptr %data.i.i, align 1
  br label %i2c_nuvoton_check_status.exit

i2c_nuvoton_check_status.exit:                    ; preds = %do.end.i.i, %i2c_nuvoton_read_buf.exit.i.i.i2c_nuvoton_check_status.exit_crit_edge
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %23)
  %cmp.not.i = icmp ne i8 %23, 7
  %and8.i = and i8 %23, %mask
  call void @__sanitizer_cov_trace_cmp1(i8 %and8.i, i8 %value)
  %cmp5.i = icmp eq i8 %and8.i, %value
  %24 = and i1 %cmp.not.i, %cmp5.i
  br i1 %24, label %i2c_nuvoton_check_status.exit.return_crit_edge, label %if.end54

i2c_nuvoton_check_status.exit.return_crit_edge:   ; preds = %i2c_nuvoton_check_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end54:                                         ; preds = %i2c_nuvoton_check_status.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %call.i = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 10000
  %spec.select.i.neg144 = select i1 %cmp.i, i32 -1073741822, i32 -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 %spec.select.i.neg144, %25
  %27 = add i32 %26, %timeout
  br label %do.body57

do.body57:                                        ; preds = %do.cond67.do.body57_crit_edge, %if.end54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp58 = icmp slt i32 %sub, 0
  br i1 %cmp58, label %if.then59, label %if.else60

if.then59:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 2300, i32 noundef 2) #8
  br label %if.end61

if.else60:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 10300, i32 noundef 2) #8
  br label %if.end61

if.end61:                                         ; preds = %if.else60, %if.then59
  %29 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i113 = getelementptr i8, ptr %30, i32 -32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i111) #8
  %31 = ptrtoint ptr %data.i.i111 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %data.i.i111, align 1, !annotation !160
  %call.i.i.i114 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr.i.i113, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %data.i.i111) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_nuvoton_read_buf.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_nuvoton_wait_for_stat, %if.then.i.i.i115)) #8
          to label %i2c_nuvoton_read_buf.exit.i.i117 [label %if.then.i.i.i115], !srcloc !159

if.then.i.i.i115:                                 ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_nuvoton_read_buf.__UNIQUE_ID_ddebug290, ptr noundef %30, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %data.i.i111, i32 noundef %call.i.i.i114) #8
  br label %i2c_nuvoton_read_buf.exit.i.i117

i2c_nuvoton_read_buf.exit.i.i117:                 ; preds = %if.then.i.i.i115, %if.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i114)
  %cmp.i.i116 = icmp slt i32 %call.i.i.i114, 1
  br i1 %cmp.i.i116, label %do.end.i.i118, label %i2c_nuvoton_read_buf.exit.i.i117.i2c_nuvoton_check_status.exit122_crit_edge

i2c_nuvoton_read_buf.exit.i.i117.i2c_nuvoton_check_status.exit122_crit_edge: ; preds = %i2c_nuvoton_read_buf.exit.i.i117
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_nuvoton_check_status.exit122

do.end.i.i118:                                    ; preds = %i2c_nuvoton_read_buf.exit.i.i117
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %call.i.i.i114) #11
  %32 = ptrtoint ptr %data.i.i111 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 7, ptr %data.i.i111, align 1
  br label %i2c_nuvoton_check_status.exit122

i2c_nuvoton_check_status.exit122:                 ; preds = %do.end.i.i118, %i2c_nuvoton_read_buf.exit.i.i117.i2c_nuvoton_check_status.exit122_crit_edge
  %33 = ptrtoint ptr %data.i.i111 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %data.i.i111, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i111) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %34)
  %cmp.not.i119 = icmp ne i8 %34, 7
  %and8.i120 = and i8 %34, %mask
  call void @__sanitizer_cov_trace_cmp1(i8 %and8.i120, i8 %value)
  %cmp5.i121 = icmp eq i8 %and8.i120, %value
  %35 = and i1 %cmp.not.i119, %cmp5.i121
  br i1 %35, label %i2c_nuvoton_check_status.exit122.return_crit_edge, label %do.cond67

i2c_nuvoton_check_status.exit122.return_crit_edge: ; preds = %i2c_nuvoton_check_status.exit122
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.cond67:                                        ; preds = %i2c_nuvoton_check_status.exit122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub68 = sub i32 %36, %27
  %cmp69 = icmp slt i32 %sub68, 0
  br i1 %cmp69, label %do.cond67.do.body57_crit_edge, label %do.cond67.do.end79_crit_edge

do.cond67.do.end79_crit_edge:                     ; preds = %do.cond67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end79

do.cond67.do.body57_crit_edge:                    ; preds = %do.cond67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

do.end79:                                         ; preds = %do.cond67.do.end79_crit_edge, %if.end40.do.end79_crit_edge
  %conv = zext i8 %mask to i32
  %conv81 = zext i8 %value to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef %conv, i32 noundef %conv81) #11
  br label %return

return:                                           ; preds = %do.end79, %i2c_nuvoton_check_status.exit122.return_crit_edge, %i2c_nuvoton_check_status.exit.return_crit_edge, %if.end40.return_crit_edge
  %retval.2 = phi i32 [ 0, %if.end40.return_crit_edge ], [ -110, %do.end79 ], [ 0, %i2c_nuvoton_check_status.exit.return_crit_edge ], [ 0, %i2c_nuvoton_check_status.exit122.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_nuvoton_write_buf(ptr noundef %client, i8 noundef zeroext %offset, i8 noundef zeroext %size, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %client, i8 noundef zeroext %offset, i8 noundef zeroext %size, ptr noundef %data) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_nuvoton_write_buf.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_nuvoton_write_buf, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !159

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv = zext i8 %offset to i32
  %conv4 = zext i8 %size to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_nuvoton_write_buf.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.70, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv4, ptr noundef %data, i32 noundef %call) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @i2c_nuvoton_read_status(ptr noundef %chip) #2 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data, align 1, !annotation !160
  %call.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %data) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_nuvoton_read_buf.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_nuvoton_read_status, %if.then.i)) #8
          to label %i2c_nuvoton_read_buf.exit [label %if.then.i], !srcloc !159

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_nuvoton_read_buf.__UNIQUE_ID_ddebug290, ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %data, i32 noundef %call.i) #8
  br label %i2c_nuvoton_read_buf.exit

i2c_nuvoton_read_buf.exit:                        ; preds = %if.then.i, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 1
  br i1 %cmp, label %do.end, label %i2c_nuvoton_read_buf.exit.if.end_crit_edge

i2c_nuvoton_read_buf.exit.if.end_crit_edge:       ; preds = %i2c_nuvoton_read_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %i2c_nuvoton_read_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef %call.i) #11
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 7, ptr %data, align 1
  br label %if.end

if.end:                                           ; preds = %do.end, %i2c_nuvoton_read_buf.exit.if.end_crit_edge
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #8
  ret i8 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_chip_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @i2c_nuvoton_req_canceled(ptr nocapture noundef readnone %chip, i8 noundef zeroext %status) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %status)
  %cmp = icmp eq i8 %status, 64
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_nuvoton_recv(ptr noundef %chip, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %data.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %count)
  %cmp = icmp ult i32 %count, 10
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %timeout_c = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 17
  %read_queue = getelementptr inbounds %struct.priv_data, ptr %3, i32 0, i32 2
  %add.ptr29 = getelementptr i8, ptr %buf, i32 2
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_nuvoton_ready(ptr noundef %chip)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %retries.0112 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0112)
  %cmp4.not = icmp eq i32 %retries.0112, 0
  br i1 %cmp4.not, label %for.body.if.end7_crit_edge, label %if.then5

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i)
  %4 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %data.addr.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then5
  %i.06.i = phi i32 [ 0, %if.then5 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %data.addr.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_nuvoton_write_buf.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_nuvoton_recv, %if.then.i.i)) #8
          to label %i2c_nuvoton_write_buf.exit.i [label %if.then.i.i], !srcloc !159

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_nuvoton_write_buf.__UNIQUE_ID_ddebug291, ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.70, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %data.addr.i, i32 noundef %call.i.i) #8
  br label %i2c_nuvoton_write_buf.exit.i

i2c_nuvoton_write_buf.exit.i:                     ; preds = %if.then.i.i, %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %for.inc.i, label %i2c_nuvoton_write_buf.exit.i.i2c_nuvoton_write_status.exit_crit_edge

i2c_nuvoton_write_buf.exit.i.i2c_nuvoton_write_status.exit_crit_edge: ; preds = %i2c_nuvoton_write_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_nuvoton_write_status.exit

for.inc.i:                                        ; preds = %i2c_nuvoton_write_buf.exit.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1300, i32 noundef 2) #8
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not, label %for.inc.i.i2c_nuvoton_write_status.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.i2c_nuvoton_write_status.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_nuvoton_write_status.exit

i2c_nuvoton_write_status.exit:                    ; preds = %for.inc.i.i2c_nuvoton_write_status.exit_crit_edge, %i2c_nuvoton_write_buf.exit.i.i2c_nuvoton_write_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  br label %if.end7

if.end7:                                          ; preds = %i2c_nuvoton_write_status.exit, %for.body.if.end7_crit_edge
  %5 = ptrtoint ptr %timeout_c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %timeout_c, align 8
  %call.i = call fastcc i32 @i2c_nuvoton_wait_for_stat(ptr noundef %chip, i8 noundef zeroext -112, i8 noundef zeroext -112, i32 noundef %6, ptr noundef %read_queue) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.not = icmp eq i32 %call.i, 0
  br i1 %cmp9.not, label %if.end14, label %if.end7.for.inc_crit_edge

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end14:                                         ; preds = %if.end7
  %call15 = call fastcc i32 @i2c_nuvoton_get_burstcount(ptr noundef %add.ptr, ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.for.inc_crit_edge, label %if.end21

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end21:                                         ; preds = %if.end14
  %call22 = call fastcc i32 @i2c_nuvoton_recv_data(ptr noundef %add.ptr, ptr noundef %chip, ptr noundef %buf, i32 noundef %call15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 10
  br i1 %cmp23, label %if.end21.for.inc_crit_edge, label %if.end28

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end28:                                         ; preds = %if.end21
  %7 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %count)
  %cmp30 = icmp ugt i32 %8, %count
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call22)
  %cmp31 = icmp ult i32 %8, %call22
  %or.cond = select i1 %cmp30, i1 true, i1 %cmp31
  br i1 %or.cond, label %if.end28.for.inc_crit_edge, label %if.end36

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end36:                                         ; preds = %if.end28
  %arrayidx = getelementptr i8, ptr %buf, i32 %call22
  %sub = sub i32 %8, %call22
  %call37 = call fastcc i32 @i2c_nuvoton_recv_data(ptr noundef %add.ptr, ptr noundef %chip, ptr noundef %arrayidx, i32 noundef %sub)
  %add = add i32 %call37, %call22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp40 = icmp ult i32 %add, %8
  %or.cond110 = select i1 %cmp38, i1 true, i1 %cmp40
  br i1 %or.cond110, label %if.end36.for.inc_crit_edge, label %if.end45

if.end36.for.inc_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end45:                                         ; preds = %if.end36
  %9 = ptrtoint ptr %timeout_c to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timeout_c, align 8
  %call47 = call fastcc i32 @i2c_nuvoton_wait_for_stat(ptr noundef %chip, i8 noundef zeroext -112, i8 noundef zeroext -128, i32 noundef %10, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool.not = icmp eq i32 %call47, 0
  br i1 %tobool.not, label %if.end45.for.end_crit_edge, label %if.end45.for.inc_crit_edge

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %if.end45.for.inc_crit_edge, %if.end36.for.inc_crit_edge, %if.end28.for.inc_crit_edge, %if.end21.for.inc_crit_edge, %if.end14.for.inc_crit_edge, %if.end7.for.inc_crit_edge
  %.str.32.sink = phi ptr [ @.str.17, %if.end7.for.inc_crit_edge ], [ @.str.20, %if.end14.for.inc_crit_edge ], [ @.str.23, %if.end21.for.inc_crit_edge ], [ @.str.26, %if.end28.for.inc_crit_edge ], [ @.str.29, %if.end36.for.inc_crit_edge ], [ @.str.32, %if.end45.for.inc_crit_edge ]
  %size.1 = phi i32 [ -110, %if.end7.for.inc_crit_edge ], [ -5, %if.end14.for.inc_crit_edge ], [ -5, %if.end21.for.inc_crit_edge ], [ -5, %if.end28.for.inc_crit_edge ], [ -5, %if.end36.for.inc_crit_edge ], [ -110, %if.end45.for.inc_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull %.str.32.sink, ptr noundef nonnull @.str.15) #11
  %inc = add nuw nsw i32 %retries.0112, 1
  %exitcond113.not = icmp eq i32 %inc, 5
  br i1 %exitcond113.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end45.for.end_crit_edge
  %size.2 = phi i32 [ %add, %if.end45.for.end_crit_edge ], [ %size.1, %for.inc.for.end_crit_edge ]
  call void @i2c_nuvoton_ready(ptr noundef %chip)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_nuvoton_recv.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_nuvoton_recv, %if.then59)) #8
          to label %cleanup [label %if.then59], !srcloc !159

if.then59:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_nuvoton_recv.__UNIQUE_ID_ddebug297, ptr noundef %chip, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.15, i32 noundef %size.2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %for.end, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ %size.2, %if.then59 ], [ %size.2, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_nuvoton_send(ptr noundef %chip, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %data.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -32
  %timeout_b = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 16
  %sub = add i32 %len, -1
  %timeout_c = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %count.0209 = phi i32 [ 0, %entry ], [ %count.3, %for.inc.for.body_crit_edge ]
  %retries.0208 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void @i2c_nuvoton_ready(ptr noundef %chip)
  %4 = ptrtoint ptr %timeout_b to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout_b, align 4
  %call3 = tail call fastcc i32 @i2c_nuvoton_wait_for_stat(ptr noundef %chip, i8 noundef zeroext 64, i8 noundef zeroext 64, i32 noundef %5, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %for.body.while.cond_crit_edge, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body.while.cond_crit_edge:                    ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %do.end33.while.cond_crit_edge, %for.body.while.cond_crit_edge
  %count.1 = phi i32 [ %add, %do.end33.while.cond_crit_edge ], [ %count.0209, %for.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %count.1)
  %cmp4 = icmp ugt i32 %sub, %count.1
  br i1 %cmp4, label %while.body, label %if.end45

while.body:                                       ; preds = %while.cond
  %call5 = tail call fastcc i32 @i2c_nuvoton_get_burstcount(ptr noundef %add.ptr, ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %while.body.for.inc_crit_edge, label %if.end11

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end11:                                         ; preds = %while.body
  %sub13 = sub i32 %sub, %count.1
  %6 = tail call i32 @llvm.umin.i32(i32 %call5, i32 %sub13)
  %conv = trunc i32 %6 to i8
  %arrayidx = getelementptr i8, ptr %buf, i32 %count.1
  %call.i = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 32, i8 noundef zeroext %conv, ptr noundef %arrayidx) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_nuvoton_write_buf.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_nuvoton_send, %if.then.i)) #8
          to label %i2c_nuvoton_write_buf.exit [label %if.then.i], !srcloc !159

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i = and i32 %6, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_nuvoton_write_buf.__UNIQUE_ID_ddebug291, ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.70, i32 noundef 32, i32 noundef %conv4.i, i32 noundef %conv4.i, ptr noundef %arrayidx, i32 noundef %call.i) #8
  br label %i2c_nuvoton_write_buf.exit

i2c_nuvoton_write_buf.exit:                       ; preds = %if.then.i, %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17 = icmp slt i32 %call.i, 0
  br i1 %cmp17, label %i2c_nuvoton_write_buf.exit.for.inc_crit_edge, label %do.body24

i2c_nuvoton_write_buf.exit.for.inc_crit_edge:     ; preds = %i2c_nuvoton_write_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body24:                                        ; preds = %i2c_nuvoton_write_buf.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_nuvoton_send.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_nuvoton_send, %if.then30)) #8
          to label %do.end33 [label %if.then30], !srcloc !159

if.then30:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_nuvoton_send.__UNIQUE_ID_ddebug300, ptr noundef %3, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.42, i32 noundef %6) #8
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %do.body24
  %add = add i32 %6, %count.1
  %7 = ptrtoint ptr %timeout_c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timeout_c, align 8
  %call34 = tail call fastcc i32 @i2c_nuvoton_wait_for_stat(ptr noundef %chip, i8 noundef zeroext -120, i8 noundef zeroext -120, i32 noundef %8, ptr noundef null)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end33.for.inc_crit_edge, label %do.end33.while.cond_crit_edge

do.end33.while.cond_crit_edge:                    ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.end33.for.inc_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end45:                                         ; preds = %while.cond
  %arrayidx46 = getelementptr i8, ptr %buf, i32 %count.1
  %call.i188 = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 32, i8 noundef zeroext 1, ptr noundef %arrayidx46) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_nuvoton_write_buf.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_nuvoton_send, %if.then.i190)) #8
          to label %i2c_nuvoton_write_buf.exit191 [label %if.then.i190], !srcloc !159

if.then.i190:                                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_nuvoton_write_buf.__UNIQUE_ID_ddebug291, ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.70, i32 noundef 32, i32 noundef 1, i32 noundef 1, ptr noundef %arrayidx46, i32 noundef %call.i188) #8
  br label %i2c_nuvoton_write_buf.exit191

i2c_nuvoton_write_buf.exit191:                    ; preds = %if.then.i190, %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %cmp48 = icmp slt i32 %call.i188, 0
  br i1 %cmp48, label %i2c_nuvoton_write_buf.exit191.for.inc_crit_edge, label %do.body55

i2c_nuvoton_write_buf.exit191.for.inc_crit_edge:  ; preds = %i2c_nuvoton_write_buf.exit191
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body55:                                        ; preds = %i2c_nuvoton_write_buf.exit191
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_nuvoton_send.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_nuvoton_send, %if.then67)) #8
          to label %do.end72 [label %if.then67], !srcloc !159

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx46, align 1
  %conv69 = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_nuvoton_send.__UNIQUE_ID_ddebug301, ptr noundef %3, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.42, i32 noundef %conv69) #8
  br label %do.end72

do.end72:                                         ; preds = %if.then67, %do.body55
  %11 = ptrtoint ptr %timeout_c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %timeout_c, align 8
  %call74 = tail call fastcc i32 @i2c_nuvoton_wait_for_stat(ptr noundef %chip, i8 noundef zeroext -120, i8 noundef zeroext -128, i32 noundef %12, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end84, label %do.end72.for.inc_crit_edge

do.end72.for.inc_crit_edge:                       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %do.end72.for.inc_crit_edge, %i2c_nuvoton_write_buf.exit191.for.inc_crit_edge, %do.end33.for.inc_crit_edge, %i2c_nuvoton_write_buf.exit.for.inc_crit_edge, %while.body.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %.str.50.sink = phi ptr [ @.str.41, %for.body.for.inc_crit_edge ], [ @.str.53, %i2c_nuvoton_write_buf.exit191.for.inc_crit_edge ], [ @.str.57, %do.end72.for.inc_crit_edge ], [ @.str.44, %while.body.for.inc_crit_edge ], [ @.str.47, %i2c_nuvoton_write_buf.exit.for.inc_crit_edge ], [ @.str.50, %do.end33.for.inc_crit_edge ]
  %rc.3 = phi i32 [ -5, %for.body.for.inc_crit_edge ], [ -5, %i2c_nuvoton_write_buf.exit191.for.inc_crit_edge ], [ -110, %do.end72.for.inc_crit_edge ], [ -5, %while.body.for.inc_crit_edge ], [ %call.i, %i2c_nuvoton_write_buf.exit.for.inc_crit_edge ], [ -110, %do.end33.for.inc_crit_edge ]
  %count.3 = phi i32 [ %count.0209, %for.body.for.inc_crit_edge ], [ %count.1, %i2c_nuvoton_write_buf.exit191.for.inc_crit_edge ], [ %count.1, %do.end72.for.inc_crit_edge ], [ %count.1, %while.body.for.inc_crit_edge ], [ %count.1, %i2c_nuvoton_write_buf.exit.for.inc_crit_edge ], [ %add, %do.end33.for.inc_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %.str.50.sink, ptr noundef nonnull @.str.42) #11
  %inc = add nuw nsw i32 %retries.0208, 1
  %exitcond.not = icmp eq i32 %inc, 50
  br i1 %exitcond.not, label %if.then83, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.then83:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_nuvoton_ready(ptr noundef %chip)
  br label %cleanup

if.end84:                                         ; preds = %do.end72
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i)
  %13 = ptrtoint ptr %data.addr.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 32, ptr %data.addr.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end84
  %i.06.i = phi i32 [ 0, %if.end84 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %call.i.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %data.addr.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_nuvoton_write_buf.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_nuvoton_send, %if.then.i.i)) #8
          to label %i2c_nuvoton_write_buf.exit.i [label %if.then.i.i], !srcloc !159

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_nuvoton_write_buf.__UNIQUE_ID_ddebug291, ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.70, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %data.addr.i, i32 noundef %call.i.i) #8
  br label %i2c_nuvoton_write_buf.exit.i

i2c_nuvoton_write_buf.exit.i:                     ; preds = %if.then.i.i, %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %for.inc.i, label %if.end92

for.inc.i:                                        ; preds = %i2c_nuvoton_write_buf.exit.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1300, i32 noundef 2) #8
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond215.not = icmp eq i32 %inc.i, 32
  br i1 %exitcond215.not, label %do.end91, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end91:                                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.42) #11
  call void @i2c_nuvoton_ready(ptr noundef %chip)
  br label %cleanup

if.end92:                                         ; preds = %i2c_nuvoton_write_buf.exit.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i)
  %add.ptr93 = getelementptr i8, ptr %buf, i32 6
  %14 = ptrtoint ptr %add.ptr93 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr93, align 4
  %call94 = call i32 @tpm_calc_ordinal_duration(ptr noundef %chip, i32 noundef %15) #8
  %read_queue = getelementptr inbounds %struct.priv_data, ptr %1, i32 0, i32 2
  %call.i192 = call fastcc i32 @i2c_nuvoton_wait_for_stat(ptr noundef %chip, i8 noundef zeroext -112, i8 noundef zeroext -112, i32 noundef %call94, ptr noundef %read_queue) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192)
  %tobool96.not = icmp eq i32 %call.i192, 0
  br i1 %tobool96.not, label %do.body102, label %do.end100

do.end100:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.42, i32 noundef %call94) #11
  call void @i2c_nuvoton_ready(ptr noundef %chip)
  br label %cleanup

do.body102:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_nuvoton_send.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_nuvoton_send, %if.then114)) #8
          to label %cleanup [label %if.then114], !srcloc !159

if.then114:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_nuvoton_send.__UNIQUE_ID_ddebug302, ptr noundef %3, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.42, i32 noundef %len) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then114, %do.body102, %do.end100, %do.end91, %if.then83
  %retval.0 = phi i32 [ %rc.3, %if.then83 ], [ %call.i.i, %do.end91 ], [ %call.i192, %do.end100 ], [ 0, %if.then114 ], [ 0, %do.body102 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_nuvoton_get_burstcount(ptr noundef %client, ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %timeout_d = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 18
  %1 = ptrtoint ptr %timeout_d to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %timeout_d, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %data, align 1, !annotation !160
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %4 = add i32 %2, %0
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %call.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %data) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_nuvoton_read_buf.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_nuvoton_get_burstcount, %if.then.i)) #8
          to label %i2c_nuvoton_read_buf.exit [label %if.then.i], !srcloc !159

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_nuvoton_read_buf.__UNIQUE_ID_ddebug290, ptr noundef %dev.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %data, i32 noundef %call.i) #8
  br label %i2c_nuvoton_read_buf.exit

i2c_nuvoton_read_buf.exit:                        ; preds = %if.then.i, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, 0
  br i1 %cmp, label %land.lhs.true, label %i2c_nuvoton_read_buf.exit.if.end_crit_edge

i2c_nuvoton_read_buf.exit.if.end_crit_edge:       ; preds = %i2c_nuvoton_read_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %i2c_nuvoton_read_buf.exit
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp1.not = icmp eq i8 %6, 0
  br i1 %cmp1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %7 = call i8 @llvm.umin.i8(i8 %6, i8 32)
  %.conv = zext i8 %7 to i32
  br label %do.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %i2c_nuvoton_read_buf.exit.if.end_crit_edge
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1300, i32 noundef 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %8, %4
  %cmp9 = icmp slt i32 %sub, 0
  br i1 %cmp9, label %if.end.do.body_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.then
  %burst_count.0 = phi i32 [ %.conv, %if.then ], [ -1, %if.end.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #8
  ret i32 %burst_count.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_nuvoton_recv_data(ptr noundef %client, ptr noundef %chip, ptr noundef %buf, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp53.not = icmp eq i32 %count, 0
  br i1 %cmp53.not, label %entry.cleanup_crit_edge, label %land.rhs.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %timeout_c = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 17
  %read_queue = getelementptr inbounds %struct.priv_data, ptr %1, i32 0, i32 2
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %do.end25.land.rhs_crit_edge, %land.rhs.lr.ph
  %size.054 = phi i32 [ 0, %land.rhs.lr.ph ], [ %add, %do.end25.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %timeout_c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout_c, align 8
  %call.i = tail call fastcc i32 @i2c_nuvoton_wait_for_stat(ptr noundef %chip, i8 noundef zeroext -112, i8 noundef zeroext -112, i32 noundef %3, ptr noundef %read_queue) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp eq i32 %call.i, 0
  br i1 %cmp2, label %while.body, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %call3 = tail call fastcc i32 @i2c_nuvoton_get_burstcount(ptr noundef %client, ptr noundef %chip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef -1) #11
  br label %cleanup

if.end:                                           ; preds = %while.body
  %sub = sub i32 %count, %size.054
  %4 = tail call i32 @llvm.umin.i32(i32 %call3, i32 %sub)
  %conv = trunc i32 %4 to i8
  %arrayidx = getelementptr i8, ptr %buf, i32 %size.054
  %call.i49 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext 64, i8 noundef zeroext %conv, ptr noundef %arrayidx) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_nuvoton_read_buf.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_nuvoton_recv_data, %if.then.i)) #8
          to label %i2c_nuvoton_read_buf.exit [label %if.then.i], !srcloc !159

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i = and i32 %4, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_nuvoton_read_buf.__UNIQUE_ID_ddebug290, ptr noundef %dev.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 64, i32 noundef %conv4.i, i32 noundef %conv4.i, ptr noundef %arrayidx, i32 noundef %call.i49) #8
  br label %i2c_nuvoton_read_buf.exit

i2c_nuvoton_read_buf.exit:                        ; preds = %if.then.i, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %cmp8 = icmp slt i32 %call.i49, 0
  br i1 %cmp8, label %do.end13, label %do.body16

do.end13:                                         ; preds = %i2c_nuvoton_read_buf.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef %call.i49) #11
  br label %cleanup

do.body16:                                        ; preds = %i2c_nuvoton_read_buf.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_nuvoton_recv_data.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2c_nuvoton_recv_data, %if.then21)) #8
          to label %do.end25 [label %if.then21], !srcloc !159

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_nuvoton_recv_data.__UNIQUE_ID_ddebug296, ptr noundef %chip, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.36, i32 noundef %4) #8
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %do.body16
  %add = add i32 %4, %size.054
  %cmp = icmp ult i32 %add, %count
  br i1 %cmp, label %do.end25.land.rhs_crit_edge, label %do.end25.cleanup_crit_edge

do.end25.cleanup_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end25.land.rhs_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

cleanup:                                          ; preds = %do.end25.cleanup_crit_edge, %do.end13, %do.end, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end13 ], [ 0, %entry.cleanup_crit_edge ], [ %add, %do.end25.cleanup_crit_edge ], [ %size.054, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_calc_ordinal_duration(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_chip_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_pm_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_pm_resume(ptr noundef) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !32, !33, !35, !37, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !103, !104, !106, !107, !108, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !141, !142, !143, !144, !146, !148}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @__initcall__kmod_tpm_i2c_nuvoton__304_663_i2c_nuvoton_driver_init6, !1, !"__initcall__kmod_tpm_i2c_nuvoton__304_663_i2c_nuvoton_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 663, i32 1}
!2 = !{ptr @__exitcall_i2c_nuvoton_driver_exit, !1, !"__exitcall_i2c_nuvoton_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author305, !4, !"__UNIQUE_ID_author305", i1 false, i1 false}
!4 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 665, i32 1}
!5 = !{ptr @__UNIQUE_ID_description306, !6, !"__UNIQUE_ID_description306", i1 false, i1 false}
!6 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 666, i32 1}
!7 = !{ptr @__UNIQUE_ID_file307, !8, !"__UNIQUE_ID_file307", i1 false, i1 false}
!8 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 667, i32 1}
!9 = !{ptr @__UNIQUE_ID_license308, !8, !"__UNIQUE_ID_license308", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 657, i32 11}
!12 = !{ptr @i2c_nuvoton_driver, !13, !"i2c_nuvoton_driver", i1 false, i1 false}
!13 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 652, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 538, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @i2c_nuvoton_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @i2c_nuvoton_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @i2c_nuvoton_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 559, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 576, i32 3}
!27 = !{ptr @i2c_nuvoton_probe.__UNIQUE_ID_ddebug303, !26, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 583, i32 4}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @i2c_nuvoton_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @i2c_nuvoton_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @get_vid.vid_did_rid_value, !34, !"vid_did_rid_value", i1 false, i1 false}
!34 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 493, i32 18}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 58, i32 2}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @i2c_nuvoton_read_buf.__UNIQUE_ID_ddebug290, !36, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!39 = !{ptr @tpm_i2c, !40, !"tpm_i2c", i1 false, i1 false}
!40 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 464, i32 35}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 278, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @i2c_nuvoton_recv._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @i2c_nuvoton_recv._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 294, i32 4}
!48 = !{ptr @i2c_nuvoton_recv._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @i2c_nuvoton_recv._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 300, i32 4}
!52 = !{ptr @i2c_nuvoton_recv._entry.19, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @i2c_nuvoton_recv._entry_ptr.21, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 307, i32 4}
!56 = !{ptr @i2c_nuvoton_recv._entry.22, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @i2c_nuvoton_recv._entry_ptr.24, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 317, i32 4}
!60 = !{ptr @i2c_nuvoton_recv._entry.25, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @i2c_nuvoton_recv._entry_ptr.27, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 325, i32 4}
!64 = !{ptr @i2c_nuvoton_recv._entry.28, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @i2c_nuvoton_recv._entry_ptr.30, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 334, i32 4}
!68 = !{ptr @i2c_nuvoton_recv._entry.31, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @i2c_nuvoton_recv._entry_ptr.33, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 341, i32 2}
!72 = !{ptr @i2c_nuvoton_recv.__UNIQUE_ID_ddebug297, !71, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 242, i32 4}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @i2c_nuvoton_recv_data._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @i2c_nuvoton_recv_data._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 251, i32 4}
!80 = !{ptr @i2c_nuvoton_recv_data._entry.37, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @i2c_nuvoton_recv_data._entry_ptr.39, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 256, i32 3}
!84 = !{ptr @i2c_nuvoton_recv_data.__UNIQUE_ID_ddebug296, !83, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 367, i32 4}
!87 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @i2c_nuvoton_send._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @i2c_nuvoton_send._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 377, i32 5}
!92 = !{ptr @i2c_nuvoton_send._entry.43, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @i2c_nuvoton_send._entry_ptr.45, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 387, i32 5}
!96 = !{ptr @i2c_nuvoton_send._entry.46, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @i2c_nuvoton_send._entry_ptr.48, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @i2c_nuvoton_send.__UNIQUE_ID_ddebug300, !99, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!99 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 391, i32 4}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 401, i32 5}
!102 = !{ptr @i2c_nuvoton_send._entry.49, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @i2c_nuvoton_send._entry_ptr.51, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 414, i32 4}
!106 = !{ptr @i2c_nuvoton_send._entry.52, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @i2c_nuvoton_send._entry_ptr.54, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 419, i32 3}
!110 = !{ptr @i2c_nuvoton_send.__UNIQUE_ID_ddebug301, !109, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 425, i32 4}
!113 = !{ptr @i2c_nuvoton_send._entry.56, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @i2c_nuvoton_send._entry_ptr.58, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 440, i32 3}
!117 = !{ptr @i2c_nuvoton_send._entry.59, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @i2c_nuvoton_send._entry_ptr.61, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 449, i32 3}
!121 = !{ptr @i2c_nuvoton_send._entry.62, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @i2c_nuvoton_send._entry_ptr.64, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 455, i32 2}
!125 = !{ptr @i2c_nuvoton_send.__UNIQUE_ID_ddebug302, !124, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 129, i32 3}
!128 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @i2c_nuvoton_ready._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @i2c_nuvoton_ready._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.68, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 213, i32 2}
!133 = !{ptr @.str.69, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @i2c_nuvoton_wait_for_stat._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @i2c_nuvoton_wait_for_stat._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 70, i32 2}
!138 = !{ptr @i2c_nuvoton_write_buf.__UNIQUE_ID_ddebug291, !137, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!139 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 96, i32 3}
!141 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @i2c_nuvoton_read_status._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @i2c_nuvoton_read_status._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @i2c_nuvoton_of_match, !145, !"i2c_nuvoton_of_match", i1 false, i1 false}
!145 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 641, i32 34}
!146 = !{ptr @i2c_nuvoton_pm_ops, !147, !"i2c_nuvoton_pm_ops", i1 false, i1 false}
!147 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 650, i32 8}
!148 = !{ptr @i2c_nuvoton_id, !149, !"i2c_nuvoton_id", i1 false, i1 false}
!149 = !{!"../drivers/char/tpm/tpm_i2c_nuvoton.c", i32 633, i32 35}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{i64 2148970227, i64 2148970232, i64 2148970245, i64 2148970289, i64 2148970323, i64 2148970344}
!160 = !{!"auto-init"}
