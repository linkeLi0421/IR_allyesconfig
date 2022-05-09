; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/ipmi_devintf.c_pt.bc'
source_filename = "../drivers/char/ipmi/ipmi_devintf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ipmi_smi_watcher = type { %struct.list_head, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipmi_user_hndl = type { ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ipmi_file_private = type { ptr, %struct.spinlock, %struct.list_head, ptr, %struct.wait_queue_head, %struct.mutex, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ipmi_req = type { ptr, i32, i32, %struct.ipmi_msg }
%struct.ipmi_msg = type { i8, i8, i16, ptr }
%struct.ipmi_req_settime = type { %struct.ipmi_req, i32, i32 }
%struct.ipmi_recv = type { i32, ptr, i32, i32, %struct.ipmi_msg }
%struct.ipmi_cmdspec = type { i8, i8 }
%struct.ipmi_cmdspec_chans = type { i32, i32, i32 }
%struct.ipmi_channel_lun_address_set = type { i16, i8 }
%struct.ipmi_timing_parms = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipmi_recv_msg = type { %struct.list_head, i32, ptr, %struct.ipmi_addr, i32, %struct.kernel_ipmi_msg, ptr, ptr, [272 x i8] }
%struct.ipmi_addr = type { i32, i16, [32 x i8] }
%struct.kernel_ipmi_msg = type { i8, i8, i16, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
%struct.ipmi_reg_list = type { i32, %struct.list_head }

@__param_str_ipmi_major = internal constant [24 x i8] c"ipmi_devintf.ipmi_major\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ipmi_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ipmi_major = internal constant %struct.kernel_param { ptr @__param_str_ipmi_major, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @ipmi_major } }, section "__param", align 4
@__UNIQUE_ID_ipmi_majortype225 = internal constant [37 x i8] c"ipmi_devintf.parmtype=ipmi_major:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ipmi_major226 = internal constant [260 x i8] c"ipmi_devintf.parm=ipmi_major:Sets the major number of the IPMI device.  By default, or if you set it to zero, it will choose the next available device.  Setting it to -1 will disable the interface.  Other values will set the major device number to that value.\00", section ".modinfo", align 1
@__initcall__kmod_ipmi_devintf__227_890_init_ipmi_devintf6 = internal global ptr @init_ipmi_devintf, section ".initcall6.init", align 4
@reg_list_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @reg_list_mutex, i64 52), ptr getelementptr (i8, ptr @reg_list_mutex, i64 52) }, ptr @reg_list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@reg_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @reg_list, ptr @reg_list }, [24 x i8] zeroinitializer }, align 32
@ipmi_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@smi_watcher = internal global { %struct.ipmi_smi_watcher, [44 x i8] } { %struct.ipmi_smi_watcher { %struct.list_head zeroinitializer, ptr null, ptr @ipmi_new_smi, ptr @ipmi_smi_gone }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipmidev\00", [24 x i8] zeroinitializer }, align 32
@__exitcall_cleanup_ipmi = internal global ptr @cleanup_ipmi, section ".exitcall.exit", align 4
@__UNIQUE_ID_file228 = internal constant [49 x i8] c"ipmi_devintf.file=drivers/char/ipmi/ipmi_devintf\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [25 x i8] c"ipmi_devintf.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [55 x i8] c"ipmi_devintf.author=Corey Minyard <minyard@mvista.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [78 x i8] c"ipmi_devintf.description=Linux device interface for the IPMI message handler.\00", section ".modinfo", align 1
@init_ipmi_devintf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016ipmi device interface\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init_ipmi_devintf\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/char/ipmi/ipmi_devintf.c\00", [63 x i8] zeroinitializer }, align 32
@init_ipmi_devintf._entry_ptr = internal global ptr @init_ipmi_devintf._entry, section ".printk_index", align 4
@init_ipmi_devintf.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipmi\00", [27 x i8] zeroinitializer }, align 32
@init_ipmi_devintf._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ipmi: can't register device class\0A\00", [59 x i8] zeroinitializer }, align 32
@init_ipmi_devintf._entry_ptr.7 = internal global ptr @init_ipmi_devintf._entry.5, section ".printk_index", align 4
@ipmi_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipmi_poll, ptr @ipmi_ioctl, ptr null, ptr null, i32 0, ptr @ipmi_open, ptr null, ptr @ipmi_release, ptr null, ptr @ipmi_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@init_ipmi_devintf._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013ipmi: can't get major %d\0A\00", [36 x i8] zeroinitializer }, align 32
@init_ipmi_devintf._entry_ptr.10 = internal global ptr @init_ipmi_devintf._entry.8, section ".printk_index", align 4
@init_ipmi_devintf._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014ipmi: can't register smi watcher\0A\00", [60 x i8] zeroinitializer }, align 32
@init_ipmi_devintf._entry_ptr.13 = internal global ptr @init_ipmi_devintf._entry.11, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ipmi_hndlrs = internal constant { %struct.ipmi_user_hndl, [16 x i8] } { %struct.ipmi_user_hndl { ptr @file_receive_handler, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@ipmi_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&priv->recv_msg_lock\00", [43 x i8] zeroinitializer }, align 32
@ipmi_open.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->wait\00", [20 x i8] zeroinitializer }, align 32
@ipmi_open.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->recv_mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_list_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_list_mutex\00", [17 x i8] zeroinitializer }, align 32
@ipmi_new_smi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013ipmi_devintf: Unable to create the ipmi class device link\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipmi_new_smi\00", [19 x i8] zeroinitializer }, align 32
@ipmi_new_smi._entry_ptr = internal global ptr @ipmi_new_smi._entry, section ".printk_index", align 4
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ipmi%d\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [23 x i64] [i64 21, i64 32, i64 1074030879, i64 2147641614, i64 2147641615, i64 2147772688, i64 2147772689, i64 2147772690, i64 2147772691, i64 2147772692, i64 2147772696, i64 2147772697, i64 2147772698, i64 2147772699, i64 2147772702, i64 2148034838, i64 2148034839, i64 2148296988, i64 2148296989, i64 2148821261, i64 2149345557, i64 3222825227, i64 3222825228]
@___asan_gen_.30 = private unnamed_addr constant [11 x i8] c"ipmi_major\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 794, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"reg_list_mutex\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [9 x i8] c"reg_list\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 807, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"ipmi_class\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 810, i32 22 }
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"smi_watcher\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 847, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 904, i32 32 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 861, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 863, i32 15 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 865, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [10 x i8] c"ipmi_fops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 779, i32 37 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 872, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 884, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 230, i32 6 }
@___asan_gen_.91 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 214, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 156, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [12 x i8] c"ipmi_hndlrs\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 82, i32 36 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 108, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 110, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 112, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 808, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 819, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [36 x i8] c"../drivers/char/ipmi/ipmi_devintf.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 825, i32 47 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_ipmi_major226, ptr @__UNIQUE_ID_ipmi_majortype225, ptr @__UNIQUE_ID_license229, ptr @__exitcall_cleanup_ipmi, ptr @__initcall__kmod_ipmi_devintf__227_890_init_ipmi_devintf6, ptr @__param_ipmi_major, ptr @cleanup_ipmi, ptr @init_ipmi_devintf._entry, ptr @init_ipmi_devintf._entry.11, ptr @init_ipmi_devintf._entry.5, ptr @init_ipmi_devintf._entry.8, ptr @init_ipmi_devintf._entry_ptr, ptr @init_ipmi_devintf._entry_ptr.10, ptr @init_ipmi_devintf._entry_ptr.13, ptr @init_ipmi_devintf._entry_ptr.7, ptr @ipmi_new_smi._entry, ptr @ipmi_new_smi._entry_ptr, ptr @ipmi_major, ptr @reg_list_mutex, ptr @reg_list, ptr @ipmi_class, ptr @smi_watcher, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @init_ipmi_devintf.__key, ptr @.str.4, ptr @.str.6, ptr @ipmi_fops, ptr @.str.9, ptr @.str.12, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @ipmi_hndlrs, ptr @ipmi_open.__key, ptr @.str.20, ptr @ipmi_open.__key.21, ptr @.str.22, ptr @ipmi_open.__key.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smi_watcher to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ipmi_devintf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ipmi_devintf.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ipmi_devintf._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ipmi_devintf._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ipmi_devintf._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_hndlrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_open.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_open.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_new_smi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_ipmi_devintf() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ipmi_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  %call2 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_ipmi_devintf.__key) #7
  store ptr %call2, ptr @ipmi_class, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end7, label %if.end11

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  %1 = load ptr, ptr @ipmi_class, align 4
  %2 = ptrtoint ptr %1 to i32
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %3 = load i32, ptr @ipmi_major, align 4
  %call.i = tail call i32 @__register_chrdev(i32 noundef %3, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str, ptr noundef nonnull @ipmi_fops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp13 = icmp slt i32 %call.i, 0
  br i1 %cmp13, label %if.then14, label %if.end20

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load ptr, ptr @ipmi_class, align 4
  tail call void @class_destroy(ptr noundef %4) #7
  %5 = load i32, ptr @ipmi_major, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %5) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %6 = load i32, ptr @ipmi_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp21 = icmp eq i32 %6, 0
  br i1 %cmp21, label %if.then22, label %if.end20.if.end23_crit_edge

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  store i32 %call.i, ptr @ipmi_major, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end20.if.end23_crit_edge
  %call24 = tail call i32 @ipmi_smi_watcher_register(ptr noundef nonnull @smi_watcher) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %if.end23.cleanup_crit_edge, label %if.then25

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %7 = load i32, ptr @ipmi_major, align 4
  tail call void @__unregister_chrdev(i32 noundef %7, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #7
  %8 = load ptr, ptr @ipmi_class, align 4
  tail call void @class_destroy(ptr noundef %8) #7
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end23.cleanup_crit_edge, %if.then14, %do.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %do.end7 ], [ %call.i, %if.then14 ], [ %call24, %if.then25 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_ipmi() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_lock_nested(ptr noundef nonnull @reg_list_mutex, i32 noundef 0) #7
  %0 = load ptr, ptr @reg_list, align 4
  %cmp.not18 = icmp eq ptr %0, @reg_list
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in19 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %entry1.0 = getelementptr i8, ptr %.pn.in19, i32 -4
  %1 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in19, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in19) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in19, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %.pn.in19, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in19, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in19, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %10 = load ptr, ptr @ipmi_class, align 4
  %11 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %entry1.0, align 4
  tail call void @device_destroy(ptr noundef %10, i32 noundef %12) #7
  tail call void @kfree(ptr noundef %entry1.0) #7
  %cmp.not = icmp eq ptr %.pn, @reg_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @reg_list_mutex) #7
  %13 = load ptr, ptr @ipmi_class, align 4
  tail call void @class_destroy(ptr noundef %13) #7
  %call = tail call i32 @ipmi_smi_watcher_unregister(ptr noundef nonnull @smi_watcher) #7
  %14 = load i32, ptr @ipmi_major, align 4
  tail call void @__unregister_chrdev(i32 noundef %14, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_smi_watcher_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_smi_watcher_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_poll(ptr noundef %file, ptr noundef %wait) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wait1 = getelementptr inbounds %struct.ipmi_file_private, ptr %1, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %wait1, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %file, ptr noundef nonnull %wait1, ptr noundef nonnull %wait) #7
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %recv_msg_lock = getelementptr inbounds %struct.ipmi_file_private, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %recv_msg_lock) #7
  %recv_msgs = getelementptr inbounds %struct.ipmi_file_private, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %recv_msgs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %recv_msgs, align 4
  %cmp.i.not = icmp eq ptr %5, %recv_msgs
  %spec.select = select i1 %cmp.i.not, i32 0, i32 65
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %recv_msg_lock, i32 noundef %call3) #7
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %data) #4 align 64 {
entry:
  %req = alloca %struct.ipmi_req, align 4
  %req6 = alloca %struct.ipmi_req_settime, align 4
  %rsp = alloca %struct.ipmi_recv, align 4
  %val = alloca %struct.ipmi_cmdspec, align 1
  %val34 = alloca %struct.ipmi_cmdspec, align 1
  %val45 = alloca %struct.ipmi_cmdspec_chans, align 4
  %val57 = alloca %struct.ipmi_cmdspec_chans, align 4
  %val71 = alloca i32, align 4
  %val81 = alloca i32, align 4
  %val91 = alloca i32, align 4
  %rval = alloca i8, align 1
  %val105 = alloca i32, align 4
  %val115 = alloca i32, align 4
  %rval116 = alloca i8, align 1
  %val130 = alloca %struct.ipmi_channel_lun_address_set, align 4
  %val140 = alloca %struct.ipmi_channel_lun_address_set, align 4
  %val159 = alloca %struct.ipmi_channel_lun_address_set, align 4
  %val171 = alloca %struct.ipmi_channel_lun_address_set, align 4
  %parms = alloca %struct.ipmi_timing_parms, align 4
  %parms202 = alloca %struct.ipmi_timing_parms, align 4
  %mode = alloca i32, align 4
  %mode223 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = inttoptr i32 %data to ptr
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup231_crit_edge [
    i32 -2146146035, label %sw.bb
    i32 -2145621739, label %sw.bb5
    i32 -1072142068, label %entry.sw.bb17_crit_edge
    i32 -1072142069, label %entry.sw.bb17_crit_edge818
    i32 -2147325682, label %sw.bb24
    i32 -2147325681, label %sw.bb33
    i32 -2146670308, label %sw.bb44
    i32 -2146670307, label %sw.bb56
    i32 -2147194608, label %sw.bb70
    i32 -2147194607, label %sw.bb80
    i32 -2147194606, label %sw.bb90
    i32 -2147194605, label %sw.bb104
    i32 -2147194604, label %sw.bb114
    i32 -2147194600, label %sw.bb129
    i32 -2147194599, label %sw.bb139
    i32 -2147194598, label %sw.bb158
    i32 -2147194597, label %sw.bb170
    i32 -2146932458, label %sw.bb189
    i32 -2146932457, label %sw.bb201
    i32 -2147194594, label %sw.bb214
    i32 1074030879, label %sw.bb222
  ]

