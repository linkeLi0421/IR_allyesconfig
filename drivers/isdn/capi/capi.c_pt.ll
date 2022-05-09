; ModuleID = '/llk/IR_all_yes/drivers/isdn/capi/capi.c_pt.bc'
source_filename = "../drivers/isdn/capi/capi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.100 }
%union.anon.100 = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.capidev = type { %struct.list_head, %struct.capi20_appl, i16, i32, %struct.sk_buff_head, %struct.wait_queue_head, %struct.list_head, %struct.mutex }
%struct.capi20_appl = type { i16, %struct.capi_register_params, ptr, ptr, i32, i32, i32, i32, %struct.mutex, %struct.sk_buff_head, %struct.work_struct, i32 }
%struct.capi_register_params = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%union.capi_ioctl_struct = type { %struct.capi_profile }
%struct.capi_profile = type { i16, i16, i32, i32, i32, i32, [6 x i32], [5 x i32] }
%struct.capi_manufacturer_cmd = type { i32, ptr }
%struct.capincci = type { %struct.list_head, i32, ptr, ptr }
%struct.capiminor = type { i32, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.tty_port, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, i32, ptr, %struct.spinlock, %struct.list_head, i32, %struct.spinlock }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.67, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.67 = type { ptr }
%struct.llist_head = type { ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.68, %struct.anon.69, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.68 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.69 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.ackqueue_entry = type { %struct.list_head, i16 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_description337 = internal constant [79 x i8] c"kernelcapi.description=CAPI4Linux: kernel CAPI layer and /dev/capi20 interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author338 = internal constant [32 x i8] c"kernelcapi.author=Carsten Paeth\00", section ".modinfo", align 1
@__UNIQUE_ID_file339 = internal constant [45 x i8] c"kernelcapi.file=drivers/isdn/capi/kernelcapi\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [23 x i8] c"kernelcapi.license=GPL\00", section ".modinfo", align 1
@__param_str_major = internal constant [17 x i8] c"kernelcapi.major\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@capi_major = internal global { i32, [28 x i8] } { i32 68, [28 x i8] zeroinitializer }, align 32
@__param_major = internal constant %struct.kernel_param { ptr @__param_str_major, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.100 { ptr @capi_major } }, section "__param", align 4
@__UNIQUE_ID_majortype341 = internal constant [31 x i8] c"kernelcapi.parmtype=major:uint\00", section ".modinfo", align 1
@__param_str_ttyminors = internal constant [21 x i8] c"kernelcapi.ttyminors\00", align 1
@capi_ttyminors = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_ttyminors = internal constant %struct.kernel_param { ptr @__param_str_ttyminors, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.100 { ptr @capi_ttyminors } }, section "__param", align 4
@__UNIQUE_ID_ttyminorstype342 = internal constant [35 x i8] c"kernelcapi.parmtype=ttyminors:uint\00", section ".modinfo", align 1
@capinc_tty_driver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@capiminors = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"capi/capi20\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"capi/capi20ncci\00", [16 x i8] zeroinitializer }, align 32
@capi_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"capi20\00", [25 x i8] zeroinitializer }, align 32
@__initcall__kmod_kernelcapi__357_1439_capi_init6 = internal global ptr @capi_init, section ".initcall6.init", align 4
@__exitcall_capi_exit = internal global ptr @capi_exit, section ".exitcall.exit", align 4
@capi_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @capi_read, ptr @capi_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @capi_poll, ptr @capi_unlocked_ioctl, ptr null, ptr null, i32 0, ptr @capi_open, ptr null, ptr @capi_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@capi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013capi20: unable to get major %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"capi_init\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/isdn/capi/capi.c\00", [39 x i8] zeroinitializer }, align 32
@capi_init._entry_ptr = internal global ptr @capi_init._entry, section ".printk_index", align 4
@capi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"capi\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" (middleware)\00", [18 x i8] zeroinitializer }, align 32
@capi_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015CAPI 2.0 started up with major %d%s\0A\00", [57 x i8] zeroinitializer }, align 32
@capi_init._entry_ptr.10 = internal global ptr @capi_init._entry.8, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@capiminors_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"capiminors_lock\00", [16 x i8] zeroinitializer }, align 32
@capi_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @capi_mutex, i64 52), ptr getelementptr (i8, ptr @capi_mutex, i64 52) }, ptr @capi_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"capi_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"capi_mutex\00", [21 x i8] zeroinitializer }, align 32
@capi_recv_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013BUG: capi_signal: ncci not found\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"capi_recv_message\00", [46 x i8] zeroinitializer }, align 32
@capi_recv_message._entry_ptr = internal global ptr @capi_recv_message._entry, section ".printk_index", align 4
@capi_recv_message.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.18, ptr @.str.5, ptr @.str.20, i8 0, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kernelcapi\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"capi_signal: DATA_B3_IND %u len=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@capi_recv_message.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.18, ptr @.str.5, ptr @.str.21, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"capi_signal: DATA_B3_CONF %u 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@capiminor_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013capi: can't alloc capiminor\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"capiminor_alloc\00", [16 x i8] zeroinitializer }, align 32
@capiminor_alloc._entry_ptr = internal global ptr @capiminor_alloc._entry, section ".printk_index", align 4
@capiminor_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&mp->ackqlock\00", [18 x i8] zeroinitializer }, align 32
@capiminor_alloc.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&mp->outlock\00", [19 x i8] zeroinitializer }, align 32
@capiminor_port_ops = internal constant { %struct.tty_port_operations, [44 x i8] } { %struct.tty_port_operations { ptr null, ptr null, ptr null, ptr null, ptr @capiminor_destroy }, [44 x i8] zeroinitializer }, align 32
@capiminor_alloc._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.5, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\015capi: out of minors\0A\00", [41 x i8] zeroinitializer }, align 32
@capiminor_alloc._entry_ptr.29 = internal global ptr @capiminor_alloc._entry.27, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@handle_recv_skb.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.31, ptr @.str.5, ptr @.str.32, i8 0, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"handle_recv_skb\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"capi: currently no receiver\0A\00", [35 x i8] zeroinitializer }, align 32
@handle_recv_skb.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.31, ptr @.str.5, ptr @.str.33, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"capi: ldisc has no receive_buf function\0A\00", [55 x i8] zeroinitializer }, align 32
@handle_recv_skb.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.31, ptr @.str.5, ptr @.str.34, i8 0, i8 108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"capi: recv tty throttled\0A\00", [38 x i8] zeroinitializer }, align 32
@handle_recv_skb.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.31, ptr @.str.5, ptr @.str.35, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"capi: no room in tty\0A\00", [42 x i8] zeroinitializer }, align 32
@handle_recv_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.5, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013capi: gen_data_b3_resp failed\0A\00", [63 x i8] zeroinitializer }, align 32
@handle_recv_skb._entry_ptr = internal global ptr @handle_recv_skb._entry, section ".printk_index", align 4
@handle_recv_skb.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.31, ptr @.str.5, ptr @.str.37, i8 0, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"capi: DATA_B3_RESP %u len=%d => ldisc\0A\00", [57 x i8] zeroinitializer }, align 32
@handle_recv_skb._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.5, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013capi: send DATA_B3_RESP failed=%x\0A\00", [59 x i8] zeroinitializer }, align 32
@handle_recv_skb._entry_ptr.40 = internal global ptr @handle_recv_skb._entry.38, section ".printk_index", align 4
@handle_minor_send.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.41, ptr @.str.5, ptr @.str.42, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"handle_minor_send\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"capi: send: tty stopped\0A\00", [39 x i8] zeroinitializer }, align 32
@handle_minor_send.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.41, ptr @.str.5, ptr @.str.43, i8 0, i8 -120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"capi: DATA_B3_REQ %u len=%u\0A\00", [35 x i8] zeroinitializer }, align 32
@handle_minor_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.41, ptr @.str.5, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013capi: put_message = %x\0A\00", [38 x i8] zeroinitializer }, align 32
@handle_minor_send._entry_ptr = internal global ptr @handle_minor_send._entry, section ".printk_index", align 4
@capiminor_add_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013capi: alloc datahandle failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"capiminor_add_ack\00", [46 x i8] zeroinitializer }, align 32
@capiminor_add_ack._entry_ptr = internal global ptr @capiminor_add_ack._entry, section ".printk_index", align 4
@capi_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&cdev->lock\00", [20 x i8] zeroinitializer }, align 32
@capi_open.__key.48 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&cdev->recvwait\00", [16 x i8] zeroinitializer }, align 32
@capidev_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.50, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @capidev_list_lock, i64 52), ptr getelementptr (i8, ptr @capidev_list_lock, i64 52) }, ptr @capidev_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.51, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@capidev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @capidev_list, ptr @capidev_list }, [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"capidev_list_lock.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"capidev_list_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"capi_nc\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"capi!\00", [26 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@capinc_ops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr @capinc_tty_install, ptr null, ptr @capinc_tty_open, ptr @capinc_tty_close, ptr null, ptr @capinc_tty_cleanup, ptr @capinc_tty_write, ptr @capinc_tty_put_char, ptr @capinc_tty_flush_chars, ptr @capinc_tty_write_room, ptr @capinc_tty_chars_in_buffer, ptr null, ptr null, ptr null, ptr @capinc_tty_throttle, ptr @capinc_tty_unthrottle, ptr @capinc_tty_stop, ptr @capinc_tty_start, ptr @capinc_tty_hangup, ptr null, ptr null, ptr null, ptr null, ptr @capinc_tty_send_xchar, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@capinc_tty_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.5, i32 1295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Couldn't register capi_nc driver\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"capinc_tty_init\00", [16 x i8] zeroinitializer }, align 32
@capinc_tty_init._entry_ptr = internal global ptr @capinc_tty_init._entry, section ".printk_index", align 4
@capinc_tty_write.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.56, ptr @.str.5, ptr @.str.57, i8 1, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"capinc_tty_write\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"capinc_tty_write(count=%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@capinc_tty_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.5, i32 1098, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013capinc_tty_write: alloc_skb failed\0A\00", [58 x i8] zeroinitializer }, align 32
@capinc_tty_write._entry_ptr = internal global ptr @capinc_tty_write._entry, section ".printk_index", align 4
@capinc_tty_put_char.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.59, ptr @.str.5, ptr @.str.60, i8 1, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"capinc_tty_put_char\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"capinc_put_char(%u)\0A\00", [43 x i8] zeroinitializer }, align 32
@capinc_tty_put_char._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.5, i32 1143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013capinc_put_char: char %u lost\0A\00", [63 x i8] zeroinitializer }, align 32
@capinc_tty_put_char._entry_ptr = internal global ptr @capinc_tty_put_char._entry, section ".printk_index", align 4
@capinc_tty_write_room.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.62, ptr @.str.5, ptr @.str.63, i8 1, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"capinc_tty_write_room\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"capinc_tty_write_room = %u\0A\00", [36 x i8] zeroinitializer }, align 32
@capinc_tty_chars_in_buffer.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.64, ptr @.str.5, ptr @.str.65, i8 1, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"capinc_tty_chars_in_buffer\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"capinc_tty_chars_in_buffer = %d nack=%d sq=%d rq=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@capinc_tty_send_xchar.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.66, ptr @.str.5, ptr @.str.67, i8 1, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"capinc_tty_send_xchar\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"capinc_tty_send_xchar(%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0 %d %lu %lu %lu %lu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d 0x%x\0A\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 1074545409, i64 2147631905, i64 2147631906, i64 2147762979, i64 2147762980, i64 2147762981, i64 2147762982, i64 2147762983, i64 3221504774, i64 3221504776, i64 3221766944, i64 3222291207, i64 3225436937]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 8, i64 129, i64 130]
@___asan_gen_.71 = private unnamed_addr constant [11 x i8] c"capi_major\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 53, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"capi_ttyminors\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 61, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"capinc_tty_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 141, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant [11 x i8] c"capiminors\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 139, i32 27 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1373, i32 20 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1374, i32 20 }
@___asan_gen_.89 = private unnamed_addr constant [11 x i8] c"capi_class\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 52, i32 22 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1432, i32 32 }
@___asan_gen_.95 = private unnamed_addr constant [10 x i8] c"capi_fops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1022, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1392, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1396, i32 15 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1416, i32 16 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1420, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 230, i32 6 }
@___asan_gen_.129 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 214, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 174, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [16 x i8] c"capiminors_lock\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 138, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant [11 x i8] c"capi_mutex\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 51, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 605, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 619, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 628, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 218, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 225, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 229, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [19 x i8] c"capiminor_port_ops\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 206, i32 41 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 244, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 1984, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 416, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 429, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 434, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 439, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 445, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 455, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 459, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 503, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 545, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 563, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 151, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 992, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 994, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [18 x i8] c"capidev_list_lock\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [13 x i8] c"capidev_list\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 134, i32 8 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 133, i32 8 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1278, i32 21 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1279, i32 14 }
@___asan_gen_.287 = private unnamed_addr constant [11 x i8] c"capinc_ops\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1239, i32 36 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1295, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1086, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1098, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1122, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1143, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1183, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1191, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1236, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1334, i32 17 }
@___asan_gen_.344 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.345 = private constant [28 x i8] c"../drivers/isdn/capi/capi.c\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 1358, i32 18 }
@llvm.compiler.used = appending global [117 x ptr] [ptr @__UNIQUE_ID_author338, ptr @__UNIQUE_ID_description337, ptr @__UNIQUE_ID_file339, ptr @__UNIQUE_ID_license340, ptr @__UNIQUE_ID_majortype341, ptr @__UNIQUE_ID_ttyminorstype342, ptr @__exitcall_capi_exit, ptr @__initcall__kmod_kernelcapi__357_1439_capi_init6, ptr @__param_major, ptr @__param_ttyminors, ptr @capi_exit, ptr @capi_init._entry, ptr @capi_init._entry.8, ptr @capi_init._entry_ptr, ptr @capi_init._entry_ptr.10, ptr @capi_recv_message._entry, ptr @capi_recv_message._entry_ptr, ptr @capiminor_add_ack._entry, ptr @capiminor_add_ack._entry_ptr, ptr @capiminor_alloc._entry, ptr @capiminor_alloc._entry.27, ptr @capiminor_alloc._entry_ptr, ptr @capiminor_alloc._entry_ptr.29, ptr @capinc_tty_exit, ptr @capinc_tty_init._entry, ptr @capinc_tty_init._entry_ptr, ptr @capinc_tty_put_char._entry, ptr @capinc_tty_put_char._entry_ptr, ptr @capinc_tty_write._entry, ptr @capinc_tty_write._entry_ptr, ptr @handle_minor_send._entry, ptr @handle_minor_send._entry_ptr, ptr @handle_recv_skb._entry, ptr @handle_recv_skb._entry.38, ptr @handle_recv_skb._entry_ptr, ptr @handle_recv_skb._entry_ptr.40, ptr @proc_exit, ptr @capi_major, ptr @capi_ttyminors, ptr @capinc_tty_driver, ptr @capiminors, ptr @.str, ptr @.str.1, ptr @capi_class, ptr @.str.2, ptr @capi_fops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @capi_init.__key, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @capiminors_lock, ptr @.str.14, ptr @capi_mutex, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @capiminor_alloc.__key, ptr @.str.24, ptr @capiminor_alloc.__key.25, ptr @.str.26, ptr @capiminor_port_ops, ptr @.str.28, ptr @skb_queue_head_init.__key, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @capi_open.__key, ptr @.str.47, ptr @capi_open.__key.48, ptr @.str.49, ptr @capidev_list_lock, ptr @capidev_list, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @capinc_ops, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_ttyminors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capinc_tty_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capiminors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capiminors_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_recv_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capiminor_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capiminor_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capiminor_alloc.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capiminor_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capiminor_alloc._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_recv_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_recv_skb._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_minor_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capiminor_add_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_open.__key.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capidev_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capidev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capinc_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capinc_tty_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capinc_tty_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capinc_tty_put_char._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @capinc_tty_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @capinc_tty_driver, align 4
  tail call void @tty_unregister_driver(ptr noundef %0) #11
  %1 = load ptr, ptr @capinc_tty_driver, align 4
  tail call void @tty_driver_kref_put(ptr noundef %1) #11
  %2 = load ptr, ptr @capiminors, align 4
  tail call void @kfree(ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @proc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef null) #11
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @capi_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @proc_exit() #14
  %0 = load ptr, ptr @capi_class, align 4
  %1 = load i32, ptr @capi_major, align 4
  %shl = shl i32 %1, 20
  tail call void @device_destroy(ptr noundef %0, i32 noundef %shl) #11
  %2 = load ptr, ptr @capi_class, align 4
  tail call void @class_destroy(ptr noundef %2) #11
  %3 = load i32, ptr @capi_major, align 4
  tail call void @__unregister_chrdev(i32 noundef %3, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.2) #11
  tail call void @capinc_tty_exit() #14
  tail call void @kcapi_exit() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcapi_exit() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @capi_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kcapi_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @capi_major, align 4
  %call.i = tail call i32 @__register_chrdev(i32 noundef %0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.2, ptr noundef nonnull @capi_fops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %1 = load i32, ptr @capi_major, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %1) #15
  tail call void @kcapi_exit() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call6 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @capi_init.__key) #11
  store ptr %call6, ptr @capi_class, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %2 = load i32, ptr @capi_major, align 4
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__unregister_chrdev(i32 noundef %2, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.2) #11
  tail call void @kcapi_exit() #11
  %3 = load ptr, ptr @capi_class, align 4
  %4 = ptrtoint ptr %3 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  %shl = shl i32 %2, 20
  %call11 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %call6, ptr noundef null, i32 noundef %shl, ptr noundef null, ptr noundef nonnull @.str.2) #11
  %call12 = tail call fastcc i32 @capinc_tty_init() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %5 = load ptr, ptr @capi_class, align 4
  %6 = load i32, ptr @capi_major, align 4
  %shl15 = shl i32 %6, 20
  tail call void @device_destroy(ptr noundef %5, i32 noundef %shl15) #11
  %7 = load ptr, ptr @capi_class, align 4
  tail call void @class_destroy(ptr noundef %7) #11
  %8 = load i32, ptr @capi_major, align 4
  tail call void @__unregister_chrdev(i32 noundef %8, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.2) #11
  tail call void @kcapi_exit() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @proc_init() #14
  %9 = load i32, ptr @capi_major, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %9, ptr noundef nonnull @.str.7) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then14, %if.then8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %4, %if.then8 ], [ -12, %if.then14 ], [ 0, %if.end17 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kcapi_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @capinc_tty_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @capi_ttyminors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %0)
  %cmp = icmp sgt i32 %0, 256
  br i1 %cmp, label %entry.if.end3.sink.split_crit_edge, label %if.end

entry.if.end3.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp1 = icmp slt i32 %0, 1
  br i1 %cmp1, label %if.end.if.end3.sink.split_crit_edge, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.end.if.end3.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.sink.split

if.end3.sink.split:                               ; preds = %if.end.if.end3.sink.split_crit_edge, %entry.if.end3.sink.split_crit_edge
  %.sink = phi i32 [ 256, %entry.if.end3.sink.split_crit_edge ], [ 32, %if.end.if.end3.sink.split_crit_edge ]
  store i32 %.sink, ptr @capi_ttyminors, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end3.sink.split, %if.end.if.end3_crit_edge
  %1 = load i32, ptr @capi_ttyminors, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #11
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !203

kcalloc.exit.thread:                              ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  store ptr null, ptr @capiminors, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end3
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #16
  store ptr %call8.i.i, ptr @capiminors, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end5

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end7.i.i
  %5 = load i32, ptr @capi_ttyminors, align 4
  %call6 = tail call ptr @__tty_alloc_driver(i32 noundef %5, ptr noundef null, i32 noundef 14) #11
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %6 = load ptr, ptr @capiminors, align 4
  tail call void @kfree(ptr noundef %6) #11
  %7 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %driver_name = getelementptr inbounds %struct.tty_driver, ptr %call6, i32 0, i32 4
  %8 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.52, ptr %driver_name, align 4
  %name = getelementptr inbounds %struct.tty_driver, ptr %call6, i32 0, i32 5
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.53, ptr %name, align 4
  %major = getelementptr inbounds %struct.tty_driver, ptr %call6, i32 0, i32 7
  %10 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %major, align 4
  %minor_start = getelementptr inbounds %struct.tty_driver, ptr %call6, i32 0, i32 8
  %11 = ptrtoint ptr %minor_start to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %minor_start, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %call6, i32 0, i32 10
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 3, ptr %type, align 4
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %call6, i32 0, i32 11
  %13 = ptrtoint ptr %subtype to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %subtype, align 2
  %init_termios = getelementptr inbounds %struct.tty_driver, ptr %call6, i32 0, i32 12
  %14 = call ptr @memcpy(ptr %init_termios, ptr @tty_std_termios, i32 44)
  %15 = ptrtoint ptr %init_termios to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 256, ptr %init_termios, align 4
  %c_oflag = getelementptr inbounds %struct.tty_driver, ptr %call6, i32 0, i32 12, i32 1
  %16 = ptrtoint ptr %c_oflag to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5, ptr %c_oflag, align 4
  %c_cflag = getelementptr inbounds %struct.tty_driver, ptr %call6, i32 0, i32 12, i32 2
  %17 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3261, ptr %c_cflag, align 4
  %c_lflag = getelementptr inbounds %struct.tty_driver, ptr %call6, i32 0, i32 12, i32 3
  %18 = ptrtoint ptr %c_lflag to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %c_lflag, align 4
  %ops.i = getelementptr inbounds %struct.tty_driver, ptr %call6, i32 0, i32 20
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @capinc_ops, ptr %ops.i, align 4
  %call15 = tail call i32 @tty_register_driver(ptr noundef %call6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tty_driver_kref_put(ptr noundef %call6) #11
  %20 = load ptr, ptr @capiminors, align 4
  tail call void @kfree(ptr noundef %20) #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #15
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call6, ptr @capinc_tty_driver, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then17, %if.then8, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ %7, %if.then8 ], [ %call15, %if.then17 ], [ 0, %if.end19 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @proc_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @capi20_proc_show, ptr noundef null) #11
  %call1 = tail call ptr @proc_create_single_data(ptr noundef nonnull @.str.1, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @capi20ncci_proc_show, ptr noundef null) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capi_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #4 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ap = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ap to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ap, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup40_crit_edge, label %if.end

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

