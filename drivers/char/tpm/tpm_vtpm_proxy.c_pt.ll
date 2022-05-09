; ModuleID = '/llk/IR_all_yes/drivers/char/tpm/tpm_vtpm_proxy.c_pt.bc'
source_filename = "../drivers/char/tpm/tpm_vtpm_proxy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tpm_class_ops = type { i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vtpm_proxy_new_dev = type { i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.proxy_dev = type { ptr, i32, %struct.wait_queue_head, %struct.mutex, i32, i32, i32, [4096 x i8], %struct.work_struct }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.tpm_header = type <{ i16, i32, %union.anon.74 }>
%union.anon.74 = type { i32 }
%struct.tpm_buf = type { i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@workqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_tpm_vtpm_proxy__245_727_vtpm_module_init6 = internal global ptr @vtpm_module_init, section ".initcall6.init", align 4
@__exitcall_vtpm_module_exit = internal global ptr @vtpm_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author246 = internal constant [57 x i8] c"tpm_vtpm_proxy.author=Stefan Berger (stefanb@us.ibm.com)\00", section ".modinfo", align 1
@__UNIQUE_ID_description247 = internal constant [39 x i8] c"tpm_vtpm_proxy.description=vTPM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version248 = internal constant [27 x i8] c"tpm_vtpm_proxy.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tpm_vtpm_proxy\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file249 = internal constant [52 x i8] c"tpm_vtpm_proxy.file=drivers/char/tpm/tpm_vtpm_proxy\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [27 x i8] c"tpm_vtpm_proxy.license=GPL\00", section ".modinfo", align 1
@vtpmx_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 255, ptr @.str.3, ptr @vtpmx_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vtpmx\00", [26 x i8] zeroinitializer }, align 32
@vtpmx_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vtpmx_fops_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[vtpms]\00", [24 x i8] zeroinitializer }, align 32
@vtpm_proxy_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @vtpm_proxy_fops_read, ptr @vtpm_proxy_fops_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vtpm_proxy_fops_poll, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @vtpm_proxy_fops_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@vtpm_proxy_create_proxy_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&proxy_dev->wq\00", [17 x i8] zeroinitializer }, align 32
@vtpm_proxy_create_proxy_dev.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&proxy_dev->buf_lock\00", [43 x i8] zeroinitializer }, align 32
@vtpm_proxy_create_proxy_dev.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&proxy_dev->work)\00", [60 x i8] zeroinitializer }, align 32
@vtpm_proxy_tpm_ops = internal constant { %struct.tpm_class_ops, [40 x i8] } { %struct.tpm_class_ops { i32 1, i8 1, i8 1, ptr @vtpm_proxy_tpm_req_canceled, ptr @vtpm_proxy_tpm_op_recv, ptr @vtpm_proxy_tpm_op_send, ptr @vtpm_proxy_tpm_op_cancel, ptr @vtpm_proxy_tpm_op_status, ptr null, ptr null, ptr null, ptr null, ptr @vtpm_proxy_request_locality, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vtpm_proxy_tpm_op_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 284, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Invalid size in recv: count=%zd, resp_len=%zd\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vtpm_proxy_tpm_op_recv\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/char/tpm/tpm_vtpm_proxy.c\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vtpm_proxy_tpm_op_recv._entry_ptr = internal global ptr @vtpm_proxy_tpm_op_recv._entry, section ".printk_index", align 4
@vtpm_proxy_tpm_op_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.15, i32 337, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Invalid size in send: count=%zd, buffer size=%zd\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vtpm_proxy_tpm_op_send\00", [41 x i8] zeroinitializer }, align 32
@vtpm_proxy_tpm_op_send._entry_ptr = internal global ptr @vtpm_proxy_tpm_op_send._entry, section ".printk_index", align 4
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"attempting to set locality\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/tpm.h\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tpm_buf: overflow\0A\00", [45 x i8] zeroinitializer }, align 32
@vtpm_proxy_fops_read.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.15, ptr @.str.24, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vtpm_proxy_fops_read\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Invalid size in recv: count=%zd, req_len=%zd\0A\00", [50 x i8] zeroinitializer }, align 32
@vtpm_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.15, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013couldn't create vtpmx device\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vtpm_module_init\00", [47 x i8] zeroinitializer }, align 32
@vtpm_module_init._entry_ptr = internal global ptr @vtpm_module_init._entry, section ".printk_index", align 4
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tpm-vtpm\00", [23 x i8] zeroinitializer }, align 32
@vtpm_module_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.26, ptr @.str.15, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013couldn't create workqueue\0A\00", [35 x i8] zeroinitializer }, align 32
@vtpm_module_init._entry_ptr.31 = internal global ptr @vtpm_module_init._entry.29, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant [10 x i8] c"workqueue\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 53, i32 33 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 732, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"vtpmx_miscdev\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 680, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 682, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"vtpmx_fops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 673, i32 37 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 230, i32 6 }
@___asan_gen_.57 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 214, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 156, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 556, i32 28 }
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"vtpm_proxy_fops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 244, i32 37 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 497, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 498, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 499, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [19 x i8] c"vtpm_proxy_tpm_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 434, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 282, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 335, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 414, i32 39 }
@___asan_gen_.123 = private unnamed_addr constant [23 x i8] c"../include/linux/tpm.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 376, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 96, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 702, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 706, i32 14 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private constant [37 x i8] c"../drivers/char/tpm/tpm_vtpm_proxy.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 708, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__UNIQUE_ID_version248, ptr @__exitcall_vtpm_module_exit, ptr @__initcall__kmod_tpm_vtpm_proxy__245_727_vtpm_module_init6, ptr @__modver_attr, ptr @vtpm_module_exit, ptr @vtpm_module_init._entry, ptr @vtpm_module_init._entry.29, ptr @vtpm_module_init._entry_ptr, ptr @vtpm_module_init._entry_ptr.31, ptr @vtpm_proxy_tpm_op_recv._entry, ptr @vtpm_proxy_tpm_op_recv._entry_ptr, ptr @vtpm_proxy_tpm_op_send._entry, ptr @vtpm_proxy_tpm_op_send._entry_ptr, ptr @workqueue, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @vtpmx_miscdev, ptr @.str.3, ptr @vtpmx_fops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @vtpm_proxy_fops, ptr @vtpm_proxy_create_proxy_dev.__key, ptr @.str.8, ptr @vtpm_proxy_create_proxy_dev.__key.9, ptr @.str.10, ptr @vtpm_proxy_create_proxy_dev.__key.11, ptr @.str.12, ptr @vtpm_proxy_tpm_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtpmx_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtpmx_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtpm_proxy_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtpm_proxy_create_proxy_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtpm_proxy_create_proxy_dev.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtpm_proxy_create_proxy_dev.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtpm_proxy_tpm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtpm_proxy_tpm_op_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtpm_proxy_tpm_op_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtpm_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vtpm_module_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vtpm_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #9
  tail call void @misc_deregister(ptr noundef nonnull @vtpmx_miscdev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vtpm_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @misc_register(ptr noundef nonnull @vtpmx_miscdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.27, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull @.str.28) #9
  store ptr %call2, ptr @workqueue, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #12
  tail call void @misc_deregister(ptr noundef nonnull @vtpmx_miscdev) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -12, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vtpmx_fops_ioctl(ptr nocapture noundef readnone %f, i32 noundef %ioctl, i32 noundef %arg) #2 align 64 {
entry:
  %vtpm_new_dev.i = alloca %struct.vtpm_proxy_new_dev, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1072389888, i32 %ioctl)
  %cond = icmp eq i32 %ioctl, -1072389888
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  %0 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %vtpm_new_dev.i) #9
  %1 = getelementptr inbounds %struct.vtpm_proxy_new_dev, ptr %vtpm_new_dev.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.vtpm_proxy_new_dev, ptr %vtpm_new_dev.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.vtpm_proxy_new_dev, ptr %vtpm_new_dev.i, i32 0, i32 3
  %4 = getelementptr inbounds %struct.vtpm_proxy_new_dev, ptr %vtpm_new_dev.i, i32 0, i32 4
  %5 = call ptr @memset(ptr %vtpm_new_dev.i, i32 255, i32 20)
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call.i, label %if.end8.i.i.i, label %sw.bb.vtpmx_ioc_new_dev.exit_crit_edge