entry.sw.bb17_crit_edge818:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17

entry.sw.bb17_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17

entry.cleanup231_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup231

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req) #7
  %4 = call ptr @memset(ptr %req, i32 255, i32 20)
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %sw.bb.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb.if.then11.i.i_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 20, i32 -1226833920) #11, !srcloc !89
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !90

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %req, i32 noundef 20) #7
  %6 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !91
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %req, ptr noundef %2, i32 noundef 20) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !90

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb.if.then11.i.i_crit_edge
  %res.0.i.i719 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 20, %sw.bb.if.then11.i.i_crit_edge ], [ 20, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 20, %res.0.i.i719
  %add.ptr.i.i = getelementptr i8, ptr %req, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i719)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %recv_mutex = getelementptr inbounds %struct.ipmi_file_private, ptr %1, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %recv_mutex, i32 noundef 0) #7
  %default_retries = getelementptr inbounds %struct.ipmi_file_private, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %default_retries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %default_retries, align 4
  %default_retry_time_ms = getelementptr inbounds %struct.ipmi_file_private, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %default_retry_time_ms to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %default_retry_time_ms, align 4
  call void @mutex_unlock(ptr noundef %recv_mutex) #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call2 = call fastcc i32 @handle_send_req(ptr noundef %15, ptr noundef nonnull %req, i32 noundef %11, i32 noundef %13)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11.i.i
  %rv.0 = phi i32 [ %call2, %if.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req) #7
  br label %cleanup231

sw.bb5:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %req6) #7
  %16 = getelementptr inbounds %struct.ipmi_req_settime, ptr %req6, i32 0, i32 1
  %17 = getelementptr inbounds %struct.ipmi_req_settime, ptr %req6, i32 0, i32 2
  %18 = call ptr @memset(ptr %req6, i32 255, i32 28)
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i299 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i299, label %sw.bb5.if.then11.i.i315_crit_edge, label %land.lhs.true.i.i302

sw.bb5.if.then11.i.i315_crit_edge:                ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i315

land.lhs.true.i.i302:                             ; preds = %sw.bb5
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 28, i32 -1226833920) #11, !srcloc !89
  %asmresult.i.i300 = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i300)
  %cmp.i6.i301 = icmp eq i32 %asmresult.i.i300, 0
  br i1 %cmp.i6.i301, label %if.end.i.i312, label %land.lhs.true.i.i302.if.then11.i.i315_crit_edge, !prof !90

land.lhs.true.i.i302.if.then11.i.i315_crit_edge:  ; preds = %land.lhs.true.i.i302
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i315

if.end.i.i312:                                    ; preds = %land.lhs.true.i.i302
  %call.i.i.i303 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %req6, i32 noundef 28) #7
  %20 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i304 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i304 to ptr
  %cpu_domain.i.i.i.i.i305 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i305) #5, !srcloc !91
  %and.i.i.i.i306 = and i32 %22, -13
  %or.i.i.i.i307 = or i32 %and.i.i.i.i306, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i307) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %call1.i.i.i308 = call i32 @arm_copy_from_user(ptr noundef nonnull %req6, ptr noundef %2, i32 noundef 28) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i308)
  %tobool4.not.i.i311 = icmp eq i32 %call1.i.i.i308, 0
  br i1 %tobool4.not.i.i311, label %if.end10, label %if.end.i.i312.if.then11.i.i315_crit_edge, !prof !90

if.end.i.i312.if.then11.i.i315_crit_edge:         ; preds = %if.end.i.i312
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i315

if.then11.i.i315:                                 ; preds = %if.end.i.i312.if.then11.i.i315_crit_edge, %land.lhs.true.i.i302.if.then11.i.i315_crit_edge, %sw.bb5.if.then11.i.i315_crit_edge
  %res.0.i.i310724 = phi i32 [ %call1.i.i.i308, %if.end.i.i312.if.then11.i.i315_crit_edge ], [ 28, %sw.bb5.if.then11.i.i315_crit_edge ], [ 28, %land.lhs.true.i.i302.if.then11.i.i315_crit_edge ]
  %sub.i.i313 = sub i32 28, %res.0.i.i310724
  %add.ptr.i.i314 = getelementptr i8, ptr %req6, i32 %sub.i.i313
  %23 = call ptr @memset(ptr %add.ptr.i.i314, i32 0, i32 %res.0.i.i310724)
  br label %cleanup16

if.end10:                                         ; preds = %if.end.i.i312
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %26 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %16, align 4
  %28 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %17, align 4
  %call15 = call fastcc i32 @handle_send_req(ptr noundef %25, ptr noundef nonnull %req6, i32 noundef %27, i32 noundef %29)
  br label %cleanup16

cleanup16:                                        ; preds = %if.end10, %if.then11.i.i315
  %rv.1 = phi i32 [ %call15, %if.end10 ], [ -14, %if.then11.i.i315 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req6) #7
  br label %cleanup231

sw.bb17:                                          ; preds = %entry.sw.bb17_crit_edge, %entry.sw.bb17_crit_edge818
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rsp) #7
  %30 = getelementptr inbounds %struct.ipmi_recv, ptr %rsp, i32 0, i32 1
  %31 = getelementptr inbounds %struct.ipmi_recv, ptr %rsp, i32 0, i32 2
  %32 = getelementptr inbounds %struct.ipmi_recv, ptr %rsp, i32 0, i32 3
  %33 = getelementptr inbounds %struct.ipmi_recv, ptr %rsp, i32 0, i32 4
  %34 = getelementptr inbounds %struct.ipmi_recv, ptr %rsp, i32 0, i32 4, i32 1
  %35 = getelementptr inbounds %struct.ipmi_recv, ptr %rsp, i32 0, i32 4, i32 2
  %36 = getelementptr inbounds %struct.ipmi_recv, ptr %rsp, i32 0, i32 4, i32 3
  %37 = call ptr @memset(ptr %rsp, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i322 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i322, label %sw.bb17.if.then11.i.i338_crit_edge, label %land.lhs.true.i.i325

sw.bb17.if.then11.i.i338_crit_edge:               ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i338

land.lhs.true.i.i325:                             ; preds = %sw.bb17
  %38 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 24, i32 -1226833920) #11
  %asmresult.i.i323 = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i323)
  %cmp.i6.i324 = icmp eq i32 %asmresult.i.i323, 0
  br i1 %cmp.i6.i324, label %if.end.i.i335, label %land.lhs.true.i.i325.if.then11.i.i338_crit_edge, !prof !90

land.lhs.true.i.i325.if.then11.i.i338_crit_edge:  ; preds = %land.lhs.true.i.i325
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i338

if.end.i.i335:                                    ; preds = %land.lhs.true.i.i325
  %call.i.i.i326 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rsp, i32 noundef 24) #7
  %39 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i327 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i327 to ptr
  %cpu_domain.i.i.i.i.i328 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i328) #5, !srcloc !91
  %and.i.i.i.i329 = and i32 %41, -13
  %or.i.i.i.i330 = or i32 %and.i.i.i.i329, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i330) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %call1.i.i.i331 = call i32 @arm_copy_from_user(ptr noundef nonnull %rsp, ptr noundef %2, i32 noundef 24) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i331)
  %tobool4.not.i.i334 = icmp eq i32 %call1.i.i.i331, 0
  br i1 %tobool4.not.i.i334, label %if.else, label %if.end.i.i335.if.then11.i.i338_crit_edge, !prof !90

if.end.i.i335.if.then11.i.i338_crit_edge:         ; preds = %if.end.i.i335
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i338

if.then11.i.i338:                                 ; preds = %if.end.i.i335.if.then11.i.i338_crit_edge, %land.lhs.true.i.i325.if.then11.i.i338_crit_edge, %sw.bb17.if.then11.i.i338_crit_edge
  %res.0.i.i333729 = phi i32 [ %call1.i.i.i331, %if.end.i.i335.if.then11.i.i338_crit_edge ], [ 24, %sw.bb17.if.then11.i.i338_crit_edge ], [ 24, %land.lhs.true.i.i325.if.then11.i.i338_crit_edge ]
  %sub.i.i336 = sub i32 24, %res.0.i.i333729
  %add.ptr.i.i337 = getelementptr i8, ptr %rsp, i32 %sub.i.i336
  %42 = call ptr @memset(ptr %add.ptr.i.i337, i32 0, i32 %res.0.i.i333729)
  br label %if.end22

if.else:                                          ; preds = %if.end.i.i335
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1072142069, i32 %cmd)
  %cmp = icmp eq i32 %cmd, -1072142069
  %recv_mutex.i = getelementptr inbounds %struct.ipmi_file_private, ptr %1, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %recv_mutex.i, i32 noundef 0) #7
  %recv_msg_lock.i = getelementptr inbounds %struct.ipmi_file_private, ptr %1, i32 0, i32 1
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %recv_msg_lock.i) #7
  %recv_msgs.i = getelementptr inbounds %struct.ipmi_file_private, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %recv_msgs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %recv_msgs.i, align 4
  %cmp.i.not.i = icmp eq ptr %44, %recv_msgs.i
  br i1 %cmp.i.not.i, label %if.else.recv_err.i_crit_edge, label %if.end.i

if.else.recv_err.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %recv_err.i

if.end.i:                                         ; preds = %if.else
  %call.i.i20.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %44) #7
  br i1 %call.i.i20.i, label %if.end.i.i21.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i21.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i.i, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i21.i, %if.end.i.list_del.exit.i_crit_edge
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %recv_msg_lock.i, i32 noundef %call3.i) #7
  %addr.i = getelementptr inbounds %struct.ipmi_recv_msg, ptr %44, i32 0, i32 3
  %53 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %addr.i, align 4
  %call11.i = call i32 @ipmi_addr_length(i32 noundef %54) #7
  %55 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %call11.i)
  %cmp13.i = icmp ult i32 %56, %call11.i
  br i1 %cmp13.i, label %list_del.exit.i.do.body78.i_crit_edge, label %if.end16.i

list_del.exit.i.do.body78.i_crit_edge:            ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body78.i

if.end16.i:                                       ; preds = %list_del.exit.i
  %57 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp9.i.i.i = icmp slt i32 %call11.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end16.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.do.body78.i_crit_edge, label %if.then27.i.i.i, !prof !90

land.rhs16.i.i.i.do.body78.i_crit_edge:           ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body78.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %do.body78.i

if.then.i.i.i.i:                                  ; preds = %if.end16.i
  call void @__check_object_size(ptr noundef %addr.i, i32 noundef %call11.i, i1 noundef zeroext true) #7
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #7
  %call.i.i.i715 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i715, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %59 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %58, i32 %call11.i, i32 -1226833920) #11, !srcloc !94
  %asmresult.i.i.i = extractvalue { i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %addr.i, i32 noundef %call11.i) #7
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %58, ptr noundef %addr.i, i32 noundef %call11.i) #7
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %call11.i, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %call11.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool20.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %copy_to_user.exit.i.do.body78.i_crit_edge

copy_to_user.exit.i.do.body78.i_crit_edge:        ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body78.i

if.end22.i:                                       ; preds = %copy_to_user.exit.i
  %60 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call11.i, ptr %31, align 4
  %recv_type.i = getelementptr inbounds %struct.ipmi_recv_msg, ptr %44, i32 0, i32 1
  %61 = ptrtoint ptr %recv_type.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %recv_type.i, align 4
  %63 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %rsp, align 4
  %msgid.i = getelementptr inbounds %struct.ipmi_recv_msg, ptr %44, i32 0, i32 4
  %64 = ptrtoint ptr %msgid.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %msgid.i, align 4
  %66 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %32, align 4
  %msg26.i = getelementptr inbounds %struct.ipmi_recv_msg, ptr %44, i32 0, i32 5
  %67 = ptrtoint ptr %msg26.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %msg26.i, align 4
  %69 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %33, align 4
  %cmd.i = getelementptr inbounds %struct.ipmi_recv_msg, ptr %44, i32 0, i32 5, i32 1
  %70 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %cmd.i, align 1
  %72 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %34, align 1
  %data_len.i = getelementptr inbounds %struct.ipmi_recv_msg, ptr %44, i32 0, i32 5, i32 2
  %73 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %data_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp34.not.i = icmp eq i16 %74, 0
  br i1 %cmp34.not.i, label %if.end22.i.if.end8.i.i.i.i_crit_edge, label %if.then36.i

if.end22.i.if.end8.i.i.i.i_crit_edge:             ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i.i.i

if.then36.i:                                      ; preds = %if.end22.i
  %75 = ptrtoint ptr %35 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %35, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %76, i16 %74)
  %cmp43.i = icmp ult i16 %76, %74
  br i1 %cmp43.i, label %if.then45.i, label %if.then36.i.if.end53.i_crit_edge

if.then36.i.if.end53.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

if.then45.i:                                      ; preds = %if.then36.i
  br i1 %cmp, label %if.then47.i, label %if.then45.i.do.body78.i_crit_edge

if.then45.i.do.body78.i_crit_edge:                ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body78.i