if.end:                                           ; preds = %entry
  %recvqueue = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 4
  %call = tail call ptr @skb_dequeue(ptr noundef %recvqueue) #11
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then2:                                         ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.then2.cleanup40_crit_edge

if.then2.cleanup40_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

if.end5:                                          ; preds = %if.then2
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 665) #11
  %call10 = tail call ptr @skb_dequeue(ptr noundef %recvqueue) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.end5.if.end29_crit_edge

if.end5.if.end29_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then12:                                        ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %recvwait = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 5
  %call1479 = call i32 @prepare_to_wait_event(ptr noundef %recvwait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %call1680 = call ptr @skb_dequeue(ptr noundef %recvqueue) #11
  %tobool17.not81 = icmp eq ptr %call1680, null
  br i1 %tobool17.not81, label %if.then12.if.end19_crit_edge, label %if.then12.if.end24.thread71_crit_edge

if.then12.if.end24.thread71_crit_edge:            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.thread71

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  br label %if.end19

if.end19:                                         ; preds = %cleanup.if.end19_crit_edge, %if.then12.if.end19_crit_edge
  %call1482 = phi i32 [ %call14, %cleanup.if.end19_crit_edge ], [ %call1479, %if.then12.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1482)
  %tobool20.not = icmp eq i32 %call1482, 0
  br i1 %tobool20.not, label %cleanup, label %if.end24

cleanup:                                          ; preds = %if.end19
  call void @schedule() #11
  %call14 = call i32 @prepare_to_wait_event(ptr noundef %recvwait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %call16 = call ptr @skb_dequeue(ptr noundef %recvqueue) #11
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %cleanup.if.end19_crit_edge, label %cleanup.if.end24.thread71_crit_edge

cleanup.if.end24.thread71_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.thread71

cleanup.if.end19_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end24.thread71:                                ; preds = %cleanup.if.end24.thread71_crit_edge, %if.then12.if.end24.thread71_crit_edge
  %call16.lcssa = phi ptr [ %call1680, %if.then12.if.end24.thread71_crit_edge ], [ %call16, %cleanup.if.end24.thread71_crit_edge ]
  call void @finish_wait(ptr noundef %recvwait, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end29

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %cleanup40

if.end29:                                         ; preds = %if.end24.thread71, %if.end5.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %skb.1 = phi ptr [ %call, %if.end.if.end29_crit_edge ], [ %call16.lcssa, %if.end24.thread71 ], [ %call10, %if.end5.if.end29_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %count)
  %cmp = icmp ugt i32 %8, %count
  br i1 %cmp, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  call void @skb_queue_head(ptr noundef %recvqueue, ptr noundef nonnull %skb.1) #11
  br label %cleanup40

if.end32:                                         ; preds = %if.end29
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp9.i.i = icmp slt i32 %8, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end32
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.then36_crit_edge, label %if.then27.i.i, !prof !204

land.rhs16.i.i.if.then36_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %if.then36

if.then.i.i.i:                                    ; preds = %if.end32
  call void @__check_object_size(ptr noundef %10, i32 noundef %8, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %8, i32 -1226833920) #17, !srcloc !205
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %10, i32 noundef %8) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %10, i32 noundef %8) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %8, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %8, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool35.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool35.not, label %if.end38, label %copy_to_user.exit.if.then36_crit_edge

copy_to_user.exit.if.then36_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

if.then36:                                        ; preds = %copy_to_user.exit.if.then36_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.then36_crit_edge
  call void @skb_queue_head(ptr noundef %recvqueue, ptr noundef nonnull %skb.1) #11
  br label %cleanup40

if.end38:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %skb.1, i32 noundef 0) #11
  br label %cleanup40

cleanup40:                                        ; preds = %if.end38, %if.then36, %if.then30, %if.end24, %if.then2.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.0 = phi i32 [ -90, %if.then30 ], [ -14, %if.then36 ], [ %13, %if.end38 ], [ -19, %entry.cleanup40_crit_edge ], [ -11, %if.then2.cleanup40_crit_edge ], [ %call1482, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capi_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ap = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ap to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ap, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %count)
  %cmp = icmp ult i32 %count, 8
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call.i = tail call ptr @__alloc_skb(i32 noundef %count, i32 noundef 1051840, i32 noundef 0, i32 noundef -1) #11
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %call6 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %count) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.i.i = icmp slt i32 %count, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end5
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup.sink.split_crit_edge, label %if.then27.i.i, !prof !204

land.rhs16.i.i.cleanup.sink.split_crit_edge:      ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %cleanup.sink.split

if.then.i.i.i:                                    ; preds = %if.end5
  tail call void @__check_object_size(ptr noundef %call6, i32 noundef %count, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #17, !srcloc !206
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !204

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call6, i32 noundef %count) #11
  %5 = tail call i32 @llvm.read_register.i32(metadata !193) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !207
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %call6, ptr noundef %buf, i32 noundef %count) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end10, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !204

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i131 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %count, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %count, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %count, %res.0.i.i131
  %add.ptr.i.i = getelementptr i8, ptr %call6, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i131)
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end.i.i
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv = zext i8 %12 to i16
  %arrayidx12 = getelementptr i8, ptr %10, i32 1
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %14 to i16
  %shl = shl nuw i16 %conv13, 8
  %or = or i16 %shl, %conv
  %arrayidx16 = getelementptr i8, ptr %10, i32 4
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %16 to i32
  %shl18 = shl nuw nsw i32 %conv17, 8
  %arrayidx20 = getelementptr i8, ptr %10, i32 5
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %18 to i32
  %or22 = or i32 %shl18, %conv21
  call void @__sanitizer_cov_trace_const_cmp4(i32 34432, i32 %or22)
  %cmp23 = icmp eq i32 %or22, 34432
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %count)
  %cmp26 = icmp ult i32 %count, 22
  br i1 %cmp26, label %if.then25.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.then25.cleanup.sink.split_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.then25
  %conv28 = zext i16 %or to i32
  %arrayidx30 = getelementptr i8, ptr %10, i32 16
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %20 to i32
  %arrayidx33 = getelementptr i8, ptr %10, i32 17
  %21 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %22 to i32
  %shl35 = shl nuw nsw i32 %conv34, 8
  %or36 = or i32 %shl35, %conv31
  %add = add nuw nsw i32 %or36, %conv28
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %count)
  %cmp37.not = icmp eq i32 %add, %count
  br i1 %cmp37.not, label %lor.lhs.false.if.end46_crit_edge, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

lor.lhs.false.if.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.else:                                          ; preds = %if.end10
  %conv41 = zext i16 %or to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv41, i32 %count)
  %cmp42.not = icmp eq i32 %conv41, %count
  br i1 %cmp42.not, label %if.else.if.end46_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.else.if.end46_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.end46:                                         ; preds = %if.else.if.end46_crit_edge, %lor.lhs.false.if.end46_crit_edge
  %23 = ptrtoint ptr %ap to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ap, align 4
  %conv1.i = trunc i16 %24 to i8
  %arrayidx.i = getelementptr i8, ptr %10, i32 2
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv1.i, ptr %arrayidx.i, align 1
  %26 = lshr i16 %24, 8
  %conv4.i = trunc i16 %26 to i8
  %arrayidx5.i = getelementptr i8, ptr %10, i32 3
  %27 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %arrayidx51 = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %31 to i32
  %shl53 = shl nuw nsw i32 %conv52, 8
  %arrayidx55 = getelementptr i8, ptr %29, i32 5
  %32 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %33 to i32
  %or57 = or i32 %shl53, %conv56
  call void @__sanitizer_cov_trace_const_cmp4(i32 33923, i32 %or57)
  %cmp58 = icmp eq i32 %or57, 33923
  br i1 %cmp58, label %if.then60, label %if.end46.if.end84_crit_edge

if.end46.if.end84_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.then60:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %count)
  %cmp61 = icmp ult i32 %count, 12
  br i1 %cmp61, label %if.then60.cleanup.sink.split_crit_edge, label %if.end64

if.then60.cleanup.sink.split_crit_edge:           ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end64:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %arrayidx66 = getelementptr i8, ptr %35, i32 8
  %36 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %37 to i32
  %arrayidx69 = getelementptr i8, ptr %35, i32 9
  %38 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %39 to i32
  %shl71 = shl nuw nsw i32 %conv70, 8
  %or72 = or i32 %shl71, %conv67
  %arrayidx74 = getelementptr i8, ptr %35, i32 10
  %40 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %41 to i32
  %shl76 = shl nuw nsw i32 %conv75, 16
  %or77 = or i32 %or72, %shl76
  %arrayidx79 = getelementptr i8, ptr %35, i32 11
  %42 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %43 to i32
  %shl81 = shl nuw i32 %conv80, 24
  %or82 = or i32 %or77, %shl81
  tail call fastcc void @capincci_free(ptr noundef %1, i32 noundef %or82)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %if.end84

if.end84:                                         ; preds = %if.end64, %if.end46.if.end84_crit_edge
  %call86 = tail call zeroext i16 @capi20_put_message(ptr noundef %ap, ptr noundef nonnull %call.i) #11
  %errcode = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %errcode to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %call86, ptr %errcode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call86)
  %tobool88.not = icmp eq i16 %call86, 0
  br i1 %tobool88.not, label %if.end84.cleanup_crit_edge, label %if.end84.cleanup.sink.split_crit_edge

if.end84.cleanup.sink.split_crit_edge:            ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end84.cleanup.sink.split_crit_edge, %if.then60.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.then25.cleanup.sink.split_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup.sink.split_crit_edge ], [ -22, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -22, %if.then25.cleanup.sink.split_crit_edge ], [ -22, %if.else.cleanup.sink.split_crit_edge ], [ -22, %if.then60.cleanup.sink.split_crit_edge ], [ -5, %if.end84.cleanup.sink.split_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end84.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ], [ %count, %if.end84.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capi_poll(ptr noundef %file, ptr noundef %wait) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ap = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ap to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ap, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %recvwait = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 5
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.end.poll_wait.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.end
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %recvwait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %5(ptr noundef %file, ptr noundef nonnull %recvwait, ptr noundef nonnull %wait) #11
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.end.poll_wait.exit_crit_edge
  %recvqueue = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %recvqueue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %recvqueue, align 4
  %cmp.i = icmp eq ptr %7, %recvqueue
  %spec.select = select i1 %cmp.i, i32 260, i32 325
  br label %cleanup

cleanup:                                          ; preds = %poll_wait.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %poll_wait.exit ], [ 8, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capi_unlocked_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #4 align 64 {
entry:
  %data.i = alloca %union.capi_ioctl_struct, align 4
  %mcmd.i = alloca %struct.capi_manufacturer_cmd, align 4
  %userflags.i = alloca i32, align 4
  %ncci.i = alloca i32, align 4
  %ncci159.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @capi_mutex, i32 noundef 0) #11
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data.i) #11
  %2 = call ptr @memset(ptr %data.i, i32 255, i32 64)
  %3 = inttoptr i32 %arg to ptr
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.capi_ioctl.exit_crit_edge [
    i32 1074545409, label %sw.bb.i
    i32 -1072676089, label %if.end8.i.i245.i
    i32 -1073462520, label %if.end8.i.i278.i
    i32 -1069530359, label %if.end8.i.i314.i
    i32 -1073462522, label %if.end8.i.i363.i
    i32 -2147335391, label %sw.bb92.i
    i32 -2147335390, label %sw.bb103.i
    i32 -1073200352, label %sw.bb110.i
    i32 -2147204316, label %entry.sw.bb121.i_crit_edge
    i32 -2147204315, label %entry.sw.bb121.i_crit_edge16
    i32 -2147204317, label %sw.bb136.i
    i32 -2147204314, label %sw.bb142.i
    i32 -2147204313, label %sw.bb157.i
  ]

entry.sw.bb121.i_crit_edge16:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb121.i

entry.sw.bb121.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb121.i

entry.capi_ioctl.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

sw.bb.i:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  %ap.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ap.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i = icmp eq i16 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.i.register_out.i_crit_edge

sw.bb.i.register_out.i_crit_edge:                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %register_out.i

if.end.i:                                         ; preds = %sw.bb.i
  %rparam.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 1, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.end.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.if.then11.i.i.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 12, i32 -1226833920) #17, !srcloc !206
  %asmresult.i.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !204

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rparam.i, i32 noundef 12) #11
  %8 = tail call i32 @llvm.read_register.i32(metadata !193) #11
  %and.i.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !207
  %and.i.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %rparam.i, ptr noundef %3, i32 noundef 12) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #11, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end5.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !204

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end.i.if.then11.i.i.i_crit_edge
  %res.0.i.i526.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 12, %if.end.i.if.then11.i.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 12, %res.0.i.i526.i
  %add.ptr.i.i.i = getelementptr i8, ptr %rparam.i, i32 %sub.i.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i526.i)
  br label %register_out.i

if.end5.i:                                        ; preds = %if.end.i.i.i
  %private.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %private.i, align 4
  %recv_message.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %recv_message.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @capi_recv_message, ptr %recv_message.i, align 4
  %call9.i = tail call zeroext i16 @capi20_register(ptr noundef %ap.i) #11
  %errcode.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %errcode.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %call9.i, ptr %errcode.i, align 4
  %15 = ptrtoint ptr %ap.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ap.i, align 4
  %conv.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call9.i)
  %tobool13.not.i = icmp eq i16 %call9.i, 0
  br i1 %tobool13.not.i, label %if.end5.i.register_out.i_crit_edge, label %if.then14.i

if.end5.i.register_out.i_crit_edge:               ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %register_out.i

if.then14.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %ap.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %ap.i, align 4
  br label %register_out.i

register_out.i:                                   ; preds = %if.then14.i, %if.end5.i.register_out.i_crit_edge, %if.then11.i.i.i, %sw.bb.i.register_out.i_crit_edge
  %retval1.0.i = phi i32 [ -5, %if.then14.i ], [ %conv.i, %if.end5.i.register_out.i_crit_edge ], [ -17, %sw.bb.i.register_out.i_crit_edge ], [ -14, %if.then11.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  br label %capi_ioctl.exit

if.end8.i.i245.i:                                 ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #11
  %call.i.i246.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i246.i, label %if.end8.i.i245.i.if.then11.i.i262.i_crit_edge, label %land.lhs.true.i.i249.i

if.end8.i.i245.i.if.then11.i.i262.i_crit_edge:    ; preds = %if.end8.i.i245.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i262.i

land.lhs.true.i.i249.i:                           ; preds = %if.end8.i.i245.i
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #17, !srcloc !206
  %asmresult.i.i247.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i247.i)
  %cmp.i6.i248.i = icmp eq i32 %asmresult.i.i247.i, 0
  br i1 %cmp.i6.i248.i, label %if.end.i.i259.i, label %land.lhs.true.i.i249.i.if.then11.i.i262.i_crit_edge, !prof !204

land.lhs.true.i.i249.i.if.then11.i.i262.i_crit_edge: ; preds = %land.lhs.true.i.i249.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i262.i

if.end.i.i259.i:                                  ; preds = %land.lhs.true.i.i249.i
  %call.i.i.i250.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %data.i, i32 noundef 4) #11
  %19 = call i32 @llvm.read_register.i32(metadata !193) #11
  %and.i.i.i.i.i.i251.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i251.i to ptr
  %cpu_domain.i.i.i.i.i252.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i252.i) #5, !srcloc !207
  %and.i.i.i.i253.i = and i32 %21, -13
  %or.i.i.i.i254.i = or i32 %and.i.i.i.i253.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i254.i) #11, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  %call1.i.i.i255.i = call i32 @arm_copy_from_user(ptr noundef nonnull %data.i, ptr noundef %3, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #11, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i255.i)
  %tobool4.not.i.i258.i = icmp eq i32 %call1.i.i.i255.i, 0
  br i1 %tobool4.not.i.i258.i, label %if.end23.i, label %if.end.i.i259.i.if.then11.i.i262.i_crit_edge, !prof !204

if.end.i.i259.i.if.then11.i.i262.i_crit_edge:     ; preds = %if.end.i.i259.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i262.i

if.then11.i.i262.i:                               ; preds = %if.end.i.i259.i.if.then11.i.i262.i_crit_edge, %land.lhs.true.i.i249.i.if.then11.i.i262.i_crit_edge, %if.end8.i.i245.i.if.then11.i.i262.i_crit_edge
  %res.0.i.i257531.i = phi i32 [ %call1.i.i.i255.i, %if.end.i.i259.i.if.then11.i.i262.i_crit_edge ], [ 4, %if.end8.i.i245.i.if.then11.i.i262.i_crit_edge ], [ 4, %land.lhs.true.i.i249.i.if.then11.i.i262.i_crit_edge ]
  %sub.i.i260.i = sub i32 4, %res.0.i.i257531.i
  %add.ptr.i.i261.i = getelementptr i8, ptr %data.i, i32 %sub.i.i260.i
  %22 = call ptr @memset(ptr %add.ptr.i.i261.i, i32 0, i32 %res.0.i.i257531.i)
  br label %capi_ioctl.exit

if.end23.i:                                       ; preds = %if.end.i.i259.i
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data.i, align 4
  %call24.i = call zeroext i16 @capi20_get_version(i32 noundef %24, ptr noundef nonnull %data.i) #11
  %errcode25.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %errcode25.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %call24.i, ptr %errcode25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call24.i)
  %tobool27.not.i = icmp eq i16 %call24.i, 0
  br i1 %tobool27.not.i, label %if.end8.i.i268.i, label %if.end23.i.capi_ioctl.exit_crit_edge

if.end23.i.capi_ioctl.exit_crit_edge:             ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

if.end8.i.i268.i:                                 ; preds = %if.end23.i
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #11
  %call.i.i269.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i269.i, label %if.end8.i.i268.i.capi_ioctl.exit_crit_edge, label %if.end.i.i272.i

if.end8.i.i268.i.capi_ioctl.exit_crit_edge:       ; preds = %if.end8.i.i268.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

if.end.i.i272.i:                                  ; preds = %if.end8.i.i268.i
  %26 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 16, i32 -1226833920) #17, !srcloc !205
  %asmresult.i.i270.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i270.i)
  %cmp.i6.i271.i = icmp eq i32 %asmresult.i.i270.i, 0
  br i1 %cmp.i6.i271.i, label %copy_to_user.exit.i, label %if.end.i.i272.i.capi_ioctl.exit_crit_edge

if.end.i.i272.i.capi_ioctl.exit_crit_edge:        ; preds = %if.end.i.i272.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i272.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i273.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %data.i, i32 noundef 16) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %data.i, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool31.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool31.not.i, i32 0, i32 -14
  br label %capi_ioctl.exit

if.end8.i.i278.i:                                 ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #11
  %call.i.i279.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i279.i, label %if.end8.i.i278.i.if.then11.i.i295.i_crit_edge, label %land.lhs.true.i.i282.i

if.end8.i.i278.i.if.then11.i.i295.i_crit_edge:    ; preds = %if.end8.i.i278.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i295.i

land.lhs.true.i.i282.i:                           ; preds = %if.end8.i.i278.i
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #17, !srcloc !206
  %asmresult.i.i280.i = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i280.i)
  %cmp.i6.i281.i = icmp eq i32 %asmresult.i.i280.i, 0
  br i1 %cmp.i6.i281.i, label %if.end.i.i292.i, label %land.lhs.true.i.i282.i.if.then11.i.i295.i_crit_edge, !prof !204

land.lhs.true.i.i282.i.if.then11.i.i295.i_crit_edge: ; preds = %land.lhs.true.i.i282.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i295.i