sw.bb.vtpmx_ioc_new_dev.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %vtpmx_ioc_new_dev.exit

if.end8.i.i.i:                                    ; preds = %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #9
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.end8.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end8.i.i.i.if.then11.i.i.i_crit_edge:          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end8.i.i.i
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 20, i32 -1226833920) #13
  %asmresult.i.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !91

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %vtpm_new_dev.i, i32 noundef 20) #9
  %7 = call i32 @llvm.read_register.i32(metadata !81) #9
  %and.i.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !92
  %and.i.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %vtpm_new_dev.i, ptr noundef %0, i32 noundef 20) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #9, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end3.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !91

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end8.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i16.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 20, %if.end8.i.i.i.if.then11.i.i.i_crit_edge ], [ 20, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 20, %res.0.i.i16.i
  %add.ptr.i.i.i = getelementptr i8, ptr %vtpm_new_dev.i, i32 %sub.i.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i16.i)
  br label %vtpmx_ioc_new_dev.exit

if.end3.i:                                        ; preds = %if.end.i.i.i
  %11 = ptrtoint ptr %vtpm_new_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vtpm_new_dev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %tobool.not.i.i = icmp ult i32 %12, 2
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end3.i.if.then6.i_crit_edge

if.end3.i.if.then6.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.end.i.i:                                       ; preds = %if.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 4304) #14
  %cmp.i.i11.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %cmp.i.i11.i, label %if.end.i.i.if.then6.i_crit_edge, label %do.body.i.i.i