if.then47.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %data_len.i, align 2
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then47.i, %if.then36.i.if.end53.i_crit_edge
  %rv2.0.i = phi i32 [ -90, %if.then47.i ], [ 0, %if.then36.i.if.end53.i_crit_edge ]
  %78 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %36, align 4
  %data56.i = getelementptr inbounds %struct.ipmi_recv_msg, ptr %44, i32 0, i32 5, i32 3
  %80 = ptrtoint ptr %data56.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data56.i, align 4
  %82 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %data_len.i, align 2
  %conv59.i = zext i16 %83 to i32
  call void @__check_object_size(ptr noundef %81, i32 noundef %conv59.i, i1 noundef zeroext true) #7
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #7
  %call.i.i10.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i10.i, label %if.end53.i.copy_to_user.exit19.i_crit_edge, label %if.end.i.i14.i

if.end53.i.copy_to_user.exit19.i_crit_edge:       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit19.i

if.end.i.i14.i:                                   ; preds = %if.end53.i
  %84 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %79, i32 %conv59.i, i32 -1226833920) #11, !srcloc !94
  %asmresult.i.i12.i = extractvalue { i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i12.i)
  %cmp.i6.i13.i = icmp eq i32 %asmresult.i.i12.i, 0
  br i1 %cmp.i6.i13.i, label %if.then2.i.i17.i, label %if.end.i.i14.i.copy_to_user.exit19.i_crit_edge

if.end.i.i14.i.copy_to_user.exit19.i_crit_edge:   ; preds = %if.end.i.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit19.i

if.then2.i.i17.i:                                 ; preds = %if.end.i.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i15.i = call zeroext i1 @__kasan_check_read(ptr noundef %81, i32 noundef %conv59.i) #7
  %call.i12.i.i16.i = call i32 @arm_copy_to_user(ptr noundef %79, ptr noundef %81, i32 noundef %conv59.i) #7
  br label %copy_to_user.exit19.i

copy_to_user.exit19.i:                            ; preds = %if.then2.i.i17.i, %if.end.i.i14.i.copy_to_user.exit19.i_crit_edge, %if.end53.i.copy_to_user.exit19.i_crit_edge
  %n.addr.0.i18.i = phi i32 [ %conv59.i, %if.end53.i.copy_to_user.exit19.i_crit_edge ], [ %call.i12.i.i16.i, %if.then2.i.i17.i ], [ %conv59.i, %if.end.i.i14.i.copy_to_user.exit19.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i18.i)
  %tobool61.not.i = icmp eq i32 %n.addr.0.i18.i, 0
  br i1 %tobool61.not.i, label %if.end63.i, label %copy_to_user.exit19.i.do.body78.i_crit_edge

copy_to_user.exit19.i.do.body78.i_crit_edge:      ; preds = %copy_to_user.exit19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body78.i

if.end63.i:                                       ; preds = %copy_to_user.exit19.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %data_len.i, align 2
  br label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end63.i, %if.end22.i.if.end8.i.i.i.i_crit_edge
  %.sink.i = phi i16 [ %86, %if.end63.i ], [ 0, %if.end22.i.if.end8.i.i.i.i_crit_edge ]
  %rv2.1.i = phi i32 [ %rv2.0.i, %if.end63.i ], [ 0, %if.end22.i.if.end8.i.i.i.i_crit_edge ]
  %87 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %.sink.i, ptr %35, align 2
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #7
  %call.i.i.i23.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i23.i, label %if.end8.i.i.i.i.do.body78.i_crit_edge, label %copy_to_user.exit.i.i

if.end8.i.i.i.i.do.body78.i_crit_edge:            ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body78.i

copy_to_user.exit.i.i:                            ; preds = %if.end8.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %rsp, i32 noundef 24) #7
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %rsp, i32 noundef 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i12.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end75.i, label %copy_to_user.exit.i.i.do.body78.i_crit_edge

copy_to_user.exit.i.i.do.body78.i_crit_edge:      ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body78.i

if.end75.i:                                       ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %recv_mutex.i) #7
  call void @ipmi_free_recv_msg(ptr noundef %44) #7
  br label %if.end22

do.body78.i:                                      ; preds = %copy_to_user.exit.i.i.do.body78.i_crit_edge, %if.end8.i.i.i.i.do.body78.i_crit_edge, %copy_to_user.exit19.i.do.body78.i_crit_edge, %if.then45.i.do.body78.i_crit_edge, %copy_to_user.exit.i.do.body78.i_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.do.body78.i_crit_edge, %list_del.exit.i.do.body78.i_crit_edge
  %rv.0.i = phi i32 [ -22, %list_del.exit.i.do.body78.i_crit_edge ], [ -14, %copy_to_user.exit.i.do.body78.i_crit_edge ], [ -90, %if.then45.i.do.body78.i_crit_edge ], [ -14, %copy_to_user.exit19.i.do.body78.i_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.do.body78.i_crit_edge ], [ -14, %if.end8.i.i.i.i.do.body78.i_crit_edge ], [ -14, %copy_to_user.exit.i.i.do.body78.i_crit_edge ]
  %call86.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %recv_msg_lock.i) #7
  %88 = ptrtoint ptr %recv_msgs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %recv_msgs.i, align 4
  %call.i.i24.i = call zeroext i1 @__list_add_valid(ptr noundef %44, ptr noundef %recv_msgs.i, ptr noundef %89) #7
  br i1 %call.i.i24.i, label %if.end.i.i25.i, label %do.body78.i.recv_err.i_crit_edge

do.body78.i.recv_err.i_crit_edge:                 ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %recv_err.i

if.end.i.i25.i:                                   ; preds = %do.body78.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %44, ptr %prev1.i.i.i, align 4
  %91 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %89, ptr %44, align 4
  %92 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %recv_msgs.i, ptr %prev.i.i, align 4
  %93 = ptrtoint ptr %recv_msgs.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %44, ptr %recv_msgs.i, align 4
  br label %recv_err.i

recv_err.i:                                       ; preds = %if.end.i.i25.i, %do.body78.i.recv_err.i_crit_edge, %if.else.recv_err.i_crit_edge
  %call86.sink.i = phi i32 [ %call3.i, %if.else.recv_err.i_crit_edge ], [ %call86.i, %do.body78.i.recv_err.i_crit_edge ], [ %call86.i, %if.end.i.i25.i ]
  %rv.1.i = phi i32 [ -11, %if.else.recv_err.i_crit_edge ], [ %rv.0.i, %do.body78.i.recv_err.i_crit_edge ], [ %rv.0.i, %if.end.i.i25.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %recv_msg_lock.i, i32 noundef %call86.sink.i) #7
  call void @mutex_unlock(ptr noundef %recv_mutex.i) #7
  br label %if.end22

if.end22:                                         ; preds = %recv_err.i, %if.end75.i, %if.then11.i.i338
  %rv.2 = phi i32 [ %rv.1.i, %recv_err.i ], [ %rv2.1.i, %if.end75.i ], [ -14, %if.then11.i.i338 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rsp) #7
  br label %cleanup231

sw.bb24:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #7
  %94 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -1, ptr %val, align 1, !annotation !95
  %95 = getelementptr inbounds %struct.ipmi_cmdspec, ptr %val, i32 0, i32 1
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -1, ptr %95, align 1, !annotation !95
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i345 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i345, label %sw.bb24.if.then11.i.i361_crit_edge, label %land.lhs.true.i.i348

sw.bb24.if.then11.i.i361_crit_edge:               ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i361

land.lhs.true.i.i348:                             ; preds = %sw.bb24
  %97 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 2, i32 -1226833920) #11, !srcloc !89
  %asmresult.i.i346 = extractvalue { i32, i32 } %97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i346)
  %cmp.i6.i347 = icmp eq i32 %asmresult.i.i346, 0
  br i1 %cmp.i6.i347, label %if.end.i.i358, label %land.lhs.true.i.i348.if.then11.i.i361_crit_edge, !prof !90

land.lhs.true.i.i348.if.then11.i.i361_crit_edge:  ; preds = %land.lhs.true.i.i348
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i361

if.end.i.i358:                                    ; preds = %land.lhs.true.i.i348
  %call.i.i.i349 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 2) #7
  %98 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i350 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i.i.i.i350 to ptr
  %cpu_domain.i.i.i.i.i351 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 4
  %100 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i351) #5, !srcloc !91
  %and.i.i.i.i352 = and i32 %100, -13
  %or.i.i.i.i353 = or i32 %and.i.i.i.i352, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i353) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %call1.i.i.i354 = call i32 @arm_copy_from_user(ptr noundef nonnull %val, ptr noundef %2, i32 noundef 2) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i354)
  %tobool4.not.i.i357 = icmp eq i32 %call1.i.i.i354, 0
  br i1 %tobool4.not.i.i357, label %if.end28, label %if.end.i.i358.if.then11.i.i361_crit_edge, !prof !90

if.end.i.i358.if.then11.i.i361_crit_edge:         ; preds = %if.end.i.i358
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i361

if.then11.i.i361:                                 ; preds = %if.end.i.i358.if.then11.i.i361_crit_edge, %land.lhs.true.i.i348.if.then11.i.i361_crit_edge, %sw.bb24.if.then11.i.i361_crit_edge
  %res.0.i.i356734 = phi i32 [ %call1.i.i.i354, %if.end.i.i358.if.then11.i.i361_crit_edge ], [ 2, %sw.bb24.if.then11.i.i361_crit_edge ], [ 2, %land.lhs.true.i.i348.if.then11.i.i361_crit_edge ]
  %sub.i.i359 = sub i32 2, %res.0.i.i356734
  %add.ptr.i.i360 = getelementptr i8, ptr %val, i32 %sub.i.i359
  %101 = call ptr @memset(ptr %add.ptr.i.i360, i32 0, i32 %res.0.i.i356734)
  br label %cleanup32

if.end28:                                         ; preds = %if.end.i.i358
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  %104 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %val, align 1
  %106 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %95, align 1
  %call31 = call i32 @ipmi_register_for_cmd(ptr noundef %103, i8 noundef zeroext %105, i8 noundef zeroext %107, i32 noundef -1) #7
  br label %cleanup32

cleanup32:                                        ; preds = %if.end28, %if.then11.i.i361
  %rv.3 = phi i32 [ %call31, %if.end28 ], [ -14, %if.then11.i.i361 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #7
  br label %cleanup231

sw.bb33:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val34) #7
  %108 = ptrtoint ptr %val34 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 -1, ptr %val34, align 1, !annotation !95
  %109 = getelementptr inbounds %struct.ipmi_cmdspec, ptr %val34, i32 0, i32 1
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -1, ptr %109, align 1, !annotation !95
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i368 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i368, label %sw.bb33.if.then11.i.i384_crit_edge, label %land.lhs.true.i.i371

sw.bb33.if.then11.i.i384_crit_edge:               ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i384

land.lhs.true.i.i371:                             ; preds = %sw.bb33
  %111 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 2, i32 -1226833920) #11, !srcloc !89
  %asmresult.i.i369 = extractvalue { i32, i32 } %111, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i369)
  %cmp.i6.i370 = icmp eq i32 %asmresult.i.i369, 0
  br i1 %cmp.i6.i370, label %if.end.i.i381, label %land.lhs.true.i.i371.if.then11.i.i384_crit_edge, !prof !90

land.lhs.true.i.i371.if.then11.i.i384_crit_edge:  ; preds = %land.lhs.true.i.i371
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i384

if.end.i.i381:                                    ; preds = %land.lhs.true.i.i371
  %call.i.i.i372 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val34, i32 noundef 2) #7
  %112 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i373 = and i32 %112, -16384
  %113 = inttoptr i32 %and.i.i.i.i.i.i373 to ptr
  %cpu_domain.i.i.i.i.i374 = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 4
  %114 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i374) #5, !srcloc !91
  %and.i.i.i.i375 = and i32 %114, -13
  %or.i.i.i.i376 = or i32 %and.i.i.i.i375, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i376) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %call1.i.i.i377 = call i32 @arm_copy_from_user(ptr noundef nonnull %val34, ptr noundef %2, i32 noundef 2) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %114) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i377)
  %tobool4.not.i.i380 = icmp eq i32 %call1.i.i.i377, 0
  br i1 %tobool4.not.i.i380, label %if.end38, label %if.end.i.i381.if.then11.i.i384_crit_edge, !prof !90

if.end.i.i381.if.then11.i.i384_crit_edge:         ; preds = %if.end.i.i381
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i384

if.then11.i.i384:                                 ; preds = %if.end.i.i381.if.then11.i.i384_crit_edge, %land.lhs.true.i.i371.if.then11.i.i384_crit_edge, %sw.bb33.if.then11.i.i384_crit_edge
  %res.0.i.i379739 = phi i32 [ %call1.i.i.i377, %if.end.i.i381.if.then11.i.i384_crit_edge ], [ 2, %sw.bb33.if.then11.i.i384_crit_edge ], [ 2, %land.lhs.true.i.i371.if.then11.i.i384_crit_edge ]
  %sub.i.i382 = sub i32 2, %res.0.i.i379739
  %add.ptr.i.i383 = getelementptr i8, ptr %val34, i32 %sub.i.i382
  %115 = call ptr @memset(ptr %add.ptr.i.i383, i32 0, i32 %res.0.i.i379739)
  br label %cleanup43

if.end38:                                         ; preds = %if.end.i.i381
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %1, align 4
  %118 = ptrtoint ptr %val34 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %val34, align 1
  %120 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %109, align 1
  %call42 = call i32 @ipmi_unregister_for_cmd(ptr noundef %117, i8 noundef zeroext %119, i8 noundef zeroext %121, i32 noundef -1) #7
  br label %cleanup43

