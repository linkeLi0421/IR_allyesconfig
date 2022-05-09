; ModuleID = '/llk/IR_all_yes/drivers/char/tpm/tpm_ftpm_tee.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm_ftpm_tee.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tee_client_driver = type { ptr, %struct.device_driver }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.tpm_class_ops = type { i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tee_client_device_id = type { %struct.uuid_t }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ftpm_tee_private = type { ptr, i32, i32, [4096 x i8], ptr, ptr }
%struct.tee_ioctl_open_session_arg = type { [16 x i8], [16 x i8], i32, i32, i32, i32, i32, i32, [0 x %struct.tee_ioctl_param] }
%struct.tee_ioctl_param = type { i64, i64, i64, i64 }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.tee_ioctl_version_data = type { i32, i32, i32 }
%struct.tee_ioctl_invoke_arg = type { i32, i32, i32, i32, i32, i32, [0 x %struct.tee_ioctl_param] }
%struct.tee_param = type { i64, %union.anon.71 }
%union.anon.71 = type { %struct.tee_param_value }
%struct.tee_param_value = type { i64, i64, i64 }
%struct.tpm_header = type <{ i16, i32, %union.anon.72 }>
%union.anon.72 = type { i32 }

@ftpm_tee_plat_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ftpm_plat_tee_probe, ptr @ftpm_plat_tee_remove, ptr @ftpm_plat_tee_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_ftpm_tee_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@ftpm_tee_driver = internal global { %struct.tee_client_driver, [48 x i8] } { %struct.tee_client_driver { ptr @optee_ftpm_id_table, %struct.device_driver { ptr @.str.37, ptr @tee_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @ftpm_tee_probe, ptr null, ptr @ftpm_tee_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [48 x i8] zeroinitializer }, align 32
@__initcall__kmod_tpm_ftpm_tee__242_409_ftpm_mod_init6 = internal global ptr @ftpm_mod_init, section ".initcall6.init", align 4
@__exitcall_ftpm_mod_exit = internal global ptr @ftpm_mod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author243 = internal constant [70 x i8] c"tpm_ftpm_tee.author=Thirupathaiah Annapureddy <thiruan@microsoft.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [55 x i8] c"tpm_ftpm_tee.description=TPM Driver for fTPM TA in TEE\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [48 x i8] c"tpm_ftpm_tee.file=drivers/char/tpm/tpm_ftpm_tee\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [28 x i8] c"tpm_ftpm_tee.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ftpm-tee\00", [23 x i8] zeroinitializer }, align 32
@of_ftpm_tee_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microsoft,ftpm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ftpm_tee_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 237, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: tee_client_open_context failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ftpm_tee_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/char/tpm/tpm_ftpm_tee.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ftpm_tee_probe._entry_ptr = internal global ptr @ftpm_tee_probe._entry, section ".printk_index", align 4
@ftpm_ta_uuid = internal constant { %struct.uuid_t, [16 x i8] } { %struct.uuid_t { [16 x i8] c"\BCP\D9q\D4\C9B\C4\82\CB4?\B7\F3x\96" }, [16 x i8] zeroinitializer }, align 32
@ftpm_tee_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 250, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: tee_client_open_session failed, err=%x\0A\00", [52 x i8] zeroinitializer }, align 32
@ftpm_tee_probe._entry_ptr.8 = internal global ptr @ftpm_tee_probe._entry.6, section ".printk_index", align 4
@ftpm_tee_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 261, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: tee_shm_alloc_kernel_buf failed\0A\00", [59 x i8] zeroinitializer }, align 32
@ftpm_tee_probe._entry_ptr.11 = internal global ptr @ftpm_tee_probe._entry.9, section ".printk_index", align 4
@ftpm_tee_tpm_ops = internal constant { %struct.tpm_class_ops, [40 x i8] } { %struct.tpm_class_ops { i32 1, i8 0, i8 0, ptr @ftpm_tee_tpm_req_canceled, ptr @ftpm_tee_tpm_op_recv, ptr @ftpm_tee_tpm_op_send, ptr @ftpm_tee_tpm_op_cancel, ptr @ftpm_tee_tpm_op_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ftpm_tee_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 269, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: tpm_chip_alloc failed\0A\00", [37 x i8] zeroinitializer }, align 32
@ftpm_tee_probe._entry_ptr.14 = internal global ptr @ftpm_tee_probe._entry.12, section ".printk_index", align 4
@ftpm_tee_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 281, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: tpm_chip_register failed with rc=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@ftpm_tee_probe._entry_ptr.17 = internal global ptr @ftpm_tee_probe._entry.15, section ".printk_index", align 4
@ftpm_tee_tpm_op_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 53, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: Invalid size in recv: count=%zd, resp_len=%zd\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ftpm_tee_tpm_op_recv\00", [43 x i8] zeroinitializer }, align 32
@ftpm_tee_tpm_op_recv._entry_ptr = internal global ptr @ftpm_tee_tpm_op_recv._entry, section ".printk_index", align 4
@ftpm_tee_tpm_op_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 87, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: len=%zd exceeds MAX_COMMAND_SIZE supported by fTPM TA\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ftpm_tee_tpm_op_send\00", [43 x i8] zeroinitializer }, align 32
@ftpm_tee_tpm_op_send._entry_ptr = internal global ptr @ftpm_tee_tpm_op_send._entry, section ".printk_index", align 4
@ftpm_tee_tpm_op_send._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 115, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: tee_shm_get_va failed for transmit\0A\00", [56 x i8] zeroinitializer }, align 32
@ftpm_tee_tpm_op_send._entry_ptr.24 = internal global ptr @ftpm_tee_tpm_op_send._entry.22, section ".printk_index", align 4
@ftpm_tee_tpm_op_send._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.3, i32 134, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: SUBMIT_COMMAND invoke error: 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@ftpm_tee_tpm_op_send._entry_ptr.27 = internal global ptr @ftpm_tee_tpm_op_send._entry.25, section ".printk_index", align 4
@ftpm_tee_tpm_op_send._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.3, i32 141, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: tee_shm_get_va failed for receive\0A\00", [57 x i8] zeroinitializer }, align 32
@ftpm_tee_tpm_op_send._entry_ptr.30 = internal global ptr @ftpm_tee_tpm_op_send._entry.28, section ".printk_index", align 4
@ftpm_tee_tpm_op_send._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.3, i32 151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: tpm response header too small\0A\00", [61 x i8] zeroinitializer }, align 32
@ftpm_tee_tpm_op_send._entry_ptr.33 = internal global ptr @ftpm_tee_tpm_op_send._entry.31, section ".printk_index", align 4
@ftpm_tee_tpm_op_send._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.3, i32 157, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: resp_len=%zd exceeds MAX_RESPONSE_SIZE\0A\00", [52 x i8] zeroinitializer }, align 32
@ftpm_tee_tpm_op_send._entry_ptr.36 = internal global ptr @ftpm_tee_tpm_op_send._entry.34, section ".printk_index", align 4
@optee_ftpm_id_table = internal constant { [2 x %struct.tee_client_device_id], [32 x i8] } { [2 x %struct.tee_client_device_id] [%struct.tee_client_device_id { %struct.uuid_t { [16 x i8] c"\BCP\D9q\D4\C9B\C4\82\CB4?\B7\F3x\96" } }, %struct.tee_client_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"optee-ftpm\00", [21 x i8] zeroinitializer }, align 32
@tee_bus_type = external dso_local global %struct.bus_type, align 4
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"ftpm_tee_plat_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 363, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"ftpm_tee_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 382, i32 33 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 365, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"of_ftpm_tee_ids\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 357, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 237, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [13 x i8] c"ftpm_ta_uuid\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 30, i32 21 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 249, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 261, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"ftpm_tee_tpm_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 183, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 269, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 280, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 51, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 85, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 114, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 133, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 140, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 150, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 155, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [20 x i8] c"optee_ftpm_id_table\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 374, i32 42 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private constant [35 x i8] c"../drivers/char/tpm/tpm_ftpm_tee.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 385, i32 12 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_ftpm_mod_exit, ptr @__initcall__kmod_tpm_ftpm_tee__242_409_ftpm_mod_init6, ptr @ftpm_mod_exit, ptr @ftpm_tee_probe._entry, ptr @ftpm_tee_probe._entry.12, ptr @ftpm_tee_probe._entry.15, ptr @ftpm_tee_probe._entry.6, ptr @ftpm_tee_probe._entry.9, ptr @ftpm_tee_probe._entry_ptr, ptr @ftpm_tee_probe._entry_ptr.11, ptr @ftpm_tee_probe._entry_ptr.14, ptr @ftpm_tee_probe._entry_ptr.17, ptr @ftpm_tee_probe._entry_ptr.8, ptr @ftpm_tee_tpm_op_recv._entry, ptr @ftpm_tee_tpm_op_recv._entry_ptr, ptr @ftpm_tee_tpm_op_send._entry, ptr @ftpm_tee_tpm_op_send._entry.22, ptr @ftpm_tee_tpm_op_send._entry.25, ptr @ftpm_tee_tpm_op_send._entry.28, ptr @ftpm_tee_tpm_op_send._entry.31, ptr @ftpm_tee_tpm_op_send._entry.34, ptr @ftpm_tee_tpm_op_send._entry_ptr, ptr @ftpm_tee_tpm_op_send._entry_ptr.24, ptr @ftpm_tee_tpm_op_send._entry_ptr.27, ptr @ftpm_tee_tpm_op_send._entry_ptr.30, ptr @ftpm_tee_tpm_op_send._entry_ptr.33, ptr @ftpm_tee_tpm_op_send._entry_ptr.36, ptr @ftpm_tee_plat_driver, ptr @ftpm_tee_driver, ptr @.str, ptr @of_ftpm_tee_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ftpm_ta_uuid, ptr @.str.7, ptr @.str.10, ptr @ftpm_tee_tpm_ops, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @optee_ftpm_id_table, ptr @.str.37], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftpm_tee_plat_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftpm_tee_driver to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ftpm_tee_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftpm_tee_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftpm_ta_uuid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftpm_tee_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftpm_tee_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftpm_tee_tpm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftpm_tee_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftpm_tee_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftpm_tee_tpm_op_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftpm_tee_tpm_op_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftpm_tee_tpm_op_send._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftpm_tee_tpm_op_send._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftpm_tee_tpm_op_send._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftpm_tee_tpm_op_send._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftpm_tee_tpm_op_send._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optee_ftpm_id_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ftpm_mod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @ftpm_tee_plat_driver) #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.tee_client_driver, ptr @ftpm_tee_driver, i32 0, i32 1)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ftpm_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ftpm_tee_plat_driver, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @driver_register(ptr noundef getelementptr inbounds (%struct.tee_client_driver, ptr @ftpm_tee_driver, i32 0, i32 1)) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftpm_plat_tee_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @ftpm_tee_probe(ptr noundef %dev1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftpm_plat_tee_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @tpm_chip_unregister(ptr noundef %3) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @put_device(ptr noundef %5) #7
  %shm.i = getelementptr inbounds %struct.ftpm_tee_private, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %shm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shm.i, align 4
  tail call void @tee_shm_free(ptr noundef %7) #7
  %ctx.i = getelementptr inbounds %struct.ftpm_tee_private, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx.i, align 4
  %session.i = getelementptr inbounds %struct.ftpm_tee_private, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %session.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %session.i, align 4
  %call3.i = tail call i32 @tee_client_close_session(ptr noundef %9, i32 noundef %11) #7
  %12 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx.i, align 4
  tail call void @tee_client_close_context(ptr noundef %13) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftpm_plat_tee_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %shm = getelementptr inbounds %struct.ftpm_tee_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %shm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shm, align 4
  tail call void @tee_shm_free(ptr noundef %3) #7
  %ctx = getelementptr inbounds %struct.ftpm_tee_private, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %session = getelementptr inbounds %struct.ftpm_tee_private, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %session, align 4
  %call1 = tail call i32 @tee_client_close_session(ptr noundef %5, i32 noundef %7) #7
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  tail call void @tee_client_close_context(ptr noundef %9) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftpm_tee_probe(ptr noundef %dev) #2 align 64 {
entry:
  %sess_arg = alloca %struct.tee_ioctl_open_session_arg, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sess_arg) #7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4116, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call1 = tail call ptr @tee_client_open_context(ptr noundef null, ptr noundef nonnull @ftpm_tee_match, ptr noundef null, ptr noundef null) #7
  %ctx = getelementptr inbounds %struct.ftpm_tee_private, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %ctx, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end11

if.then4:                                         ; preds = %if.end
  %cmp = icmp eq ptr %call1, inttoptr (i32 -2 to ptr)
  br i1 %cmp, label %if.then4.cleanup_crit_edge, label %do.end

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %4 = ptrtoint ptr %3 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %5 = getelementptr inbounds i8, ptr %sess_arg, i32 16
  %6 = call ptr @memset(ptr %5, i32 0, i32 40)
  %7 = call ptr @memcpy(ptr %sess_arg, ptr @ftpm_ta_uuid, i32 16)
  %num_params = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg, i32 0, i32 7
  %8 = ptrtoint ptr %num_params to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %num_params, align 4
  %call13 = call i32 @tee_client_open_session(ptr noundef %call1, ptr noundef nonnull %sess_arg, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end11.do.end19_crit_edge, label %lor.lhs.false

if.end11.do.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

lor.lhs.false:                                    ; preds = %if.end11
  %ret = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg, i32 0, i32 5
  %9 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp15.not = icmp eq i32 %10, 0
  br i1 %cmp15.not, label %if.end21, label %lor.lhs.false.do.end19_crit_edge

lor.lhs.false.do.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

do.end19:                                         ; preds = %lor.lhs.false.do.end19_crit_edge, %if.end11.do.end19_crit_edge
  %ret20 = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg, i32 0, i32 5
  %11 = ptrtoint ptr %ret20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ret20, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef %12) #10
  br label %out_tee_session

if.end21:                                         ; preds = %lor.lhs.false
  %session = getelementptr inbounds %struct.tee_ioctl_open_session_arg, ptr %sess_arg, i32 0, i32 4
  %13 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %session, align 8
  %session22 = getelementptr inbounds %struct.ftpm_tee_private, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %session22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %session22, align 4
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %call24 = call ptr @tee_shm_alloc_kernel_buf(ptr noundef %17, i32 noundef 8192) #7
  %shm = getelementptr inbounds %struct.ftpm_tee_private, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %shm to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call24, ptr %shm, align 4
  %cmp.i90 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90, label %do.end30, label %if.end31

do.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2) #10
  br label %out_shm_alloc

if.end31:                                         ; preds = %if.end21
  %call32 = call ptr @tpm_chip_alloc(ptr noundef %dev, ptr noundef nonnull @ftpm_tee_tpm_ops) #7
  %cmp.i91 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i91, label %do.end37, label %if.end39

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2) #10
  %19 = ptrtoint ptr %call32 to i32
  br label %out_chip_alloc

if.end39:                                         ; preds = %if.end31
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call32, ptr %call.i, align 4
  %flags = getelementptr inbounds %struct.tpm_chip, ptr %call32, i32 0, i32 9
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %or = or i32 %22, 2
  store i32 %or, ptr %flags, align 4
  %23 = load ptr, ptr %call.i, align 4
  %call43 = call i32 @tpm_chip_register(ptr noundef %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end39.cleanup_crit_edge, label %do.end48

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end48:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, i32 noundef %call43) #10
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  call void @put_device(ptr noundef %25) #7
  br label %out_chip_alloc

out_chip_alloc:                                   ; preds = %do.end48, %do.end37
  %rc.0 = phi i32 [ %19, %do.end37 ], [ %call43, %do.end48 ]
  %26 = ptrtoint ptr %shm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shm, align 4
  call void @tee_shm_free(ptr noundef %27) #7
  br label %out_shm_alloc

out_shm_alloc:                                    ; preds = %out_chip_alloc, %do.end30
  %rc.1 = phi i32 [ -12, %do.end30 ], [ %rc.0, %out_chip_alloc ]
  %28 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx, align 4
  %30 = ptrtoint ptr %session22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %session22, align 4
  %call55 = call i32 @tee_client_close_session(ptr noundef %29, i32 noundef %31) #7
  br label %out_tee_session

out_tee_session:                                  ; preds = %out_shm_alloc, %do.end19
  %rc.2 = phi i32 [ -22, %do.end19 ], [ %rc.1, %out_shm_alloc ]
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx, align 4
  call void @tee_client_close_context(ptr noundef %33) #7
  br label %cleanup

cleanup:                                          ; preds = %out_tee_session, %if.end39.cleanup_crit_edge, %do.end, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end ], [ %rc.2, %out_tee_session ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.then4.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sess_arg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_client_open_context(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ftpm_tee_match(ptr nocapture noundef readonly %ver, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %gen_caps = getelementptr inbounds %struct.tee_ioctl_version_data, ptr %ver, i32 0, i32 2
  %2 = ptrtoint ptr %gen_caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gen_caps, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %return

return:                                           ; preds = %if.else, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tee_client_open_session(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_shm_alloc_kernel_buf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tpm_chip_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_chip_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tee_shm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tee_client_close_session(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tee_client_close_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ftpm_tee_tpm_req_canceled(ptr nocapture noundef readnone %chip, i8 noundef zeroext %status) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftpm_tee_tpm_op_recv(ptr noundef %chip, ptr nocapture noundef writeonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %resp_len = getelementptr inbounds %struct.ftpm_tee_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resp_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %count)
  %cmp = icmp ugt i32 %5, %count
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %count, i32 noundef %5) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %resp_buf = getelementptr inbounds %struct.ftpm_tee_private, ptr %3, i32 0, i32 3
  %6 = call ptr @memcpy(ptr %buf, ptr %resp_buf, i32 %5)
  %7 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %resp_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftpm_tee_tpm_op_send(ptr noundef %chip, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  %transceive_args = alloca %struct.tee_ioctl_invoke_arg, align 8
  %command_params = alloca [4 x %struct.tee_param], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %transceive_args) #7
  %4 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %transceive_args, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %command_params) #7
  %shm1 = getelementptr inbounds %struct.ftpm_tee_private, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %shm1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %shm1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp = icmp ugt i32 %len, 4096
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %len) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %transceive_args, i32 0, i32 5
  %8 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %transceive_args, i32 0, i32 4
  %9 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %transceive_args, i32 0, i32 2
  %10 = getelementptr inbounds %struct.tee_ioctl_invoke_arg, ptr %transceive_args, i32 0, i32 1
  %11 = getelementptr inbounds i8, ptr %command_params, i32 16
  %12 = call ptr @memset(ptr %11, i32 0, i32 112)
  %resp_len3 = getelementptr inbounds %struct.ftpm_tee_private, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %resp_len3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %resp_len3, align 4
  %session4 = getelementptr inbounds %struct.ftpm_tee_private, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %session4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %session4, align 4
  %16 = ptrtoint ptr %transceive_args to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %transceive_args, align 8
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %15, ptr %10, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %9, align 8
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %4, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %8, align 8
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %7, align 4
  %22 = ptrtoint ptr %command_params to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 5, ptr %command_params, align 8
  %.compoundliteral5.sroa.2.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %command_params, i32 8
  %23 = ptrtoint ptr %.compoundliteral5.sroa.2.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %.compoundliteral5.sroa.2.0.arrayidx.sroa_idx, align 8
  %.compoundliteral5.sroa.3.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %command_params, i32 12
  %24 = ptrtoint ptr %.compoundliteral5.sroa.3.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %len, ptr %.compoundliteral5.sroa.3.0.arrayidx.sroa_idx, align 4
  %.compoundliteral5.sroa.4.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %command_params, i32 16
  %25 = ptrtoint ptr %.compoundliteral5.sroa.4.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %6, ptr %.compoundliteral5.sroa.4.0.arrayidx.sroa_idx, align 8
  %call7 = tail call ptr @tee_shm_get_va(ptr noundef %6, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21) #10
  %26 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %27 = call ptr @memset(ptr %call7, i32 0, i32 8192)
  %28 = call ptr @memcpy(ptr %call7, ptr %buf, i32 %len)
  %arrayidx16 = getelementptr inbounds [4 x %struct.tee_param], ptr %command_params, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 7, ptr %arrayidx16, align 8
  %.compoundliteral17.sroa.2.0.arrayidx16.sroa_idx = getelementptr inbounds [4 x %struct.tee_param], ptr %command_params, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %.compoundliteral17.sroa.2.0.arrayidx16.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4096, ptr %.compoundliteral17.sroa.2.0.arrayidx16.sroa_idx, align 8
  %.compoundliteral17.sroa.3.0.arrayidx16.sroa_idx = getelementptr inbounds i8, ptr %arrayidx16, i32 12
  %31 = ptrtoint ptr %.compoundliteral17.sroa.3.0.arrayidx16.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4096, ptr %.compoundliteral17.sroa.3.0.arrayidx16.sroa_idx, align 4
  %.compoundliteral17.sroa.4.0.arrayidx16.sroa_idx = getelementptr inbounds [4 x %struct.tee_param], ptr %command_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %.compoundliteral17.sroa.4.0.arrayidx16.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %6, ptr %.compoundliteral17.sroa.4.0.arrayidx16.sroa_idx, align 8
  %ctx = getelementptr inbounds %struct.ftpm_tee_private, ptr %3, i32 0, i32 4
  %33 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx, align 4
  %call24 = call i32 @tee_client_invoke_func(ptr noundef %34, ptr noundef nonnull %transceive_args, ptr noundef nonnull %command_params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %4, align 4
  br i1 %cmp25, label %cond.true.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp27.not = icmp eq i32 %36, 0
  br i1 %cmp27.not, label %if.end36, label %cond.false.critedge

cond.true.critedge:                               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, i32 noundef %36) #10
  br label %cleanup

cond.false.critedge:                              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, i32 noundef %36) #10
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %4, align 4
  br label %cleanup

if.end36:                                         ; preds = %lor.lhs.false
  %39 = ptrtoint ptr %.compoundliteral17.sroa.2.0.arrayidx16.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %.compoundliteral17.sroa.2.0.arrayidx16.sroa_idx, align 8
  %call40 = call ptr @tee_shm_get_va(ptr noundef %6, i32 noundef %40) #7
  %cmp.i102 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i102, label %do.end45, label %if.end48

do.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.21) #10
  %41 = ptrtoint ptr %call40 to i32
  br label %cleanup

if.end48:                                         ; preds = %if.end36
  %length = getelementptr inbounds %struct.tpm_header, ptr %call40, i32 0, i32 1
  %42 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %43)
  %cmp49 = icmp ult i32 %43, 10
  br i1 %cmp49, label %do.end53, label %if.end55