if.end.i.i292.i:                                  ; preds = %land.lhs.true.i.i282.i
  %call.i.i.i283.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %data.i, i32 noundef 4) #11
  %28 = call i32 @llvm.read_register.i32(metadata !193) #11
  %and.i.i.i.i.i.i284.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i284.i to ptr
  %cpu_domain.i.i.i.i.i285.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i285.i) #5, !srcloc !207
  %and.i.i.i.i286.i = and i32 %30, -13
  %or.i.i.i.i287.i = or i32 %and.i.i.i.i286.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i287.i) #11, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  %call1.i.i.i288.i = call i32 @arm_copy_from_user(ptr noundef nonnull %data.i, ptr noundef %3, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #11, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i288.i)
  %tobool4.not.i.i291.i = icmp eq i32 %call1.i.i.i288.i, 0
  br i1 %tobool4.not.i.i291.i, label %if.end38.i, label %if.end.i.i292.i.if.then11.i.i295.i_crit_edge, !prof !204

if.end.i.i292.i.if.then11.i.i295.i_crit_edge:     ; preds = %if.end.i.i292.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i295.i

if.then11.i.i295.i:                               ; preds = %if.end.i.i292.i.if.then11.i.i295.i_crit_edge, %land.lhs.true.i.i282.i.if.then11.i.i295.i_crit_edge, %if.end8.i.i278.i.if.then11.i.i295.i_crit_edge
  %res.0.i.i290538.i = phi i32 [ %call1.i.i.i288.i, %if.end.i.i292.i.if.then11.i.i295.i_crit_edge ], [ 4, %if.end8.i.i278.i.if.then11.i.i295.i_crit_edge ], [ 4, %land.lhs.true.i.i282.i.if.then11.i.i295.i_crit_edge ]
  %sub.i.i293.i = sub i32 4, %res.0.i.i290538.i
  %add.ptr.i.i294.i = getelementptr i8, ptr %data.i, i32 %sub.i.i293.i
  %31 = call ptr @memset(ptr %add.ptr.i.i294.i, i32 0, i32 %res.0.i.i290538.i)
  br label %capi_ioctl.exit

if.end38.i:                                       ; preds = %if.end.i.i292.i
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data.i, align 4
  %call39.i = call zeroext i16 @capi20_get_serial(i32 noundef %33, ptr noundef nonnull %data.i) #11
  %errcode40.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %errcode40.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %call39.i, ptr %errcode40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call39.i)
  %tobool42.not.i = icmp eq i16 %call39.i, 0
  br i1 %tobool42.not.i, label %if.end8.i.i301.i, label %if.end38.i.capi_ioctl.exit_crit_edge

if.end38.i.capi_ioctl.exit_crit_edge:             ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

if.end8.i.i301.i:                                 ; preds = %if.end38.i
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #11
  %call.i.i302.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i302.i, label %if.end8.i.i301.i.capi_ioctl.exit_crit_edge, label %if.end.i.i305.i

if.end8.i.i301.i.capi_ioctl.exit_crit_edge:       ; preds = %if.end8.i.i301.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

if.end.i.i305.i:                                  ; preds = %if.end8.i.i301.i
  %35 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 8, i32 -1226833920) #17, !srcloc !205
  %asmresult.i.i303.i = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i303.i)
  %cmp.i6.i304.i = icmp eq i32 %asmresult.i.i303.i, 0
  br i1 %cmp.i6.i304.i, label %copy_to_user.exit310.i, label %if.end.i.i305.i.capi_ioctl.exit_crit_edge

if.end.i.i305.i.capi_ioctl.exit_crit_edge:        ; preds = %if.end.i.i305.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

copy_to_user.exit310.i:                           ; preds = %if.end.i.i305.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i306.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %data.i, i32 noundef 8) #11
  %call.i12.i.i307.i = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %data.i, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i307.i)
  %tobool47.not.i = icmp eq i32 %call.i12.i.i307.i, 0
  %spec.select585.i = select i1 %tobool47.not.i, i32 0, i32 -14
  br label %capi_ioctl.exit

if.end8.i.i314.i:                                 ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #11
  %call.i.i315.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i315.i, label %if.end8.i.i314.i.if.then11.i.i331.i_crit_edge, label %land.lhs.true.i.i318.i

if.end8.i.i314.i.if.then11.i.i331.i_crit_edge:    ; preds = %if.end8.i.i314.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i331.i

land.lhs.true.i.i318.i:                           ; preds = %if.end8.i.i314.i
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #17, !srcloc !206
  %asmresult.i.i316.i = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i316.i)
  %cmp.i6.i317.i = icmp eq i32 %asmresult.i.i316.i, 0
  br i1 %cmp.i6.i317.i, label %if.end.i.i328.i, label %land.lhs.true.i.i318.i.if.then11.i.i331.i_crit_edge, !prof !204

land.lhs.true.i.i318.i.if.then11.i.i331.i_crit_edge: ; preds = %land.lhs.true.i.i318.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i331.i

if.end.i.i328.i:                                  ; preds = %land.lhs.true.i.i318.i
  %call.i.i.i319.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %data.i, i32 noundef 4) #11
  %37 = call i32 @llvm.read_register.i32(metadata !193) #11
  %and.i.i.i.i.i.i320.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i320.i to ptr
  %cpu_domain.i.i.i.i.i321.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 4
  %39 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i321.i) #5, !srcloc !207
  %and.i.i.i.i322.i = and i32 %39, -13
  %or.i.i.i.i323.i = or i32 %and.i.i.i.i322.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i323.i) #11, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  %call1.i.i.i324.i = call i32 @arm_copy_from_user(ptr noundef nonnull %data.i, ptr noundef %3, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #11, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i324.i)
  %tobool4.not.i.i327.i = icmp eq i32 %call1.i.i.i324.i, 0
  br i1 %tobool4.not.i.i327.i, label %if.end54.i, label %if.end.i.i328.i.if.then11.i.i331.i_crit_edge, !prof !204

if.end.i.i328.i.if.then11.i.i331.i_crit_edge:     ; preds = %if.end.i.i328.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i331.i

if.then11.i.i331.i:                               ; preds = %if.end.i.i328.i.if.then11.i.i331.i_crit_edge, %land.lhs.true.i.i318.i.if.then11.i.i331.i_crit_edge, %if.end8.i.i314.i.if.then11.i.i331.i_crit_edge
  %res.0.i.i326545.i = phi i32 [ %call1.i.i.i324.i, %if.end.i.i328.i.if.then11.i.i331.i_crit_edge ], [ 4, %if.end8.i.i314.i.if.then11.i.i331.i_crit_edge ], [ 4, %land.lhs.true.i.i318.i.if.then11.i.i331.i_crit_edge ]
  %sub.i.i329.i = sub i32 4, %res.0.i.i326545.i
  %add.ptr.i.i330.i = getelementptr i8, ptr %data.i, i32 %sub.i.i329.i
  %40 = call ptr @memset(ptr %add.ptr.i.i330.i, i32 0, i32 %res.0.i.i326545.i)
  br label %capi_ioctl.exit

if.end54.i:                                       ; preds = %if.end.i.i328.i
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i = icmp eq i32 %42, 0
  br i1 %cmp.i, label %if.then56.i, label %if.else.i

if.then56.i:                                      ; preds = %if.end54.i
  %call57.i = call zeroext i16 @capi20_get_profile(i32 noundef 0, ptr noundef nonnull %data.i) #11
  %errcode58.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %errcode58.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %call57.i, ptr %errcode58.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call57.i)
  %tobool60.not.i = icmp eq i16 %call57.i, 0
  br i1 %tobool60.not.i, label %if.end8.i.i337.i, label %if.then56.i.capi_ioctl.exit_crit_edge

if.then56.i.capi_ioctl.exit_crit_edge:            ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

if.end8.i.i337.i:                                 ; preds = %if.then56.i
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #11
  %call.i.i338.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i338.i, label %if.end8.i.i337.i.capi_ioctl.exit_crit_edge, label %if.end.i.i341.i

if.end8.i.i337.i.capi_ioctl.exit_crit_edge:       ; preds = %if.end8.i.i337.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

if.end.i.i341.i:                                  ; preds = %if.end8.i.i337.i
  %44 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 2, i32 -1226833920) #17, !srcloc !205
  %asmresult.i.i339.i = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i339.i)
  %cmp.i6.i340.i = icmp eq i32 %asmresult.i.i339.i, 0
  br i1 %cmp.i6.i340.i, label %if.end.i.i341.i.if.end71.i_crit_edge, label %if.end.i.i341.i.capi_ioctl.exit_crit_edge

if.end.i.i341.i.capi_ioctl.exit_crit_edge:        ; preds = %if.end.i.i341.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

if.end.i.i341.i.if.end71.i_crit_edge:             ; preds = %if.end.i.i341.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71.i

if.else.i:                                        ; preds = %if.end54.i
  %call64.i = call zeroext i16 @capi20_get_profile(i32 noundef %42, ptr noundef nonnull %data.i) #11
  %errcode65.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %errcode65.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %call64.i, ptr %errcode65.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call64.i)
  %tobool67.not.i = icmp eq i16 %call64.i, 0
  br i1 %tobool67.not.i, label %if.end8.i.i350.i, label %if.else.i.capi_ioctl.exit_crit_edge

if.else.i.capi_ioctl.exit_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

if.end8.i.i350.i:                                 ; preds = %if.else.i
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #11
  %call.i.i351.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i351.i, label %if.end8.i.i350.i.capi_ioctl.exit_crit_edge, label %if.end.i.i354.i

if.end8.i.i350.i.capi_ioctl.exit_crit_edge:       ; preds = %if.end8.i.i350.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

if.end.i.i354.i:                                  ; preds = %if.end8.i.i350.i
  %46 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 64, i32 -1226833920) #17, !srcloc !205
  %asmresult.i.i352.i = extractvalue { i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i352.i)
  %cmp.i6.i353.i = icmp eq i32 %asmresult.i.i352.i, 0
  br i1 %cmp.i6.i353.i, label %if.end.i.i354.i.if.end71.i_crit_edge, label %if.end.i.i354.i.capi_ioctl.exit_crit_edge

if.end.i.i354.i.capi_ioctl.exit_crit_edge:        ; preds = %if.end.i.i354.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

if.end.i.i354.i.if.end71.i_crit_edge:             ; preds = %if.end.i.i354.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.end.i.i354.i.if.end71.i_crit_edge, %if.end.i.i341.i.if.end71.i_crit_edge
  %.sink595.i = phi i32 [ 2, %if.end.i.i341.i.if.end71.i_crit_edge ], [ 64, %if.end.i.i354.i.if.end71.i_crit_edge ]
  %call.i.i.i355.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %data.i, i32 noundef %.sink595.i) #11
  %call.i12.i.i356.i = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %data.i, i32 noundef %.sink595.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i356.i)
  %tobool72.not.i = icmp eq i32 %call.i12.i.i356.i, 0
  %spec.select586.i = select i1 %tobool72.not.i, i32 0, i32 -14
  br label %capi_ioctl.exit

if.end8.i.i363.i:                                 ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #11
  %call.i.i364.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i364.i, label %if.end8.i.i363.i.if.then11.i.i380.i_crit_edge, label %land.lhs.true.i.i367.i

if.end8.i.i363.i.if.then11.i.i380.i_crit_edge:    ; preds = %if.end8.i.i363.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i380.i

land.lhs.true.i.i367.i:                           ; preds = %if.end8.i.i363.i
  %47 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #17, !srcloc !206
  %asmresult.i.i365.i = extractvalue { i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i365.i)
  %cmp.i6.i366.i = icmp eq i32 %asmresult.i.i365.i, 0
  br i1 %cmp.i6.i366.i, label %if.end.i.i377.i, label %land.lhs.true.i.i367.i.if.then11.i.i380.i_crit_edge, !prof !204

land.lhs.true.i.i367.i.if.then11.i.i380.i_crit_edge: ; preds = %land.lhs.true.i.i367.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i380.i

if.end.i.i377.i:                                  ; preds = %land.lhs.true.i.i367.i
  %call.i.i.i368.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %data.i, i32 noundef 4) #11
  %48 = call i32 @llvm.read_register.i32(metadata !193) #11
  %and.i.i.i.i.i.i369.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i.i369.i to ptr
  %cpu_domain.i.i.i.i.i370.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 4
  %50 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i370.i) #5, !srcloc !207
  %and.i.i.i.i371.i = and i32 %50, -13
  %or.i.i.i.i372.i = or i32 %and.i.i.i.i371.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i372.i) #11, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  %call1.i.i.i373.i = call i32 @arm_copy_from_user(ptr noundef nonnull %data.i, ptr noundef %3, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #11, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i373.i)
  %tobool4.not.i.i376.i = icmp eq i32 %call1.i.i.i373.i, 0
  br i1 %tobool4.not.i.i376.i, label %if.end79.i, label %if.end.i.i377.i.if.then11.i.i380.i_crit_edge, !prof !204

if.end.i.i377.i.if.then11.i.i380.i_crit_edge:     ; preds = %if.end.i.i377.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i380.i

if.then11.i.i380.i:                               ; preds = %if.end.i.i377.i.if.then11.i.i380.i_crit_edge, %land.lhs.true.i.i367.i.if.then11.i.i380.i_crit_edge, %if.end8.i.i363.i.if.then11.i.i380.i_crit_edge
  %res.0.i.i375552.i = phi i32 [ %call1.i.i.i373.i, %if.end.i.i377.i.if.then11.i.i380.i_crit_edge ], [ 4, %if.end8.i.i363.i.if.then11.i.i380.i_crit_edge ], [ 4, %land.lhs.true.i.i367.i.if.then11.i.i380.i_crit_edge ]
  %sub.i.i378.i = sub i32 4, %res.0.i.i375552.i
  %add.ptr.i.i379.i = getelementptr i8, ptr %data.i, i32 %sub.i.i378.i
  %51 = call ptr @memset(ptr %add.ptr.i.i379.i, i32 0, i32 %res.0.i.i375552.i)
  br label %capi_ioctl.exit

if.end79.i:                                       ; preds = %if.end.i.i377.i
  %52 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data.i, align 4
  %call81.i = call zeroext i16 @capi20_get_manufacturer(i32 noundef %53, ptr noundef nonnull %data.i) #11
  %errcode82.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 2
  %54 = ptrtoint ptr %errcode82.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %call81.i, ptr %errcode82.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call81.i)
  %tobool84.not.i = icmp eq i16 %call81.i, 0
  br i1 %tobool84.not.i, label %if.end8.i.i386.i, label %if.end79.i.capi_ioctl.exit_crit_edge

if.end79.i.capi_ioctl.exit_crit_edge:             ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

if.end8.i.i386.i:                                 ; preds = %if.end79.i
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #11
  %call.i.i387.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i387.i, label %if.end8.i.i386.i.capi_ioctl.exit_crit_edge, label %if.end.i.i390.i

if.end8.i.i386.i.capi_ioctl.exit_crit_edge:       ; preds = %if.end8.i.i386.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

if.end.i.i390.i:                                  ; preds = %if.end8.i.i386.i
  %55 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 64, i32 -1226833920) #17, !srcloc !205
  %asmresult.i.i388.i = extractvalue { i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i388.i)
  %cmp.i6.i389.i = icmp eq i32 %asmresult.i.i388.i, 0
  br i1 %cmp.i6.i389.i, label %copy_to_user.exit395.i, label %if.end.i.i390.i.capi_ioctl.exit_crit_edge

if.end.i.i390.i.capi_ioctl.exit_crit_edge:        ; preds = %if.end.i.i390.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

copy_to_user.exit395.i:                           ; preds = %if.end.i.i390.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i391.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %data.i, i32 noundef 64) #11
  %call.i12.i.i392.i = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %data.i, i32 noundef 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i392.i)
  %tobool89.not.i = icmp eq i32 %call.i12.i.i392.i, 0
  %spec.select587.i = select i1 %tobool89.not.i, i32 0, i32 -14
  br label %capi_ioctl.exit

sw.bb92.i:                                        ; preds = %entry
  %errcode93.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 2
  %56 = ptrtoint ptr %errcode93.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %errcode93.i, align 4
  %58 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %data.i, align 4
  store i16 0, ptr %errcode93.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool95.not.i = icmp eq i32 %arg, 0
  br i1 %tobool95.not.i, label %sw.bb92.i.if.end101.i_crit_edge, label %if.end8.i.i399.i

sw.bb92.i.if.end101.i_crit_edge:                  ; preds = %sw.bb92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101.i

if.end8.i.i399.i:                                 ; preds = %sw.bb92.i
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #11
  %call.i.i400.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i400.i, label %if.end8.i.i399.i.capi_ioctl.exit_crit_edge, label %if.end.i.i403.i

if.end8.i.i399.i.capi_ioctl.exit_crit_edge:       ; preds = %if.end8.i.i399.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

if.end.i.i403.i:                                  ; preds = %if.end8.i.i399.i
  %59 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %3, i32 2, i32 -1226833920) #17, !srcloc !205
  %asmresult.i.i401.i = extractvalue { i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i401.i)
  %cmp.i6.i402.i = icmp eq i32 %asmresult.i.i401.i, 0
  br i1 %cmp.i6.i402.i, label %copy_to_user.exit408.i, label %if.end.i.i403.i.capi_ioctl.exit_crit_edge

if.end.i.i403.i.capi_ioctl.exit_crit_edge:        ; preds = %if.end.i.i403.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

copy_to_user.exit408.i:                           ; preds = %if.end.i.i403.i
  %call.i.i.i404.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %data.i, i32 noundef 2) #11
  %call.i12.i.i405.i = call i32 @arm_copy_to_user(ptr noundef nonnull %3, ptr noundef nonnull %data.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i405.i)
  %tobool98.not.i = icmp eq i32 %call.i12.i.i405.i, 0
  br i1 %tobool98.not.i, label %copy_to_user.exit408.i.if.end101.i_crit_edge, label %copy_to_user.exit408.i.capi_ioctl.exit_crit_edge

copy_to_user.exit408.i.capi_ioctl.exit_crit_edge: ; preds = %copy_to_user.exit408.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

copy_to_user.exit408.i.if.end101.i_crit_edge:     ; preds = %copy_to_user.exit408.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101.i

if.end101.i:                                      ; preds = %copy_to_user.exit408.i.if.end101.i_crit_edge, %sw.bb92.i.if.end101.i_crit_edge
  %60 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %data.i, align 4
  %conv102.i = zext i16 %61 to i32
  br label %capi_ioctl.exit

sw.bb103.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call104.i = tail call zeroext i16 @capi20_isinstalled() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call104.i)
  %cmp106.i = icmp eq i16 %call104.i, 0
  %.240.i = select i1 %cmp106.i, i32 0, i32 -6
  br label %capi_ioctl.exit

sw.bb110.i:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mcmd.i) #11
  %62 = ptrtoint ptr %mcmd.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %mcmd.i, align 4, !annotation !210
  %63 = getelementptr inbounds %struct.capi_manufacturer_cmd, ptr %mcmd.i, i32 0, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 -1 to ptr), ptr %63, align 4, !annotation !210
  %call111.i = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call111.i, label %if.end8.i.i412.i, label %sw.bb110.i.cleanup.i_crit_edge

sw.bb110.i.cleanup.i_crit_edge:                   ; preds = %sw.bb110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end8.i.i412.i:                                 ; preds = %sw.bb110.i
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #11
  %call.i.i413.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i413.i, label %if.end8.i.i412.i.if.then11.i.i429.i_crit_edge, label %land.lhs.true.i.i416.i

if.end8.i.i412.i.if.then11.i.i429.i_crit_edge:    ; preds = %if.end8.i.i412.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i429.i

land.lhs.true.i.i416.i:                           ; preds = %if.end8.i.i412.i
  %65 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 8, i32 -1226833920) #17, !srcloc !206
  %asmresult.i.i414.i = extractvalue { i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i414.i)
  %cmp.i6.i415.i = icmp eq i32 %asmresult.i.i414.i, 0
  br i1 %cmp.i6.i415.i, label %if.end.i.i426.i, label %land.lhs.true.i.i416.i.if.then11.i.i429.i_crit_edge, !prof !204

land.lhs.true.i.i416.i.if.then11.i.i429.i_crit_edge: ; preds = %land.lhs.true.i.i416.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i429.i

if.end.i.i426.i:                                  ; preds = %land.lhs.true.i.i416.i
  %call.i.i.i417.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mcmd.i, i32 noundef 8) #11
  %66 = call i32 @llvm.read_register.i32(metadata !193) #11
  %and.i.i.i.i.i.i418.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i.i418.i to ptr
  %cpu_domain.i.i.i.i.i419.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 4
  %68 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i419.i) #5, !srcloc !207
  %and.i.i.i.i420.i = and i32 %68, -13
  %or.i.i.i.i421.i = or i32 %and.i.i.i.i420.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i421.i) #11, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  %call1.i.i.i422.i = call i32 @arm_copy_from_user(ptr noundef nonnull %mcmd.i, ptr noundef %3, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #11, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i422.i)
  %tobool4.not.i.i425.i = icmp eq i32 %call1.i.i.i422.i, 0
  br i1 %tobool4.not.i.i425.i, label %if.end117.i, label %if.end.i.i426.i.if.then11.i.i429.i_crit_edge, !prof !204

if.end.i.i426.i.if.then11.i.i429.i_crit_edge:     ; preds = %if.end.i.i426.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i429.i