cleanup43:                                        ; preds = %if.end38, %if.then11.i.i384
  %rv.4 = phi i32 [ %call42, %if.end38 ], [ -14, %if.then11.i.i384 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val34) #7
  br label %cleanup231

sw.bb44:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %val45) #7
  %122 = ptrtoint ptr %val45 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -1, ptr %val45, align 4, !annotation !95
  %123 = getelementptr inbounds %struct.ipmi_cmdspec_chans, ptr %val45, i32 0, i32 1
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 -1, ptr %123, align 4, !annotation !95
  %125 = getelementptr inbounds %struct.ipmi_cmdspec_chans, ptr %val45, i32 0, i32 2
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %125, align 4, !annotation !95
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i391 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i391, label %sw.bb44.if.then11.i.i407_crit_edge, label %land.lhs.true.i.i394

sw.bb44.if.then11.i.i407_crit_edge:               ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i407

land.lhs.true.i.i394:                             ; preds = %sw.bb44
  %127 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 12, i32 -1226833920) #11, !srcloc !89
  %asmresult.i.i392 = extractvalue { i32, i32 } %127, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i392)
  %cmp.i6.i393 = icmp eq i32 %asmresult.i.i392, 0
  br i1 %cmp.i6.i393, label %if.end.i.i404, label %land.lhs.true.i.i394.if.then11.i.i407_crit_edge, !prof !90

land.lhs.true.i.i394.if.then11.i.i407_crit_edge:  ; preds = %land.lhs.true.i.i394
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i407

if.end.i.i404:                                    ; preds = %land.lhs.true.i.i394
  %call.i.i.i395 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val45, i32 noundef 12) #7
  %128 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i396 = and i32 %128, -16384
  %129 = inttoptr i32 %and.i.i.i.i.i.i396 to ptr
  %cpu_domain.i.i.i.i.i397 = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 4
  %130 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i397) #5, !srcloc !91
  %and.i.i.i.i398 = and i32 %130, -13
  %or.i.i.i.i399 = or i32 %and.i.i.i.i398, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i399) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %call1.i.i.i400 = call i32 @arm_copy_from_user(ptr noundef nonnull %val45, ptr noundef %2, i32 noundef 12) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %130) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i400)
  %tobool4.not.i.i403 = icmp eq i32 %call1.i.i.i400, 0
  br i1 %tobool4.not.i.i403, label %if.end49, label %if.end.i.i404.if.then11.i.i407_crit_edge, !prof !90

if.end.i.i404.if.then11.i.i407_crit_edge:         ; preds = %if.end.i.i404
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i407

if.then11.i.i407:                                 ; preds = %if.end.i.i404.if.then11.i.i407_crit_edge, %land.lhs.true.i.i394.if.then11.i.i407_crit_edge, %sw.bb44.if.then11.i.i407_crit_edge
  %res.0.i.i402744 = phi i32 [ %call1.i.i.i400, %if.end.i.i404.if.then11.i.i407_crit_edge ], [ 12, %sw.bb44.if.then11.i.i407_crit_edge ], [ 12, %land.lhs.true.i.i394.if.then11.i.i407_crit_edge ]
  %sub.i.i405 = sub i32 12, %res.0.i.i402744
  %add.ptr.i.i406 = getelementptr i8, ptr %val45, i32 %sub.i.i405
  %131 = call ptr @memset(ptr %add.ptr.i.i406, i32 0, i32 %res.0.i.i402744)
  br label %cleanup55

if.end49:                                         ; preds = %if.end.i.i404
  call void @__sanitizer_cov_trace_pc() #9
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %1, align 4
  %134 = ptrtoint ptr %val45 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %val45, align 4
  %conv = trunc i32 %135 to i8
  %136 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %123, align 4
  %conv53 = trunc i32 %137 to i8
  %138 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %125, align 4
  %call54 = call i32 @ipmi_register_for_cmd(ptr noundef %133, i8 noundef zeroext %conv, i8 noundef zeroext %conv53, i32 noundef %139) #7
  br label %cleanup55

cleanup55:                                        ; preds = %if.end49, %if.then11.i.i407
  %rv.5 = phi i32 [ %call54, %if.end49 ], [ -14, %if.then11.i.i407 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %val45) #7
  br label %cleanup231

sw.bb56:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %val57) #7
  %140 = ptrtoint ptr %val57 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -1, ptr %val57, align 4, !annotation !95
  %141 = getelementptr inbounds %struct.ipmi_cmdspec_chans, ptr %val57, i32 0, i32 1
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -1, ptr %141, align 4, !annotation !95
  %143 = getelementptr inbounds %struct.ipmi_cmdspec_chans, ptr %val57, i32 0, i32 2
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -1, ptr %143, align 4, !annotation !95
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i414 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i414, label %sw.bb56.if.then11.i.i430_crit_edge, label %land.lhs.true.i.i417

sw.bb56.if.then11.i.i430_crit_edge:               ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i430

land.lhs.true.i.i417:                             ; preds = %sw.bb56
  %145 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 12, i32 -1226833920) #11, !srcloc !89
  %asmresult.i.i415 = extractvalue { i32, i32 } %145, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i415)
  %cmp.i6.i416 = icmp eq i32 %asmresult.i.i415, 0
  br i1 %cmp.i6.i416, label %if.end.i.i427, label %land.lhs.true.i.i417.if.then11.i.i430_crit_edge, !prof !90

land.lhs.true.i.i417.if.then11.i.i430_crit_edge:  ; preds = %land.lhs.true.i.i417
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i430

if.end.i.i427:                                    ; preds = %land.lhs.true.i.i417
  %call.i.i.i418 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val57, i32 noundef 12) #7
  %146 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i419 = and i32 %146, -16384
  %147 = inttoptr i32 %and.i.i.i.i.i.i419 to ptr
  %cpu_domain.i.i.i.i.i420 = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 4
  %148 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i420) #5, !srcloc !91
  %and.i.i.i.i421 = and i32 %148, -13
  %or.i.i.i.i422 = or i32 %and.i.i.i.i421, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i422) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %call1.i.i.i423 = call i32 @arm_copy_from_user(ptr noundef nonnull %val57, ptr noundef %2, i32 noundef 12) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %148) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i423)
  %tobool4.not.i.i426 = icmp eq i32 %call1.i.i.i423, 0
  br i1 %tobool4.not.i.i426, label %if.end61, label %if.end.i.i427.if.then11.i.i430_crit_edge, !prof !90

if.end.i.i427.if.then11.i.i430_crit_edge:         ; preds = %if.end.i.i427
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i430

if.then11.i.i430:                                 ; preds = %if.end.i.i427.if.then11.i.i430_crit_edge, %land.lhs.true.i.i417.if.then11.i.i430_crit_edge, %sw.bb56.if.then11.i.i430_crit_edge
  %res.0.i.i425749 = phi i32 [ %call1.i.i.i423, %if.end.i.i427.if.then11.i.i430_crit_edge ], [ 12, %sw.bb56.if.then11.i.i430_crit_edge ], [ 12, %land.lhs.true.i.i417.if.then11.i.i430_crit_edge ]
  %sub.i.i428 = sub i32 12, %res.0.i.i425749
  %add.ptr.i.i429 = getelementptr i8, ptr %val57, i32 %sub.i.i428
  %149 = call ptr @memset(ptr %add.ptr.i.i429, i32 0, i32 %res.0.i.i425749)
  br label %cleanup69

if.end61:                                         ; preds = %if.end.i.i427
  call void @__sanitizer_cov_trace_pc() #9
  %150 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %1, align 4
  %152 = ptrtoint ptr %val57 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %val57, align 4
  %conv64 = trunc i32 %153 to i8
  %154 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %141, align 4
  %conv66 = trunc i32 %155 to i8
  %156 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %143, align 4
  %call68 = call i32 @ipmi_unregister_for_cmd(ptr noundef %151, i8 noundef zeroext %conv64, i8 noundef zeroext %conv66, i32 noundef %157) #7
  br label %cleanup69

cleanup69:                                        ; preds = %if.end61, %if.then11.i.i430
  %rv.6 = phi i32 [ %call68, %if.end61 ], [ -14, %if.then11.i.i430 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %val57) #7
  br label %cleanup231

sw.bb70:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val71) #7
  %158 = ptrtoint ptr %val71 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 -1, ptr %val71, align 4, !annotation !95
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i437 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i437, label %sw.bb70.if.then11.i.i453_crit_edge, label %land.lhs.true.i.i440

sw.bb70.if.then11.i.i453_crit_edge:               ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i453

land.lhs.true.i.i440:                             ; preds = %sw.bb70
  %159 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #11, !srcloc !89
  %asmresult.i.i438 = extractvalue { i32, i32 } %159, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i438)
  %cmp.i6.i439 = icmp eq i32 %asmresult.i.i438, 0
  br i1 %cmp.i6.i439, label %if.end.i.i450, label %land.lhs.true.i.i440.if.then11.i.i453_crit_edge, !prof !90

land.lhs.true.i.i440.if.then11.i.i453_crit_edge:  ; preds = %land.lhs.true.i.i440
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i453

if.end.i.i450:                                    ; preds = %land.lhs.true.i.i440
  %call.i.i.i441 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val71, i32 noundef 4) #7
  %160 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i442 = and i32 %160, -16384
  %161 = inttoptr i32 %and.i.i.i.i.i.i442 to ptr
  %cpu_domain.i.i.i.i.i443 = getelementptr inbounds %struct.thread_info, ptr %161, i32 0, i32 4
  %162 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i443) #5, !srcloc !91
  %and.i.i.i.i444 = and i32 %162, -13
  %or.i.i.i.i445 = or i32 %and.i.i.i.i444, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i445) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %call1.i.i.i446 = call i32 @arm_copy_from_user(ptr noundef nonnull %val71, ptr noundef %2, i32 noundef 4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %162) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i446)
  %tobool4.not.i.i449 = icmp eq i32 %call1.i.i.i446, 0
  br i1 %tobool4.not.i.i449, label %if.end75, label %if.end.i.i450.if.then11.i.i453_crit_edge, !prof !90

if.end.i.i450.if.then11.i.i453_crit_edge:         ; preds = %if.end.i.i450
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i453

if.then11.i.i453:                                 ; preds = %if.end.i.i450.if.then11.i.i453_crit_edge, %land.lhs.true.i.i440.if.then11.i.i453_crit_edge, %sw.bb70.if.then11.i.i453_crit_edge
  %res.0.i.i448754 = phi i32 [ %call1.i.i.i446, %if.end.i.i450.if.then11.i.i453_crit_edge ], [ 4, %sw.bb70.if.then11.i.i453_crit_edge ], [ 4, %land.lhs.true.i.i440.if.then11.i.i453_crit_edge ]
  %sub.i.i451 = sub i32 4, %res.0.i.i448754
  %add.ptr.i.i452 = getelementptr i8, ptr %val71, i32 %sub.i.i451
  %163 = call ptr @memset(ptr %add.ptr.i.i452, i32 0, i32 %res.0.i.i448754)
  br label %cleanup79

if.end75:                                         ; preds = %if.end.i.i450
  call void @__sanitizer_cov_trace_pc() #9
  %164 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %1, align 4
  %166 = ptrtoint ptr %val71 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %val71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool77 = icmp ne i32 %167, 0
  %call78 = call i32 @ipmi_set_gets_events(ptr noundef %165, i1 noundef zeroext %tobool77) #7
  br label %cleanup79

cleanup79:                                        ; preds = %if.end75, %if.then11.i.i453
  %rv.7 = phi i32 [ %call78, %if.end75 ], [ -14, %if.then11.i.i453 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val71) #7
  br label %cleanup231

sw.bb80:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val81) #7
  %168 = ptrtoint ptr %val81 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 -1, ptr %val81, align 4, !annotation !95
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i460 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i460, label %sw.bb80.if.then11.i.i476_crit_edge, label %land.lhs.true.i.i463

sw.bb80.if.then11.i.i476_crit_edge:               ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i476

land.lhs.true.i.i463:                             ; preds = %sw.bb80
  %169 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #11, !srcloc !89
  %asmresult.i.i461 = extractvalue { i32, i32 } %169, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i461)
  %cmp.i6.i462 = icmp eq i32 %asmresult.i.i461, 0
  br i1 %cmp.i6.i462, label %if.end.i.i473, label %land.lhs.true.i.i463.if.then11.i.i476_crit_edge, !prof !90

land.lhs.true.i.i463.if.then11.i.i476_crit_edge:  ; preds = %land.lhs.true.i.i463
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i476

if.end.i.i473:                                    ; preds = %land.lhs.true.i.i463
  %call.i.i.i464 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val81, i32 noundef 4) #7
  %170 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i465 = and i32 %170, -16384
  %171 = inttoptr i32 %and.i.i.i.i.i.i465 to ptr
  %cpu_domain.i.i.i.i.i466 = getelementptr inbounds %struct.thread_info, ptr %171, i32 0, i32 4
  %172 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i466) #5, !srcloc !91
  %and.i.i.i.i467 = and i32 %172, -13
  %or.i.i.i.i468 = or i32 %and.i.i.i.i467, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i468) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %call1.i.i.i469 = call i32 @arm_copy_from_user(ptr noundef nonnull %val81, ptr noundef %2, i32 noundef 4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %172) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i469)
  %tobool4.not.i.i472 = icmp eq i32 %call1.i.i.i469, 0
  br i1 %tobool4.not.i.i472, label %if.end85, label %if.end.i.i473.if.then11.i.i476_crit_edge, !prof !90

if.end.i.i473.if.then11.i.i476_crit_edge:         ; preds = %if.end.i.i473
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i476