do.end53:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.21) #10
  br label %cleanup

if.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %43)
  %cmp56 = icmp ugt i32 %43, 4096
  br i1 %cmp56, label %do.end60, label %if.end62

do.end60:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.21, i32 noundef %43) #10
  br label %cleanup

if.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %resp_buf = getelementptr inbounds %struct.ftpm_tee_private, ptr %3, i32 0, i32 3
  %44 = call ptr @memcpy(ptr %resp_buf, ptr %call40, i32 %43)
  %45 = ptrtoint ptr %resp_len3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %43, ptr %resp_len3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %do.end60, %do.end53, %do.end45, %cond.false.critedge, %cond.true.critedge, %do.end12, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %26, %do.end12 ], [ %41, %do.end45 ], [ -5, %do.end53 ], [ -5, %do.end60 ], [ 0, %if.end62 ], [ %call24, %cond.true.critedge ], [ %38, %cond.false.critedge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %command_params) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %transceive_args) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ftpm_tee_tpm_op_cancel(ptr nocapture noundef %chip) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @ftpm_tee_tpm_op_status(ptr nocapture noundef readnone %chip) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tee_shm_get_va(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tee_client_invoke_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftpm_tee_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @tpm_chip_unregister(ptr noundef %3) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @put_device(ptr noundef %5) #7
  %shm = getelementptr inbounds %struct.ftpm_tee_private, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %shm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shm, align 4
  tail call void @tee_shm_free(ptr noundef %7) #7
  %ctx = getelementptr inbounds %struct.ftpm_tee_private, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %session = getelementptr inbounds %struct.ftpm_tee_private, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %session, align 4
  %call3 = tail call i32 @tee_client_close_session(ptr noundef %9, i32 noundef %11) #7
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  tail call void @tee_client_close_context(ptr noundef %13) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_chip_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__initcall__kmod_tpm_ftpm_tee__242_409_ftpm_mod_init6, !1, !"__initcall__kmod_tpm_ftpm_tee__242_409_ftpm_mod_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 409, i32 1}
!2 = !{ptr @__exitcall_ftpm_mod_exit, !3, !"__exitcall_ftpm_mod_exit", i1 false, i1 false}
!3 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 410, i32 1}
!4 = !{ptr @__UNIQUE_ID_author243, !5, !"__UNIQUE_ID_author243", i1 false, i1 false}
!5 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 412, i32 1}
!6 = !{ptr @__UNIQUE_ID_description244, !7, !"__UNIQUE_ID_description244", i1 false, i1 false}
!7 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 413, i32 1}
!8 = !{ptr @__UNIQUE_ID_file245, !9, !"__UNIQUE_ID_file245", i1 false, i1 false}
!9 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 414, i32 1}
!10 = !{ptr @__UNIQUE_ID_license246, !9, !"__UNIQUE_ID_license246", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 365, i32 11}
!13 = !{ptr @ftpm_tee_plat_driver, !14, !"ftpm_tee_plat_driver", i1 false, i1 false}
!14 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 363, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 237, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ftpm_tee_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @ftpm_tee_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 249, i32 3}
!25 = !{ptr @ftpm_tee_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ftpm_tee_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 261, i32 3}
!29 = !{ptr @ftpm_tee_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ftpm_tee_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 269, i32 3}
!33 = !{ptr @ftpm_tee_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ftpm_tee_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 280, i32 3}
!37 = !{ptr @ftpm_tee_probe._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ftpm_tee_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @ftpm_ta_uuid, !40, !"ftpm_ta_uuid", i1 false, i1 false}
!40 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 30, i32 21}
!41 = !{ptr @ftpm_tee_tpm_ops, !42, !"ftpm_tee_tpm_ops", i1 false, i1 false}
!42 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 183, i32 35}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 51, i32 3}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ftpm_tee_tpm_op_recv._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @ftpm_tee_tpm_op_recv._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 85, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ftpm_tee_tpm_op_send._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ftpm_tee_tpm_op_send._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 114, i32 3}
!55 = !{ptr @ftpm_tee_tpm_op_send._entry.22, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @ftpm_tee_tpm_op_send._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 133, i32 3}
!59 = !{ptr @ftpm_tee_tpm_op_send._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ftpm_tee_tpm_op_send._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 140, i32 3}
!63 = !{ptr @ftpm_tee_tpm_op_send._entry.28, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ftpm_tee_tpm_op_send._entry_ptr.30, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 150, i32 3}
!67 = !{ptr @ftpm_tee_tpm_op_send._entry.31, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ftpm_tee_tpm_op_send._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 155, i32 3}
!71 = !{ptr @ftpm_tee_tpm_op_send._entry.34, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ftpm_tee_tpm_op_send._entry_ptr.36, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @of_ftpm_tee_ids, !74, !"of_ftpm_tee_ids", i1 false, i1 false}
!74 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 357, i32 34}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 385, i32 12}
!77 = !{ptr @ftpm_tee_driver, !78, !"ftpm_tee_driver", i1 false, i1 false}
!78 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 382, i32 33}
!79 = !{ptr @optee_ftpm_id_table, !80, !"optee_ftpm_id_table", i1 false, i1 false}
!80 = !{!"../drivers/char/tpm/tpm_ftpm_tee.c", i32 374, i32 42}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