if.then11.i.i429.i:                               ; preds = %if.end.i.i426.i.if.then11.i.i429.i_crit_edge, %land.lhs.true.i.i416.i.if.then11.i.i429.i_crit_edge, %if.end8.i.i412.i.if.then11.i.i429.i_crit_edge
  %res.0.i.i424561.i = phi i32 [ %call1.i.i.i422.i, %if.end.i.i426.i.if.then11.i.i429.i_crit_edge ], [ 8, %if.end8.i.i412.i.if.then11.i.i429.i_crit_edge ], [ 8, %land.lhs.true.i.i416.i.if.then11.i.i429.i_crit_edge ]
  %sub.i.i427.i = sub i32 8, %res.0.i.i424561.i
  %add.ptr.i.i428.i = getelementptr i8, ptr %mcmd.i, i32 %sub.i.i427.i
  %69 = call ptr @memset(ptr %add.ptr.i.i428.i, i32 0, i32 %res.0.i.i424561.i)
  br label %cleanup.i

if.end117.i:                                      ; preds = %if.end.i.i426.i
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %mcmd.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mcmd.i, align 4
  %72 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %63, align 4
  %call120.i = call i32 @capi20_manufacturer(i32 noundef %71, ptr noundef %73) #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end117.i, %if.then11.i.i429.i, %sw.bb110.i.cleanup.i_crit_edge
  %retval.0.i = phi i32 [ %call120.i, %if.end117.i ], [ -1, %sw.bb110.i.cleanup.i_crit_edge ], [ -14, %if.then11.i.i429.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mcmd.i) #11
  br label %capi_ioctl.exit

sw.bb121.i:                                       ; preds = %entry.sw.bb121.i_crit_edge, %entry.sw.bb121.i_crit_edge16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %userflags.i) #11
  %74 = ptrtoint ptr %userflags.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %userflags.i, align 4, !annotation !210
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #11
  %call.i.i436.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i436.i, label %sw.bb121.i.if.then11.i.i452.i_crit_edge, label %land.lhs.true.i.i439.i

sw.bb121.i.if.then11.i.i452.i_crit_edge:          ; preds = %sw.bb121.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i452.i

land.lhs.true.i.i439.i:                           ; preds = %sw.bb121.i
  %75 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #17, !srcloc !206
  %asmresult.i.i437.i = extractvalue { i32, i32 } %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i437.i)
  %cmp.i6.i438.i = icmp eq i32 %asmresult.i.i437.i, 0
  br i1 %cmp.i6.i438.i, label %if.end.i.i449.i, label %land.lhs.true.i.i439.i.if.then11.i.i452.i_crit_edge, !prof !204

land.lhs.true.i.i439.i.if.then11.i.i452.i_crit_edge: ; preds = %land.lhs.true.i.i439.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i452.i

if.end.i.i449.i:                                  ; preds = %land.lhs.true.i.i439.i
  %call.i.i.i440.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %userflags.i, i32 noundef 4) #11
  %76 = call i32 @llvm.read_register.i32(metadata !193) #11
  %and.i.i.i.i.i.i441.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i.i441.i to ptr
  %cpu_domain.i.i.i.i.i442.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 4
  %78 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i442.i) #5, !srcloc !207
  %and.i.i.i.i443.i = and i32 %78, -13
  %or.i.i.i.i444.i = or i32 %and.i.i.i.i443.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i444.i) #11, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  %call1.i.i.i445.i = call i32 @arm_copy_from_user(ptr noundef nonnull %userflags.i, ptr noundef %3, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #11, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i445.i)
  %tobool4.not.i.i448.i = icmp eq i32 %call1.i.i.i445.i, 0
  br i1 %tobool4.not.i.i448.i, label %if.end125.i, label %if.end.i.i449.i.if.then11.i.i452.i_crit_edge, !prof !204

if.end.i.i449.i.if.then11.i.i452.i_crit_edge:     ; preds = %if.end.i.i449.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i452.i

if.then11.i.i452.i:                               ; preds = %if.end.i.i449.i.if.then11.i.i452.i_crit_edge, %land.lhs.true.i.i439.i.if.then11.i.i452.i_crit_edge, %sw.bb121.i.if.then11.i.i452.i_crit_edge
  %res.0.i.i447566.i = phi i32 [ %call1.i.i.i445.i, %if.end.i.i449.i.if.then11.i.i452.i_crit_edge ], [ 4, %sw.bb121.i.if.then11.i.i452.i_crit_edge ], [ 4, %land.lhs.true.i.i439.i.if.then11.i.i452.i_crit_edge ]
  %sub.i.i450.i = sub i32 4, %res.0.i.i447566.i
  %add.ptr.i.i451.i = getelementptr i8, ptr %userflags.i, i32 %sub.i.i450.i
  %79 = call ptr @memset(ptr %add.ptr.i.i451.i, i32 0, i32 %res.0.i.i447566.i)
  br label %cleanup135.i

if.end125.i:                                      ; preds = %if.end.i.i449.i
  %lock126.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %lock126.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147204316, i32 %cmd)
  %cmp127.i = icmp eq i32 %cmd, -2147204316
  %80 = ptrtoint ptr %userflags.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %userflags.i, align 4
  br i1 %cmp127.i, label %if.then129.i, label %if.else131.i

if.then129.i:                                     ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #13
  %userflags130.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 3
  %82 = ptrtoint ptr %userflags130.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %userflags130.i, align 4
  %or.i = or i32 %83, %81
  store i32 %or.i, ptr %userflags130.i, align 4
  br label %if.end133.i

if.else131.i:                                     ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #13
  %neg.i = xor i32 %81, -1
  %userflags132.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 3
  %84 = ptrtoint ptr %userflags132.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %userflags132.i, align 4
  %and.i = and i32 %85, %neg.i
  store i32 %and.i, ptr %userflags132.i, align 4
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.else131.i, %if.then129.i
  call void @mutex_unlock(ptr noundef %lock126.i) #11
  br label %cleanup135.i

cleanup135.i:                                     ; preds = %if.end133.i, %if.then11.i.i452.i
  %retval.1.i = phi i32 [ 0, %if.end133.i ], [ -14, %if.then11.i.i452.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %userflags.i) #11
  br label %capi_ioctl.exit

sw.bb136.i:                                       ; preds = %entry
  %userflags137.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 3
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #11
  %call.i.i459.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i459.i, label %sw.bb136.i.capi_ioctl.exit_crit_edge, label %if.end.i.i462.i

sw.bb136.i.capi_ioctl.exit_crit_edge:             ; preds = %sw.bb136.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

if.end.i.i462.i:                                  ; preds = %sw.bb136.i
  %86 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #17, !srcloc !205
  %asmresult.i.i460.i = extractvalue { i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i460.i)
  %cmp.i6.i461.i = icmp eq i32 %asmresult.i.i460.i, 0
  br i1 %cmp.i6.i461.i, label %copy_to_user.exit467.i, label %if.end.i.i462.i.capi_ioctl.exit_crit_edge

if.end.i.i462.i.capi_ioctl.exit_crit_edge:        ; preds = %if.end.i.i462.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capi_ioctl.exit

copy_to_user.exit467.i:                           ; preds = %if.end.i.i462.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i463.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %userflags137.i, i32 noundef 4) #11
  %call.i12.i.i464.i = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %userflags137.i, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i464.i)
  %tobool139.not.i = icmp eq i32 %call.i12.i.i464.i, 0
  %spec.select588.i = select i1 %tobool139.not.i, i32 0, i32 -14
  br label %capi_ioctl.exit

sw.bb142.i:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ncci.i) #11
  %87 = ptrtoint ptr %ncci.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %ncci.i, align 4, !annotation !210
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #11
  %call.i.i472.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i472.i, label %sw.bb142.i.if.then11.i.i488.i_crit_edge, label %land.lhs.true.i.i475.i

sw.bb142.i.if.then11.i.i488.i_crit_edge:          ; preds = %sw.bb142.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i488.i

land.lhs.true.i.i475.i:                           ; preds = %sw.bb142.i
  %88 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #17, !srcloc !206
  %asmresult.i.i473.i = extractvalue { i32, i32 } %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i473.i)
  %cmp.i6.i474.i = icmp eq i32 %asmresult.i.i473.i, 0
  br i1 %cmp.i6.i474.i, label %if.end.i.i485.i, label %land.lhs.true.i.i475.i.if.then11.i.i488.i_crit_edge, !prof !204

land.lhs.true.i.i475.i.if.then11.i.i488.i_crit_edge: ; preds = %land.lhs.true.i.i475.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i488.i

if.end.i.i485.i:                                  ; preds = %land.lhs.true.i.i475.i
  %call.i.i.i476.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ncci.i, i32 noundef 4) #11
  %89 = call i32 @llvm.read_register.i32(metadata !193) #11
  %and.i.i.i.i.i.i477.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i.i.i.i477.i to ptr
  %cpu_domain.i.i.i.i.i478.i = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 4
  %91 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i478.i) #5, !srcloc !207
  %and.i.i.i.i479.i = and i32 %91, -13
  %or.i.i.i.i480.i = or i32 %and.i.i.i.i479.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i480.i) #11, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  %call1.i.i.i481.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ncci.i, ptr noundef %3, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %91) #11, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i481.i)
  %tobool4.not.i.i484.i = icmp eq i32 %call1.i.i.i481.i, 0
  br i1 %tobool4.not.i.i484.i, label %if.end146.i, label %if.end.i.i485.i.if.then11.i.i488.i_crit_edge, !prof !204

if.end.i.i485.i.if.then11.i.i488.i_crit_edge:     ; preds = %if.end.i.i485.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i488.i

if.then11.i.i488.i:                               ; preds = %if.end.i.i485.i.if.then11.i.i488.i_crit_edge, %land.lhs.true.i.i475.i.if.then11.i.i488.i_crit_edge, %sw.bb142.i.if.then11.i.i488.i_crit_edge
  %res.0.i.i483573.i = phi i32 [ %call1.i.i.i481.i, %if.end.i.i485.i.if.then11.i.i488.i_crit_edge ], [ 4, %sw.bb142.i.if.then11.i.i488.i_crit_edge ], [ 4, %land.lhs.true.i.i475.i.if.then11.i.i488.i_crit_edge ]
  %sub.i.i486.i = sub i32 4, %res.0.i.i483573.i
  %add.ptr.i.i487.i = getelementptr i8, ptr %ncci.i, i32 %sub.i.i486.i
  %92 = call ptr @memset(ptr %add.ptr.i.i487.i, i32 0, i32 %res.0.i.i483573.i)
  br label %cleanup154.i

if.end146.i:                                      ; preds = %if.end.i.i485.i
  %lock147.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %lock147.i, i32 noundef 0) #11
  %93 = ptrtoint ptr %ncci.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ncci.i, align 4
  %nccis.i.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 6
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end146.i
  %np.0.in.i.i = phi ptr [ %nccis.i.i, %if.end146.i ], [ %np.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %95 = ptrtoint ptr %np.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %np.0.i.i = load ptr, ptr %np.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %np.0.i.i, %nccis.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end152.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.end152.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %ncci2.i.i = getelementptr inbounds %struct.capincci, ptr %np.0.i.i, i32 0, i32 1
  %96 = ptrtoint ptr %ncci2.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ncci2.i.i, align 4
  %cmp3.i.i = icmp eq i32 %97, %94
  br i1 %cmp3.i.i, label %capincci_find.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

capincci_find.exit.i:                             ; preds = %for.body.i.i
  %tobool149.not.i = icmp eq ptr %np.0.i.i, null
  br i1 %tobool149.not.i, label %capincci_find.exit.i.if.end152.i_crit_edge, label %if.then150.i

capincci_find.exit.i.if.end152.i_crit_edge:       ; preds = %capincci_find.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152.i

if.then150.i:                                     ; preds = %capincci_find.exit.i
  %minorp.i1 = getelementptr inbounds %struct.capincci, ptr %np.0.i.i, i32 0, i32 3
  %98 = ptrtoint ptr %minorp.i1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %minorp.i1, align 4
  %tobool.not.i2 = icmp eq ptr %99, null
  br i1 %tobool.not.i2, label %if.then150.i.if.end152.i_crit_edge, label %if.then.i

if.then150.i.if.end152.i_crit_edge:               ; preds = %if.then150.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152.i

if.then.i:                                        ; preds = %if.then150.i
  %port.i = getelementptr inbounds %struct.capiminor, ptr %99, i32 0, i32 5
  %call.i = call ptr @tty_port_tty_get(ptr noundef %port.i) #11
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then.i.if.end152.i_crit_edge, label %if.then2.i

if.then.i.if.end152.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %count3.i = getelementptr inbounds %struct.tty_struct, ptr %call.i, i32 0, i32 17
  %100 = ptrtoint ptr %count3.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %count3.i, align 4
  call void @tty_kref_put(ptr noundef nonnull %call.i) #11
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.then2.i, %if.then.i.if.end152.i_crit_edge, %if.then150.i.if.end152.i_crit_edge, %capincci_find.exit.i.if.end152.i_crit_edge, %for.cond.i.i.if.end152.i_crit_edge
  %count.0.i = phi i32 [ 0, %capincci_find.exit.i.if.end152.i_crit_edge ], [ %101, %if.then2.i ], [ 0, %if.then.i.if.end152.i_crit_edge ], [ 0, %if.then150.i.if.end152.i_crit_edge ], [ 0, %for.cond.i.i.if.end152.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock147.i) #11
  br label %cleanup154.i

cleanup154.i:                                     ; preds = %if.end152.i, %if.then11.i.i488.i
  %retval.2.i = phi i32 [ %count.0.i, %if.end152.i ], [ -14, %if.then11.i.i488.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ncci.i) #11
  br label %capi_ioctl.exit

sw.bb157.i:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ncci159.i) #11
  %102 = ptrtoint ptr %ncci159.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1, ptr %ncci159.i, align 4, !annotation !210
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #11
  %call.i.i495.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i495.i, label %sw.bb157.i.if.then11.i.i511.i_crit_edge, label %land.lhs.true.i.i498.i

sw.bb157.i.if.then11.i.i511.i_crit_edge:          ; preds = %sw.bb157.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i511.i

land.lhs.true.i.i498.i:                           ; preds = %sw.bb157.i
  %103 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #17, !srcloc !206
  %asmresult.i.i496.i = extractvalue { i32, i32 } %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i496.i)
  %cmp.i6.i497.i = icmp eq i32 %asmresult.i.i496.i, 0
  br i1 %cmp.i6.i497.i, label %if.end.i.i508.i, label %land.lhs.true.i.i498.i.if.then11.i.i511.i_crit_edge, !prof !204

land.lhs.true.i.i498.i.if.then11.i.i511.i_crit_edge: ; preds = %land.lhs.true.i.i498.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i511.i

if.end.i.i508.i:                                  ; preds = %land.lhs.true.i.i498.i
  %call.i.i.i499.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ncci159.i, i32 noundef 4) #11
  %104 = call i32 @llvm.read_register.i32(metadata !193) #11
  %and.i.i.i.i.i.i500.i = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i.i.i.i500.i to ptr
  %cpu_domain.i.i.i.i.i501.i = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 4
  %106 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i501.i) #5, !srcloc !207
  %and.i.i.i.i502.i = and i32 %106, -13
  %or.i.i.i.i503.i = or i32 %and.i.i.i.i502.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i503.i) #11, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  %call1.i.i.i504.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ncci159.i, ptr noundef %3, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %106) #11, !srcloc !208
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i504.i)
  %tobool4.not.i.i507.i = icmp eq i32 %call1.i.i.i504.i, 0
  br i1 %tobool4.not.i.i507.i, label %if.end163.i, label %if.end.i.i508.i.if.then11.i.i511.i_crit_edge, !prof !204

if.end.i.i508.i.if.then11.i.i511.i_crit_edge:     ; preds = %if.end.i.i508.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i511.i

if.then11.i.i511.i:                               ; preds = %if.end.i.i508.i.if.then11.i.i511.i_crit_edge, %land.lhs.true.i.i498.i.if.then11.i.i511.i_crit_edge, %sw.bb157.i.if.then11.i.i511.i_crit_edge
  %res.0.i.i506580.i = phi i32 [ %call1.i.i.i504.i, %if.end.i.i508.i.if.then11.i.i511.i_crit_edge ], [ 4, %sw.bb157.i.if.then11.i.i511.i_crit_edge ], [ 4, %land.lhs.true.i.i498.i.if.then11.i.i511.i_crit_edge ]
  %sub.i.i509.i = sub i32 4, %res.0.i.i506580.i
  %add.ptr.i.i510.i = getelementptr i8, ptr %ncci159.i, i32 %sub.i.i509.i
  %107 = call ptr @memset(ptr %add.ptr.i.i510.i, i32 0, i32 %res.0.i.i506580.i)
  br label %cleanup173.i

if.end163.i:                                      ; preds = %if.end.i.i508.i
  %lock164.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %lock164.i, i32 noundef 0) #11
  %108 = ptrtoint ptr %ncci159.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ncci159.i, align 4
  %nccis.i514.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 6
  br label %for.cond.i518.i

for.cond.i518.i:                                  ; preds = %for.body.i521.i.for.cond.i518.i_crit_edge, %if.end163.i
  %np.0.in.i515.i = phi ptr [ %nccis.i514.i, %if.end163.i ], [ %np.0.i516.i, %for.body.i521.i.for.cond.i518.i_crit_edge ]
  %110 = ptrtoint ptr %np.0.in.i515.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %np.0.i516.i = load ptr, ptr %np.0.in.i515.i, align 4
  %cmp.not.i517.i = icmp eq ptr %np.0.i516.i, %nccis.i514.i
  br i1 %cmp.not.i517.i, label %for.cond.i518.i.if.end171.i_crit_edge, label %for.body.i521.i

for.cond.i518.i.if.end171.i_crit_edge:            ; preds = %for.cond.i518.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171.i

for.body.i521.i:                                  ; preds = %for.cond.i518.i
  %ncci2.i519.i = getelementptr inbounds %struct.capincci, ptr %np.0.i516.i, i32 0, i32 1
  %111 = ptrtoint ptr %ncci2.i519.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ncci2.i519.i, align 4
  %cmp3.i520.i = icmp eq i32 %112, %109
  br i1 %cmp3.i520.i, label %capincci_find.exit523.i, label %for.body.i521.i.for.cond.i518.i_crit_edge

for.body.i521.i.for.cond.i518.i_crit_edge:        ; preds = %for.body.i521.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i518.i

capincci_find.exit523.i:                          ; preds = %for.body.i521.i
  %tobool166.not.i = icmp eq ptr %np.0.i516.i, null
  br i1 %tobool166.not.i, label %capincci_find.exit523.i.if.end171.i_crit_edge, label %if.then167.i

capincci_find.exit523.i.if.end171.i_crit_edge:    ; preds = %capincci_find.exit523.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171.i

if.then167.i:                                     ; preds = %capincci_find.exit523.i
  %minorp.i = getelementptr inbounds %struct.capincci, ptr %np.0.i516.i, i32 0, i32 3
  %113 = ptrtoint ptr %minorp.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %minorp.i, align 4
  %tobool168.not.i = icmp eq ptr %114, null
  br i1 %tobool168.not.i, label %if.then167.i.if.end171.i_crit_edge, label %if.then169.i

if.then167.i.if.end171.i_crit_edge:               ; preds = %if.then167.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171.i

if.then169.i:                                     ; preds = %if.then167.i
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 4
  br label %if.end171.i

if.end171.i:                                      ; preds = %if.then169.i, %if.then167.i.if.end171.i_crit_edge, %capincci_find.exit523.i.if.end171.i_crit_edge, %for.cond.i518.i.if.end171.i_crit_edge
  %unit.0.i = phi i32 [ %116, %if.then169.i ], [ -3, %if.then167.i.if.end171.i_crit_edge ], [ -3, %capincci_find.exit523.i.if.end171.i_crit_edge ], [ -3, %for.cond.i518.i.if.end171.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock164.i) #11
  br label %cleanup173.i

cleanup173.i:                                     ; preds = %if.end171.i, %if.then11.i.i511.i
  %retval.3.i = phi i32 [ %unit.0.i, %if.end171.i ], [ -14, %if.then11.i.i511.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ncci159.i) #11
  br label %capi_ioctl.exit