if.then11.i.i476:                                 ; preds = %if.end.i.i473.if.then11.i.i476_crit_edge, %land.lhs.true.i.i463.if.then11.i.i476_crit_edge, %sw.bb80.if.then11.i.i476_crit_edge
  %res.0.i.i471759 = phi i32 [ %call1.i.i.i469, %if.end.i.i473.if.then11.i.i476_crit_edge ], [ 4, %sw.bb80.if.then11.i.i476_crit_edge ], [ 4, %land.lhs.true.i.i463.if.then11.i.i476_crit_edge ]
  %sub.i.i474 = sub i32 4, %res.0.i.i471759
  %add.ptr.i.i475 = getelementptr i8, ptr %val81, i32 %sub.i.i474
  %173 = call ptr @memset(ptr %add.ptr.i.i475, i32 0, i32 %res.0.i.i471759)
  br label %cleanup89

if.end85:                                         ; preds = %if.end.i.i473
  call void @__sanitizer_cov_trace_pc() #9
  %174 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %1, align 4
  %176 = ptrtoint ptr %val81 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %val81, align 4
  %conv87 = trunc i32 %177 to i8
  %call88 = call i32 @ipmi_set_my_address(ptr noundef %175, i32 noundef 0, i8 noundef zeroext %conv87) #7
  br label %cleanup89

cleanup89:                                        ; preds = %if.end85, %if.then11.i.i476
  %rv.8 = phi i32 [ %call88, %if.end85 ], [ -14, %if.then11.i.i476 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val81) #7
  br label %cleanup231

sw.bb90:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val91) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rval) #7
  %178 = ptrtoint ptr %rval to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 -1, ptr %rval, align 1, !annotation !95
  %179 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %1, align 4
  %call93 = call i32 @ipmi_get_my_address(ptr noundef %180, i32 noundef 0, ptr noundef nonnull %rval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %sw.bb90.cleanup102_crit_edge

sw.bb90.cleanup102_crit_edge:                     ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup102

if.end96:                                         ; preds = %sw.bb90
  %181 = ptrtoint ptr %rval to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %rval, align 1
  %conv97 = zext i8 %182 to i32
  %183 = ptrtoint ptr %val91 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %conv97, ptr %val91, align 4
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #7
  %call.i.i483 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i483, label %if.end96.cleanup102_crit_edge, label %if.end.i.i486

if.end96.cleanup102_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup102

if.end.i.i486:                                    ; preds = %if.end96
  %184 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #11, !srcloc !94
  %asmresult.i.i484 = extractvalue { i32, i32 } %184, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i484)
  %cmp.i6.i485 = icmp eq i32 %asmresult.i.i484, 0
  br i1 %cmp.i6.i485, label %copy_to_user.exit, label %if.end.i.i486.cleanup102_crit_edge

if.end.i.i486.cleanup102_crit_edge:               ; preds = %if.end.i.i486
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup102

copy_to_user.exit:                                ; preds = %if.end.i.i486
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i487 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val91, i32 noundef 4) #7
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %val91, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool99.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool99.not, i32 0, i32 -14
  br label %cleanup102

cleanup102:                                       ; preds = %copy_to_user.exit, %if.end.i.i486.cleanup102_crit_edge, %if.end96.cleanup102_crit_edge, %sw.bb90.cleanup102_crit_edge
  %rv.9 = phi i32 [ %call93, %sw.bb90.cleanup102_crit_edge ], [ -14, %if.end96.cleanup102_crit_edge ], [ -14, %if.end.i.i486.cleanup102_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rval) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val91) #7
  br label %cleanup231

sw.bb104:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val105) #7
  %185 = ptrtoint ptr %val105 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 -1, ptr %val105, align 4, !annotation !95
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i493 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i493, label %sw.bb104.if.then11.i.i509_crit_edge, label %land.lhs.true.i.i496

sw.bb104.if.then11.i.i509_crit_edge:              ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i509

land.lhs.true.i.i496:                             ; preds = %sw.bb104
  %186 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #11, !srcloc !89
  %asmresult.i.i494 = extractvalue { i32, i32 } %186, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i494)
  %cmp.i6.i495 = icmp eq i32 %asmresult.i.i494, 0
  br i1 %cmp.i6.i495, label %if.end.i.i506, label %land.lhs.true.i.i496.if.then11.i.i509_crit_edge, !prof !90

land.lhs.true.i.i496.if.then11.i.i509_crit_edge:  ; preds = %land.lhs.true.i.i496
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i509

if.end.i.i506:                                    ; preds = %land.lhs.true.i.i496
  %call.i.i.i497 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val105, i32 noundef 4) #7
  %187 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i498 = and i32 %187, -16384
  %188 = inttoptr i32 %and.i.i.i.i.i.i498 to ptr
  %cpu_domain.i.i.i.i.i499 = getelementptr inbounds %struct.thread_info, ptr %188, i32 0, i32 4
  %189 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i499) #5, !srcloc !91
  %and.i.i.i.i500 = and i32 %189, -13
  %or.i.i.i.i501 = or i32 %and.i.i.i.i500, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i501) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %call1.i.i.i502 = call i32 @arm_copy_from_user(ptr noundef nonnull %val105, ptr noundef %2, i32 noundef 4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %189) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i502)
  %tobool4.not.i.i505 = icmp eq i32 %call1.i.i.i502, 0
  br i1 %tobool4.not.i.i505, label %if.end109, label %if.end.i.i506.if.then11.i.i509_crit_edge, !prof !90

if.end.i.i506.if.then11.i.i509_crit_edge:         ; preds = %if.end.i.i506
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i509

if.then11.i.i509:                                 ; preds = %if.end.i.i506.if.then11.i.i509_crit_edge, %land.lhs.true.i.i496.if.then11.i.i509_crit_edge, %sw.bb104.if.then11.i.i509_crit_edge
  %res.0.i.i504766 = phi i32 [ %call1.i.i.i502, %if.end.i.i506.if.then11.i.i509_crit_edge ], [ 4, %sw.bb104.if.then11.i.i509_crit_edge ], [ 4, %land.lhs.true.i.i496.if.then11.i.i509_crit_edge ]
  %sub.i.i507 = sub i32 4, %res.0.i.i504766
  %add.ptr.i.i508 = getelementptr i8, ptr %val105, i32 %sub.i.i507
  %190 = call ptr @memset(ptr %add.ptr.i.i508, i32 0, i32 %res.0.i.i504766)
  br label %cleanup113

if.end109:                                        ; preds = %if.end.i.i506
  call void @__sanitizer_cov_trace_pc() #9
  %191 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %1, align 4
  %193 = ptrtoint ptr %val105 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %val105, align 4
  %conv111 = trunc i32 %194 to i8
  %call112 = call i32 @ipmi_set_my_LUN(ptr noundef %192, i32 noundef 0, i8 noundef zeroext %conv111) #7
  br label %cleanup113

cleanup113:                                       ; preds = %if.end109, %if.then11.i.i509
  %rv.10 = phi i32 [ %call112, %if.end109 ], [ -14, %if.then11.i.i509 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val105) #7
  br label %cleanup231

sw.bb114:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val115) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rval116) #7
  %195 = ptrtoint ptr %rval116 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 -1, ptr %rval116, align 1, !annotation !95
  %196 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %1, align 4
  %call118 = call i32 @ipmi_get_my_LUN(ptr noundef %197, i32 noundef 0, ptr noundef nonnull %rval116) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %sw.bb114.cleanup127_crit_edge

sw.bb114.cleanup127_crit_edge:                    ; preds = %sw.bb114
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

if.end121:                                        ; preds = %sw.bb114
  %198 = ptrtoint ptr %rval116 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %rval116, align 1
  %conv122 = zext i8 %199 to i32
  %200 = ptrtoint ptr %val115 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %conv122, ptr %val115, align 4
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #7
  %call.i.i516 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i516, label %if.end121.cleanup127_crit_edge, label %if.end.i.i519

if.end121.cleanup127_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

if.end.i.i519:                                    ; preds = %if.end121
  %201 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #11, !srcloc !94
  %asmresult.i.i517 = extractvalue { i32, i32 } %201, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i517)
  %cmp.i6.i518 = icmp eq i32 %asmresult.i.i517, 0
  br i1 %cmp.i6.i518, label %copy_to_user.exit524, label %if.end.i.i519.cleanup127_crit_edge

if.end.i.i519.cleanup127_crit_edge:               ; preds = %if.end.i.i519
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup127

copy_to_user.exit524:                             ; preds = %if.end.i.i519
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i520 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val115, i32 noundef 4) #7
  %call.i12.i.i521 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %val115, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i521)
  %tobool124.not = icmp eq i32 %call.i12.i.i521, 0
  %spec.select813 = select i1 %tobool124.not, i32 0, i32 -14
  br label %cleanup127

cleanup127:                                       ; preds = %copy_to_user.exit524, %if.end.i.i519.cleanup127_crit_edge, %if.end121.cleanup127_crit_edge, %sw.bb114.cleanup127_crit_edge
  %rv.11 = phi i32 [ %call118, %sw.bb114.cleanup127_crit_edge ], [ -14, %if.end121.cleanup127_crit_edge ], [ -14, %if.end.i.i519.cleanup127_crit_edge ], [ %spec.select813, %copy_to_user.exit524 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rval116) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val115) #7
  br label %cleanup231

sw.bb129:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val130) #7
  %202 = ptrtoint ptr %val130 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 -1, ptr %val130, align 4, !annotation !95
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i529 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i529, label %sw.bb129.if.then11.i.i545_crit_edge, label %land.lhs.true.i.i532

sw.bb129.if.then11.i.i545_crit_edge:              ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i545

land.lhs.true.i.i532:                             ; preds = %sw.bb129
  %203 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #11, !srcloc !89
  %asmresult.i.i530 = extractvalue { i32, i32 } %203, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i530)
  %cmp.i6.i531 = icmp eq i32 %asmresult.i.i530, 0
  br i1 %cmp.i6.i531, label %if.end.i.i542, label %land.lhs.true.i.i532.if.then11.i.i545_crit_edge, !prof !90

land.lhs.true.i.i532.if.then11.i.i545_crit_edge:  ; preds = %land.lhs.true.i.i532
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i545

if.end.i.i542:                                    ; preds = %land.lhs.true.i.i532
  %call.i.i.i533 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val130, i32 noundef 4) #7
  %204 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i534 = and i32 %204, -16384
  %205 = inttoptr i32 %and.i.i.i.i.i.i534 to ptr
  %cpu_domain.i.i.i.i.i535 = getelementptr inbounds %struct.thread_info, ptr %205, i32 0, i32 4
  %206 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i535) #5, !srcloc !91
  %and.i.i.i.i536 = and i32 %206, -13
  %or.i.i.i.i537 = or i32 %and.i.i.i.i536, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i537) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %call1.i.i.i538 = call i32 @arm_copy_from_user(ptr noundef nonnull %val130, ptr noundef %2, i32 noundef 4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %206) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i538)
  %tobool4.not.i.i541 = icmp eq i32 %call1.i.i.i538, 0
  br i1 %tobool4.not.i.i541, label %cleanup138.thread, label %if.end.i.i542.if.then11.i.i545_crit_edge, !prof !90

if.end.i.i542.if.then11.i.i545_crit_edge:         ; preds = %if.end.i.i542
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i545

if.then11.i.i545:                                 ; preds = %if.end.i.i542.if.then11.i.i545_crit_edge, %land.lhs.true.i.i532.if.then11.i.i545_crit_edge, %sw.bb129.if.then11.i.i545_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val130) #7
  br label %cleanup231

cleanup138.thread:                                ; preds = %if.end.i.i542
  call void @__sanitizer_cov_trace_pc() #9
  %207 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %1, align 4
  %209 = ptrtoint ptr %val130 to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %val130, align 4
  %conv136 = zext i16 %210 to i32
  %value = getelementptr inbounds %struct.ipmi_channel_lun_address_set, ptr %val130, i32 0, i32 1
  %211 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %value, align 2
  %call137 = call i32 @ipmi_set_my_address(ptr noundef %208, i32 noundef %conv136, i8 noundef zeroext %212) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val130) #7
  br label %cleanup231

sw.bb139:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val140) #7
  %213 = ptrtoint ptr %val140 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 -1, ptr %val140, align 4, !annotation !95
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i552 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i552, label %sw.bb139.if.then11.i.i568_crit_edge, label %land.lhs.true.i.i555

sw.bb139.if.then11.i.i568_crit_edge:              ; preds = %sw.bb139
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i568

land.lhs.true.i.i555:                             ; preds = %sw.bb139
  %214 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #11
  %asmresult.i.i553 = extractvalue { i32, i32 } %214, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i553)
  %cmp.i6.i554 = icmp eq i32 %asmresult.i.i553, 0
  br i1 %cmp.i6.i554, label %if.end.i.i565, label %land.lhs.true.i.i555.if.then11.i.i568_crit_edge, !prof !90

land.lhs.true.i.i555.if.then11.i.i568_crit_edge:  ; preds = %land.lhs.true.i.i555
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i568

if.end.i.i565:                                    ; preds = %land.lhs.true.i.i555
  %call.i.i.i556 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val140, i32 noundef 4) #7
  %215 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i557 = and i32 %215, -16384
  %216 = inttoptr i32 %and.i.i.i.i.i.i557 to ptr
  %cpu_domain.i.i.i.i.i558 = getelementptr inbounds %struct.thread_info, ptr %216, i32 0, i32 4
  %217 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i558) #5, !srcloc !91
  %and.i.i.i.i559 = and i32 %217, -13
  %or.i.i.i.i560 = or i32 %and.i.i.i.i559, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i560) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %call1.i.i.i561 = call i32 @arm_copy_from_user(ptr noundef nonnull %val140, ptr noundef %2, i32 noundef 4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %217) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i561)
  %tobool4.not.i.i564 = icmp eq i32 %call1.i.i.i561, 0
  br i1 %tobool4.not.i.i564, label %if.end144, label %if.end.i.i565.if.then11.i.i568_crit_edge, !prof !90