if.end.i.i.if.then6.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

do.body.i.i.i:                                    ; preds = %if.end.i.i
  %wq.i.i.i = getelementptr inbounds %struct.proxy_dev, ptr %call7.i.i.i.i.i, i32 0, i32 2
  call void @__init_waitqueue_head(ptr noundef %wq.i.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @vtpm_proxy_create_proxy_dev.__key) #9
  %buf_lock.i.i.i = getelementptr inbounds %struct.proxy_dev, ptr %call7.i.i.i.i.i, i32 0, i32 3
  call void @__mutex_init(ptr noundef %buf_lock.i.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @vtpm_proxy_create_proxy_dev.__key.9) #9
  %work.i.i.i = getelementptr inbounds %struct.proxy_dev, ptr %call7.i.i.i.i.i, i32 0, i32 8
  call void @__init_work(ptr noundef %work.i.i.i, i32 noundef 0) #9
  %14 = ptrtoint ptr %work.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %work.i.i.i, align 4
  %lockdep_map.i.i.i = getelementptr inbounds %struct.proxy_dev, ptr %call7.i.i.i.i.i, i32 0, i32 8, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @vtpm_proxy_create_proxy_dev.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry9.i.i.i = getelementptr inbounds %struct.proxy_dev, ptr %call7.i.i.i.i.i, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %entry9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry9.i.i.i, ptr %entry9.i.i.i, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.proxy_dev, ptr %call7.i.i.i.i.i, i32 0, i32 8, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry9.i.i.i, ptr %prev.i.i.i.i, align 4
  %func.i.i.i = getelementptr inbounds %struct.proxy_dev, ptr %call7.i.i.i.i.i, i32 0, i32 8, i32 2
  %17 = ptrtoint ptr %func.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @vtpm_proxy_work, ptr %func.i.i.i, align 8
  %call13.i.i.i = call ptr @tpm_chip_alloc(ptr noundef null, ptr noundef nonnull @vtpm_proxy_tpm_ops) #9
  %cmp.i.i.i.i = icmp ugt ptr %call13.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.then15.i.i.i, label %if.end17.i.i.i

if.then15.i.i.i:                                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #9
  br label %vtpm_proxy_create_proxy_dev.exit.i.i

if.end17.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %call13.i.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i.i.i.i, ptr %driver_data.i.i.i.i, align 4
  %19 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call13.i.i.i, ptr %call7.i.i.i.i.i, align 8
  br label %vtpm_proxy_create_proxy_dev.exit.i.i

vtpm_proxy_create_proxy_dev.exit.i.i:             ; preds = %if.end17.i.i.i, %if.then15.i.i.i
  %retval.0.i.i.i = phi ptr [ %call13.i.i.i, %if.then15.i.i.i ], [ %call7.i.i.i.i.i, %if.end17.i.i.i ]
  %cmp.i54.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54.i.i, label %vtpm_proxy_create_proxy_dev.exit.i.i.vtpm_proxy_create_device.exit.i_crit_edge, label %if.end5.i.i

vtpm_proxy_create_proxy_dev.exit.i.i.vtpm_proxy_create_device.exit.i_crit_edge: ; preds = %vtpm_proxy_create_proxy_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vtpm_proxy_create_device.exit.i