capi_ioctl.exit:                                  ; preds = %cleanup173.i, %cleanup154.i, %copy_to_user.exit467.i, %if.end.i.i462.i.capi_ioctl.exit_crit_edge, %sw.bb136.i.capi_ioctl.exit_crit_edge, %cleanup135.i, %cleanup.i, %sw.bb103.i, %if.end101.i, %copy_to_user.exit408.i.capi_ioctl.exit_crit_edge, %if.end.i.i403.i.capi_ioctl.exit_crit_edge, %if.end8.i.i399.i.capi_ioctl.exit_crit_edge, %copy_to_user.exit395.i, %if.end.i.i390.i.capi_ioctl.exit_crit_edge, %if.end8.i.i386.i.capi_ioctl.exit_crit_edge, %if.end79.i.capi_ioctl.exit_crit_edge, %if.then11.i.i380.i, %if.end71.i, %if.end.i.i354.i.capi_ioctl.exit_crit_edge, %if.end8.i.i350.i.capi_ioctl.exit_crit_edge, %if.else.i.capi_ioctl.exit_crit_edge, %if.end.i.i341.i.capi_ioctl.exit_crit_edge, %if.end8.i.i337.i.capi_ioctl.exit_crit_edge, %if.then56.i.capi_ioctl.exit_crit_edge, %if.then11.i.i331.i, %copy_to_user.exit310.i, %if.end.i.i305.i.capi_ioctl.exit_crit_edge, %if.end8.i.i301.i.capi_ioctl.exit_crit_edge, %if.end38.i.capi_ioctl.exit_crit_edge, %if.then11.i.i295.i, %copy_to_user.exit.i, %if.end.i.i272.i.capi_ioctl.exit_crit_edge, %if.end8.i.i268.i.capi_ioctl.exit_crit_edge, %if.end23.i.capi_ioctl.exit_crit_edge, %if.then11.i.i262.i, %register_out.i, %entry.capi_ioctl.exit_crit_edge
  %retval.4.i = phi i32 [ %retval.3.i, %cleanup173.i ], [ %retval.2.i, %cleanup154.i ], [ %retval.1.i, %cleanup135.i ], [ %retval.0.i, %cleanup.i ], [ %conv102.i, %if.end101.i ], [ %retval1.0.i, %register_out.i ], [ -5, %if.end23.i.capi_ioctl.exit_crit_edge ], [ -5, %if.end38.i.capi_ioctl.exit_crit_edge ], [ -5, %if.then56.i.capi_ioctl.exit_crit_edge ], [ -5, %if.else.i.capi_ioctl.exit_crit_edge ], [ -5, %if.end79.i.capi_ioctl.exit_crit_edge ], [ -14, %copy_to_user.exit408.i.capi_ioctl.exit_crit_edge ], [ %.240.i, %sw.bb103.i ], [ -22, %entry.capi_ioctl.exit_crit_edge ], [ -14, %if.then11.i.i262.i ], [ -14, %if.end8.i.i268.i.capi_ioctl.exit_crit_edge ], [ -14, %if.end.i.i272.i.capi_ioctl.exit_crit_edge ], [ -14, %if.then11.i.i295.i ], [ -14, %if.end8.i.i301.i.capi_ioctl.exit_crit_edge ], [ -14, %if.end.i.i305.i.capi_ioctl.exit_crit_edge ], [ -14, %if.then11.i.i331.i ], [ -14, %if.end8.i.i337.i.capi_ioctl.exit_crit_edge ], [ -14, %if.end.i.i341.i.capi_ioctl.exit_crit_edge ], [ -14, %if.end8.i.i350.i.capi_ioctl.exit_crit_edge ], [ -14, %if.end.i.i354.i.capi_ioctl.exit_crit_edge ], [ -14, %if.then11.i.i380.i ], [ -14, %if.end8.i.i386.i.capi_ioctl.exit_crit_edge ], [ -14, %if.end.i.i390.i.capi_ioctl.exit_crit_edge ], [ -14, %if.end8.i.i399.i.capi_ioctl.exit_crit_edge ], [ -14, %if.end.i.i403.i.capi_ioctl.exit_crit_edge ], [ -14, %sw.bb136.i.capi_ioctl.exit_crit_edge ], [ -14, %if.end.i.i462.i.capi_ioctl.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ], [ %spec.select585.i, %copy_to_user.exit310.i ], [ %spec.select586.i, %if.end71.i ], [ %spec.select587.i, %copy_to_user.exit395.i ], [ %spec.select588.i, %copy_to_user.exit467.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data.i) #11
  call void @mutex_unlock(ptr noundef nonnull @capi_mutex) #11
  ret i32 %retval.4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capi_open(ptr noundef %inode, ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 460) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.capidev, ptr %call7.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.47, ptr noundef nonnull @capi_open.__key) #11
  %recvqueue = getelementptr inbounds %struct.capidev, ptr %call7.i.i, i32 0, i32 4
  %lock.i = getelementptr inbounds %struct.capidev, ptr %call7.i.i, i32 0, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %1 = ptrtoint ptr %recvqueue to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %recvqueue, ptr %recvqueue, align 4
  %prev.i.i = getelementptr inbounds %struct.capidev, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %recvqueue, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.capidev, ptr %call7.i.i, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i, align 4
  %recvwait = getelementptr inbounds %struct.capidev, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %recvwait, ptr noundef nonnull @.str.49, ptr noundef nonnull @capi_open.__key.48) #11
  %nccis = getelementptr inbounds %struct.capidev, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %nccis to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %nccis, ptr %nccis, align 8
  %prev.i = getelementptr inbounds %struct.capidev, ptr %call7.i.i, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %nccis, ptr %prev.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @capidev_list_lock, i32 noundef 0) #11
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @capidev_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %7, ptr noundef nonnull @capidev_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.body.list_add_tail.exit_crit_edge

do.body.list_add_tail.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @capidev_list, i32 0, i32 1), align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @capidev_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i.i, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @capidev_list_lock) #11
  %call4 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #11
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %list_add_tail.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capi_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @capidev_list_lock, i32 noundef 0) #11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @capidev_list_lock) #11
  %ap = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %ap to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ap, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %list_del.exit.if.end_crit_edge, label %if.then

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call zeroext i16 @capi20_release(ptr noundef %ap) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  %recvqueue = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 4
  tail call void @skb_queue_purge(ptr noundef %recvqueue) #11
  tail call fastcc void @capincci_free(ptr noundef %1, i32 noundef -1)
  tail call void @kfree(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @capincci_free(ptr noundef readonly %cdev, i32 noundef %ncci) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nccis = getelementptr inbounds %struct.capidev, ptr %cdev, i32 0, i32 6
  %0 = ptrtoint ptr %nccis to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nccis, align 4
  %cmp.not26 = icmp eq ptr %1, %nccis
  br i1 %cmp.not26, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ncci)
  %cmp8 = icmp eq i32 %ncci, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %np.027 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp.029, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %np.027 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.029 = load ptr, ptr %np.027, align 4
  br i1 %cmp8, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %ncci9 = getelementptr inbounds %struct.capincci, ptr %np.027, i32 0, i32 1
  %3 = ptrtoint ptr %ncci9 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ncci9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %ncci)
  %cmp10 = icmp eq i32 %4, %ncci
  br i1 %cmp10, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %minorp.i = getelementptr inbounds %struct.capincci, ptr %np.027, i32 0, i32 3
  %5 = ptrtoint ptr %minorp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %minorp.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then.capincci_free_minor.exit_crit_edge, label %if.then.i

if.then.capincci_free_minor.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %capincci_free_minor.exit

if.then.i:                                        ; preds = %if.then
  %port.i = getelementptr inbounds %struct.capiminor, ptr %6, i32 0, i32 5
  %call.i = tail call ptr @tty_port_tty_get(ptr noundef %port.i) #11
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @tty_vhangup(ptr noundef nonnull %call.i) #11
  tail call void @tty_kref_put(ptr noundef nonnull %call.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %7 = load ptr, ptr @capinc_tty_driver, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %6, align 4
  tail call void @tty_unregister_device(ptr noundef %7, i32 noundef %9) #11
  tail call void @_raw_spin_lock(ptr noundef nonnull @capiminors_lock) #11
  %10 = load ptr, ptr @capiminors, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %6, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %10, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @capiminors_lock) #11
  tail call void @tty_port_put(ptr noundef %port.i) #11
  br label %capincci_free_minor.exit

capincci_free_minor.exit:                         ; preds = %if.end.i, %if.then.capincci_free_minor.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %np.027) #11
  br i1 %call.i.i, label %if.end.i.i, label %capincci_free_minor.exit.list_del.exit_crit_edge

capincci_free_minor.exit.list_del.exit_crit_edge: ; preds = %capincci_free_minor.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %capincci_free_minor.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %np.027, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %np.027 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %np.027, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %capincci_free_minor.exit.list_del.exit_crit_edge
  %20 = ptrtoint ptr %np.027 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %np.027, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %np.027, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %np.027) #11
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %lor.lhs.false.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.029, %nccis
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @capi20_put_message(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @capi_recv_message(ptr nocapture noundef readonly %ap, ptr noundef %skb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.capi20_appl, ptr %ap, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %lock = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx2 = getelementptr i8, ptr %3, i32 5
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %7 to i32
  %or = or i32 %shl, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 33409, i32 %or)
  %cmp = icmp eq i32 %or, 33409
  br i1 %cmp, label %if.then, label %entry.if.end36_crit_edge

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then:                                          ; preds = %entry
  %arrayidx9 = getelementptr i8, ptr %3, i32 13
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp15 = icmp eq i8 %9, 0
  br i1 %cmp15, label %if.then17, label %if.then.if.end36_crit_edge

if.then.if.end36_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx19 = getelementptr i8, ptr %3, i32 8
  %10 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %11 to i32
  %arrayidx22 = getelementptr i8, ptr %3, i32 9
  %12 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %13 to i32
  %shl24 = shl nuw nsw i32 %conv23, 8
  %or25 = or i32 %shl24, %conv20
  %arrayidx27 = getelementptr i8, ptr %3, i32 10
  %14 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %15 to i32
  %shl29 = shl nuw nsw i32 %conv28, 16
  %or30 = or i32 %or25, %shl29
  %arrayidx32 = getelementptr i8, ptr %3, i32 11
  %16 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %17 to i32
  %shl34 = shl nuw i32 %conv33, 24
  %or35 = or i32 %or30, %shl34
  tail call fastcc void @capincci_alloc(ptr noundef %1, i32 noundef %or35)
  br label %if.end36

if.end36:                                         ; preds = %if.then17, %if.then.if.end36_crit_edge, %entry.if.end36_crit_edge
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %arrayidx38 = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %21 to i32
  %shl40 = shl nuw nsw i32 %conv39, 8
  %arrayidx42 = getelementptr i8, ptr %19, i32 5
  %22 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %23 to i32
  %or44 = or i32 %shl40, %conv43
  call void @__sanitizer_cov_trace_const_cmp4(i32 33410, i32 %or44)
  %cmp45 = icmp eq i32 %or44, 33410
  br i1 %cmp45, label %if.then47, label %if.end36.if.end67_crit_edge

if.end36.if.end67_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then47:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx49 = getelementptr i8, ptr %19, i32 8
  %24 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %25 to i32
  %arrayidx52 = getelementptr i8, ptr %19, i32 9
  %26 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %27 to i32
  %shl54 = shl nuw nsw i32 %conv53, 8
  %or55 = or i32 %shl54, %conv50
  %arrayidx57 = getelementptr i8, ptr %19, i32 10
  %28 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %29 to i32
  %shl59 = shl nuw nsw i32 %conv58, 16
  %or60 = or i32 %or55, %shl59
  %arrayidx62 = getelementptr i8, ptr %19, i32 11
  %30 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %31 to i32
  %shl64 = shl nuw i32 %conv63, 24
  %or65 = or i32 %or60, %shl64
  tail call fastcc void @capincci_alloc(ptr noundef %1, i32 noundef %or65)
  br label %if.end67

if.end67:                                         ; preds = %if.then47, %if.end36.if.end67_crit_edge
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %arrayidx69 = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -122, i8 %35)
  %cmp71.not = icmp eq i8 %35, -122
  br i1 %cmp71.not, label %if.end74, label %if.then73

if.then73:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %recvqueue = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 4
  tail call void @skb_queue_tail(ptr noundef %recvqueue, ptr noundef %skb) #11
  %recvwait = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %recvwait, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %unlock_out

if.end74:                                         ; preds = %if.end67
  %arrayidx76 = getelementptr i8, ptr %33, i32 8
  %36 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %37 to i32
  %arrayidx79 = getelementptr i8, ptr %33, i32 9
  %38 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %39 to i32
  %shl81 = shl nuw nsw i32 %conv80, 8
  %or82 = or i32 %shl81, %conv77
  %arrayidx84 = getelementptr i8, ptr %33, i32 10
  %40 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %41 to i32
  %shl86 = shl nuw nsw i32 %conv85, 16
  %or87 = or i32 %or82, %shl86
  %arrayidx89 = getelementptr i8, ptr %33, i32 11
  %42 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %43 to i32
  %shl91 = shl nuw i32 %conv90, 24
  %or92 = or i32 %or87, %shl91
  %nccis.i = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end74
  %np.0.in.i = phi ptr [ %nccis.i, %if.end74 ], [ %np.0.i, %for.body.i.for.cond.i_crit_edge ]
  %44 = ptrtoint ptr %np.0.in.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %np.0.i = load ptr, ptr %np.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %np.0.i, %nccis.i
  br i1 %cmp.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %ncci2.i = getelementptr inbounds %struct.capincci, ptr %np.0.i, i32 0, i32 1
  %45 = ptrtoint ptr %ncci2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ncci2.i, align 4
  %cmp3.i = icmp eq i32 %46, %or92
  br i1 %cmp3.i, label %capincci_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

capincci_find.exit:                               ; preds = %for.body.i
  %tobool.not = icmp eq ptr %np.0.i, null
  br i1 %tobool.not, label %capincci_find.exit.do.end_crit_edge, label %if.end98

capincci_find.exit.do.end_crit_edge:              ; preds = %capincci_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %capincci_find.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #15
  %recvqueue96 = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 4
  tail call void @skb_queue_tail(ptr noundef %recvqueue96, ptr noundef %skb) #11
  %recvwait97 = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %recvwait97, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %unlock_out

if.end98:                                         ; preds = %capincci_find.exit
  %minorp = getelementptr inbounds %struct.capincci, ptr %np.0.i, i32 0, i32 3
  %47 = ptrtoint ptr %minorp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %minorp, align 4
  %tobool99.not = icmp eq ptr %48, null
  br i1 %tobool99.not, label %if.then100, label %if.end103

if.then100:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  %recvqueue101 = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 4
  tail call void @skb_queue_tail(ptr noundef %recvqueue101, ptr noundef %skb) #11
  %recvwait102 = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %recvwait102, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %unlock_out

if.end103:                                        ; preds = %if.end98
  %arrayidx105 = getelementptr i8, ptr %33, i32 5
  %49 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx105, align 1
  %51 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %50, label %if.else179 [
    i8 -126, label %if.then109
    i8 -127, label %if.then143
  ]

if.then109:                                       ; preds = %if.end103
  %arrayidx111 = getelementptr i8, ptr %33, i32 18
  %52 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx111, align 1
  %arrayidx114 = getelementptr i8, ptr %33, i32 19
  %54 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx114, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @capi_recv_message.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@capi_recv_message, %if.then125)) #11
          to label %do.end137 [label %if.then125], !srcloc !211

if.then125:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #13
  %conv115 = zext i8 %55 to i32
  %shl116 = shl nuw nsw i32 %conv115, 8
  %conv112 = zext i8 %53 to i32
  %or117 = or i32 %shl116, %conv112
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len, align 4
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 1
  %conv129 = zext i8 %61 to i32
  %arrayidx131 = getelementptr i8, ptr %59, i32 1
  %62 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx131, align 1
  %conv132 = zext i8 %63 to i32
  %shl133 = shl nuw nsw i32 %conv132, 8
  %or134 = or i32 %shl133, %conv129
  %sub = sub i32 %57, %or134
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @capi_recv_message.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.20, i32 noundef %or117, i32 noundef %sub) #11
  br label %do.end137

do.end137:                                        ; preds = %if.then125, %if.then109
  %inqueue = getelementptr inbounds %struct.capiminor, ptr %48, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %inqueue, ptr noundef %skb) #11
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %do.end137
  %call.i = tail call ptr @skb_dequeue(ptr noundef %inqueue) #11
  %cmp.not.i244 = icmp eq ptr %call.i, null
  br i1 %cmp.not.i244, label %while.cond.i.unlock_out_crit_edge, label %while.body.i

while.cond.i.unlock_out_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock_out

while.body.i:                                     ; preds = %while.cond.i
  %call1.i = tail call fastcc i32 @handle_recv_skb(ptr noundef nonnull %48, ptr noundef nonnull %call.i) #11
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.then.i, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @skb_queue_head(ptr noundef %inqueue, ptr noundef nonnull %call.i) #11
  br label %unlock_out

if.then143:                                       ; preds = %if.end103
  %arrayidx145 = getelementptr i8, ptr %33, i32 12
  %64 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx145, align 1
  %conv146 = zext i8 %65 to i16
  %arrayidx148 = getelementptr i8, ptr %33, i32 13
  %66 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx148, align 1
  %conv149 = zext i8 %67 to i16
  %shl150 = shl nuw i16 %conv149, 8
  %or151 = or i16 %shl150, %conv146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @capi_recv_message.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@capi_recv_message, %if.then165)) #11
          to label %do.end177 [label %if.then165], !srcloc !211

if.then165:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #13
  %conv166 = zext i16 %or151 to i32
  %68 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data, align 4
  %arrayidx168 = getelementptr i8, ptr %69, i32 14
  %70 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx168, align 1
  %conv169 = zext i8 %71 to i32
  %arrayidx171 = getelementptr i8, ptr %69, i32 15
  %72 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx171, align 1
  %conv172 = zext i8 %73 to i32
  %shl173 = shl nuw nsw i32 %conv172, 8
  %or174 = or i32 %shl173, %conv169
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @capi_recv_message.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.21, i32 noundef %conv166, i32 noundef %or174) #11
  br label %do.end177

do.end177:                                        ; preds = %if.then165, %if.then143
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  %ackqlock.i = getelementptr inbounds %struct.capiminor, ptr %48, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %ackqlock.i) #11
  %ackqueue.i = getelementptr inbounds %struct.capiminor, ptr %48, i32 0, i32 13
  br label %for.cond.i246

for.cond.i246:                                    ; preds = %for.body.i247.for.cond.i246_crit_edge, %do.end177
  %p.0.in.i = phi ptr [ %ackqueue.i, %do.end177 ], [ %p.0.i, %for.body.i247.for.cond.i246_crit_edge ]
  %74 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %p.0.i = load ptr, ptr %p.0.in.i, align 4
  %cmp.not.i245 = icmp eq ptr %p.0.i, %ackqueue.i
  br i1 %cmp.not.i245, label %for.end.i, label %for.body.i247

for.body.i247:                                    ; preds = %for.cond.i246
  %datahandle8.i = getelementptr inbounds %struct.ackqueue_entry, ptr %p.0.i, i32 0, i32 1
  %75 = ptrtoint ptr %datahandle8.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %datahandle8.i, align 4
  %cmp10.i = icmp eq i16 %76, %or151
  br i1 %cmp10.i, label %if.then.i248, label %for.body.i247.for.cond.i246_crit_edge

for.body.i247.for.cond.i246_crit_edge:            ; preds = %for.body.i247
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i246

if.then.i248:                                     ; preds = %for.body.i247
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.0.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i248.list_del.exit.i_crit_edge

if.then.i248.list_del.exit.i_crit_edge:           ; preds = %if.then.i248
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i248
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %p.0.i, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i.i, align 4
  %79 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %p.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev1.i.i.i.i, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %80, ptr %78, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i248.list_del.exit.i_crit_edge
  %83 = ptrtoint ptr %p.0.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 256 to ptr), ptr %p.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.0.i, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %nack.i = getelementptr inbounds %struct.capiminor, ptr %48, i32 0, i32 14
  %85 = ptrtoint ptr %nack.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nack.i, align 4
  %dec.i = add i32 %86, -1
  store i32 %dec.i, ptr %nack.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %ackqlock.i) #11
  tail call void @kfree(ptr noundef %p.0.i) #11
  br label %capiminor_del_ack.exit

for.end.i:                                        ; preds = %for.cond.i246
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %ackqlock.i) #11
  br label %capiminor_del_ack.exit

capiminor_del_ack.exit:                           ; preds = %for.end.i, %list_del.exit.i
  %port = getelementptr inbounds %struct.capiminor, ptr %48, i32 0, i32 5
  tail call void @tty_port_tty_wakeup(ptr noundef %port) #11
  tail call fastcc void @handle_minor_send(ptr noundef nonnull %48)
  br label %unlock_out

if.else179:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  %recvqueue180 = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 4
  tail call void @skb_queue_tail(ptr noundef %recvqueue180, ptr noundef %skb) #11
  %recvwait181 = getelementptr inbounds %struct.capidev, ptr %1, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %recvwait181, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  br label %unlock_out