if.end.i.i565.if.then11.i.i568_crit_edge:         ; preds = %if.end.i.i565
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i568

if.then11.i.i568:                                 ; preds = %if.end.i.i565.if.then11.i.i568_crit_edge, %land.lhs.true.i.i555.if.then11.i.i568_crit_edge, %sw.bb139.if.then11.i.i568_crit_edge
  %res.0.i.i563782 = phi i32 [ %call1.i.i.i561, %if.end.i.i565.if.then11.i.i568_crit_edge ], [ 4, %sw.bb139.if.then11.i.i568_crit_edge ], [ 4, %land.lhs.true.i.i555.if.then11.i.i568_crit_edge ]
  %sub.i.i566 = sub i32 4, %res.0.i.i563782
  %add.ptr.i.i567 = getelementptr i8, ptr %val140, i32 %sub.i.i566
  %218 = call ptr @memset(ptr %add.ptr.i.i567, i32 0, i32 %res.0.i.i563782)
  br label %cleanup157

if.end144:                                        ; preds = %if.end.i.i565
  %219 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %1, align 4
  %221 = ptrtoint ptr %val140 to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %val140, align 4
  %conv147 = zext i16 %222 to i32
  %value148 = getelementptr inbounds %struct.ipmi_channel_lun_address_set, ptr %val140, i32 0, i32 1
  %call149 = call i32 @ipmi_get_my_address(ptr noundef %220, i32 noundef %conv147, ptr noundef %value148) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end8.i.i574, label %if.end144.cleanup157_crit_edge

if.end144.cleanup157_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup157

if.end8.i.i574:                                   ; preds = %if.end144
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #7
  %call.i.i575 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i575, label %if.end8.i.i574.cleanup157_crit_edge, label %copy_to_user.exit583

if.end8.i.i574.cleanup157_crit_edge:              ; preds = %if.end8.i.i574
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup157

copy_to_user.exit583:                             ; preds = %if.end8.i.i574
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i579 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val140, i32 noundef 4) #7
  %call.i12.i.i580 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %val140, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i580)
  %tobool154.not = icmp eq i32 %call.i12.i.i580, 0
  %spec.select814 = select i1 %tobool154.not, i32 0, i32 -14
  br label %cleanup157

cleanup157:                                       ; preds = %copy_to_user.exit583, %if.end8.i.i574.cleanup157_crit_edge, %if.end144.cleanup157_crit_edge, %if.then11.i.i568
  %rv.13 = phi i32 [ %call149, %if.end144.cleanup157_crit_edge ], [ -14, %if.then11.i.i568 ], [ -14, %if.end8.i.i574.cleanup157_crit_edge ], [ %spec.select814, %copy_to_user.exit583 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val140) #7
  br label %cleanup231

sw.bb158:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val159) #7
  %223 = ptrtoint ptr %val159 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 -1, ptr %val159, align 4, !annotation !95
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i588 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i588, label %sw.bb158.if.then11.i.i604_crit_edge, label %land.lhs.true.i.i591

sw.bb158.if.then11.i.i604_crit_edge:              ; preds = %sw.bb158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i604

land.lhs.true.i.i591:                             ; preds = %sw.bb158
  %224 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #11, !srcloc !89
  %asmresult.i.i589 = extractvalue { i32, i32 } %224, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i589)
  %cmp.i6.i590 = icmp eq i32 %asmresult.i.i589, 0
  br i1 %cmp.i6.i590, label %if.end.i.i601, label %land.lhs.true.i.i591.if.then11.i.i604_crit_edge, !prof !90

land.lhs.true.i.i591.if.then11.i.i604_crit_edge:  ; preds = %land.lhs.true.i.i591
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i604

if.end.i.i601:                                    ; preds = %land.lhs.true.i.i591
  %call.i.i.i592 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val159, i32 noundef 4) #7
  %225 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i593 = and i32 %225, -16384
  %226 = inttoptr i32 %and.i.i.i.i.i.i593 to ptr
  %cpu_domain.i.i.i.i.i594 = getelementptr inbounds %struct.thread_info, ptr %226, i32 0, i32 4
  %227 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i594) #5, !srcloc !91
  %and.i.i.i.i595 = and i32 %227, -13
  %or.i.i.i.i596 = or i32 %and.i.i.i.i595, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i596) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %call1.i.i.i597 = call i32 @arm_copy_from_user(ptr noundef nonnull %val159, ptr noundef %2, i32 noundef 4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %227) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i597)
  %tobool4.not.i.i600 = icmp eq i32 %call1.i.i.i597, 0
  br i1 %tobool4.not.i.i600, label %if.end163, label %if.end.i.i601.if.then11.i.i604_crit_edge, !prof !90

if.end.i.i601.if.then11.i.i604_crit_edge:         ; preds = %if.end.i.i601
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i604

if.then11.i.i604:                                 ; preds = %if.end.i.i601.if.then11.i.i604_crit_edge, %land.lhs.true.i.i591.if.then11.i.i604_crit_edge, %sw.bb158.if.then11.i.i604_crit_edge
  %res.0.i.i599789 = phi i32 [ %call1.i.i.i597, %if.end.i.i601.if.then11.i.i604_crit_edge ], [ 4, %sw.bb158.if.then11.i.i604_crit_edge ], [ 4, %land.lhs.true.i.i591.if.then11.i.i604_crit_edge ]
  %sub.i.i602 = sub i32 4, %res.0.i.i599789
  %add.ptr.i.i603 = getelementptr i8, ptr %val159, i32 %sub.i.i602
  %228 = call ptr @memset(ptr %add.ptr.i.i603, i32 0, i32 %res.0.i.i599789)
  br label %cleanup169

if.end163:                                        ; preds = %if.end.i.i601
  call void @__sanitizer_cov_trace_pc() #9
  %229 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %1, align 4
  %231 = ptrtoint ptr %val159 to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %val159, align 4
  %conv166 = zext i16 %232 to i32
  %value167 = getelementptr inbounds %struct.ipmi_channel_lun_address_set, ptr %val159, i32 0, i32 1
  %233 = ptrtoint ptr %value167 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %value167, align 2
  %call168 = call i32 @ipmi_set_my_LUN(ptr noundef %230, i32 noundef %conv166, i8 noundef zeroext %234) #7
  br label %cleanup169

cleanup169:                                       ; preds = %if.end163, %if.then11.i.i604
  %rv.14 = phi i32 [ %call168, %if.end163 ], [ -14, %if.then11.i.i604 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val159) #7
  br label %cleanup231

sw.bb170:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val171) #7
  %235 = ptrtoint ptr %val171 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 -1, ptr %val171, align 4, !annotation !95
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i611 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i611, label %sw.bb170.if.then11.i.i627_crit_edge, label %land.lhs.true.i.i614

sw.bb170.if.then11.i.i627_crit_edge:              ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i627

land.lhs.true.i.i614:                             ; preds = %sw.bb170
  %236 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #11
  %asmresult.i.i612 = extractvalue { i32, i32 } %236, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i612)
  %cmp.i6.i613 = icmp eq i32 %asmresult.i.i612, 0
  br i1 %cmp.i6.i613, label %if.end.i.i624, label %land.lhs.true.i.i614.if.then11.i.i627_crit_edge, !prof !90

land.lhs.true.i.i614.if.then11.i.i627_crit_edge:  ; preds = %land.lhs.true.i.i614
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i627

if.end.i.i624:                                    ; preds = %land.lhs.true.i.i614
  %call.i.i.i615 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val171, i32 noundef 4) #7
  %237 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i616 = and i32 %237, -16384
  %238 = inttoptr i32 %and.i.i.i.i.i.i616 to ptr
  %cpu_domain.i.i.i.i.i617 = getelementptr inbounds %struct.thread_info, ptr %238, i32 0, i32 4
  %239 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i617) #5, !srcloc !91
  %and.i.i.i.i618 = and i32 %239, -13
  %or.i.i.i.i619 = or i32 %and.i.i.i.i618, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i619) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %call1.i.i.i620 = call i32 @arm_copy_from_user(ptr noundef nonnull %val171, ptr noundef %2, i32 noundef 4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %239) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i620)
  %tobool4.not.i.i623 = icmp eq i32 %call1.i.i.i620, 0
  br i1 %tobool4.not.i.i623, label %if.end175, label %if.end.i.i624.if.then11.i.i627_crit_edge, !prof !90

if.end.i.i624.if.then11.i.i627_crit_edge:         ; preds = %if.end.i.i624
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i627

if.then11.i.i627:                                 ; preds = %if.end.i.i624.if.then11.i.i627_crit_edge, %land.lhs.true.i.i614.if.then11.i.i627_crit_edge, %sw.bb170.if.then11.i.i627_crit_edge
  %res.0.i.i622794 = phi i32 [ %call1.i.i.i620, %if.end.i.i624.if.then11.i.i627_crit_edge ], [ 4, %sw.bb170.if.then11.i.i627_crit_edge ], [ 4, %land.lhs.true.i.i614.if.then11.i.i627_crit_edge ]
  %sub.i.i625 = sub i32 4, %res.0.i.i622794
  %add.ptr.i.i626 = getelementptr i8, ptr %val171, i32 %sub.i.i625
  %240 = call ptr @memset(ptr %add.ptr.i.i626, i32 0, i32 %res.0.i.i622794)
  br label %cleanup188

if.end175:                                        ; preds = %if.end.i.i624
  %241 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %1, align 4
  %243 = ptrtoint ptr %val171 to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %val171, align 4
  %conv178 = zext i16 %244 to i32
  %value179 = getelementptr inbounds %struct.ipmi_channel_lun_address_set, ptr %val171, i32 0, i32 1
  %call180 = call i32 @ipmi_get_my_LUN(ptr noundef %242, i32 noundef %conv178, ptr noundef %value179) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.end8.i.i633, label %if.end175.cleanup188_crit_edge

if.end175.cleanup188_crit_edge:                   ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

if.end8.i.i633:                                   ; preds = %if.end175
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #7
  %call.i.i634 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i634, label %if.end8.i.i633.cleanup188_crit_edge, label %copy_to_user.exit642

if.end8.i.i633.cleanup188_crit_edge:              ; preds = %if.end8.i.i633
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

copy_to_user.exit642:                             ; preds = %if.end8.i.i633
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i638 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val171, i32 noundef 4) #7
  %call.i12.i.i639 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %val171, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i639)
  %tobool185.not = icmp eq i32 %call.i12.i.i639, 0
  %spec.select815 = select i1 %tobool185.not, i32 0, i32 -14
  br label %cleanup188

cleanup188:                                       ; preds = %copy_to_user.exit642, %if.end8.i.i633.cleanup188_crit_edge, %if.end175.cleanup188_crit_edge, %if.then11.i.i627
  %rv.15 = phi i32 [ %call180, %if.end175.cleanup188_crit_edge ], [ -14, %if.then11.i.i627 ], [ -14, %if.end8.i.i633.cleanup188_crit_edge ], [ %spec.select815, %copy_to_user.exit642 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val171) #7
  br label %cleanup231

sw.bb189:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parms) #7
  %245 = ptrtoint ptr %parms to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 -1, ptr %parms, align 4, !annotation !95
  %246 = getelementptr inbounds %struct.ipmi_timing_parms, ptr %parms, i32 0, i32 1
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 -1, ptr %246, align 4, !annotation !95
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i647 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i647, label %sw.bb189.if.then11.i.i663_crit_edge, label %land.lhs.true.i.i650

sw.bb189.if.then11.i.i663_crit_edge:              ; preds = %sw.bb189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i663

land.lhs.true.i.i650:                             ; preds = %sw.bb189
  %248 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #11, !srcloc !89
  %asmresult.i.i648 = extractvalue { i32, i32 } %248, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i648)
  %cmp.i6.i649 = icmp eq i32 %asmresult.i.i648, 0
  br i1 %cmp.i6.i649, label %if.end.i.i660, label %land.lhs.true.i.i650.if.then11.i.i663_crit_edge, !prof !90

land.lhs.true.i.i650.if.then11.i.i663_crit_edge:  ; preds = %land.lhs.true.i.i650
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i663

if.end.i.i660:                                    ; preds = %land.lhs.true.i.i650
  %call.i.i.i651 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %parms, i32 noundef 8) #7
  %249 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i652 = and i32 %249, -16384
  %250 = inttoptr i32 %and.i.i.i.i.i.i652 to ptr
  %cpu_domain.i.i.i.i.i653 = getelementptr inbounds %struct.thread_info, ptr %250, i32 0, i32 4
  %251 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i653) #5, !srcloc !91
  %and.i.i.i.i654 = and i32 %251, -13
  %or.i.i.i.i655 = or i32 %and.i.i.i.i654, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i655) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %call1.i.i.i656 = call i32 @arm_copy_from_user(ptr noundef nonnull %parms, ptr noundef %2, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %251) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i656)
  %tobool4.not.i.i659 = icmp eq i32 %call1.i.i.i656, 0
  br i1 %tobool4.not.i.i659, label %if.end193, label %if.end.i.i660.if.then11.i.i663_crit_edge, !prof !90

if.end.i.i660.if.then11.i.i663_crit_edge:         ; preds = %if.end.i.i660
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i663