if.end5.i.i:                                      ; preds = %vtpm_proxy_create_proxy_dev.exit.i.i
  %20 = ptrtoint ptr %vtpm_new_dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vtpm_new_dev.i, align 4
  %flags7.i.i = getelementptr inbounds %struct.proxy_dev, ptr %retval.0.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %flags7.i.i, align 4
  %call8.i.i = call i32 @get_unused_fd_flags(i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp.i.i, label %if.end5.i.i.err_delete_proxy_dev.i.i_crit_edge, label %if.end10.i.i

if.end5.i.i.err_delete_proxy_dev.i.i_crit_edge:   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_delete_proxy_dev.i.i

if.end10.i.i:                                     ; preds = %if.end5.i.i
  %call11.i.i = call ptr @anon_inode_getfile(ptr noundef nonnull @.str.7, ptr noundef nonnull @vtpm_proxy_fops, ptr noundef nonnull %retval.0.i.i.i, i32 noundef 2) #9
  %cmp.i55.i.i = icmp ugt ptr %call11.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i55.i.i, label %if.then13.i.i, label %if.end15.i.i

if.then13.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %call11.i.i to i32
  call void @put_unused_fd(i32 noundef %call8.i.i) #9
  br label %err_delete_proxy_dev.i.i

if.end15.i.i:                                     ; preds = %if.end10.i.i
  %private_data.i.i.i = getelementptr inbounds %struct.file, ptr %call11.i.i, i32 0, i32 16
  %24 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private_data.i.i.i, align 4
  %state.i.i.i = getelementptr inbounds %struct.proxy_dev, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state.i.i.i, align 4
  %or.i.i.i = or i32 %27, 1
  store i32 %or.i.i.i, ptr %state.i.i.i, align 4
  %28 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags7.i.i, align 4
  %and17.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end15.i.i.if.end21.i.i_crit_edge, label %if.then19.i.i

if.end15.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i.i

if.then19.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %retval.0.i.i.i, align 4
  %flags20.i.i = getelementptr inbounds %struct.tpm_chip, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %flags20.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags20.i.i, align 4
  %or.i.i = or i32 %33, 2
  store i32 %or.i.i, ptr %flags20.i.i, align 4
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then19.i.i, %if.end15.i.i.if.end21.i.i_crit_edge
  %34 = load ptr, ptr @workqueue, align 4
  %work.i56.i.i = getelementptr inbounds %struct.proxy_dev, ptr %retval.0.i.i.i, i32 0, i32 8
  %call.i.i.i12.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %work.i56.i.i) #9
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call8.i.i, ptr %2, align 4
  %36 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %retval.0.i.i.i, align 4
  %devt.i.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 29
  %38 = ptrtoint ptr %devt.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %devt.i.i, align 8
  %shr.i.i = lshr i32 %39, 20
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shr.i.i, ptr %3, align 4
  %41 = load ptr, ptr %retval.0.i.i.i, align 4
  %devt26.i.i = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 29
  %42 = ptrtoint ptr %devt26.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %devt26.i.i, align 8
  %and27.i.i = and i32 %43, 1048575
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and27.i.i, ptr %4, align 4
  %45 = load ptr, ptr %retval.0.i.i.i, align 4
  %dev_num.i.i = getelementptr inbounds %struct.tpm_chip, ptr %45, i32 0, i32 10
  %46 = ptrtoint ptr %dev_num.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dev_num.i.i, align 8
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %1, align 4
  br label %vtpm_proxy_create_device.exit.i

err_delete_proxy_dev.i.i:                         ; preds = %if.then13.i.i, %if.end5.i.i.err_delete_proxy_dev.i.i_crit_edge
  %rc.0.i.i = phi i32 [ %23, %if.then13.i.i ], [ %call8.i.i, %if.end5.i.i.err_delete_proxy_dev.i.i_crit_edge ]
  %49 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %retval.0.i.i.i, align 4
  call void @put_device(ptr noundef %50) #9
  call void @kfree(ptr noundef nonnull %retval.0.i.i.i) #9
  %51 = inttoptr i32 %rc.0.i.i to ptr
  br label %vtpm_proxy_create_device.exit.i

vtpm_proxy_create_device.exit.i:                  ; preds = %err_delete_proxy_dev.i.i, %if.end21.i.i, %vtpm_proxy_create_proxy_dev.exit.i.i.vtpm_proxy_create_device.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %51, %err_delete_proxy_dev.i.i ], [ %call11.i.i, %if.end21.i.i ], [ %retval.0.i.i.i, %vtpm_proxy_create_proxy_dev.exit.i.i.vtpm_proxy_create_device.exit.i_crit_edge ]
  %cmp.i13.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i13.i, label %vtpm_proxy_create_device.exit.i.if.then6.i_crit_edge, label %if.end8.i.i4.i

vtpm_proxy_create_device.exit.i.if.then6.i_crit_edge: ; preds = %vtpm_proxy_create_device.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.then6.i:                                       ; preds = %vtpm_proxy_create_device.exit.i.if.then6.i_crit_edge, %if.end.i.i.if.then6.i_crit_edge, %if.end3.i.if.then6.i_crit_edge
  %retval.0.i21.i = phi ptr [ %retval.0.i.i, %vtpm_proxy_create_device.exit.i.if.then6.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.i.if.then6.i_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end3.i.if.then6.i_crit_edge ]
  %52 = ptrtoint ptr %retval.0.i21.i to i32
  br label %vtpmx_ioc_new_dev.exit

if.end8.i.i4.i:                                   ; preds = %vtpm_proxy_create_device.exit.i
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #9
  %call.i.i5.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i5.i, label %if.end8.i.i4.i.if.then11.i_crit_edge, label %copy_to_user.exit.i

if.end8.i.i4.i.if.then11.i_crit_edge:             ; preds = %if.end8.i.i4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

copy_to_user.exit.i:                              ; preds = %if.end8.i.i4.i
  %call.i.i.i9.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %vtpm_new_dev.i, i32 noundef 20) #9
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %vtpm_new_dev.i, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool10.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %copy_to_user.exit.i.if.then11.i_crit_edge

copy_to_user.exit.i.if.then11.i_crit_edge:        ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