unlock_out:                                       ; preds = %if.else179, %capiminor_del_ack.exit, %if.then.i, %while.cond.i.unlock_out_crit_edge, %if.then100, %do.end, %if.then73
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @capi20_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @capi20_get_version(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @capi20_get_serial(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @capi20_get_profile(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @capi20_get_manufacturer(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @capi20_isinstalled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @capi20_manufacturer(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @capincci_alloc(ptr noundef %cdev, i32 noundef %ncci) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ncci1 = getelementptr inbounds %struct.capincci, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %ncci1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %ncci, ptr %ncci1, align 8
  %cdev2 = getelementptr inbounds %struct.capincci, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %cdev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cdev, ptr %cdev2, align 4
  %userflags.i = getelementptr inbounds %struct.capidev, ptr %cdev, i32 0, i32 3
  %3 = ptrtoint ptr %userflags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %userflags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.capincci_alloc_minor.exit_crit_edge, label %if.then.i

if.end.capincci_alloc_minor.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %capincci_alloc_minor.exit

if.then.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 824) #18
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #15
  br label %capiminor_alloc.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %ap.i = getelementptr inbounds %struct.capidev, ptr %cdev, i32 0, i32 1
  %ap2.i.i = getelementptr inbounds %struct.capiminor, ptr %call7.i.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %ap2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ap.i, ptr %ap2.i.i, align 4
  %ncci3.i.i = getelementptr inbounds %struct.capiminor, ptr %call7.i.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ncci3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %ncci, ptr %ncci3.i.i, align 8
  %ackqueue.i.i = getelementptr inbounds %struct.capiminor, ptr %call7.i.i.i.i, i32 0, i32 13
  %8 = ptrtoint ptr %ackqueue.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %ackqueue.i.i, ptr %ackqueue.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.capiminor, ptr %call7.i.i.i.i, i32 0, i32 13, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ackqueue.i.i, ptr %prev.i.i.i, align 4
  %ackqlock.i.i = getelementptr inbounds %struct.capiminor, ptr %call7.i.i.i.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %ackqlock.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @capiminor_alloc.__key, i16 noundef signext 3) #11
  %inqueue.i.i = getelementptr inbounds %struct.capiminor, ptr %call7.i.i.i.i, i32 0, i32 8
  %lock.i.i.i = getelementptr inbounds %struct.capiminor, ptr %call7.i.i.i.i, i32 0, i32 8, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %10 = ptrtoint ptr %inqueue.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %inqueue.i.i, ptr %inqueue.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.capiminor, ptr %call7.i.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %inqueue.i.i, ptr %prev.i.i.i.i, align 8
  %qlen.i.i.i.i = getelementptr inbounds %struct.capiminor, ptr %call7.i.i.i.i, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %qlen.i.i.i.i, align 4
  %outqueue.i.i = getelementptr inbounds %struct.capiminor, ptr %call7.i.i.i.i, i32 0, i32 9
  %lock.i56.i.i = getelementptr inbounds %struct.capiminor, ptr %call7.i.i.i.i, i32 0, i32 9, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i56.i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %13 = ptrtoint ptr %outqueue.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %outqueue.i.i, ptr %outqueue.i.i, align 4
  %prev.i.i57.i.i = getelementptr inbounds %struct.capiminor, ptr %call7.i.i.i.i, i32 0, i32 9, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i57.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %outqueue.i.i, ptr %prev.i.i57.i.i, align 8
  %qlen.i.i58.i.i = getelementptr inbounds %struct.capiminor, ptr %call7.i.i.i.i, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %qlen.i.i58.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %qlen.i.i58.i.i, align 4
  %outlock.i.i = getelementptr inbounds %struct.capiminor, ptr %call7.i.i.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %outlock.i.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @capiminor_alloc.__key.25, i16 noundef signext 3) #11
  %port.i.i = getelementptr inbounds %struct.capiminor, ptr %call7.i.i.i.i, i32 0, i32 5
  tail call void @tty_port_init(ptr noundef %port.i.i) #11
  %ops.i.i = getelementptr inbounds %struct.capiminor, ptr %call7.i.i.i.i, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @capiminor_port_ops, ptr %ops.i.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @capiminors_lock) #11
  %17 = load i32, ptr @capi_ttyminors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp62.not.i.i = icmp eq i32 %17, 0
  br i1 %cmp62.not.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %18 = load ptr, ptr @capiminors, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %minor.063.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %18, i32 %minor.063.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %20, null
  br i1 %tobool13.not.i.i, label %if.then14.i.i, label %for.inc.i.i

if.then14.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.le = getelementptr ptr, ptr %18, i32 %minor.063.i.i
  %21 = ptrtoint ptr %arrayidx.i.i.le to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i.i.i, ptr %arrayidx.i.i.le, align 4
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %minor.063.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %17
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then14.i.i, %if.end.i.i.for.end.i.i_crit_edge
  %minor.060.i.i = phi i32 [ %minor.063.i.i, %if.then14.i.i ], [ 0, %if.end.i.i.for.end.i.i_crit_edge ], [ %17, %for.inc.i.i.for.end.i.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @capiminors_lock) #11
  %22 = load i32, ptr @capi_ttyminors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %minor.060.i.i, i32 %22)
  %cmp17.i.i = icmp eq i32 %minor.060.i.i, %22
  br i1 %cmp17.i.i, label %do.end21.i.i, label %if.end24.i.i

do.end21.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call23.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #15
  br label %err_out1.i.i

if.end24.i.i:                                     ; preds = %for.end.i.i
  %23 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %minor.060.i.i, ptr %call7.i.i.i.i, align 8
  %24 = load ptr, ptr @capinc_tty_driver, align 4
  %call27.i.i = tail call ptr @tty_port_register_device(ptr noundef %port.i.i, ptr noundef %24, i32 noundef %minor.060.i.i, ptr noundef null) #11
  %cmp.i.i.i = icmp ugt ptr %call27.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %err_out2.i.i, label %if.end24.i.i.capiminor_alloc.exit.i_crit_edge

if.end24.i.i.capiminor_alloc.exit.i_crit_edge:    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capiminor_alloc.exit.i

err_out2.i.i:                                     ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @capiminors_lock) #11
  %25 = load ptr, ptr @capiminors, align 4
  %arrayidx31.i.i = getelementptr ptr, ptr %25, i32 %minor.060.i.i
  %26 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx31.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @capiminors_lock) #11
  br label %err_out1.i.i

err_out1.i.i:                                     ; preds = %err_out2.i.i, %do.end21.i.i
  tail call void @tty_port_put(ptr noundef %port.i.i) #11
  br label %capiminor_alloc.exit.i

capiminor_alloc.exit.i:                           ; preds = %err_out1.i.i, %if.end24.i.i.capiminor_alloc.exit.i_crit_edge, %do.end.i.i
  %retval.0.i.i = phi ptr [ null, %err_out1.i.i ], [ null, %do.end.i.i ], [ %call7.i.i.i.i, %if.end24.i.i.capiminor_alloc.exit.i_crit_edge ]
  %minorp.i = getelementptr inbounds %struct.capincci, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %minorp.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %retval.0.i.i, ptr %minorp.i, align 8
  br label %capincci_alloc_minor.exit

capincci_alloc_minor.exit:                        ; preds = %capiminor_alloc.exit.i, %if.end.capincci_alloc_minor.exit_crit_edge
  %nccis = getelementptr inbounds %struct.capidev, ptr %cdev, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.capidev, ptr %cdev, i32 0, i32 6, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %29, ptr noundef %nccis) #11
  br i1 %call.i.i, label %if.end.i.i1, label %capincci_alloc_minor.exit.cleanup_crit_edge

capincci_alloc_minor.exit.cleanup_crit_edge:      ; preds = %capincci_alloc_minor.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i1:                                      ; preds = %capincci_alloc_minor.exit
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %nccis, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call7.i.i, ptr %29, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i1, %capincci_alloc_minor.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_minor_send(ptr noundef %mp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.capiminor, ptr %mp, i32 0, i32 5
  %call = tail call ptr @tty_port_tty_get(ptr noundef %port) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ttyoutstop = getelementptr inbounds %struct.capiminor, ptr %mp, i32 0, i32 7
  %0 = ptrtoint ptr %ttyoutstop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ttyoutstop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %while.cond.preheader, label %do.body

while.cond.preheader:                             ; preds = %if.end
  %outlock = getelementptr inbounds %struct.capiminor, ptr %mp, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %outlock) #11
  %outqueue = getelementptr inbounds %struct.capiminor, ptr %mp, i32 0, i32 9
  %2 = ptrtoint ptr %outqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %outqueue, align 4
  %cmp.i.i208 = icmp eq ptr %3, %outqueue
  %tobool.not.i196209 = icmp eq ptr %3, null
  %tobool.not.i210 = or i1 %cmp.i.i208, %tobool.not.i196209
  br i1 %tobool.not.i210, label %while.cond.preheader.while.end_crit_edge, label %if.end14.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end14.lr.ph:                                   ; preds = %while.cond.preheader
  %qlen.i.i = getelementptr inbounds %struct.capiminor, ptr %mp, i32 0, i32 9, i32 1
  %outbytes = getelementptr inbounds %struct.capiminor, ptr %mp, i32 0, i32 10
  %datahandle18 = getelementptr inbounds %struct.capiminor, ptr %mp, i32 0, i32 3
  %ap = getelementptr inbounds %struct.capiminor, ptr %mp, i32 0, i32 1
  %msgid = getelementptr inbounds %struct.capiminor, ptr %mp, i32 0, i32 4
  %ncci = getelementptr inbounds %struct.capiminor, ptr %mp, i32 0, i32 2
  %ackqlock.i = getelementptr inbounds %struct.capiminor, ptr %mp, i32 0, i32 15
  %ackqueue.i = getelementptr inbounds %struct.capiminor, ptr %mp, i32 0, i32 13
  %prev.i14.i = getelementptr inbounds %struct.capiminor, ptr %mp, i32 0, i32 13, i32 1
  %nack.i = getelementptr inbounds %struct.capiminor, ptr %mp, i32 0, i32 14
  br label %if.end14

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_minor_send.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_minor_send, %if.then7)) #11
          to label %cleanup.sink.split [label %if.then7], !srcloc !211

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_minor_send.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.42) #11
  br label %cleanup.sink.split

if.end14:                                         ; preds = %while.cond.backedge.if.end14_crit_edge, %if.end14.lr.ph
  %4 = phi ptr [ %3, %if.end14.lr.ph ], [ %81, %while.cond.backedge.if.end14_crit_edge ]
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.44, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %4, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.44, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %prev17.i.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %10, align 8
  %len15 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 6
  %13 = ptrtoint ptr %len15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len15, align 4
  %conv16 = and i32 %14, 65535
  %15 = ptrtoint ptr %outbytes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %outbytes, align 4
  %sub = sub i32 %16, %conv16
  store i32 %sub, ptr %outbytes, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %outlock) #11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %datahandle18, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !212
  tail call void @llvm.prefetch.p0(ptr %datahandle18, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %datahandle18, ptr %datahandle18, i32 1, ptr elementtype(i32) %datahandle18) #11, !srcloc !213
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !214
  %conv20 = trunc i32 %asmresult.i.i.i.i to i16
  %call21 = tail call ptr @skb_push(ptr noundef nonnull %4, i32 noundef 22) #11
  %data = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 19
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 22)
  %21 = load ptr, ptr %data, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 22, ptr %21, align 1
  %arrayidx5.i = getelementptr i8, ptr %21, i32 1
  %23 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx5.i, align 1
  %24 = load ptr, ptr %data, align 4
  %25 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ap, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %26, align 4
  %conv1.i = trunc i16 %28 to i8
  %arrayidx.i = getelementptr i8, ptr %24, i32 2
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv1.i, ptr %arrayidx.i, align 1
  %30 = lshr i16 %28, 8
  %conv4.i = trunc i16 %30 to i8
  %arrayidx5.i150 = getelementptr i8, ptr %24, i32 3
  %31 = ptrtoint ptr %arrayidx5.i150 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv4.i, ptr %arrayidx5.i150, align 1
  %32 = load ptr, ptr %data, align 4
  %arrayidx.i151 = getelementptr i8, ptr %32, i32 4
  %33 = ptrtoint ptr %arrayidx.i151 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -122, ptr %arrayidx.i151, align 1
  %34 = load ptr, ptr %data, align 4
  %arrayidx.i152 = getelementptr i8, ptr %34, i32 5
  %35 = ptrtoint ptr %arrayidx.i152 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -128, ptr %arrayidx.i152, align 1
  %36 = load ptr, ptr %data, align 4
  %call.i.i145 = tail call zeroext i1 @__kasan_check_write(ptr noundef %msgid, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !212
  tail call void @llvm.prefetch.p0(ptr %msgid, i32 1, i32 3, i32 1) #11
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %msgid, ptr %msgid, i32 1, ptr elementtype(i32) %msgid) #11, !srcloc !213
  %asmresult.i.i.i.i146 = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !214
  %conv1.i153 = trunc i32 %asmresult.i.i.i.i146 to i8
  %arrayidx.i154 = getelementptr i8, ptr %36, i32 6
  %38 = ptrtoint ptr %arrayidx.i154 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv1.i153, ptr %arrayidx.i154, align 1
  %39 = lshr i32 %asmresult.i.i.i.i146, 8
  %conv4.i155 = trunc i32 %39 to i8
  %arrayidx5.i156 = getelementptr i8, ptr %36, i32 7
  %40 = ptrtoint ptr %arrayidx5.i156 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv4.i155, ptr %arrayidx5.i156, align 1
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %43 = ptrtoint ptr %ncci to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ncci, align 4
  %conv.i = trunc i32 %44 to i8
  %arrayidx.i157 = getelementptr i8, ptr %42, i32 8
  %45 = ptrtoint ptr %arrayidx.i157 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i, ptr %arrayidx.i157, align 1
  %shr.i = lshr i32 %44, 8
  %conv2.i = trunc i32 %shr.i to i8
  %arrayidx3.i = getelementptr i8, ptr %42, i32 9
  %46 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv2.i, ptr %arrayidx3.i, align 1
  %shr4.i = lshr i32 %44, 16
  %conv6.i = trunc i32 %shr4.i to i8
  %arrayidx8.i = getelementptr i8, ptr %42, i32 10
  %47 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv6.i, ptr %arrayidx8.i, align 1
  %shr9.i = lshr i32 %44, 24
  %conv11.i = trunc i32 %shr9.i to i8
  %arrayidx13.i = getelementptr i8, ptr %42, i32 11
  %48 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv11.i, ptr %arrayidx13.i, align 1
  %49 = load ptr, ptr %data, align 4
  %50 = ptrtoint ptr %49 to i32
  %conv.i158 = trunc i32 %50 to i8
  %arrayidx.i159 = getelementptr i8, ptr %49, i32 12
  %51 = ptrtoint ptr %arrayidx.i159 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv.i158, ptr %arrayidx.i159, align 1
  %shr.i160 = lshr i32 %50, 8
  %conv2.i161 = trunc i32 %shr.i160 to i8
  %arrayidx3.i162 = getelementptr i8, ptr %49, i32 13
  %52 = ptrtoint ptr %arrayidx3.i162 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv2.i161, ptr %arrayidx3.i162, align 1
  %shr4.i163 = lshr i32 %50, 16
  %conv6.i164 = trunc i32 %shr4.i163 to i8
  %arrayidx8.i165 = getelementptr i8, ptr %49, i32 14
  %53 = ptrtoint ptr %arrayidx8.i165 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv6.i164, ptr %arrayidx8.i165, align 1
  %shr9.i166 = lshr i32 %50, 24
  %conv11.i167 = trunc i32 %shr9.i166 to i8
  %arrayidx13.i168 = getelementptr i8, ptr %49, i32 15
  %54 = ptrtoint ptr %arrayidx13.i168 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv11.i167, ptr %arrayidx13.i168, align 1
  %55 = load ptr, ptr %data, align 4
  %conv1.i169 = trunc i32 %14 to i8
  %arrayidx.i170 = getelementptr i8, ptr %55, i32 16
  %56 = ptrtoint ptr %arrayidx.i170 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv1.i169, ptr %arrayidx.i170, align 1
  %57 = lshr i32 %14, 8
  %conv4.i171 = trunc i32 %57 to i8
  %arrayidx5.i172 = getelementptr i8, ptr %55, i32 17
  %58 = ptrtoint ptr %arrayidx5.i172 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv4.i171, ptr %arrayidx5.i172, align 1
  %59 = load ptr, ptr %data, align 4
  %conv1.i173 = trunc i32 %asmresult.i.i.i.i to i8
  %arrayidx.i174 = getelementptr i8, ptr %59, i32 18
  %60 = ptrtoint ptr %arrayidx.i174 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv1.i173, ptr %arrayidx.i174, align 1
  %61 = lshr i32 %asmresult.i.i.i.i, 8
  %conv4.i175 = trunc i32 %61 to i8
  %arrayidx5.i176 = getelementptr i8, ptr %59, i32 19
  %62 = ptrtoint ptr %arrayidx5.i176 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv4.i175, ptr %arrayidx5.i176, align 1
  %63 = load ptr, ptr %data, align 4
  %arrayidx.i177 = getelementptr i8, ptr %63, i32 20
  %64 = ptrtoint ptr %arrayidx.i177 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %arrayidx.i177, align 1
  %arrayidx5.i178 = getelementptr i8, ptr %63, i32 21
  %65 = ptrtoint ptr %arrayidx5.i178 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %arrayidx5.i178, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %66 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %66, i32 noundef 2592, i32 noundef 12) #18
  %tobool.not.i179 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i179, label %if.then37, label %if.end.i, !prof !203

if.end.i:                                         ; preds = %if.end14
  %datahandle5.i = getelementptr inbounds %struct.ackqueue_entry, ptr %call7.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %datahandle5.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv20, ptr %datahandle5.i, align 8
  %68 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %ackqlock.i) #11
  %70 = ptrtoint ptr %prev.i14.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i14.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %71, ptr noundef %ackqueue.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.if.end44_crit_edge

if.end.i.if.end44_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %prev.i14.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i.i, ptr %prev.i14.i, align 4
  %73 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %ackqueue.i, ptr %call7.i.i, align 8
  %74 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %call7.i.i, ptr %71, align 4
  br label %if.end44

if.then37:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #15
  %call38 = tail call ptr @skb_pull(ptr noundef nonnull %4, i32 noundef 22) #11
  tail call void @_raw_spin_lock_bh(ptr noundef %outlock) #11
  br label %while.end.sink.split

if.end44:                                         ; preds = %if.end.i.i.i, %if.end.i.if.end44_crit_edge
  %76 = ptrtoint ptr %nack.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nack.i, align 4
  %inc.i = add i32 %77, 1
  store i32 %inc.i, ptr %nack.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %ackqlock.i) #11
  %78 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ap, align 4
  %call46 = tail call zeroext i16 @capi20_put_message(ptr noundef %79, ptr noundef nonnull %4) #11
  %conv47 = zext i16 %call46 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call46)
  %cmp48 = icmp eq i16 %call46, 0
  br i1 %cmp48, label %do.body51, label %if.end69

do.body51:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_minor_send.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_minor_send, %if.then63)) #11
          to label %while.cond.backedge [label %if.then63], !srcloc !211

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #13
  %conv64 = and i32 %asmresult.i.i.i.i, 65535
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_minor_send.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.43, i32 noundef %conv64, i32 noundef %conv16) #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end85, %if.then63, %do.body51
  tail call void @_raw_spin_lock_bh(ptr noundef %outlock) #11
  %80 = ptrtoint ptr %outqueue to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %outqueue, align 4
  %cmp.i.i = icmp eq ptr %81, %outqueue
  %tobool.not.i196 = icmp eq ptr %81, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i196
  br i1 %tobool.not.i, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.if.end14_crit_edge

while.cond.backedge.if.end14_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end69:                                         ; preds = %if.end44
  tail call void @_raw_spin_lock_bh(ptr noundef %ackqlock.i) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end69
  %p.0.in.i = phi ptr [ %ackqueue.i, %if.end69 ], [ %p.0.i, %for.body.i.for.cond.i_crit_edge ]
  %82 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %p.0.i = load ptr, ptr %p.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %p.0.i, %ackqueue.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %datahandle8.i = getelementptr inbounds %struct.ackqueue_entry, ptr %p.0.i, i32 0, i32 1
  %83 = ptrtoint ptr %datahandle8.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %datahandle8.i, align 4
  %cmp10.i = icmp eq i16 %84, %conv20
  br i1 %cmp10.i, label %if.then.i184, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

if.then.i184:                                     ; preds = %for.body.i
  %call.i.i.i183 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.0.i) #11
  br i1 %call.i.i.i183, label %if.end.i.i.i185, label %if.then.i184.list_del.exit.i_crit_edge

if.then.i184.list_del.exit.i_crit_edge:           ; preds = %if.then.i184
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i185:                                  ; preds = %if.then.i184
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %p.0.i, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i.i, align 4
  %87 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %p.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev1.i.i.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %88, ptr %86, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i185, %if.then.i184.list_del.exit.i_crit_edge
  %91 = ptrtoint ptr %p.0.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 256 to ptr), ptr %p.0.i, align 4
  %prev.i.i186 = getelementptr inbounds %struct.list_head, ptr %p.0.i, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i186 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i186, align 4
  %93 = ptrtoint ptr %nack.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %nack.i, align 4
  %dec.i = add i32 %94, -1
  store i32 %dec.i, ptr %nack.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %ackqlock.i) #11
  tail call void @kfree(ptr noundef %p.0.i) #11
  br label %capiminor_del_ack.exit

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %ackqlock.i) #11
  br label %capiminor_del_ack.exit

capiminor_del_ack.exit:                           ; preds = %for.end.i, %list_del.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4355, i16 %call46)
  %cmp72 = icmp eq i16 %call46, 4355
  br i1 %cmp72, label %if.then74, label %do.end85