if.then11.i.i663:                                 ; preds = %if.end.i.i660.if.then11.i.i663_crit_edge, %land.lhs.true.i.i650.if.then11.i.i663_crit_edge, %sw.bb189.if.then11.i.i663_crit_edge
  %res.0.i.i658801 = phi i32 [ %call1.i.i.i656, %if.end.i.i660.if.then11.i.i663_crit_edge ], [ 8, %sw.bb189.if.then11.i.i663_crit_edge ], [ 8, %land.lhs.true.i.i650.if.then11.i.i663_crit_edge ]
  %sub.i.i661 = sub i32 8, %res.0.i.i658801
  %add.ptr.i.i662 = getelementptr i8, ptr %parms, i32 %sub.i.i661
  %252 = call ptr @memset(ptr %add.ptr.i.i662, i32 0, i32 %res.0.i.i658801)
  br label %cleanup200

if.end193:                                        ; preds = %if.end.i.i660
  call void @__sanitizer_cov_trace_pc() #9
  %recv_mutex194 = getelementptr inbounds %struct.ipmi_file_private, ptr %1, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %recv_mutex194, i32 noundef 0) #7
  %253 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %parms, align 4
  %default_retries196 = getelementptr inbounds %struct.ipmi_file_private, ptr %1, i32 0, i32 6
  %255 = ptrtoint ptr %default_retries196 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %254, ptr %default_retries196, align 4
  %256 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %246, align 4
  %default_retry_time_ms198 = getelementptr inbounds %struct.ipmi_file_private, ptr %1, i32 0, i32 7
  %258 = ptrtoint ptr %default_retry_time_ms198 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %257, ptr %default_retry_time_ms198, align 4
  call void @mutex_unlock(ptr noundef %recv_mutex194) #7
  br label %cleanup200

cleanup200:                                       ; preds = %if.end193, %if.then11.i.i663
  %rv.16 = phi i32 [ 0, %if.end193 ], [ -14, %if.then11.i.i663 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parms) #7
  br label %cleanup231

sw.bb201:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parms202) #7
  %259 = getelementptr inbounds %struct.ipmi_timing_parms, ptr %parms202, i32 0, i32 1
  %recv_mutex203 = getelementptr inbounds %struct.ipmi_file_private, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %recv_mutex203, i32 noundef 0) #7
  %default_retries204 = getelementptr inbounds %struct.ipmi_file_private, ptr %1, i32 0, i32 6
  %260 = ptrtoint ptr %default_retries204 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %default_retries204, align 4
  %262 = ptrtoint ptr %parms202 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %parms202, align 4
  %default_retry_time_ms206 = getelementptr inbounds %struct.ipmi_file_private, ptr %1, i32 0, i32 7
  %263 = ptrtoint ptr %default_retry_time_ms206 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %default_retry_time_ms206, align 4
  %265 = ptrtoint ptr %259 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %264, ptr %259, align 4
  tail call void @mutex_unlock(ptr noundef %recv_mutex203) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #7
  %call.i.i670 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i670, label %sw.bb201.copy_to_user.exit678.thread_crit_edge, label %if.end.i.i673

sw.bb201.copy_to_user.exit678.thread_crit_edge:   ; preds = %sw.bb201
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit678.thread

if.end.i.i673:                                    ; preds = %sw.bb201
  %266 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #11, !srcloc !94
  %asmresult.i.i671 = extractvalue { i32, i32 } %266, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i671)
  %cmp.i6.i672 = icmp eq i32 %asmresult.i.i671, 0
  br i1 %cmp.i6.i672, label %copy_to_user.exit678, label %if.end.i.i673.copy_to_user.exit678.thread_crit_edge

if.end.i.i673.copy_to_user.exit678.thread_crit_edge: ; preds = %if.end.i.i673
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit678.thread

copy_to_user.exit678:                             ; preds = %if.end.i.i673
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i674 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %parms202, i32 noundef 8) #7
  %call.i12.i.i675 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %parms202, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i675)
  %tobool210.not = icmp eq i32 %call.i12.i.i675, 0
  %spec.select816 = select i1 %tobool210.not, i32 0, i32 -14
  br label %copy_to_user.exit678.thread

copy_to_user.exit678.thread:                      ; preds = %copy_to_user.exit678, %if.end.i.i673.copy_to_user.exit678.thread_crit_edge, %sw.bb201.copy_to_user.exit678.thread_crit_edge
  %267 = phi i32 [ -14, %sw.bb201.copy_to_user.exit678.thread_crit_edge ], [ -14, %if.end.i.i673.copy_to_user.exit678.thread_crit_edge ], [ %spec.select816, %copy_to_user.exit678 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parms202) #7
  br label %cleanup231

sw.bb214:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #7
  %268 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %1, align 4
  %call216 = tail call i32 @ipmi_get_maintenance_mode(ptr noundef %269) #7
  %270 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %call216, ptr %mode, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #7
  %call.i.i683 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i683, label %sw.bb214.copy_to_user.exit691.thread_crit_edge, label %if.end.i.i686

sw.bb214.copy_to_user.exit691.thread_crit_edge:   ; preds = %sw.bb214
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit691.thread

if.end.i.i686:                                    ; preds = %sw.bb214
  %271 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #11, !srcloc !94
  %asmresult.i.i684 = extractvalue { i32, i32 } %271, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i684)
  %cmp.i6.i685 = icmp eq i32 %asmresult.i.i684, 0
  br i1 %cmp.i6.i685, label %copy_to_user.exit691, label %if.end.i.i686.copy_to_user.exit691.thread_crit_edge

if.end.i.i686.copy_to_user.exit691.thread_crit_edge: ; preds = %if.end.i.i686
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit691.thread

copy_to_user.exit691:                             ; preds = %if.end.i.i686
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i687 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %mode, i32 noundef 4) #7
  %call.i12.i.i688 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %mode, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i688)
  %tobool218.not = icmp eq i32 %call.i12.i.i688, 0
  %spec.select817 = select i1 %tobool218.not, i32 0, i32 -14
  br label %copy_to_user.exit691.thread

copy_to_user.exit691.thread:                      ; preds = %copy_to_user.exit691, %if.end.i.i686.copy_to_user.exit691.thread_crit_edge, %sw.bb214.copy_to_user.exit691.thread_crit_edge
  %272 = phi i32 [ -14, %sw.bb214.copy_to_user.exit691.thread_crit_edge ], [ -14, %if.end.i.i686.copy_to_user.exit691.thread_crit_edge ], [ %spec.select817, %copy_to_user.exit691 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #7
  br label %cleanup231

sw.bb222:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode223) #7
  %273 = ptrtoint ptr %mode223 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 -1, ptr %mode223, align 4, !annotation !95
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i696 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i696, label %sw.bb222.if.then11.i.i712_crit_edge, label %land.lhs.true.i.i699

sw.bb222.if.then11.i.i712_crit_edge:              ; preds = %sw.bb222
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i712

land.lhs.true.i.i699:                             ; preds = %sw.bb222
  %274 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #11, !srcloc !89
  %asmresult.i.i697 = extractvalue { i32, i32 } %274, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i697)
  %cmp.i6.i698 = icmp eq i32 %asmresult.i.i697, 0
  br i1 %cmp.i6.i698, label %if.end.i.i709, label %land.lhs.true.i.i699.if.then11.i.i712_crit_edge, !prof !90

land.lhs.true.i.i699.if.then11.i.i712_crit_edge:  ; preds = %land.lhs.true.i.i699
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i712

if.end.i.i709:                                    ; preds = %land.lhs.true.i.i699
  %call.i.i.i700 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mode223, i32 noundef 4) #7
  %275 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i701 = and i32 %275, -16384
  %276 = inttoptr i32 %and.i.i.i.i.i.i701 to ptr
  %cpu_domain.i.i.i.i.i702 = getelementptr inbounds %struct.thread_info, ptr %276, i32 0, i32 4
  %277 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i702) #5, !srcloc !91
  %and.i.i.i.i703 = and i32 %277, -13
  %or.i.i.i.i704 = or i32 %and.i.i.i.i703, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i704) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %call1.i.i.i705 = call i32 @arm_copy_from_user(ptr noundef nonnull %mode223, ptr noundef %2, i32 noundef 4) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %277) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i705)
  %tobool4.not.i.i708 = icmp eq i32 %call1.i.i.i705, 0
  br i1 %tobool4.not.i.i708, label %if.end227, label %if.end.i.i709.if.then11.i.i712_crit_edge, !prof !90

if.end.i.i709.if.then11.i.i712_crit_edge:         ; preds = %if.end.i.i709
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i712

if.then11.i.i712:                                 ; preds = %if.end.i.i709.if.then11.i.i712_crit_edge, %land.lhs.true.i.i699.if.then11.i.i712_crit_edge, %sw.bb222.if.then11.i.i712_crit_edge
  %res.0.i.i707810 = phi i32 [ %call1.i.i.i705, %if.end.i.i709.if.then11.i.i712_crit_edge ], [ 4, %sw.bb222.if.then11.i.i712_crit_edge ], [ 4, %land.lhs.true.i.i699.if.then11.i.i712_crit_edge ]
  %sub.i.i710 = sub i32 4, %res.0.i.i707810
  %add.ptr.i.i711 = getelementptr i8, ptr %mode223, i32 %sub.i.i710
  %278 = call ptr @memset(ptr %add.ptr.i.i711, i32 0, i32 %res.0.i.i707810)
  br label %cleanup230

if.end227:                                        ; preds = %if.end.i.i709
  call void @__sanitizer_cov_trace_pc() #9
  %279 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %1, align 4
  %281 = ptrtoint ptr %mode223 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %mode223, align 4
  %call229 = call i32 @ipmi_set_maintenance_mode(ptr noundef %280, i32 noundef %282) #7
  br label %cleanup230

cleanup230:                                       ; preds = %if.end227, %if.then11.i.i712
  %rv.19 = phi i32 [ %call229, %if.end227 ], [ -14, %if.then11.i.i712 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode223) #7
  br label %cleanup231

cleanup231:                                       ; preds = %cleanup230, %copy_to_user.exit691.thread, %copy_to_user.exit678.thread, %cleanup200, %cleanup188, %cleanup169, %cleanup157, %cleanup138.thread, %if.then11.i.i545, %cleanup127, %cleanup113, %cleanup102, %cleanup89, %cleanup79, %cleanup69, %cleanup55, %cleanup43, %cleanup32, %if.end22, %cleanup16, %cleanup, %entry.cleanup231_crit_edge
  %retval.1 = phi i32 [ %call137, %cleanup138.thread ], [ %rv.19, %cleanup230 ], [ %272, %copy_to_user.exit691.thread ], [ %267, %copy_to_user.exit678.thread ], [ %rv.16, %cleanup200 ], [ %rv.15, %cleanup188 ], [ %rv.14, %cleanup169 ], [ %rv.13, %cleanup157 ], [ -14, %if.then11.i.i545 ], [ %rv.11, %cleanup127 ], [ %rv.10, %cleanup113 ], [ %rv.9, %cleanup102 ], [ %rv.8, %cleanup89 ], [ %rv.7, %cleanup79 ], [ %rv.6, %cleanup69 ], [ %rv.5, %cleanup55 ], [ %rv.4, %cleanup43 ], [ %rv.3, %cleanup32 ], [ %rv.2, %if.end22 ], [ %rv.1, %cleanup16 ], [ %rv.0, %cleanup ], [ -25, %entry.cleanup231_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 212) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i = and i32 %1, 1048575
  %call2 = tail call i32 @ipmi_create_user(i32 noundef %and.i, ptr noundef nonnull @ipmi_hndlrs, ptr noundef nonnull %call7.i, ptr noundef nonnull %call7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %private_data, align 4
  %recv_msg_lock = getelementptr inbounds %struct.ipmi_file_private, ptr %call7.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %recv_msg_lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @ipmi_open.__key, i16 noundef signext 3) #7
  %recv_msgs = getelementptr inbounds %struct.ipmi_file_private, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %recv_msgs to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %recv_msgs, ptr %recv_msgs, align 8
  %prev.i = getelementptr inbounds %struct.ipmi_file_private, ptr %call7.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %recv_msgs, ptr %prev.i, align 4
  %wait = getelementptr inbounds %struct.ipmi_file_private, ptr %call7.i, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.22, ptr noundef nonnull @ipmi_open.__key.21) #7
  %fasync_queue = getelementptr inbounds %struct.ipmi_file_private, ptr %call7.i, i32 0, i32 3
  %6 = ptrtoint ptr %fasync_queue to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fasync_queue, align 8
  %recv_mutex = getelementptr inbounds %struct.ipmi_file_private, ptr %call7.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %recv_mutex, ptr noundef nonnull @.str.24, ptr noundef nonnull @ipmi_open.__key.23) #7
  %default_retries = getelementptr inbounds %struct.ipmi_file_private, ptr %call7.i, i32 0, i32 6
  %7 = ptrtoint ptr %default_retries to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %default_retries, align 4
  %default_retry_time_ms = getelementptr inbounds %struct.ipmi_file_private, ptr %call7.i, i32 0, i32 7
  %8 = ptrtoint ptr %default_retry_time_ms to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %default_retry_time_ms, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end5 ], [ %call2, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @ipmi_destroy_user(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %recv_msgs = getelementptr inbounds %struct.ipmi_file_private, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %recv_msgs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %recv_msgs, align 4
  %cmp.not23 = icmp eq ptr %5, %recv_msgs
  br i1 %cmp.not23, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %msg.024 = phi ptr [ %next.0, %for.body.for.body_crit_edge ], [ %5, %if.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %msg.024 to i32
  call void @__asan_load4_noabort(i32 %6)
  %next.0 = load ptr, ptr %msg.024, align 4
  tail call void @ipmi_free_recv_msg(ptr noundef %msg.024) #7
  %cmp.not = icmp eq ptr %next.0, %recv_msgs
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @kfree(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_fasync(i32 noundef %fd, ptr noundef %file, i32 noundef %on) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %fasync_queue = getelementptr inbounds %struct.ipmi_file_private, ptr %1, i32 0, i32 3
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %file, i32 noundef %on, ptr noundef %fasync_queue) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_send_req(ptr noundef %user, ptr nocapture noundef readonly %req, i32 noundef %retries, i32 noundef %retry_time_ms) unnamed_addr #4 align 64 {
entry:
  %addr = alloca %struct.ipmi_addr, align 4
  %msg = alloca %struct.kernel_ipmi_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %addr) #7
  %0 = call ptr @memset(ptr %addr, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg) #7
  %1 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %msg, i32 0, i32 1
  %2 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %msg, i32 0, i32 2
  %3 = getelementptr inbounds %struct.kernel_ipmi_msg, ptr %msg, i32 0, i32 3
  %addr_len = getelementptr inbounds %struct.ipmi_req, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %addr_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %5)
  %cmp = icmp ugt i32 %5, 40
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 4
  call void @__check_object_size(ptr noundef nonnull %addr, i32 noundef %5, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %8 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 %5, i32 -1226833920) #11, !srcloc !89
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !90

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %addr, i32 noundef %5) #7
  %9 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !91
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %addr, ptr noundef %7, i32 noundef %5) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %5, %if.end.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %5, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end4, label %if.then11.i.i, !prof !90

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %5, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %addr, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i
  %msg5 = getelementptr inbounds %struct.ipmi_req, ptr %req, i32 0, i32 3
  %13 = ptrtoint ptr %msg5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %msg5, align 4
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %msg, align 4
  %cmd = getelementptr inbounds %struct.ipmi_req, ptr %req, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cmd, align 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %1, align 1
  %data_len = getelementptr inbounds %struct.ipmi_req, ptr %req, i32 0, i32 3, i32 2
  %19 = ptrtoint ptr %data_len to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %data_len, align 2
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %2, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 272) #12
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i, ptr %3, align 4
  %tobool13.not = icmp eq ptr %call7.i, null
  br i1 %tobool13.not, label %if.end4.cleanup_crit_edge, label %if.end15

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end4
  %24 = ptrtoint ptr %addr_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr_len, align 4
  %call17 = call i32 @ipmi_validate_addr(ptr noundef nonnull %addr, i32 noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end20:                                         ; preds = %if.end15
  %data22 = getelementptr inbounds %struct.ipmi_req, ptr %req, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %data22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data22, align 4
  %cmp23.not = icmp eq ptr %27, null
  br i1 %cmp23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end20
  %28 = ptrtoint ptr %data_len to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %data_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %29)
  %cmp27 = icmp ugt i16 %29, 272
  br i1 %cmp27, label %if.then24.out_crit_edge, label %if.end30