if.then11.i:                                      ; preds = %copy_to_user.exit.i.if.then11.i_crit_edge, %if.end8.i.i4.i.if.then11.i_crit_edge
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %2, align 4
  call void @put_unused_fd(i32 noundef %54) #9
  call void @fput(ptr noundef %retval.0.i.i) #9
  br label %vtpmx_ioc_new_dev.exit

if.end12.i:                                       ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %2, align 4
  call void @fd_install(i32 noundef %56, ptr noundef %retval.0.i.i) #9
  br label %vtpmx_ioc_new_dev.exit

vtpmx_ioc_new_dev.exit:                           ; preds = %if.end12.i, %if.then11.i, %if.then6.i, %if.then11.i.i.i, %sw.bb.vtpmx_ioc_new_dev.exit_crit_edge
  %retval.0.i = phi i32 [ %52, %if.then6.i ], [ -14, %if.then11.i ], [ 0, %if.end12.i ], [ -1, %sw.bb.vtpmx_ioc_new_dev.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %vtpm_new_dev.i) #9
  br label %return

return:                                           ; preds = %vtpmx_ioc_new_dev.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %vtpmx_ioc_new_dev.exit ], [ -515, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_inode_getfile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vtpm_proxy_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4260
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @tpm_chip_register(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %buf_lock.i = getelementptr i8, ptr %work, i32 -4200
  tail call void @mutex_lock_nested(ptr noundef %buf_lock.i, i32 noundef 0) #9
  %state.i = getelementptr i8, ptr %work, i32 -4108
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  %and.i = and i32 %3, -2
  store i32 %and.i, ptr %state.i, align 4
  tail call void @mutex_unlock(ptr noundef %buf_lock.i) #9
  %wq.i = getelementptr i8, ptr %work, i32 -4252
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr i8, ptr %work, i32 -4108
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %or = or i32 %5, 4
  store i32 %or, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tpm_chip_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_chip_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vtpm_proxy_tpm_req_canceled(ptr nocapture noundef readonly %chip, i8 noundef zeroext %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %buf_lock = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %buf_lock, i32 noundef 0) #9
  %state = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void @mutex_unlock(ptr noundef %buf_lock) #9
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vtpm_proxy_tpm_op_recv(ptr noundef %chip, ptr nocapture noundef writeonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %buf_lock = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %buf_lock, i32 noundef 0) #9
  %state = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %resp_len = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %resp_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %count)
  %cmp = icmp ugt i32 %5, %count
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.13, i32 noundef %count, i32 noundef %5) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %buffer = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 7
  %6 = call ptr @memcpy(ptr %buf, ptr %buffer, i32 %5)
  %7 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %resp_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -32, %entry.cleanup_crit_edge ], [ -5, %do.end ], [ %5, %if.end4 ]
  tail call void @mutex_unlock(ptr noundef %buf_lock) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vtpm_proxy_tpm_op_send(ptr noundef %chip, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %count)
  %cmp = icmp ugt i32 %count, 4096
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %chip, ptr noundef nonnull @.str.18, i32 noundef %count, i32 noundef 4096) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %count)
  %cmp.i = icmp ult i32 %count, 10
  %or.cond = or i1 %cmp.i, %tobool.not
  br i1 %or.cond, label %if.end.if.end5_crit_edge, label %vtpm_proxy_is_driver_command.exit

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

vtpm_proxy_is_driver_command.exit:                ; preds = %if.end
  %4 = getelementptr inbounds %struct.tpm_header, ptr %buf, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 536875008, i32 %6)
  %cond.i.not = icmp eq i32 %6, 536875008
  br i1 %cond.i.not, label %vtpm_proxy_is_driver_command.exit.cleanup_crit_edge, label %vtpm_proxy_is_driver_command.exit.if.end5_crit_edge

vtpm_proxy_is_driver_command.exit.if.end5_crit_edge: ; preds = %vtpm_proxy_is_driver_command.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