if.then74:                                        ; preds = %capiminor_del_ack.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call75 = tail call ptr @skb_pull(ptr noundef nonnull %4, i32 noundef 22) #11
  tail call void @_raw_spin_lock_bh(ptr noundef %outlock) #11
  br label %while.end.sink.split

do.end85:                                         ; preds = %capiminor_del_ack.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %conv47) #15
  tail call void @kfree_skb_reason(ptr noundef %4, i32 noundef 0) #11
  br label %while.cond.backedge

while.end.sink.split:                             ; preds = %if.then74, %if.then37
  %95 = ptrtoint ptr %outqueue to i32
  call void @__asan_load4_noabort(i32 %95)
  %.sink234 = load ptr, ptr %outqueue, align 4
  %96 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %.sink234, ptr %4, align 8
  %prev9.i.i.le.sink = getelementptr inbounds %struct.anon.44, ptr %4, i32 0, i32 1
  %97 = ptrtoint ptr %prev9.i.i.le.sink to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %outqueue, ptr %prev9.i.i.le.sink, align 4
  %prev17.i.i.i189 = getelementptr inbounds %struct.sk_buff_list, ptr %.sink234, i32 0, i32 1
  %98 = ptrtoint ptr %prev17.i.i.i189 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %4, ptr %prev17.i.i.i189, align 4
  store volatile ptr %4, ptr %outqueue, align 4
  %99 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i191 = add i32 %100, 1
  store volatile i32 %add.i.i.i191, ptr %qlen.i.i, align 4
  %101 = ptrtoint ptr %outbytes to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %outbytes, align 4
  %add80 = add i32 %102, %conv16
  store i32 %add80, ptr %outbytes, align 4
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %while.cond.backedge.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %outlock) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.end, %if.then7, %do.body
  tail call void @tty_kref_put(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_register_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @capiminor_destroy(ptr noundef %port) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %outskb = getelementptr i8, ptr %port, i32 700
  %0 = ptrtoint ptr %outskb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %outskb, align 4
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #11
  %inqueue = getelementptr i8, ptr %port, i32 584
  tail call void @skb_queue_purge(ptr noundef %inqueue) #11
  %outqueue = getelementptr i8, ptr %port, i32 640
  tail call void @skb_queue_purge(ptr noundef %outqueue) #11
  %ackqueue.i = getelementptr i8, ptr %port, i32 748
  %2 = ptrtoint ptr %ackqueue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ackqueue.i, align 4
  %cmp.not20.i = icmp eq ptr %3, %ackqueue.i
  br i1 %cmp.not20.i, label %entry.capiminor_del_all_ack.exit_crit_edge, label %for.body.lr.ph.i

entry.capiminor_del_all_ack.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %capiminor_del_all_ack.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %nack.i = getelementptr i8, ptr %port, i32 756
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %p.021.i = phi ptr [ %3, %for.body.lr.ph.i ], [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %p.021.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0.i = load ptr, ptr %p.021.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.021.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %p.021.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %p.021.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p.021.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %p.021.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %p.021.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.021.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %p.021.i) #11
  %13 = ptrtoint ptr %nack.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nack.i, align 4
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %nack.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, %ackqueue.i
  br i1 %cmp.not.i, label %list_del.exit.i.capiminor_del_all_ack.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

list_del.exit.i.capiminor_del_all_ack.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %capiminor_del_all_ack.exit

capiminor_del_all_ack.exit:                       ; preds = %list_del.exit.i.capiminor_del_all_ack.exit_crit_edge, %entry.capiminor_del_all_ack.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %port, i32 -20
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_recv_skb(ptr noundef %mp, ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv = zext i8 %5 to i32
  %arrayidx2 = getelementptr i8, ptr %3, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv3, 8
  %or = or i32 %shl, %conv
  %sub = sub i32 %1, %or
  %port = getelementptr inbounds %struct.capiminor, ptr %mp, i32 0, i32 5
  %call = tail call ptr @tty_port_tty_get(ptr noundef %port) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_recv_skb.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_recv_skb, %if.then8)) #11
          to label %cleanup [label %if.then8], !srcloc !211

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_recv_skb.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.32) #11
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call10 = tail call ptr @tty_ldisc_ref(ptr noundef nonnull %call) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %deref_tty

if.end13:                                         ; preds = %if.end9
  %8 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call10, align 4
  %receive_buf = getelementptr inbounds %struct.tty_ldisc_ops, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %receive_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %receive_buf, align 4
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %do.body16, label %if.end32

do.body16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_recv_skb.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_recv_skb, %if.then28)) #11
          to label %free_skb [label %if.then28], !srcloc !211

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_recv_skb.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.33) #11
  br label %free_skb

if.end32:                                         ; preds = %if.end13
  %ttyinstop = getelementptr inbounds %struct.capiminor, ptr %mp, i32 0, i32 6
  %12 = ptrtoint ptr %ttyinstop to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ttyinstop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool33.not = icmp eq i32 %13, 0
  br i1 %tobool33.not, label %if.end51, label %do.body35

do.body35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_recv_skb.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_recv_skb, %if.then47)) #11
          to label %deref_ldisc [label %if.then47], !srcloc !211

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_recv_skb.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.34) #11
  br label %deref_ldisc

if.end51:                                         ; preds = %if.end32
  %receive_room = getelementptr inbounds %struct.tty_struct, ptr %call, i32 0, i32 22
  %14 = ptrtoint ptr %receive_room to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %receive_room, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %sub)
  %cmp52 = icmp ult i32 %15, %sub
  br i1 %cmp52, label %do.body55, label %if.end71

do.body55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_recv_skb.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_recv_skb, %if.then67)) #11
          to label %deref_ldisc [label %if.then67], !srcloc !211

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_recv_skb.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.35) #11
  br label %deref_ldisc

if.end71:                                         ; preds = %if.end51
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 14, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end77, label %if.end80

do.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #15
  br label %deref_ldisc

if.end80:                                         ; preds = %if.end71
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %arrayidx.i = getelementptr i8, ptr %17, i32 18
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %17, i32 19
  %20 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx2.i, align 1
  %call5.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 14) #11
  %22 = ptrtoint ptr %call5.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 14, ptr %call5.i, align 1
  %arrayidx5.i.i = getelementptr i8, ptr %call5.i, i32 1
  %23 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx5.i.i, align 1
  %ap.i = getelementptr inbounds %struct.capiminor, ptr %mp, i32 0, i32 1
  %24 = ptrtoint ptr %ap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ap.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 4
  %conv1.i.i = trunc i16 %27 to i8
  %arrayidx.i.i = getelementptr i8, ptr %call5.i, i32 2
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv1.i.i, ptr %arrayidx.i.i, align 1
  %29 = lshr i16 %27, 8
  %conv4.i.i = trunc i16 %29 to i8
  %arrayidx5.i19.i = getelementptr i8, ptr %call5.i, i32 3
  %30 = ptrtoint ptr %arrayidx5.i19.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv4.i.i, ptr %arrayidx5.i19.i, align 1
  %arrayidx.i20.i = getelementptr i8, ptr %call5.i, i32 4
  %31 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -122, ptr %arrayidx.i20.i, align 1
  %arrayidx.i21.i = getelementptr i8, ptr %call5.i, i32 5
  %32 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -125, ptr %arrayidx.i21.i, align 1
  %msgid.i = getelementptr inbounds %struct.capiminor, ptr %mp, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %msgid.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !212
  tail call void @llvm.prefetch.p0(ptr %msgid.i, i32 1, i32 3, i32 1) #11
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %msgid.i, ptr %msgid.i, i32 1, ptr elementtype(i32) %msgid.i) #11, !srcloc !213
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !214
  %conv1.i22.i = trunc i32 %asmresult.i.i.i.i.i to i8
  %arrayidx.i23.i = getelementptr i8, ptr %call5.i, i32 6
  %34 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv1.i22.i, ptr %arrayidx.i23.i, align 1
  %35 = lshr i32 %asmresult.i.i.i.i.i, 8
  %conv4.i24.i = trunc i32 %35 to i8
  %arrayidx5.i25.i = getelementptr i8, ptr %call5.i, i32 7
  %36 = ptrtoint ptr %arrayidx5.i25.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv4.i24.i, ptr %arrayidx5.i25.i, align 1
  %ncci.i = getelementptr inbounds %struct.capiminor, ptr %mp, i32 0, i32 2
  %37 = ptrtoint ptr %ncci.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ncci.i, align 4
  %conv.i.i = trunc i32 %38 to i8
  %arrayidx.i26.i = getelementptr i8, ptr %call5.i, i32 8
  %39 = ptrtoint ptr %arrayidx.i26.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i.i, ptr %arrayidx.i26.i, align 1
  %shr.i.i = lshr i32 %38, 8
  %conv2.i.i = trunc i32 %shr.i.i to i8
  %arrayidx3.i.i = getelementptr i8, ptr %call5.i, i32 9
  %40 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv2.i.i, ptr %arrayidx3.i.i, align 1
  %shr4.i.i = lshr i32 %38, 16
  %conv6.i.i = trunc i32 %shr4.i.i to i8
  %arrayidx8.i.i = getelementptr i8, ptr %call5.i, i32 10
  %41 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv6.i.i, ptr %arrayidx8.i.i, align 1
  %shr9.i.i = lshr i32 %38, 24
  %conv11.i.i = trunc i32 %shr9.i.i to i8
  %arrayidx13.i.i = getelementptr i8, ptr %call5.i, i32 11
  %42 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv11.i.i, ptr %arrayidx13.i.i, align 1
  %arrayidx.i28.i = getelementptr i8, ptr %call5.i, i32 12
  %43 = ptrtoint ptr %arrayidx.i28.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %19, ptr %arrayidx.i28.i, align 1
  %arrayidx5.i29.i = getelementptr i8, ptr %call5.i, i32 13
  %44 = ptrtoint ptr %arrayidx5.i29.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %21, ptr %arrayidx5.i29.i, align 1
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  %arrayidx82 = getelementptr i8, ptr %46, i32 12
  %47 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %48 to i32
  %arrayidx85 = getelementptr i8, ptr %46, i32 13
  %49 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %50 to i32
  %shl87 = shl nuw nsw i32 %conv86, 8
  %or88 = or i32 %shl87, %conv83
  %51 = ptrtoint ptr %ap.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ap.i, align 4
  %call90 = tail call zeroext i16 @capi20_put_message(ptr noundef %52, ptr noundef nonnull %call.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call90)
  %cmp92 = icmp eq i16 %call90, 0
  br i1 %cmp92, label %if.then94, label %do.end128

if.then94:                                        ; preds = %if.end80
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  %conv97 = zext i8 %56 to i32
  %arrayidx99 = getelementptr i8, ptr %54, i32 1
  %57 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %58 to i32
  %shl101 = shl nuw nsw i32 %conv100, 8
  %or102 = or i32 %shl101, %conv97
  %call103 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %or102) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_recv_skb.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_recv_skb, %if.then116)) #11
          to label %do.end121 [label %if.then116], !srcloc !211

if.then116:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @handle_recv_skb.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.37, i32 noundef %or88, i32 noundef %60) #11
  br label %do.end121

do.end121:                                        ; preds = %if.then116, %if.then94
  %61 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call10, align 4
  %receive_buf123 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %62, i32 0, i32 12
  %63 = ptrtoint ptr %receive_buf123 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %receive_buf123, align 4
  %65 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data, align 4
  %67 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len, align 4
  tail call void %64(ptr noundef nonnull %call, ptr noundef %66, ptr noundef null, i32 noundef %68) #11
  br label %free_skb

do.end128:                                        ; preds = %if.end80
  %conv91 = zext i16 %call90 to i32
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %conv91) #15
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 4355, i16 %call90)
  %cmp133 = icmp eq i16 %call90, 4355
  br i1 %cmp133, label %do.end128.deref_ldisc_crit_edge, label %do.end128.free_skb_crit_edge

do.end128.free_skb_crit_edge:                     ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_skb

do.end128.deref_ldisc_crit_edge:                  ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %deref_ldisc

free_skb:                                         ; preds = %do.end128.free_skb_crit_edge, %do.end121, %if.then28, %do.body16
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %deref_ldisc

deref_ldisc:                                      ; preds = %free_skb, %do.end128.deref_ldisc_crit_edge, %do.end77, %if.then67, %do.body55, %if.then47, %do.body35
  %ret.0 = phi i32 [ 0, %free_skb ], [ -1, %if.then47 ], [ -1, %if.then67 ], [ -1, %do.end128.deref_ldisc_crit_edge ], [ -1, %do.end77 ], [ -1, %do.body35 ], [ -1, %do.body55 ]
  tail call void @tty_ldisc_deref(ptr noundef nonnull %call10) #11
  br label %deref_tty

deref_tty:                                        ; preds = %deref_ldisc, %if.then12
  %ret.1 = phi i32 [ %ret.0, %deref_ldisc ], [ 0, %if.then12 ]
  tail call void @tty_kref_put(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %deref_tty, %if.then8, %do.body
  %retval.0 = phi i32 [ %ret.1, %deref_tty ], [ -1, %if.then8 ], [ -1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_ldisc_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_deref(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @capi20_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capinc_tty_install(ptr noundef %driver, ptr noundef %tty) #4 align 64 {
entry:
  %old.i.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @capiminors_lock) #11
  %2 = load ptr, ptr @capiminors, align 4
  %arrayidx.i = getelementptr ptr, ptr %2, i32 %1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.capiminor_get.exit_crit_edge, label %land.lhs.true.i.i

entry.capiminor_get.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %capiminor_get.exit

land.lhs.true.i.i:                                ; preds = %entry
  %kref.i.i = getelementptr inbounds %struct.capiminor, ptr %4, i32 0, i32 5, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #11
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i.i, i32 noundef 4) #11
  %5 = ptrtoint ptr %kref.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %kref.i.i, align 4
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %land.lhs.true.i.i
  %7 = phi i32 [ %6, %land.lhs.true.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge ]
  %8 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %old.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i.i

do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i.i.i

do.cond.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i
  %add.i.i.i.i.i.i = add i32 %7, 1
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #11
  %call.i3.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i.i, i32 noundef 4) #11
  %9 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.i:                        ; preds = %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i.i
  %11 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 %10, i32 %add.i.i.i.i.i.i, ptr elementtype(i32) %kref.i.i) #11, !srcloc !215
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  %tobool.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i: ; preds = %do.body.i.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 1
  %cmp.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i.i, %10
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, !prof !204

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i.i.i

if.end4.i.i.i.i.i.i:                              ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.if.end4.i.i.i.i.i.i_crit_edge
  %12 = ptrtoint ptr %old.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i.i.i, align 4
  %add5.i.i.i.i.i.i = add i32 %13, 1
  %14 = or i32 %add5.i.i.i.i.i.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !204

if.end4.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get_unless_zero.exit.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef 0) #11
  br label %kref_get_unless_zero.exit.i.i

kref_get_unless_zero.exit.i.i:                    ; preds = %if.then10.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i) #11
  br label %capiminor_get.exit

capiminor_get.exit:                               ; preds = %kref_get_unless_zero.exit.i.i, %entry.capiminor_get.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @capiminors_lock) #11
  %call1 = call i32 @tty_standard_install(ptr noundef %driver, ptr noundef %tty) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %capiminor_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %15 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %4, ptr %driver_data, align 4
  br label %if.end

if.else:                                          ; preds = %capiminor_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %port.i6 = getelementptr inbounds %struct.capiminor, ptr %4, i32 0, i32 5
  call void @tty_port_put(ptr noundef %port.i6) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capinc_tty_open(ptr noundef %tty, ptr noundef %filp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 5
  %call = tail call i32 @tty_port_open(ptr noundef %port, ptr noundef %tty, ptr noundef %filp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %inqueue.i = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %call.i = tail call ptr @skb_dequeue(ptr noundef %inqueue.i) #11
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %while.cond.i.cleanup_crit_edge, label %while.body.i

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.i:                                     ; preds = %while.cond.i
  %call1.i = tail call fastcc i32 @handle_recv_skb(ptr noundef %1, ptr noundef nonnull %call.i) #11
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.then.i, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @skb_queue_head(ptr noundef %inqueue.i, ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %while.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %while.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @capinc_tty_close(ptr noundef %tty, ptr noundef %filp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 5
  tail call void @tty_port_close(ptr noundef %port, ptr noundef %tty, ptr noundef %filp) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @capinc_tty_cleanup(ptr nocapture noundef %tty) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  store ptr null, ptr %driver_data, align 4
  %port.i = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 5
  tail call void @tty_port_put(ptr noundef %port.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capinc_tty_write(ptr nocapture noundef readonly %tty, ptr nocapture noundef readonly %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @capinc_tty_write.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@capinc_tty_write, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @capinc_tty_write.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.57, i32 noundef %count) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %outlock = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %outlock) #11
  %outskb = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %outskb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %outskb, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end.if.end6_crit_edge, label %if.then4

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %outskb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %outskb, align 4
  %outqueue = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 9
  %prev.i.i = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %outqueue, ptr %3, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.44, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %prev10.i.i.i, align 4
  store volatile ptr %3, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %3, ptr %6, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %outbytes = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %outbytes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %outbytes, align 4
  %add = add i32 %15, %13
  store i32 %add, ptr %outbytes, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge
  %add7 = add i32 %count, 22
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add7, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %do.end13, label %if.end17

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %outlock) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 22
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %19, i32 22
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call.i44 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %count) #11
  %20 = call ptr @memcpy(ptr %call.i44, ptr %buf, i32 %count)
  %outqueue19 = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 9
  %prev.i.i45 = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i45, align 4
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %outqueue19, ptr %call.i, align 8
  %prev10.i.i.i46 = getelementptr inbounds %struct.anon.44, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev10.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %prev10.i.i.i46, align 4
  store volatile ptr %call.i, ptr %prev.i.i45, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call.i, ptr %22, align 4
  %qlen.i.i.i47 = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 9, i32 1
  %26 = ptrtoint ptr %qlen.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qlen.i.i.i47, align 4
  %add.i.i.i48 = add i32 %27, 1
  store volatile i32 %add.i.i.i48, ptr %qlen.i.i.i47, align 4
  %len20 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %28 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len20, align 4
  %outbytes21 = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 10
  %30 = ptrtoint ptr %outbytes21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %outbytes21, align 4
  %add22 = add i32 %31, %29
  store i32 %add22, ptr %outbytes21, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %outlock) #11
  tail call fastcc void @handle_minor_send(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end13
  %retval.0 = phi i32 [ %count, %if.end17 ], [ -12, %do.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capinc_tty_put_char(ptr nocapture noundef readonly %tty, i8 noundef zeroext %ch) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @capinc_tty_put_char.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@capinc_tty_put_char, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %ch to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @capinc_tty_put_char.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.60, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %outlock = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %outlock) #11
  %outskb = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %outskb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %outskb, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end.if.end10_crit_edge, label %if.then4

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then4:                                         ; preds = %do.end
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %if.then4.if.end8_crit_edge

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

skb_tailroom.exit:                                ; preds = %if.then4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub.i)
  %cmp = icmp sgt i32 %sub.ptr.sub.i, 0
  br i1 %cmp, label %unlock_out.thread, label %skb_tailroom.exit.if.end8_crit_edge

skb_tailroom.exit.if.end8_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

unlock_out.thread:                                ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %3, i32 noundef 1) #11
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %ch, ptr %call.i, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %outlock) #11
  br label %if.end25

if.end8:                                          ; preds = %skb_tailroom.exit.if.end8_crit_edge, %if.then4.if.end8_crit_edge
  %11 = ptrtoint ptr %outskb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %outskb, align 4
  %outqueue = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 9
  %prev.i.i = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %outqueue, ptr %3, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.44, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %prev10.i.i.i, align 4
  store volatile ptr %3, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %3, ptr %13, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %outbytes = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %outbytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %outbytes, align 4
  %add = add i32 %22, %20
  store i32 %add, ptr %outbytes, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %do.end.if.end10_crit_edge
  %call.i45 = tail call ptr @__alloc_skb(i32 noundef 2070, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool12.not = icmp eq ptr %call.i45, null
  br i1 %tobool12.not, label %unlock_out, label %if.then13

if.then13:                                        ; preds = %if.end10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i45, i32 0, i32 19
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 22
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i46 = getelementptr inbounds %struct.sk_buff, ptr %call.i45, i32 0, i32 16
  %25 = ptrtoint ptr %tail.i46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i46, align 8
  %add.ptr1.i = getelementptr i8, ptr %26, i32 22
  store ptr %add.ptr1.i, ptr %tail.i46, align 8
  %call.i47 = tail call ptr @skb_put(ptr noundef nonnull %call.i45, i32 noundef 1) #11
  %27 = ptrtoint ptr %call.i47 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %ch, ptr %call.i47, align 1
  %28 = ptrtoint ptr %outskb to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i45, ptr %outskb, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %outlock) #11
  br i1 %tobool3.not, label %if.then13.if.end25_crit_edge, label %if.then13.if.then24_crit_edge

if.then13.if.then24_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.then13.if.end25_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