if.then24.out_crit_edge:                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end30:                                         ; preds = %if.then24
  %conv = zext i16 %29 to i32
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  call void @__check_object_size(ptr noundef %31, i32 noundef %conv, i1 noundef zeroext false) #7
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #7
  %call.i.i69 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i69, label %if.end30.if.end.i.i83_crit_edge, label %land.lhs.true.i.i73

if.end30.if.end.i.i83_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i83

land.lhs.true.i.i73:                              ; preds = %if.end30
  %32 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %27, i32 %conv, i32 -1226833920) #11, !srcloc !89
  %asmresult.i.i71 = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i71)
  %cmp.i6.i72 = icmp eq i32 %asmresult.i.i71, 0
  br i1 %cmp.i6.i72, label %if.then.i7.i80, label %land.lhs.true.i.i73.if.end.i.i83_crit_edge, !prof !90

land.lhs.true.i.i73.if.end.i.i83_crit_edge:       ; preds = %land.lhs.true.i.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i83

if.then.i7.i80:                                   ; preds = %land.lhs.true.i.i73
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i74 = call zeroext i1 @__kasan_check_write(ptr noundef %31, i32 noundef %conv) #7
  %33 = call i32 @llvm.read_register.i32(metadata !79) #7
  %and.i.i.i.i.i.i75 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i75 to ptr
  %cpu_domain.i.i.i.i.i76 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 4
  %35 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i76) #5, !srcloc !91
  %and.i.i.i.i77 = and i32 %35, -13
  %or.i.i.i.i78 = or i32 %and.i.i.i.i77, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i78) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %call1.i.i.i79 = call i32 @arm_copy_from_user(ptr noundef %31, ptr noundef nonnull %27, i32 noundef %conv) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #7, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  br label %if.end.i.i83

if.end.i.i83:                                     ; preds = %if.then.i7.i80, %land.lhs.true.i.i73.if.end.i.i83_crit_edge, %if.end30.if.end.i.i83_crit_edge
  %res.0.i.i81 = phi i32 [ %conv, %if.end30.if.end.i.i83_crit_edge ], [ %call1.i.i.i79, %if.then.i7.i80 ], [ %conv, %land.lhs.true.i.i73.if.end.i.i83_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i81)
  %tobool4.not.i.i82 = icmp eq i32 %res.0.i.i81, 0
  br i1 %tobool4.not.i.i82, label %if.end.i.i83.if.end42_crit_edge, label %if.then11.i.i86, !prof !90

if.end.i.i83.if.end42_crit_edge:                  ; preds = %if.end.i.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then11.i.i86:                                  ; preds = %if.end.i.i83
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i84 = sub i32 %conv, %res.0.i.i81
  %add.ptr.i.i85 = getelementptr i8, ptr %31, i32 %sub.i.i84
  %36 = call ptr @memset(ptr %add.ptr.i.i85, i32 0, i32 %res.0.i.i81)
  br label %out

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %2, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.end.i.i83.if.end42_crit_edge
  %msgid = getelementptr inbounds %struct.ipmi_req, ptr %req, i32 0, i32 2
  %38 = ptrtoint ptr %msgid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msgid, align 4
  %call43 = call i32 @ipmi_request_settime(ptr noundef %user, ptr noundef nonnull %addr, i32 noundef %39, ptr noundef nonnull %msg, ptr noundef null, i32 noundef 0, i32 noundef %retries, i32 noundef %retry_time_ms) #7
  br label %out

out:                                              ; preds = %if.end42, %if.then11.i.i86, %if.then24.out_crit_edge, %if.end15.out_crit_edge
  %rv.0 = phi i32 [ %call17, %if.end15.out_crit_edge ], [ %call43, %if.end42 ], [ -90, %if.then24.out_crit_edge ], [ -14, %if.then11.i.i86 ]
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %41) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end4.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.0, %out ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %addr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_register_for_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_unregister_for_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_set_gets_events(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_set_my_address(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_get_my_address(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_set_my_LUN(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_get_my_LUN(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_get_maintenance_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_set_maintenance_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_validate_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_request_settime(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_addr_length(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_free_recv_msg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_create_user(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @file_receive_handler(ptr noundef %msg, ptr noundef %handler_data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_msg_lock = getelementptr inbounds %struct.ipmi_file_private, ptr %handler_data, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %recv_msg_lock) #7
  %recv_msgs = getelementptr inbounds %struct.ipmi_file_private, ptr %handler_data, i32 0, i32 2
  %0 = ptrtoint ptr %recv_msgs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %recv_msgs, align 4
  %cmp.i.not = icmp eq ptr %1, %recv_msgs
  %prev.i = getelementptr inbounds %struct.ipmi_file_private, ptr %handler_data, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %msg, ptr noundef %3, ptr noundef %recv_msgs) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %msg, ptr %prev.i, align 4
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %recv_msgs, ptr %msg, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %msg, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %recv_msg_lock, i32 noundef %call2) #7
  br i1 %cmp.i.not, label %if.then, label %list_add_tail.exit.if.end_crit_edge

list_add_tail.exit.if.end_crit_edge:              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %wait = getelementptr inbounds %struct.ipmi_file_private, ptr %handler_data, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  %fasync_queue = getelementptr inbounds %struct.ipmi_file_private, ptr %handler_data, i32 0, i32 3
  tail call void @kill_fasync(ptr noundef %fasync_queue, i32 noundef 29, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %list_add_tail.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_destroy_user(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmi_new_smi(i32 noundef %if_num, ptr noundef %device) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ipmi_major, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl i32 %0, 20
  %or = or i32 %shl, %if_num
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %call7.i, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @reg_list_mutex, i32 noundef 0) #7
  %3 = load ptr, ptr @ipmi_class, align 4
  %call4 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %3, ptr noundef %device, i32 noundef %or, ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef %if_num) #7
  %link = getelementptr inbounds %struct.ipmi_reg_list, ptr %call7.i, i32 0, i32 1
  %4 = load ptr, ptr @reg_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef nonnull @reg_list, ptr noundef %4) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %link, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %link, align 4
  %prev3.i.i = getelementptr inbounds %struct.ipmi_reg_list, ptr %call7.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @reg_list, ptr %prev3.i.i, align 8
  store volatile ptr %link, ptr @reg_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @reg_list_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipmi_smi_gone(i32 noundef %if_num) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ipmi_major, align 4
  %shl = shl i32 %0, 20
  %or = or i32 %shl, %if_num
  tail call void @mutex_lock_nested(ptr noundef nonnull @reg_list_mutex, i32 noundef 0) #7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @reg_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @reg_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %entry1.0 = getelementptr i8, ptr %.pn, i32 -4
  %2 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entry1.0, align 4
  %cmp3 = icmp eq i32 %3, %or
  br i1 %cmp3, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then:                                          ; preds = %for.body
  %entry1.0.le = getelementptr i8, ptr %.pn, i32 -4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %entry1.0.le) #7
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  %12 = load ptr, ptr @ipmi_class, align 4
  tail call void @device_destroy(ptr noundef %12, i32 noundef %or) #7
  tail call void @mutex_unlock(ptr noundef nonnull @reg_list_mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !23, !25, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !51, !53, !55, !56, !58, !59, !61, !62, !64, !66, !67, !68, !70, !72, !74, !75, !76, !77}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__param_ipmi_major, !1, !"__param_ipmi_major", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 795, i32 1}
!2 = !{ptr @__UNIQUE_ID_ipmi_majortype225, !1, !"__UNIQUE_ID_ipmi_majortype225", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_ipmi_major226, !4, !"__UNIQUE_ID_ipmi_major226", i1 false, i1 false}
!4 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 796, i32 1}
!5 = !{ptr @__initcall__kmod_ipmi_devintf__227_890_init_ipmi_devintf6, !6, !"__initcall__kmod_ipmi_devintf__227_890_init_ipmi_devintf6", i1 false, i1 false}
!6 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 890, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 904, i32 32}
!9 = !{ptr @__exitcall_cleanup_ipmi, !10, !"__exitcall_cleanup_ipmi", i1 false, i1 false}
!10 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 906, i32 1}
!11 = !{ptr @__UNIQUE_ID_file228, !12, !"__UNIQUE_ID_file228", i1 false, i1 false}
!12 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 908, i32 1}
!13 = !{ptr @__UNIQUE_ID_license229, !12, !"__UNIQUE_ID_license229", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_author230, !15, !"__UNIQUE_ID_author230", i1 false, i1 false}
!15 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 909, i32 1}
!16 = !{ptr @__UNIQUE_ID_description231, !17, !"__UNIQUE_ID_description231", i1 false, i1 false}
!17 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 910, i32 1}
!18 = !{ptr @ipmi_major, !19, !"ipmi_major", i1 false, i1 false}
!19 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 794, i32 12}
!20 = !{ptr @ipmi_class, !21, !"ipmi_class", i1 false, i1 false}
!21 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 810, i32 22}
!22 = !{ptr @__param_str_ipmi_major, !1, !"__param_str_ipmi_major", i1 false, i1 false}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 861, i32 2}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @init_ipmi_devintf._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @init_ipmi_devintf._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @init_ipmi_devintf.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 863, i32 15}
!31 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 865, i32 3}
!34 = !{ptr @init_ipmi_devintf._entry.5, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @init_ipmi_devintf._entry_ptr.7, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 872, i32 3}
!38 = !{ptr @init_ipmi_devintf._entry.8, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @init_ipmi_devintf._entry_ptr.10, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 884, i32 3}
!42 = !{ptr @init_ipmi_devintf._entry.11, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @init_ipmi_devintf._entry_ptr.13, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @ipmi_fops, !45, !"ipmi_fops", i1 false, i1 false}
!45 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 779, i32 37}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!53 = !{ptr @ipmi_open.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 108, i32 2}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ipmi_open.__key.21, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 110, i32 2}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ipmi_open.__key.23, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 112, i32 2}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ipmi_hndlrs, !63, !"ipmi_hndlrs", i1 false, i1 false}
!63 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 82, i32 36}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 808, i32 8}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @reg_list_mutex, !65, !"reg_list_mutex", i1 false, i1 false}
!68 = !{ptr @reg_list, !69, !"reg_list", i1 false, i1 false}
!69 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 807, i32 8}
!70 = !{ptr @smi_watcher, !71, !"smi_watcher", i1 false, i1 false}
!71 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 847, i32 32}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 819, i32 3}
!74 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ipmi_new_smi._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @ipmi_new_smi._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/char/ipmi/ipmi_devintf.c", i32 825, i32 47}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 2152426543, i64 2152426568}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{i64 4922098}
!92 = !{i64 4922295}
!93 = !{i64 2152407528}
!94 = !{i64 2152427224, i64 2152427249}
!95 = !{!"auto-init"}