vtpm_proxy_is_driver_command.exit.cleanup_crit_edge: ; preds = %vtpm_proxy_is_driver_command.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %vtpm_proxy_is_driver_command.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %buf_lock = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %buf_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %and7 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %buf_lock) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %resp_len = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %resp_len, align 4
  %req_len = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %req_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %count, ptr %req_len, align 4
  %buffer = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 7
  %11 = call ptr @memcpy(ptr %buffer, ptr %buf, i32 %count)
  %and13 = and i32 %8, -3
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and13, ptr %state, align 4
  tail call void @mutex_unlock(ptr noundef %buf_lock) #9
  %wq = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %vtpm_proxy_is_driver_command.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end11 ], [ -32, %if.then9 ], [ -14, %vtpm_proxy_is_driver_command.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vtpm_proxy_tpm_op_cancel(ptr nocapture noundef %chip) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @vtpm_proxy_tpm_op_status(ptr nocapture noundef readonly %chip) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %resp_len = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  %. = zext i1 %tobool.not to i8
  ret i8 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vtpm_proxy_request_locality(ptr noundef %chip, i32 noundef %locality) #2 align 64 {
entry:
  %buf = alloca %struct.tpm_buf, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %0 = getelementptr inbounds %struct.tpm_buf, ptr %buf, i32 0, i32 1
  %driver_data.i = getelementptr inbounds %struct.device, ptr %chip, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %flags = getelementptr inbounds %struct.tpm_chip, ptr %chip, i32 0, i32 9
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %call.i26 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %5 = inttoptr i32 %call.i26 to ptr
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool.not.i28 = icmp eq i32 %call.i26, 0
  br i1 %tobool.not.i28, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i16 193, i16 -32766
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %buf, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %., ptr %5, align 1
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 10, ptr %length.i.i, align 1
  %10 = getelementptr inbounds %struct.tpm_header, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 536875008, ptr %10, align 1
  %conv = trunc i32 %locality to i8
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %0, align 4
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %length.i.i.i, align 1
  %16 = load i32, ptr %buf, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.tpm_buf_append_u8.exit_crit_edge

if.end5.tpm_buf_append_u8.exit_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u8.exit

if.end.i.i:                                       ; preds = %if.end5
  %add.i.i = add i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.22) #9
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buf, align 4
  %or.i.i = or i32 %18, 1
  store i32 %or.i.i, ptr %buf, align 4
  br label %tpm_buf_append_u8.exit

if.end20.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr i8, ptr %13, i32 %15
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %arrayidx.i.i, align 1
  %20 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %add.i.i, ptr %length.i.i.i, align 1
  br label %tpm_buf_append_u8.exit

tpm_buf_append_u8.exit:                           ; preds = %if.end20.i.i, %do.end.i.i, %if.end5.tpm_buf_append_u8.exit_crit_edge
  %state = getelementptr inbounds %struct.proxy_dev, ptr %2, i32 0, i32 4
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state, align 4
  %or = or i32 %22, 8
  store i32 %or, ptr %state, align 4
  %call6 = call i32 @tpm_transmit_cmd(ptr noundef %chip, ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull @.str.20) #9
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state, align 4
  %and8 = and i32 %24, -9
  store i32 %and8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %tpm_buf_append_u8.exit.out_crit_edge, label %if.end11

tpm_buf_append_u8.exit.out_crit_edge:             ; preds = %tpm_buf_append_u8.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end11:                                         ; preds = %tpm_buf_append_u8.exit
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.tpm_header, ptr %26, i32 0, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %27, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool12.not = icmp eq i32 %29, 0
  %spec.select = select i1 %tobool12.not, i32 %locality, i32 -1
  br label %out

out:                                              ; preds = %if.end11, %tpm_buf_append_u8.exit.out_crit_edge
  %locality.addr.0 = phi i32 [ %call6, %tpm_buf_append_u8.exit.out_crit_edge ], [ %spec.select, %if.end11 ]
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %0, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @free_pages(i32 noundef %32, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %locality.addr.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_transmit_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vtpm_proxy_fops_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %off) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 81) #9
  %req_len = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %req_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end20_crit_edge, label %if.then

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %wq = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 2
  %call97 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %7 = ptrtoint ptr %req_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %req_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6.not98 = icmp eq i32 %8, 0
  br i1 %cmp6.not98, label %if.then.lor.lhs.false7_crit_edge, label %if.then.if.end16.thread89_crit_edge

if.then.if.end16.thread89_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.thread89

if.then.lor.lhs.false7_crit_edge:                 ; preds = %if.then
  br label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %cleanup.lor.lhs.false7_crit_edge, %if.then.lor.lhs.false7_crit_edge
  %call99 = phi i32 [ %call, %cleanup.lor.lhs.false7_crit_edge ], [ %call97, %if.then.lor.lhs.false7_crit_edge ]
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  %and9 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %lor.lhs.false7.if.end16.thread89_crit_edge, label %if.end

lor.lhs.false7.if.end16.thread89_crit_edge:       ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.thread89

if.end:                                           ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool12.not = icmp eq i32 %call99, 0
  br i1 %tobool12.not, label %cleanup, label %if.end16

cleanup:                                          ; preds = %if.end
  call void @schedule() #9
  %call = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %11 = ptrtoint ptr %req_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %req_len, align 4
  %cmp6.not = icmp eq i32 %12, 0
  br i1 %cmp6.not, label %cleanup.lor.lhs.false7_crit_edge, label %cleanup.if.end16.thread89_crit_edge

cleanup.if.end16.thread89_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.thread89

cleanup.lor.lhs.false7_crit_edge:                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false7