unlock_out:                                       ; preds = %if.end10
  %conv19 = zext i8 %ch to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %conv19) #15
  tail call void @_raw_spin_unlock_bh(ptr noundef %outlock) #11
  br i1 %tobool3.not, label %unlock_out.if.end25_crit_edge, label %unlock_out.if.then24_crit_edge

unlock_out.if.then24_crit_edge:                   ; preds = %unlock_out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

unlock_out.if.end25_crit_edge:                    ; preds = %unlock_out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then24:                                        ; preds = %unlock_out.if.then24_crit_edge, %if.then13.if.then24_crit_edge
  %ret.054 = phi i32 [ 1, %if.then13.if.then24_crit_edge ], [ 0, %unlock_out.if.then24_crit_edge ]
  tail call fastcc void @handle_minor_send(ptr noundef %1)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %unlock_out.if.end25_crit_edge, %if.then13.if.end25_crit_edge, %unlock_out.thread
  %ret.053 = phi i32 [ 1, %unlock_out.thread ], [ %ret.054, %if.then24 ], [ 0, %unlock_out.if.end25_crit_edge ], [ 1, %if.then13.if.end25_crit_edge ]
  ret i32 %ret.053
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @capinc_tty_flush_chars(ptr nocapture noundef readonly %tty) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %outlock = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %outlock) #11
  %outskb = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %outskb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %outskb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %outskb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %outskb, align 4
  %outqueue = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 9
  %prev.i.i = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %outqueue, ptr %3, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.44, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %prev10.i.i.i, align 4
  store volatile ptr %3, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %3, ptr %6, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %outbytes = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %outbytes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %outbytes, align 4
  %add = add i32 %15, %13
  store i32 %add, ptr %outbytes, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %outlock) #11
  tail call fastcc void @handle_minor_send(ptr noundef %1)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %outlock) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %inqueue.i = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %call.i = tail call ptr @skb_dequeue(ptr noundef %inqueue.i) #11
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %while.cond.i.handle_minor_recv.exit_crit_edge, label %while.body.i

while.cond.i.handle_minor_recv.exit_crit_edge:    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_minor_recv.exit

while.body.i:                                     ; preds = %while.cond.i
  %call1.i = tail call fastcc i32 @handle_recv_skb(ptr noundef %1, ptr noundef nonnull %call.i) #11
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.then.i, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @skb_queue_head(ptr noundef %inqueue.i, ptr noundef nonnull %call.i) #11
  br label %handle_minor_recv.exit

handle_minor_recv.exit:                           ; preds = %if.then.i, %while.cond.i.handle_minor_recv.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capinc_tty_write_room(ptr nocapture noundef readonly %tty) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %qlen.i = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i, align 4
  %.neg = mul i32 %3, -2048
  %mul = add i32 %.neg, 20480
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @capinc_tty_write_room.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@capinc_tty_write_room, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @capinc_tty_write_room.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.63, i32 noundef %mul) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capinc_tty_chars_in_buffer(ptr nocapture noundef readonly %tty) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @capinc_tty_chars_in_buffer.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@capinc_tty_chars_in_buffer, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %outbytes = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %outbytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outbytes, align 4
  %nack = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %nack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nack, align 4
  %qlen.i = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen.i, align 4
  %qlen.i10 = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %qlen.i10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen.i10, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @capinc_tty_chars_in_buffer.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.65, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %outbytes5 = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %outbytes5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %outbytes5, align 4
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @capinc_tty_throttle(ptr nocapture noundef readonly %tty) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %ttyinstop = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ttyinstop to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %ttyinstop, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @capinc_tty_unthrottle(ptr nocapture noundef readonly %tty) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %ttyinstop = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ttyinstop to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ttyinstop, align 4
  %inqueue.i = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %call.i = tail call ptr @skb_dequeue(ptr noundef %inqueue.i) #11
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %while.cond.i.handle_minor_recv.exit_crit_edge, label %while.body.i

while.cond.i.handle_minor_recv.exit_crit_edge:    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_minor_recv.exit

while.body.i:                                     ; preds = %while.cond.i
  %call1.i = tail call fastcc i32 @handle_recv_skb(ptr noundef %1, ptr noundef nonnull %call.i) #11
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.then.i, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @skb_queue_head(ptr noundef %inqueue.i, ptr noundef nonnull %call.i) #11
  br label %handle_minor_recv.exit

handle_minor_recv.exit:                           ; preds = %if.then.i, %while.cond.i.handle_minor_recv.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @capinc_tty_stop(ptr nocapture noundef readonly %tty) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %ttyoutstop = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ttyoutstop to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %ttyoutstop, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @capinc_tty_start(ptr nocapture noundef readonly %tty) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %ttyoutstop = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ttyoutstop to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ttyoutstop, align 4
  tail call fastcc void @handle_minor_send(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @capinc_tty_hangup(ptr nocapture noundef readonly %tty) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %port = getelementptr inbounds %struct.capiminor, ptr %1, i32 0, i32 5
  tail call void @tty_port_hangup(ptr noundef %port) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @capinc_tty_send_xchar(ptr nocapture noundef readnone %tty, i8 noundef zeroext %ch) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @capinc_tty_send_xchar.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@capinc_tty_send_xchar, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !211

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %ch to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @capinc_tty_send_xchar.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.67, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_standard_install(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_hangup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capi20_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @capidev_list_lock, i32 noundef 0) #11
  %l.011 = load ptr, ptr @capidev_list, align 4
  %cmp.i.not12 = icmp eq ptr %l.011, @capidev_list
  br i1 %cmp.i.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %l.013 = phi ptr [ %l.0, %for.body.for.body_crit_edge ], [ %l.011, %entry.for.body_crit_edge ]
  %ap = getelementptr inbounds %struct.capidev, ptr %l.013, i32 0, i32 1
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ap, align 4
  %conv = zext i16 %1 to i32
  %nrecvctlpkt = getelementptr inbounds %struct.capidev, ptr %l.013, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %nrecvctlpkt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nrecvctlpkt, align 4
  %nrecvdatapkt = getelementptr inbounds %struct.capidev, ptr %l.013, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %nrecvdatapkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nrecvdatapkt, align 4
  %nsentctlpkt = getelementptr inbounds %struct.capidev, ptr %l.013, i32 0, i32 1, i32 6
  %6 = ptrtoint ptr %nsentctlpkt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nsentctlpkt, align 4
  %nsentdatapkt = getelementptr inbounds %struct.capidev, ptr %l.013, i32 0, i32 1, i32 7
  %8 = ptrtoint ptr %nsentdatapkt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nsentdatapkt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.68, i32 noundef %conv, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #11
  %10 = ptrtoint ptr %l.013 to i32
  call void @__asan_load4_noabort(i32 %10)
  %l.0 = load ptr, ptr %l.013, align 4
  %cmp.i.not = icmp eq ptr %l.0, @capidev_list
  br i1 %cmp.i.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @capidev_list_lock) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @capi20ncci_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @capidev_list_lock, i32 noundef 0) #11
  %cdev.034 = load ptr, ptr @capidev_list, align 4
  %cmp.not35 = icmp eq ptr %cdev.034, @capidev_list
  br i1 %cmp.not35, label %entry.for.end22_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end22

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry.for.body_crit_edge
  %cdev.036 = phi ptr [ %cdev.0, %for.end.for.body_crit_edge ], [ %cdev.034, %entry.for.body_crit_edge ]
  %lock = getelementptr inbounds %struct.capidev, ptr %cdev.036, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %nccis = getelementptr inbounds %struct.capidev, ptr %cdev.036, i32 0, i32 6
  %0 = ptrtoint ptr %nccis to i32
  call void @__asan_load4_noabort(i32 %0)
  %np.031 = load ptr, ptr %nccis, align 4
  %cmp7.not32 = icmp eq ptr %np.031, %nccis
  br i1 %cmp7.not32, label %for.body.for.end_crit_edge, label %for.body9.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body9.lr.ph:                                  ; preds = %for.body
  %ap = getelementptr inbounds %struct.capidev, ptr %cdev.036, i32 0, i32 1
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body9.lr.ph
  %np.033 = phi ptr [ %np.031, %for.body9.lr.ph ], [ %np.0, %for.body9.for.body9_crit_edge ]
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ap, align 4
  %conv = zext i16 %2 to i32
  %ncci = getelementptr inbounds %struct.capincci, ptr %np.033, i32 0, i32 1
  %3 = ptrtoint ptr %ncci to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ncci, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.69, i32 noundef %conv, i32 noundef %4) #11
  %5 = ptrtoint ptr %np.033 to i32
  call void @__asan_load4_noabort(i32 %5)
  %np.0 = load ptr, ptr %np.033, align 4
  %cmp7.not = icmp eq ptr %np.0, %nccis
  br i1 %cmp7.not, label %for.body9.for.end_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body9

for.body9.for.end_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body9.for.end_crit_edge, %for.body.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %6 = ptrtoint ptr %cdev.036 to i32
  call void @__asan_load4_noabort(i32 %6)
  %cdev.0 = load ptr, ptr %cdev.036, align 4
  %cmp.not = icmp eq ptr %cdev.0, @capidev_list
  br i1 %cmp.not, label %for.end.for.end22_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.for.end22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end22

for.end22:                                        ; preds = %for.end.for.end22_crit_edge, %entry.for.end22_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @capidev_list_lock) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !33, !35, !37, !38, !39, !40, !41, !43, !44, !46, !48, !49, !50, !52, !54, !55, !57, !59, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !80, !81, !82, !83, !85, !86, !88, !89, !91, !92, !93, !95, !96, !98, !100, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !115, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !143, !144, !146, !147, !148, !150, !152, !154, !156, !157, !158, !159, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191}
!llvm.named.register.sp = !{!193}
!llvm.module.flags = !{!194, !195, !196, !197, !198, !199, !200, !201}
!llvm.ident = !{!202}

!0 = !{ptr @__UNIQUE_ID_description337, !1, !"__UNIQUE_ID_description337", i1 false, i1 false}
!1 = !{!"../drivers/isdn/capi/capi.c", i32 45, i32 1}
!2 = !{ptr @__UNIQUE_ID_author338, !3, !"__UNIQUE_ID_author338", i1 false, i1 false}
!3 = !{!"../drivers/isdn/capi/capi.c", i32 46, i32 1}
!4 = !{ptr @__UNIQUE_ID_file339, !5, !"__UNIQUE_ID_file339", i1 false, i1 false}
!5 = !{!"../drivers/isdn/capi/capi.c", i32 47, i32 1}
!6 = !{ptr @__UNIQUE_ID_license340, !5, !"__UNIQUE_ID_license340", i1 false, i1 false}
!7 = !{ptr @__param_major, !8, !"__param_major", i1 false, i1 false}
!8 = !{!"../drivers/isdn/capi/capi.c", i32 55, i32 1}
!9 = !{ptr @__UNIQUE_ID_majortype341, !8, !"__UNIQUE_ID_majortype341", i1 false, i1 false}
!10 = !{ptr @__param_ttyminors, !11, !"__param_ttyminors", i1 false, i1 false}
!11 = !{!"../drivers/isdn/capi/capi.c", i32 63, i32 1}
!12 = !{ptr @__UNIQUE_ID_ttyminorstype342, !11, !"__UNIQUE_ID_ttyminorstype342", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/isdn/capi/capi.c", i32 1373, i32 20}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/isdn/capi/capi.c", i32 1374, i32 20}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/isdn/capi/capi.c", i32 1432, i32 32}
!19 = !{ptr @__initcall__kmod_kernelcapi__357_1439_capi_init6, !20, !"__initcall__kmod_kernelcapi__357_1439_capi_init6", i1 false, i1 false}
!20 = !{!"../drivers/isdn/capi/capi.c", i32 1439, i32 1}
!21 = !{ptr @__exitcall_capi_exit, !22, !"__exitcall_capi_exit", i1 false, i1 false}
!22 = !{!"../drivers/isdn/capi/capi.c", i32 1440, i32 1}
!23 = !{ptr @capi_class, !24, !"capi_class", i1 false, i1 false}
!24 = !{!"../drivers/isdn/capi/capi.c", i32 52, i32 22}
!25 = !{ptr @capiminors, !26, !"capiminors", i1 false, i1 false}
!26 = !{!"../drivers/isdn/capi/capi.c", i32 139, i32 27}
!27 = !{ptr @capinc_tty_driver, !28, !"capinc_tty_driver", i1 false, i1 false}
!28 = !{!"../drivers/isdn/capi/capi.c", i32 141, i32 27}
!29 = !{ptr @__param_str_major, !8, !"__param_str_major", i1 false, i1 false}
!30 = !{ptr @capi_major, !31, !"capi_major", i1 false, i1 false}
!31 = !{!"../drivers/isdn/capi/capi.c", i32 53, i32 12}
!32 = !{ptr @__param_str_ttyminors, !11, !"__param_str_ttyminors", i1 false, i1 false}
!33 = !{ptr @capi_ttyminors, !34, !"capi_ttyminors", i1 false, i1 false}
!34 = !{!"../drivers/isdn/capi/capi.c", i32 61, i32 12}
!35 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/isdn/capi/capi.c", i32 1392, i32 3}
!37 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @capi_init._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @capi_init._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @capi_init.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/isdn/capi/capi.c", i32 1396, i32 15}
!43 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/isdn/capi/capi.c", i32 1416, i32 16}
!46 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/isdn/capi/capi.c", i32 1420, i32 2}
!48 = !{ptr @capi_init._entry.8, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @capi_init._entry_ptr.10, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @capi_fops, !51, !"capi_fops", i1 false, i1 false}
!51 = !{!"../drivers/isdn/capi/capi.c", i32 1022, i32 37}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!54 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.12, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!57 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!59 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/isdn/capi/capi.c", i32 138, i32 8}
!61 = !{ptr @capiminors_lock, !60, !"capiminors_lock", i1 false, i1 false}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/isdn/capi/capi.c", i32 51, i32 8}
!64 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @capi_mutex, !63, !"capi_mutex", i1 false, i1 false}
!66 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/isdn/capi/capi.c", i32 605, i32 3}
!68 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @capi_recv_message._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @capi_recv_message._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/isdn/capi/capi.c", i32 619, i32 3}
!73 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @capi_recv_message.__UNIQUE_ID_ddebug350, !72, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/isdn/capi/capi.c", i32 628, i32 3}
!77 = !{ptr @capi_recv_message.__UNIQUE_ID_ddebug351, !76, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!78 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/isdn/capi/capi.c", i32 218, i32 3}
!80 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @capiminor_alloc._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @capiminor_alloc._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @capiminor_alloc.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/isdn/capi/capi.c", i32 225, i32 2}
!85 = !{ptr @.str.24, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @capiminor_alloc.__key.25, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/isdn/capi/capi.c", i32 229, i32 2}
!88 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/isdn/capi/capi.c", i32 244, i32 3}
!91 = !{ptr @capiminor_alloc._entry.27, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @capiminor_alloc._entry_ptr.29, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @skb_queue_head_init.__key, !94, !"__key", i1 false, i1 false}
!94 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!95 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @capiminor_port_ops, !97, !"capiminor_port_ops", i1 false, i1 false}
!97 = !{!"../drivers/isdn/capi/capi.c", i32 206, i32 41}
!98 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/isdn/capi/capi.c", i32 416, i32 3}
!100 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @handle_recv_skb.__UNIQUE_ID_ddebug343, !99, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!102 = !{ptr @.str.33, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/isdn/capi/capi.c", i32 429, i32 3}
!104 = !{ptr @handle_recv_skb.__UNIQUE_ID_ddebug344, !103, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/isdn/capi/capi.c", i32 434, i32 3}
!107 = !{ptr @handle_recv_skb.__UNIQUE_ID_ddebug345, !106, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!108 = !{ptr @.str.35, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/isdn/capi/capi.c", i32 439, i32 3}
!110 = !{ptr @handle_recv_skb.__UNIQUE_ID_ddebug346, !109, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/isdn/capi/capi.c", i32 445, i32 3}
!113 = !{ptr @handle_recv_skb._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @handle_recv_skb._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/isdn/capi/capi.c", i32 455, i32 3}
!117 = !{ptr @handle_recv_skb.__UNIQUE_ID_ddebug347, !116, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!118 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/isdn/capi/capi.c", i32 459, i32 3}
!120 = !{ptr @handle_recv_skb._entry.38, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @handle_recv_skb._entry_ptr.40, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.41, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/isdn/capi/capi.c", i32 503, i32 3}
!124 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @handle_minor_send.__UNIQUE_ID_ddebug348, !123, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!126 = !{ptr @.str.43, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/isdn/capi/capi.c", i32 545, i32 4}
!128 = !{ptr @handle_minor_send.__UNIQUE_ID_ddebug349, !127, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!129 = !{ptr @.str.44, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/isdn/capi/capi.c", i32 563, i32 3}
!131 = !{ptr @handle_minor_send._entry, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @handle_minor_send._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.45, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/isdn/capi/capi.c", i32 151, i32 3}
!135 = !{ptr @.str.46, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @capiminor_add_ack._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @capiminor_add_ack._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @capi_open.__key, !139, !"__key", i1 false, i1 false}
!139 = !{!"../drivers/isdn/capi/capi.c", i32 992, i32 2}
!140 = !{ptr @.str.47, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @capi_open.__key.48, !142, !"__key", i1 false, i1 false}
!142 = !{!"../drivers/isdn/capi/capi.c", i32 994, i32 2}
!143 = !{ptr @.str.49, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.50, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/isdn/capi/capi.c", i32 133, i32 8}
!146 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @capidev_list_lock, !145, !"capidev_list_lock", i1 false, i1 false}
!148 = !{ptr @capidev_list, !149, !"capidev_list", i1 false, i1 false}
!149 = !{!"../drivers/isdn/capi/capi.c", i32 134, i32 8}
!150 = !{ptr @.str.52, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/isdn/capi/capi.c", i32 1278, i32 21}
!152 = !{ptr @.str.53, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/isdn/capi/capi.c", i32 1279, i32 14}
!154 = !{ptr @.str.54, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/isdn/capi/capi.c", i32 1295, i32 3}
!156 = !{ptr @.str.55, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @capinc_tty_init._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @capinc_tty_init._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @capinc_ops, !160, !"capinc_ops", i1 false, i1 false}
!160 = !{!"../drivers/isdn/capi/capi.c", i32 1239, i32 36}
!161 = !{ptr @.str.56, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/isdn/capi/capi.c", i32 1086, i32 2}
!163 = !{ptr @.str.57, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @capinc_tty_write.__UNIQUE_ID_ddebug352, !162, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!165 = !{ptr @.str.58, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/isdn/capi/capi.c", i32 1098, i32 3}
!167 = !{ptr @capinc_tty_write._entry, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @capinc_tty_write._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.59, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/isdn/capi/capi.c", i32 1122, i32 2}
!171 = !{ptr @.str.60, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @capinc_tty_put_char.__UNIQUE_ID_ddebug353, !170, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!173 = !{ptr @.str.61, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/isdn/capi/capi.c", i32 1143, i32 3}
!175 = !{ptr @capinc_tty_put_char._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @capinc_tty_put_char._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.62, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/isdn/capi/capi.c", i32 1183, i32 2}
!179 = !{ptr @.str.63, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @capinc_tty_write_room.__UNIQUE_ID_ddebug354, !178, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!181 = !{ptr @.str.64, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/isdn/capi/capi.c", i32 1191, i32 2}
!183 = !{ptr @.str.65, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @capinc_tty_chars_in_buffer.__UNIQUE_ID_ddebug355, !182, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!185 = !{ptr @.str.66, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/isdn/capi/capi.c", i32 1236, i32 2}
!187 = !{ptr @.str.67, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @capinc_tty_send_xchar.__UNIQUE_ID_ddebug356, !186, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!189 = !{ptr @.str.68, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/isdn/capi/capi.c", i32 1334, i32 17}
!191 = !{ptr @.str.69, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/isdn/capi/capi.c", i32 1358, i32 18}
!193 = !{!"sp"}
!194 = !{i32 1, !"wchar_size", i32 2}
!195 = !{i32 1, !"min_enum_size", i32 4}
!196 = !{i32 8, !"branch-target-enforcement", i32 0}
!197 = !{i32 8, !"sign-return-address", i32 0}
!198 = !{i32 8, !"sign-return-address-all", i32 0}
!199 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!200 = !{i32 7, !"uwtable", i32 1}
!201 = !{i32 7, !"frame-pointer", i32 2}
!202 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!203 = !{!"branch_weights", i32 1, i32 2000}
!204 = !{!"branch_weights", i32 2000, i32 1}
!205 = !{i64 2152568611, i64 2152568636}
!206 = !{i64 2152567930, i64 2152567955}
!207 = !{i64 5063485}
!208 = !{i64 5063682}
!209 = !{i64 2152548915}
!210 = !{!"auto-init"}
!211 = !{i64 2148983925, i64 2148983930, i64 2148983943, i64 2148983987, i64 2148984021, i64 2148984042}
!212 = !{i64 2148455983}
!213 = !{i64 2148371268, i64 2148371300, i64 2148371329, i64 2148371363, i64 2148371394, i64 2148371417}
!214 = !{i64 2148456212}
!215 = !{i64 855081, i64 855105, i64 855126, i64 855143, i64 855160}