if.end16.thread89:                                ; preds = %cleanup.if.end16.thread89_crit_edge, %lor.lhs.false7.if.end16.thread89_crit_edge, %if.then.if.end16.thread89_crit_edge
  call void @finish_wait(ptr noundef %wq, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end20

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %cleanup54

if.end20:                                         ; preds = %if.end16.thread89, %lor.lhs.false.if.end20_crit_edge, %entry.if.end20_crit_edge
  %buf_lock = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %buf_lock, i32 noundef 0) #9
  %state21 = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %state21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state21, align 4
  %and22 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %buf_lock) #9
  br label %cleanup54

if.end26:                                         ; preds = %if.end20
  %15 = ptrtoint ptr %req_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %req_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %count)
  %cmp28 = icmp ugt i32 %16, %count
  br i1 %cmp28, label %if.then29, label %if.end41

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %buf_lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vtpm_proxy_fops_read.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vtpm_proxy_fops_read, %if.then37)) #9
          to label %cleanup54 [label %if.then37], !srcloc !95

if.then37:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vtpm_proxy_fops_read.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.24, i32 noundef %count, i32 noundef %16) #9
  br label %cleanup54

if.end41:                                         ; preds = %if.end26
  %buffer = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp9.i.i = icmp slt i32 %16, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end41
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge, label %if.then27.i.i, !prof !91

land.rhs16.i.i.copy_to_user.exit.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %copy_to_user.exit.thread

if.then.i.i.i:                                    ; preds = %if.end41
  call void @__check_object_size(ptr noundef %buffer, i32 noundef %16, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %17 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %16, i32 -1226833920) #13, !srcloc !96
  %asmresult.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %buffer, i32 noundef %16) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %buffer, i32 noundef %16) #9
  br label %copy_to_user.exit

copy_to_user.exit.thread:                         ; preds = %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge
  %18 = call ptr @memset(ptr %buffer, i32 0, i32 %16)
  %19 = ptrtoint ptr %req_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %req_len, align 4
  br label %if.end49

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %16, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %16, %if.end.i.i.copy_to_user.exit_crit_edge ]
  %20 = call ptr @memset(ptr %buffer, i32 0, i32 %16)
  %21 = ptrtoint ptr %req_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %req_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool46.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool46.not, label %if.then47, label %copy_to_user.exit.if.end49_crit_edge

copy_to_user.exit.if.end49_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then47:                                        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %state21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state21, align 4
  %or = or i32 %23, 2
  store i32 %or, ptr %state21, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %copy_to_user.exit.if.end49_crit_edge, %copy_to_user.exit.thread
  %tobool46.not95 = phi i32 [ -14, %copy_to_user.exit.thread ], [ %16, %if.then47 ], [ -14, %copy_to_user.exit.if.end49_crit_edge ]
  call void @mutex_unlock(ptr noundef %buf_lock) #9
  br label %cleanup54

cleanup54:                                        ; preds = %if.end49, %if.then37, %if.then29, %if.then24, %if.end16
  %retval.0 = phi i32 [ -32, %if.then24 ], [ -4, %if.end16 ], [ -5, %if.then37 ], [ %tobool46.not95, %if.end49 ], [ -5, %if.then29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vtpm_proxy_fops_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %buf_lock = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %buf_lock, i32 noundef 0) #9
  %state = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %buf_lock) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %count)
  %cmp = icmp ugt i32 %count, 4096
  %and3 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %buf_lock) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %and9 = and i32 %3, -3
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and9, ptr %state, align 4
  %req_len = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %req_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %req_len, align 4
  %buffer = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 7
  tail call void @__check_object_size(ptr noundef %buffer, i32 noundef %count, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end7.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end7.if.end.i.i_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end7
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #13, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !91

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %buffer, i32 noundef %count) #9
  %7 = tail call i32 @llvm.read_register.i32(metadata !81) #9
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !92
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %buffer, ptr noundef %buf, i32 noundef %count) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end7.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.end7.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end13, label %if.then11.i.i, !prof !91

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buffer, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  tail call void @mutex_unlock(ptr noundef %buf_lock) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %resp_len = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %count, ptr %resp_len, align 4
  tail call void @mutex_unlock(ptr noundef %buf_lock) #9
  %wq = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11.i.i, %if.then5, %if.then
  %retval.0 = phi i32 [ -5, %if.then5 ], [ -14, %if.then11.i.i ], [ %count, %if.end13 ], [ -32, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vtpm_proxy_fops_poll(ptr noundef %filp, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wq = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %wq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %3(ptr noundef %filp, ptr noundef nonnull %wq, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %buf_lock = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %buf_lock, i32 noundef 0) #9
  %req_len = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %req_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool.not, i32 4, i32 69
  %state = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %and = shl i32 %7, 4
  %8 = and i32 %and, 16
  %9 = or i32 %8, %spec.select
  %10 = xor i32 %9, 16
  tail call void @mutex_unlock(ptr noundef %buf_lock) #9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vtpm_proxy_fops_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  store ptr null, ptr %private_data, align 4
  %buf_lock.i.i.i = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %buf_lock.i.i.i, i32 noundef 0) #9
  %state.i.i.i = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i.i.i, align 4
  %and.i.i.i = and i32 %3, -2
  store i32 %and.i.i.i, ptr %state.i.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %buf_lock.i.i.i) #9
  %wq.i.i.i = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wq.i.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %work.i.i = getelementptr inbounds %struct.proxy_dev, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @flush_work(ptr noundef %work.i.i) #9
  tail call void @mutex_lock_nested(ptr noundef %buf_lock.i.i.i, i32 noundef 0) #9
  %4 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i.i.i, align 4
  %and.i.i = and i32 %5, -2
  store i32 %and.i.i, ptr %state.i.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %buf_lock.i.i.i) #9
  tail call void @__wake_up(ptr noundef %wq.i.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %6 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i.i.i, align 4
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.vtpm_proxy_delete_device.exit_crit_edge, label %if.then.i

entry.vtpm_proxy_delete_device.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vtpm_proxy_delete_device.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @tpm_chip_unregister(ptr noundef %9) #9
  br label %vtpm_proxy_delete_device.exit

vtpm_proxy_delete_device.exit:                    ; preds = %if.then.i, %entry.vtpm_proxy_delete_device.exit_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void @put_device(ptr noundef %11) #9
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tpm_chip_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !37, !39, !40, !42, !43, !45, !47, !48, !49, !50, !51, !52, !53, !55, !56, !57, !58, !60, !62, !63, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !79, !80}
!llvm.named.register.sp = !{!81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_tpm_vtpm_proxy__245_727_vtpm_module_init6, !1, !"__initcall__kmod_tpm_vtpm_proxy__245_727_vtpm_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 727, i32 1}
!2 = !{ptr @__exitcall_vtpm_module_exit, !3, !"__exitcall_vtpm_module_exit", i1 false, i1 false}
!3 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 728, i32 1}
!4 = !{ptr @__UNIQUE_ID_author246, !5, !"__UNIQUE_ID_author246", i1 false, i1 false}
!5 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 730, i32 1}
!6 = !{ptr @__UNIQUE_ID_description247, !7, !"__UNIQUE_ID_description247", i1 false, i1 false}
!7 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 731, i32 1}
!8 = !{ptr @__UNIQUE_ID_version248, !9, !"__UNIQUE_ID_version248", i1 false, i1 false}
!9 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 732, i32 1}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__modver_attr, !9, !"__modver_attr", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_file249, !15, !"__UNIQUE_ID_file249", i1 false, i1 false}
!15 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 733, i32 1}
!16 = !{ptr @__UNIQUE_ID_license250, !15, !"__UNIQUE_ID_license250", i1 false, i1 false}
!17 = !{ptr @workqueue, !18, !"workqueue", i1 false, i1 false}
!18 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 53, i32 33}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 682, i32 10}
!21 = !{ptr @vtpmx_miscdev, !22, !"vtpmx_miscdev", i1 false, i1 false}
!22 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 680, i32 26}
!23 = !{ptr @vtpmx_fops, !24, !"vtpmx_fops", i1 false, i1 false}
!24 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 673, i32 37}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 556, i32 28}
!34 = !{ptr @vtpm_proxy_create_proxy_dev.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 497, i32 2}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @vtpm_proxy_create_proxy_dev.__key.9, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 498, i32 2}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @vtpm_proxy_create_proxy_dev.__key.11, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 499, i32 2}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @vtpm_proxy_tpm_ops, !44, !"vtpm_proxy_tpm_ops", i1 false, i1 false}
!44 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 434, i32 35}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 282, i32 3}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @vtpm_proxy_tpm_op_recv._entry, !46, !"_entry", i1 false, i1 false}
!52 = !{ptr @vtpm_proxy_tpm_op_recv._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 335, i32 3}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @vtpm_proxy_tpm_op_send._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @vtpm_proxy_tpm_op_send._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 414, i32 39}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/tpm.h", i32 376, i32 3}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @vtpm_proxy_fops, !64, !"vtpm_proxy_fops", i1 false, i1 false}
!64 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 244, i32 37}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 96, i32 3}
!67 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @vtpm_proxy_fops_read.__UNIQUE_ID_ddebug244, !66, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 702, i32 3}
!71 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @vtpm_module_init._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @vtpm_module_init._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 706, i32 14}
!76 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/char/tpm/tpm_vtpm_proxy.c", i32 708, i32 3}
!79 = !{ptr @vtpm_module_init._entry.29, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @vtpm_module_init._entry_ptr.31, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{!"sp"}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{i64 3008047}
!93 = !{i64 3008244}
!94 = !{i64 2150493477}
!95 = !{i64 2148316501, i64 2148316506, i64 2148316519, i64 2148316563, i64 2148316597, i64 2148316618}
!96 = !{i64 2150513173, i64 2150513198}
!97 = !{i64 2150512492, i64 2150512517}
