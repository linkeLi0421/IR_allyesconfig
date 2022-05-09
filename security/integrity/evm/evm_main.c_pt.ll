; ModuleID = '/llk/IR_all_yes/security/integrity/evm/evm_main.c_pt.bc'
source_filename = "../security/integrity/evm/evm_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+evm_verifyxattr\22, \22a\22\09"
module asm "\09.weak\09__crc_evm_verifyxattr\09\09\09\09"
module asm "\09.long\09__crc_evm_verifyxattr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_evm_verifyxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22evm_verifyxattr\22\09\09\09\09\09"
module asm "__kstrtabns_evm_verifyxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+evm_inode_init_security\22, \22a\22\09"
module asm "\09.weak\09__crc_evm_inode_init_security\09\09\09\09"
module asm "\09.long\09__crc_evm_inode_init_security\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_evm_inode_init_security:\09\09\09\09\09"
module asm "\09.asciz \09\22evm_inode_init_security\22\09\09\09\09\09"
module asm "__kstrtabns_evm_inode_init_security:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.xattr_list = type { %struct.list_head, ptr, i8 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.71, %struct.list_head, %struct.list_head, %union.anon.72 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%union.anon.71 = type { %struct.list_head }
%union.anon.72 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.evm_digest = type { %struct.ima_digest_data, [64 x i8] }
%struct.ima_digest_data = type { i8, i8, %union.anon.73, [0 x i8] }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { i8, i8 }
%struct.integrity_iint_cache = type { %struct.rb_node, %struct.mutex, ptr, i64, i32, i32, i32, i24, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.68 = type { ptr }
%struct.evm_ima_xattr_data = type { i8, [0 x i8] }
%struct.signature_v2_hdr = type <{ i8, i8, i8, i32, i16, [0 x i8] }>
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.kuid_t }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.evm_xattr = type { %struct.evm_ima_xattr_data, [20 x i8] }
%struct.xattr = type { ptr, ptr, i32 }

@evm_config_xattrnames = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @evm_config_xattrnames, ptr @evm_config_xattrnames }, [24 x i8] zeroinitializer }, align 32
@__setup_str_evm_set_fixmode = internal constant [5 x i8] c"evm=\00", section ".init.rodata", align 1
@__setup_evm_set_fixmode = internal global %struct.obs_kernel_param { ptr @__setup_str_evm_set_fixmode, ptr @evm_set_fixmode, i32 0 }, section ".init.setup", align 4
@__kstrtab_evm_verifyxattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_evm_verifyxattr = external dso_local constant [0 x i8], align 1
@__ksymtab_evm_verifyxattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @evm_verifyxattr to i32), ptr @__kstrtab_evm_verifyxattr, ptr @__kstrtabns_evm_verifyxattr }, section "___ksymtab_gpl+evm_verifyxattr", align 4
@evm_initialized = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"security.evm\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"appraise_metadata\00", [46 x i8] zeroinitializer }, align 32
@integrity_status_msg = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"evm\00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_evm_inode_init_security = external dso_local constant [0 x i8], align 1
@__kstrtabns_evm_inode_init_security = external dso_local constant [0 x i8], align 1
@__ksymtab_evm_inode_init_security = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @evm_inode_init_security to i32), ptr @__kstrtab_evm_inode_init_security, ptr @__kstrtabns_evm_inode_init_security }, section "___ksymtab_gpl+evm_inode_init_security", align 4
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"/etc/keys/x509_evm.der\00", [41 x i8] zeroinitializer }, align 32
@__initcall__kmod_evm__231_910_init_evm7 = internal global ptr @init_evm, section ".initcall7.init", align 4
@evm_hmac_attrs = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fix\00", [28 x i8] zeroinitializer }, align 32
@evm_fixmode = internal unnamed_addr global i1 false, section ".data..ro_after_init", align 4
@evm_set_fixmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013evm: invalid \22%s\22 mode\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"evm_set_fixmode\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"security/integrity/evm/evm_main.c\00", [62 x i8] zeroinitializer }, align 32
@evm_set_fixmode._entry_ptr = internal global ptr @evm_set_fixmode._entry, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@evm_verify_hmac.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.8, ptr @.str.7, ptr @.str.9, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"evm_verify_hmac\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"digest: (%d) [%*phN]\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"evm: digest: (%d) [%*phN]\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"update_metadata\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pass\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pass_immutable\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fail\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fail_immutable\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no_label\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no_xattrs\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_evm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.7, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016evm: Error registering secfs\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_evm\00", [23 x i8] zeroinitializer }, align 32
@init_evm._entry_ptr = internal global ptr @init_evm._entry, section ".printk_index", align 4
@evm_init_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.7, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016evm: Initialising EVM extended attributes:\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"evm_init_config\00", [16 x i8] zeroinitializer }, align 32
@evm_init_config._entry_ptr = internal global ptr @evm_init_config._entry, section ".printk_index", align 4
@evm_init_config._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.7, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016evm: %s%s\0A\00", [19 x i8] zeroinitializer }, align 32
@evm_init_config._entry_ptr.25 = internal global ptr @evm_init_config._entry.23, section ".printk_index", align 4
@evm_config_default_xattrnames = internal global { [8 x %struct.xattr_list], [32 x i8] } { [8 x %struct.xattr_list] [%struct.xattr_list { %struct.list_head zeroinitializer, ptr @.str.31, i8 1 }, %struct.xattr_list { %struct.list_head zeroinitializer, ptr @.str.32, i8 1 }, %struct.xattr_list { %struct.list_head zeroinitializer, ptr @.str.33, i8 1 }, %struct.xattr_list { %struct.list_head zeroinitializer, ptr @.str.34, i8 1 }, %struct.xattr_list { %struct.list_head zeroinitializer, ptr @.str.35, i8 1 }, %struct.xattr_list { %struct.list_head zeroinitializer, ptr @.str.36, i8 1 }, %struct.xattr_list { %struct.list_head zeroinitializer, ptr @.str.37, i8 1 }, %struct.xattr_list { %struct.list_head zeroinitializer, ptr @.str.38, i8 1 }], [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" (disabled)\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@evm_init_config._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str.7, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016evm: HMAC attrs: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@evm_init_config._entry_ptr.30 = internal global ptr @evm_init_config._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"security.selinux\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"security.SMACK64\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"security.SMACK64EXEC\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"security.SMACK64TRANSMUTE\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"security.SMACK64MMAP\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"security.apparmor\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"security.ima\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"security.capability\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 108, i64 110, i64 118]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967235]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 16914836, i64 1650812274]
@__sancov_gen_cov_switch_values.45 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 5]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 6]
@___asan_gen_.49 = private unnamed_addr constant [22 x i8] c"evm_config_xattrnames\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 79, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"evm_initialized\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 30, i32 5 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 636, i32 25 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 808, i32 29 }
@___asan_gen_.61 = private unnamed_addr constant [21 x i8] c"integrity_status_msg\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 32, i32 27 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 863, i32 20 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 876, i32 50 }
@___asan_gen_.70 = private unnamed_addr constant [15 x i8] c"evm_hmac_attrs\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 36, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 84, i32 19 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 87, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 277, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 579, i32 9 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 33, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 33, i32 10 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 33, i32 28 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 33, i32 36 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 33, i32 54 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 34, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 34, i32 15 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 895, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 99, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [30 x i8] c"evm_config_default_xattrnames\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 38, i32 26 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 101, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 111, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 39, i32 11 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 44, i32 11 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 49, i32 11 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 54, i32 11 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 59, i32 11 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 64, i32 11 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 69, i32 11 }
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [37 x i8] c"../security/integrity/evm/evm_main.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 74, i32 11 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__initcall__kmod_evm__231_910_init_evm7, ptr @__ksymtab_evm_inode_init_security, ptr @__ksymtab_evm_verifyxattr, ptr @__setup_evm_set_fixmode, ptr @evm_init_config._entry, ptr @evm_init_config._entry.23, ptr @evm_init_config._entry.28, ptr @evm_init_config._entry_ptr, ptr @evm_init_config._entry_ptr.25, ptr @evm_init_config._entry_ptr.30, ptr @evm_set_fixmode._entry, ptr @evm_set_fixmode._entry_ptr, ptr @init_evm._entry, ptr @init_evm._entry_ptr, ptr @evm_config_xattrnames, ptr @evm_initialized, ptr @.str, ptr @.str.1, ptr @integrity_status_msg, ptr @.str.2, ptr @.str.3, ptr @evm_hmac_attrs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @evm_config_default_xattrnames, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_config_xattrnames to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_initialized to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_status_msg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_hmac_attrs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_set_fixmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_evm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_init_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_init_config._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_config_default_xattrnames to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evm_init_config._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @evm_set_fixmode(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %str, ptr noundef nonnull dereferenceable(4) @.str.4, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @evm_fixmode, align 4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %str) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @evm_protected_xattr_if_enabled(ptr nocapture noundef readonly %req_xattr_name) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @strlen(ptr noundef %req_xattr_name) #15
  %xattr.035.i = load volatile ptr, ptr @evm_config_xattrnames, align 4
  %cmp.not36.i = icmp eq ptr %xattr.035.i, @evm_config_xattrnames
  br i1 %cmp.not36.i, label %entry.evm_protected_xattr_common.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.evm_protected_xattr_common.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %evm_protected_xattr_common.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %xattr.037.i = phi ptr [ %xattr.0.i, %for.inc.i.for.body.i_crit_edge ], [ %xattr.035.i, %entry.for.body.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.xattr_list, ptr %xattr.037.i, i32 0, i32 1
  %0 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name.i, align 4
  %call3.i = tail call i32 @strlen(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %call.i)
  %cmp4.i = icmp eq i32 %call3.i, %call.i
  br i1 %cmp4.i, label %land.lhs.true5.i, label %for.body.i.if.end10.i_crit_edge

for.body.i.if.end10.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

land.lhs.true5.i:                                 ; preds = %for.body.i
  %call7.i = tail call i32 @strncmp(ptr noundef %req_xattr_name, ptr noundef %1, i32 noundef %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.i, label %land.lhs.true5.i.evm_protected_xattr_common.exit_crit_edge, label %land.lhs.true5.i.if.end10.i_crit_edge

land.lhs.true5.i.if.end10.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

land.lhs.true5.i.evm_protected_xattr_common.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evm_protected_xattr_common.exit

if.end10.i:                                       ; preds = %land.lhs.true5.i.if.end10.i_crit_edge, %for.body.i.if.end10.i_crit_edge
  %add.ptr12.i = getelementptr i8, ptr %1, i32 9
  %call13.i = tail call i32 @strlen(ptr noundef %req_xattr_name) #15
  %call14.i = tail call i32 @strncmp(ptr noundef %req_xattr_name, ptr noundef %add.ptr12.i, i32 noundef %call13.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp eq i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end10.i.evm_protected_xattr_common.exit_crit_edge, label %for.inc.i

if.end10.i.evm_protected_xattr_common.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evm_protected_xattr_common.exit

for.inc.i:                                        ; preds = %if.end10.i
  %2 = ptrtoint ptr %xattr.037.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %xattr.0.i = load volatile ptr, ptr %xattr.037.i, align 4
  %cmp.not.i = icmp eq ptr %xattr.0.i, @evm_config_xattrnames
  br i1 %cmp.not.i, label %for.inc.i.evm_protected_xattr_common.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.evm_protected_xattr_common.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evm_protected_xattr_common.exit

evm_protected_xattr_common.exit:                  ; preds = %for.inc.i.evm_protected_xattr_common.exit_crit_edge, %if.end10.i.evm_protected_xattr_common.exit_crit_edge, %land.lhs.true5.i.evm_protected_xattr_common.exit_crit_edge, %entry.evm_protected_xattr_common.exit_crit_edge
  %found.0.i = phi i32 [ 0, %entry.evm_protected_xattr_common.exit_crit_edge ], [ 0, %for.inc.i.evm_protected_xattr_common.exit_crit_edge ], [ 1, %land.lhs.true5.i.evm_protected_xattr_common.exit_crit_edge ], [ 1, %if.end10.i.evm_protected_xattr_common.exit_crit_edge ]
  ret i32 %found.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @evm_read_protected_xattrs(ptr noundef %dentry, ptr noundef %buffer, i32 noundef %buffer_size, i8 noundef zeroext %type, i1 noundef zeroext %canonical_fmt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xattr.082 = load volatile ptr, ptr @evm_config_xattrnames, align 4
  %cmp.not83 = icmp eq ptr %xattr.082, @evm_config_xattrnames
  br i1 %cmp.not83, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %tobool28.not = icmp eq ptr %buffer, null
  %add.ptr13 = getelementptr i8, ptr %buffer, i32 -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %xattr.087 = phi ptr [ %xattr.082, %for.body.lr.ph ], [ %xattr.0, %for.inc.for.body_crit_edge ]
  %total_size.084 = phi i32 [ 0, %for.body.lr.ph ], [ %total_size.1, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %name = getelementptr inbounds %struct.xattr_list, ptr %xattr.087, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call2 = tail call i32 @__vfs_getxattr(ptr noundef %dentry, ptr noundef %1, ptr noundef %3, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call2)
  %cmp4 = icmp eq i32 %call2, -61
  br i1 %cmp4, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.else.cleanup_crit_edge, label %if.end7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.else
  %4 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %type, label %if.end7.cleanup_crit_edge [
    i8 110, label %sw.bb
    i8 108, label %sw.bb19
    i8 118, label %sw.bb27
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %call9 = tail call i32 @strlen(ptr noundef %6) #16
  %add = add i32 %call9, 1
  br i1 %tobool28.not, label %sw.bb.sw.epilog_crit_edge, label %if.then10

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_size.084)
  %tobool11.not = icmp eq i32 %total_size.084, 0
  br i1 %tobool11.not, label %if.then10.if.end15_crit_edge, label %if.then12

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr14 = getelementptr i8, ptr %add.ptr13, i32 %total_size.084
  %7 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 124, ptr %add.ptr14, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then10.if.end15_crit_edge
  %add.ptr16 = getelementptr i8, ptr %buffer, i32 %total_size.084
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %10 = call ptr @memcpy(ptr %add.ptr16, ptr %9, i32 %add)
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end7
  br i1 %tobool28.not, label %sw.bb19.sw.epilog_crit_edge, label %if.then21

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then21:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  %11 = tail call i32 @llvm.bswap.i32(i32 %call2)
  %spec.select = select i1 %canonical_fmt, i32 %11, i32 %call2
  %add.ptr25 = getelementptr i8, ptr %buffer, i32 %total_size.084
  %12 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select, ptr %add.ptr25, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end7
  br i1 %tobool28.not, label %sw.bb27.sw.epilog_crit_edge, label %if.then29

sw.bb27.sw.epilog_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then29:                                        ; preds = %sw.bb27
  %13 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode.i, align 8
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  %add.ptr32 = getelementptr i8, ptr %buffer, i32 %total_size.084
  %sub = sub i32 %buffer_size, %total_size.084
  %call33 = tail call i32 @__vfs_getxattr(ptr noundef %dentry, ptr noundef %14, ptr noundef %16, ptr noundef %add.ptr32, i32 noundef %sub) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then29.cleanup_crit_edge, label %if.then29.sw.epilog_crit_edge

if.then29.sw.epilog_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog:                                        ; preds = %if.then29.sw.epilog_crit_edge, %sw.bb27.sw.epilog_crit_edge, %if.then21, %sw.bb19.sw.epilog_crit_edge, %if.end15, %sw.bb.sw.epilog_crit_edge
  %size.0 = phi i32 [ %call2, %if.then29.sw.epilog_crit_edge ], [ %call2, %sw.bb27.sw.epilog_crit_edge ], [ 4, %if.then21 ], [ 4, %sw.bb19.sw.epilog_crit_edge ], [ %add, %if.end15 ], [ %add, %sw.bb.sw.epilog_crit_edge ]
  %add39 = add i32 %size.0, %total_size.084
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %for.body.for.inc_crit_edge
  %total_size.1 = phi i32 [ %add39, %sw.epilog ], [ %total_size.084, %for.body.for.inc_crit_edge ]
  %17 = ptrtoint ptr %xattr.087 to i32
  call void @__asan_load4_noabort(i32 %17)
  %xattr.0 = load volatile ptr, ptr %xattr.087, align 4
  %cmp.not = icmp eq ptr %xattr.0, @evm_config_xattrnames
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %total_size.1, %for.inc.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %call33, %if.then29.cleanup_crit_edge ], [ %call2, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vfs_getxattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @evm_verifyxattr(ptr noundef %dentry, ptr noundef %xattr_name, ptr noundef %xattr_value, i32 noundef %xattr_value_len, ptr noundef %iint) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @evm_initialized, align 4
  %and.i = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @evm_protected_xattr(ptr noundef %xattr_name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %tobool2.not = icmp eq ptr %iint, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i, align 8
  %call5 = tail call ptr @integrity_iint_find(ptr noundef %2) #11
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then3.return_crit_edge, label %if.then3.if.end9_crit_edge

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then3.return_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end9:                                          ; preds = %if.then3.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %iint.addr.0 = phi ptr [ %iint, %if.end.if.end9_crit_edge ], [ %call5, %if.then3.if.end9_crit_edge ]
  %call10 = tail call fastcc i32 @evm_verify_hmac(ptr noundef %dentry, ptr noundef %xattr_name, ptr noundef %xattr_value, i32 noundef %xattr_value_len, ptr noundef nonnull %iint.addr.0)
  br label %return

return:                                           ; preds = %if.end9, %if.then3.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ 6, %lor.lhs.false.return_crit_edge ], [ 6, %entry.return_crit_edge ], [ 6, %if.then3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @evm_protected_xattr(ptr nocapture noundef readonly %req_xattr_name) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @strlen(ptr noundef %req_xattr_name) #15
  %xattr.035.i = load volatile ptr, ptr @evm_config_xattrnames, align 4
  %cmp.not36.i = icmp eq ptr %xattr.035.i, @evm_config_xattrnames
  br i1 %cmp.not36.i, label %entry.evm_protected_xattr_common.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.evm_protected_xattr_common.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %evm_protected_xattr_common.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %xattr.037.i = phi ptr [ %xattr.0.i, %for.inc.i.for.body.i_crit_edge ], [ %xattr.035.i, %entry.for.body.i_crit_edge ]
  %enabled.i = getelementptr inbounds %struct.xattr_list, ptr %xattr.037.i, i32 0, i32 2
  %0 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled.i, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not.i = icmp eq i8 %1, 0
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %name.i = getelementptr inbounds %struct.xattr_list, ptr %xattr.037.i, i32 0, i32 1
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 4
  %call3.i = tail call i32 @strlen(ptr noundef %3) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %call.i)
  %cmp4.i = icmp eq i32 %call3.i, %call.i
  br i1 %cmp4.i, label %land.lhs.true5.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

land.lhs.true5.i:                                 ; preds = %if.end.i
  %call7.i = tail call i32 @strncmp(ptr noundef %req_xattr_name, ptr noundef %3, i32 noundef %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.i, label %land.lhs.true5.i.evm_protected_xattr_common.exit_crit_edge, label %land.lhs.true5.i.if.end10.i_crit_edge

land.lhs.true5.i.if.end10.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

land.lhs.true5.i.evm_protected_xattr_common.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evm_protected_xattr_common.exit

if.end10.i:                                       ; preds = %land.lhs.true5.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %add.ptr12.i = getelementptr i8, ptr %3, i32 9
  %call13.i = tail call i32 @strlen(ptr noundef %req_xattr_name) #15
  %call14.i = tail call i32 @strncmp(ptr noundef %req_xattr_name, ptr noundef %add.ptr12.i, i32 noundef %call13.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp eq i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end10.i.evm_protected_xattr_common.exit_crit_edge, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end10.i.evm_protected_xattr_common.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evm_protected_xattr_common.exit

for.inc.i:                                        ; preds = %if.end10.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %4 = ptrtoint ptr %xattr.037.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %xattr.0.i = load volatile ptr, ptr %xattr.037.i, align 4
  %cmp.not.i = icmp eq ptr %xattr.0.i, @evm_config_xattrnames
  br i1 %cmp.not.i, label %for.inc.i.evm_protected_xattr_common.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.evm_protected_xattr_common.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evm_protected_xattr_common.exit

evm_protected_xattr_common.exit:                  ; preds = %for.inc.i.evm_protected_xattr_common.exit_crit_edge, %if.end10.i.evm_protected_xattr_common.exit_crit_edge, %land.lhs.true5.i.evm_protected_xattr_common.exit_crit_edge, %entry.evm_protected_xattr_common.exit_crit_edge
  %found.0.i = phi i32 [ 0, %entry.evm_protected_xattr_common.exit_crit_edge ], [ 0, %for.inc.i.evm_protected_xattr_common.exit_crit_edge ], [ 1, %land.lhs.true5.i.evm_protected_xattr_common.exit_crit_edge ], [ 1, %if.end10.i.evm_protected_xattr_common.exit_crit_edge ]
  ret i32 %found.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @integrity_iint_find(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @evm_verify_hmac(ptr noundef %dentry, ptr noundef %xattr_name, ptr noundef %xattr_value, i32 noundef %xattr_value_len, ptr noundef %iint) unnamed_addr #2 align 64 {
entry:
  %xattr_data = alloca ptr, align 4
  %digest = alloca %struct.evm_digest, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xattr_data) #11
  %0 = ptrtoint ptr %xattr_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %xattr_data, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %digest) #11
  %1 = call ptr @memset(ptr %digest, i32 255, i32 68)
  %tobool.not = icmp eq ptr %iint, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %evm_status1 = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 7
  %2 = ptrtoint ptr %evm_status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %evm_status1, align 4
  %bf.lshr = lshr i32 %bf.load, 8
  %bf.clear = and i32 %bf.lshr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.clear)
  %switch = icmp ult i32 %bf.clear, 2
  br i1 %switch, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = call i32 @vfs_getxattr_alloc(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef nonnull @.str, ptr noundef nonnull %xattr_data, i32 noundef 0, i32 noundef 3136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp11 = icmp slt i32 %call, 1
  br i1 %cmp11, label %if.then12, label %if.end27

if.then12:                                        ; preds = %if.end
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %call, label %if.then12.out_crit_edge [
    i32 -61, label %if.then14
    i32 -95, label %if.then24
  ]

if.then12.out_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then14:                                        ; preds = %if.then12
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i.i, align 8
  %i_opflags.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %i_opflags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %i_opflags.i, align 2
  %8 = and i16 %7, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i = icmp eq i16 %8, 0
  br i1 %tobool.not.i, label %if.then14.out_crit_edge, label %for.cond.preheader.i

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.cond.preheader.i:                             ; preds = %if.then14
  %xattr.030.i = load volatile ptr, ptr @evm_config_xattrnames, align 4
  %cmp.not31.i = icmp eq ptr %xattr.030.i, @evm_config_xattrnames
  br i1 %cmp.not31.i, label %for.cond.preheader.i.if.else.thread176_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.else.thread176_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.thread176

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %xattr.033.i = phi ptr [ %xattr.0.i, %for.inc.i.for.body.i_crit_edge ], [ %xattr.030.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %count.032.i = phi i32 [ %count.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.xattr_list, ptr %xattr.033.i, i32 0, i32 1
  %9 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name.i, align 4
  %call3.i = call i32 @__vfs_getxattr(ptr noundef %dentry, ptr noundef %5, ptr noundef %10, ptr noundef null, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then6.i, label %if.end11.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call3.i)
  %cmp7.i = icmp eq i32 %call3.i, -61
  br i1 %cmp7.i, label %if.then6.i.for.inc.i_crit_edge, label %if.then6.i.out_crit_edge

if.then6.i.out_crit_edge:                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then6.i.for.inc.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end11.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i = add i32 %count.032.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i, %if.then6.i.for.inc.i_crit_edge
  %count.1.i = phi i32 [ %count.032.i, %if.then6.i.for.inc.i_crit_edge ], [ %inc.i, %if.end11.i ]
  %11 = ptrtoint ptr %xattr.033.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %xattr.0.i = load volatile ptr, ptr %xattr.033.i, align 4
  %cmp.not.i = icmp eq ptr %xattr.0.i, @evm_config_xattrnames
  br i1 %cmp.not.i, label %evm_find_protected_xattrs.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

evm_find_protected_xattrs.exit:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i)
  %cmp16 = icmp sgt i32 %count.1.i, 0
  br i1 %cmp16, label %evm_find_protected_xattrs.exit.out_crit_edge, label %if.else

evm_find_protected_xattrs.exit.out_crit_edge:     ; preds = %evm_find_protected_xattrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.else:                                          ; preds = %evm_find_protected_xattrs.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i)
  %cmp18 = icmp eq i32 %count.1.i, 0
  br i1 %cmp18, label %if.else.if.else.thread176_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.else.if.else.thread176_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.thread176

if.else.thread176:                                ; preds = %if.else.if.else.thread176_crit_edge, %for.cond.preheader.i.if.else.thread176_crit_edge
  br label %out

if.then24:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end27:                                         ; preds = %if.end
  %12 = ptrtoint ptr %xattr_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xattr_data, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %15, label %if.end27.if.else89.thread_crit_edge [
    i8 2, label %sw.bb
    i8 5, label %sw.bb43
    i8 3, label %if.end27.sw.bb44_crit_edge
  ]

if.end27.sw.bb44_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb44

if.end27.if.else89.thread_crit_edge:              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else89.thread

sw.bb:                                            ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %call)
  %cmp28.not = icmp eq i32 %call, 21
  br i1 %cmp28.not, label %if.end31, label %sw.bb.out_crit_edge

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end31:                                         ; preds = %sw.bb
  %17 = ptrtoint ptr %digest to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %digest, align 1
  %call33 = call i32 @evm_calc_hmac(ptr noundef %dentry, ptr noundef %xattr_name, ptr noundef %xattr_value, i32 noundef %xattr_value_len, ptr noundef nonnull %digest) #11
  %18 = zext i32 %call33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call33, label %if.end31.if.else89.thread_crit_edge [
    i32 0, label %if.end36
    i32 -61, label %if.end31.do.body_crit_edge
  ]

if.end31.do.body_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.end31.if.else89.thread_crit_edge:              ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else89.thread

if.end36:                                         ; preds = %if.end31
  %19 = ptrtoint ptr %xattr_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xattr_data, align 4
  %data = getelementptr inbounds %struct.evm_ima_xattr_data, ptr %20, i32 0, i32 1
  %digest37 = getelementptr inbounds %struct.evm_digest, ptr %digest, i32 0, i32 1
  %call.i = call i32 @__crypto_memneq(ptr noundef %data, ptr noundef %digest37, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i158.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i158.not, label %if.end36.do.body_crit_edge, label %if.end36.if.else89.thread_crit_edge

if.end36.if.else89.thread_crit_edge:              ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else89.thread

if.end36.do.body_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

sw.bb43:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb44

sw.bb44:                                          ; preds = %sw.bb43, %if.end27.sw.bb44_crit_edge
  %tobool90.not = phi i1 [ false, %if.end27.sw.bb44_crit_edge ], [ true, %sw.bb43 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call)
  %cmp45 = icmp ult i32 %call, 10
  br i1 %cmp45, label %sw.bb44.out_crit_edge, label %if.end48

sw.bb44.out_crit_edge:                            ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end48:                                         ; preds = %sw.bb44
  %hash_algo = getelementptr inbounds %struct.signature_v2_hdr, ptr %13, i32 0, i32 2
  %21 = ptrtoint ptr %hash_algo to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %hash_algo, align 1
  %23 = ptrtoint ptr %digest to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %digest, align 1
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %13, align 1
  %call52 = call i32 @evm_calc_hash(ptr noundef %dentry, ptr noundef %xattr_name, ptr noundef %xattr_value, i32 noundef %xattr_value_len, i8 noundef zeroext %25, ptr noundef nonnull %digest) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end48.sw.epilog_crit_edge

if.end48.sw.epilog_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end55:                                         ; preds = %if.end48
  %26 = ptrtoint ptr %xattr_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xattr_data, align 4
  %digest56 = getelementptr inbounds %struct.evm_digest, ptr %digest, i32 0, i32 1
  %length = getelementptr inbounds %struct.ima_digest_data, ptr %digest, i32 0, i32 1
  %28 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %length, align 1
  %conv59 = zext i8 %29 to i32
  %call60 = call i32 @integrity_digsig_verify(i32 noundef 0, ptr noundef %27, i32 noundef %call, ptr noundef %digest56, i32 noundef %conv59) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then62, label %if.end55.sw.epilog_crit_edge

if.end55.sw.epilog_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then62:                                        ; preds = %if.end55
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %30 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_inode.i, align 8
  %32 = ptrtoint ptr %xattr_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %xattr_data, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %35)
  %cmp66 = icmp eq i8 %35, 5
  br i1 %cmp66, label %if.then68, label %if.else72

if.then68:                                        ; preds = %if.then62
  br i1 %tobool.not, label %if.then68.do.body_crit_edge, label %if.then70

if.then68.do.body_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then70:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 4
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 8
  %or = or i32 %37, 134217728
  store i32 %or, ptr %flags, align 8
  br label %do.body

if.else72:                                        ; preds = %if.then62
  %i_sb = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 8
  %38 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 10
  %40 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true74, label %if.else72.do.body_crit_edge

if.else72.do.body_crit_edge:                      ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.lhs.true74:                                  ; preds = %if.else72
  %s_readonly_remount = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 49
  %42 = ptrtoint ptr %s_readonly_remount to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_readonly_remount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool76.not = icmp eq i32 %43, 0
  br i1 %tobool76.not, label %land.lhs.true77, label %land.lhs.true74.do.body_crit_edge

land.lhs.true74.do.body_crit_edge:                ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.lhs.true77:                                  ; preds = %land.lhs.true74
  %i_flags = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 4
  %44 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_flags, align 4
  %and = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool78.not = icmp eq i32 %and, 0
  br i1 %tobool78.not, label %if.then79, label %land.lhs.true77.do.body_crit_edge

land.lhs.true77.do.body_crit_edge:                ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then79:                                        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #13
  %call80 = call i32 @evm_update_evmxattr(ptr noundef %dentry, ptr noundef %xattr_name, ptr noundef %xattr_value, i32 noundef %xattr_value_len) #11
  br label %do.body

sw.epilog:                                        ; preds = %if.end55.sw.epilog_crit_edge, %if.end48.sw.epilog_crit_edge
  %rc.0 = phi i32 [ %call52, %if.end48.sw.epilog_crit_edge ], [ %call60, %if.end55.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %rc.0)
  %cond = icmp eq i32 %rc.0, -61
  %brmerge = or i1 %cond, %tobool90.not
  %.mux = select i1 %cond, i32 5, i32 3
  br i1 %brmerge, label %sw.epilog.do.body_crit_edge, label %sw.epilog.if.else89.thread_crit_edge

sw.epilog.if.else89.thread_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else89.thread

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.else89.thread:                                 ; preds = %sw.epilog.if.else89.thread_crit_edge, %if.end36.if.else89.thread_crit_edge, %if.end31.if.else89.thread_crit_edge, %if.end27.if.else89.thread_crit_edge
  br label %do.body

do.body:                                          ; preds = %if.else89.thread, %sw.epilog.do.body_crit_edge, %if.then79, %land.lhs.true77.do.body_crit_edge, %land.lhs.true74.do.body_crit_edge, %if.else72.do.body_crit_edge, %if.then70, %if.then68.do.body_crit_edge, %if.end36.do.body_crit_edge, %if.end31.do.body_crit_edge
  %evm_status.1 = phi i32 [ 2, %if.else89.thread ], [ 1, %if.then68.do.body_crit_edge ], [ 1, %if.then70 ], [ 0, %if.then79 ], [ 0, %land.lhs.true77.do.body_crit_edge ], [ 0, %land.lhs.true74.do.body_crit_edge ], [ 0, %if.else72.do.body_crit_edge ], [ 0, %if.end36.do.body_crit_edge ], [ %.mux, %sw.epilog.do.body_crit_edge ], [ 5, %if.end31.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @evm_verify_hmac.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@evm_verify_hmac, %if.then100)) #11
          to label %out [label %if.then100], !srcloc !104

if.then100:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %length102 = getelementptr inbounds %struct.ima_digest_data, ptr %digest, i32 0, i32 1
  %46 = ptrtoint ptr %length102 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %length102, align 1
  %conv103 = zext i8 %47 to i32
  %digest107 = getelementptr inbounds %struct.evm_digest, ptr %digest, i32 0, i32 1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @evm_verify_hmac.__UNIQUE_ID_ddebug226, ptr noundef nonnull @.str.10, i32 noundef %conv103, i32 noundef %conv103, ptr noundef %digest107) #11
  br label %out

out:                                              ; preds = %if.then100, %do.body, %sw.bb44.out_crit_edge, %sw.bb.out_crit_edge, %if.then24, %if.else.thread176, %if.else.out_crit_edge, %evm_find_protected_xattrs.exit.out_crit_edge, %if.then6.i.out_crit_edge, %if.then14.out_crit_edge, %if.then12.out_crit_edge
  %evm_status.2 = phi i32 [ 6, %if.then24 ], [ %evm_status.1, %if.then100 ], [ 4, %evm_find_protected_xattrs.exit.out_crit_edge ], [ 2, %if.then12.out_crit_edge ], [ 2, %sw.bb.out_crit_edge ], [ 2, %sw.bb44.out_crit_edge ], [ %evm_status.1, %do.body ], [ 5, %if.else.thread176 ], [ 2, %if.else.out_crit_edge ], [ 2, %if.then14.out_crit_edge ], [ 2, %if.then6.i.out_crit_edge ]
  br i1 %tobool.not, label %out.if.end115_crit_edge, label %if.then111

out.if.end115_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then111:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %evm_status112 = getelementptr inbounds %struct.integrity_iint_cache, ptr %iint, i32 0, i32 7
  %48 = ptrtoint ptr %evm_status112 to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load113 = load i32, ptr %evm_status112, align 4
  %bf.value = shl nuw nsw i32 %evm_status.2, 8
  %bf.shl = and i32 %bf.value, 3840
  %bf.clear114 = and i32 %bf.load113, -3841
  %bf.set = or i32 %bf.clear114, %bf.shl
  store i32 %bf.set, ptr %evm_status112, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then111, %out.if.end115_crit_edge
  %49 = ptrtoint ptr %xattr_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %xattr_data, align 4
  call void @kfree(ptr noundef %50) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %evm_status.2, %if.end115 ], [ %bf.clear, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %digest) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xattr_data) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @evm_inode_setxattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %xattr_name, ptr noundef %xattr_value, i32 noundef %xattr_value_len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @evm_initialized, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef %xattr_name, ptr noundef nonnull dereferenceable(13) @.str) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xattr_value_len)
  %tobool2.not = icmp eq i32 %xattr_value_len, 0
  br i1 %tobool2.not, label %if.then1.cleanup_crit_edge, label %if.end4

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.then1
  %1 = ptrtoint ptr %xattr_value to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %xattr_value, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %2, label %if.end4.cleanup_crit_edge [
    i8 3, label %if.end4.if.end13_crit_edge
    i8 5, label %if.end4.if.end13_crit_edge19
  ]

if.end4.if.end13_crit_edge19:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end4.if.end13_crit_edge, %if.end4.if.end13_crit_edge19, %if.end.if.end13_crit_edge
  %call14 = tail call fastcc i32 @evm_protect_xattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %xattr_name, ptr noundef %xattr_value, i32 noundef %xattr_value_len)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end4.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end13 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then1.cleanup_crit_edge ], [ -1, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @evm_protect_xattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %xattr_name, ptr noundef %xattr_value, i32 noundef %xattr_value_len) unnamed_addr #2 align 64 {
entry:
  %mode.i.i = alloca i16, align 2
  %acl_res.i.i = alloca ptr, align 4
  %xattr_data.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %xattr_name, ptr noundef nonnull dereferenceable(13) @.str) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call1, label %if.then.if.end15_crit_edge, label %if.then.cleanup62_crit_edge

if.then.cleanup62_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.else:                                          ; preds = %entry
  %call3 = tail call fastcc i32 @evm_protected_xattr(ptr noundef %xattr_name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then4, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then4:                                         ; preds = %if.else
  %call5 = tail call i32 @posix_xattr_acl(ptr noundef %xattr_name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.cleanup62_crit_edge, label %if.end8

if.then4.cleanup62_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

if.end8:                                          ; preds = %if.then4
  %0 = load i32, ptr @evm_initialized, align 4
  %and.i.i = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end8.cleanup62_crit_edge, label %lor.lhs.false.i

if.end8.cleanup62_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

lor.lhs.false.i:                                  ; preds = %if.end8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode.i.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 8
  %5 = and i16 %4, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %5)
  %cmp.i = icmp eq i16 %5, -32768
  br i1 %cmp.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.cleanup62_crit_edge

lor.lhs.false.i.cleanup62_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %.b.i = load i1, ptr @evm_fixmode, align 4
  br i1 %.b.i, label %lor.lhs.false3.i.cleanup62_crit_edge, label %evm_verify_current_integrity.exit

lor.lhs.false3.i.cleanup62_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

evm_verify_current_integrity.exit:                ; preds = %lor.lhs.false3.i
  %call4.i = tail call fastcc i32 @evm_verify_hmac(ptr noundef %dentry, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null) #11
  %6 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call4.i, label %evm_verify_current_integrity.exit.out_crit_edge [
    i32 0, label %evm_verify_current_integrity.exit.cleanup62_crit_edge
    i32 5, label %evm_verify_current_integrity.exit.cleanup62_crit_edge108
  ]

evm_verify_current_integrity.exit.cleanup62_crit_edge108: ; preds = %evm_verify_current_integrity.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

evm_verify_current_integrity.exit.cleanup62_crit_edge: ; preds = %evm_verify_current_integrity.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

evm_verify_current_integrity.exit.out_crit_edge:  ; preds = %evm_verify_current_integrity.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %if.then.if.end15_crit_edge
  %7 = load i32, ptr @evm_initialized, align 4
  %and.i.i88 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i88)
  %tobool.i.not.i89 = icmp eq i32 %and.i.i88, 0
  br i1 %tobool.i.not.i89, label %if.end15.out_crit_edge, label %lor.lhs.false.i92

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false.i92:                                ; preds = %if.end15
  %d_inode.i.i90 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i.i90 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i.i90, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 8
  %12 = and i16 %11, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %12)
  %cmp.i91 = icmp eq i16 %12, -32768
  br i1 %cmp.i91, label %lor.lhs.false3.i94, label %lor.lhs.false.i92.out_crit_edge

lor.lhs.false.i92.out_crit_edge:                  ; preds = %lor.lhs.false.i92
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false3.i94:                               ; preds = %lor.lhs.false.i92
  %.b.i93 = load i1, ptr @evm_fixmode, align 4
  br i1 %.b.i93, label %lor.lhs.false3.i94.out_crit_edge, label %evm_verify_current_integrity.exit98

lor.lhs.false3.i94.out_crit_edge:                 ; preds = %lor.lhs.false3.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

evm_verify_current_integrity.exit98:              ; preds = %lor.lhs.false3.i94
  %call4.i95 = tail call fastcc i32 @evm_verify_hmac(ptr noundef %dentry, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call4.i95)
  %cmp17 = icmp eq i32 %call4.i95, 5
  br i1 %cmp17, label %if.then18, label %evm_verify_current_integrity.exit98.out_crit_edge

evm_verify_current_integrity.exit98.out_crit_edge: ; preds = %evm_verify_current_integrity.exit98
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then18:                                        ; preds = %evm_verify_current_integrity.exit98
  %13 = load i32, ptr @evm_initialized, align 4
  %14 = and i32 %13, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %14)
  %15 = icmp eq i32 %14, -2147483648
  br i1 %15, label %if.then18.cleanup62_crit_edge, label %if.end21

if.then18.cleanup62_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

if.end21:                                         ; preds = %if.then18
  %16 = ptrtoint ptr %d_inode.i.i90 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_inode.i.i90, align 8
  %call23 = tail call ptr @integrity_iint_find(ptr noundef %17) #11
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end21.if.end27_crit_edge, label %land.lhs.true

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end21
  %flags = getelementptr inbounds %struct.integrity_iint_cache, ptr %call23, i32 0, i32 4
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 8
  %and = and i32 %19, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %land.lhs.true.if.end27_crit_edge, label %land.lhs.true.cleanup62_crit_edge

land.lhs.true.cleanup62_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %if.end21.if.end27_crit_edge
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %20 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_sb, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_magic, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %23, label %if.end34 [
    i32 16914836, label %if.end27.cleanup62_crit_edge
    i32 1650812274, label %if.end27.cleanup62_crit_edge109
  ]

if.end27.cleanup62_crit_edge109:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

if.end27.cleanup62_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

if.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %d_inode.i.i90 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_inode.i.i90, align 8
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 8
  tail call void @integrity_audit_msg(i32 noundef 1801, ptr noundef %26, ptr noundef %28, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.17, i32 noundef -1, i32 noundef 0) #11
  br label %out

out:                                              ; preds = %if.end34, %evm_verify_current_integrity.exit98.out_crit_edge, %lor.lhs.false3.i94.out_crit_edge, %lor.lhs.false.i92.out_crit_edge, %if.end15.out_crit_edge, %evm_verify_current_integrity.exit.out_crit_edge
  %evm_status.0 = phi i32 [ %call4.i95, %evm_verify_current_integrity.exit98.out_crit_edge ], [ %call4.i, %evm_verify_current_integrity.exit.out_crit_edge ], [ 5, %if.end34 ], [ 0, %lor.lhs.false3.i94.out_crit_edge ], [ 0, %lor.lhs.false.i92.out_crit_edge ], [ 0, %if.end15.out_crit_edge ]
  %29 = load i32, ptr @evm_initialized, align 4
  %30 = and i32 %29, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %30)
  %31 = icmp eq i32 %30, -2147483648
  br i1 %31, label %land.lhs.true37, label %if.end42

land.lhs.true37:                                  ; preds = %out
  %32 = zext i32 %evm_status.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %evm_status.0, label %land.lhs.true37.if.then55_crit_edge [
    i32 4, label %land.lhs.true37.cleanup62_crit_edge
    i32 6, label %land.lhs.true37.cleanup62_crit_edge110
    i32 3, label %land.lhs.true37.cleanup62_crit_edge111
    i32 1, label %land.lhs.true37.land.lhs.true47_crit_edge
    i32 0, label %land.lhs.true37.if.end60_crit_edge
  ]

land.lhs.true37.if.end60_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

land.lhs.true37.land.lhs.true47_crit_edge:        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true47

land.lhs.true37.cleanup62_crit_edge111:           ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

land.lhs.true37.cleanup62_crit_edge110:           ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

land.lhs.true37.cleanup62_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

land.lhs.true37.if.then55_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55

if.end42:                                         ; preds = %out
  %33 = zext i32 %evm_status.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %evm_status.0, label %if.end42.if.then55_crit_edge [
    i32 3, label %if.end42.cleanup62_crit_edge
    i32 1, label %if.end42.land.lhs.true47_crit_edge
    i32 0, label %if.end42.if.end60_crit_edge
  ]

if.end42.if.end60_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.end42.land.lhs.true47_crit_edge:               ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true47

if.end42.cleanup62_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

if.end42.if.then55_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55

land.lhs.true47:                                  ; preds = %if.end42.land.lhs.true47_crit_edge, %land.lhs.true37.land.lhs.true47_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xattr_data.i) #11
  %34 = ptrtoint ptr %xattr_data.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %xattr_data.i, align 4
  %call.i = tail call i32 @posix_xattr_acl(ptr noundef %xattr_name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i100, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true47
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode.i.i) #11
  %35 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -1, ptr %mode.i.i, align 2, !annotation !105
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl_res.i.i) #11
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %36 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %d_inode.i.i.i, align 8
  %call1.i.i = tail call ptr @posix_acl_from_xattr(ptr noundef nonnull @init_user_ns, ptr noundef %xattr_value, i32 noundef %xattr_value_len) #11
  %tobool.not.i.i.i = icmp eq ptr %call1.i.i, null
  %cmp.i.i.i = icmp ugt ptr %call1.i.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.then.i.evm_xattr_acl_change.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.evm_xattr_acl_change.exit.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evm_xattr_acl_change.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i
  %38 = ptrtoint ptr %acl_res.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call1.i.i, ptr %acl_res.i.i, align 4
  %call3.i.i = call i32 @posix_acl_update_mode(ptr noundef %mnt_userns, ptr noundef %37, ptr noundef nonnull %mode.i.i, ptr noundef nonnull %acl_res.i.i) #11
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !106
  call void @llvm.prefetch.p0(ptr nonnull %call1.i.i, i32 1, i32 3, i32 1) #11
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1.i.i, ptr nonnull %call1.i.i, i32 1, ptr nonnull elementtype(i32) %call1.i.i) #11, !srcloc !107
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %do.end.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.posix_acl_release.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !108

if.end5.i.i.i.i.i.i.posix_acl_release.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %posix_acl_release.exit.i.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef nonnull %call1.i.i, i32 noundef 3) #11
  br label %posix_acl_release.exit.i.i

do.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !109
  %a_rcu.i.i.i = getelementptr inbounds %struct.posix_acl, ptr %call1.i.i, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i.i.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #11
  br label %posix_acl_release.exit.i.i

posix_acl_release.exit.i.i:                       ; preds = %do.end.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.posix_acl_release.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i.i, label %if.end5.i.i, label %posix_acl_release.exit.i.i.evm_xattr_acl_change.exit.i_crit_edge

posix_acl_release.exit.i.i.evm_xattr_acl_change.exit.i_crit_edge: ; preds = %posix_acl_release.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %evm_xattr_acl_change.exit.i

if.end5.i.i:                                      ; preds = %posix_acl_release.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %37, align 8
  %42 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mode.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %43)
  %cmp.not.i.i = icmp ne i16 %41, %43
  %..i.i = zext i1 %cmp.not.i.i to i32
  br label %evm_xattr_acl_change.exit.i

evm_xattr_acl_change.exit.i:                      ; preds = %if.end5.i.i, %posix_acl_release.exit.i.i.evm_xattr_acl_change.exit.i_crit_edge, %if.then.i.evm_xattr_acl_change.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.then.i.evm_xattr_acl_change.exit.i_crit_edge ], [ 1, %posix_acl_release.exit.i.i.evm_xattr_acl_change.exit.i_crit_edge ], [ %..i.i, %if.end5.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl_res.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode.i.i) #11
  br label %evm_xattr_change.exit

if.end.i100:                                      ; preds = %land.lhs.true47
  %call2.i = call i32 @vfs_getxattr_alloc(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %xattr_name, ptr noundef nonnull %xattr_data.i, i32 noundef 0, i32 noundef 3136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i99 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i99, label %evm_xattr_change.exit.thread, label %if.end4.i

evm_xattr_change.exit.thread:                     ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xattr_data.i) #11
  br label %if.end60

if.end4.i:                                        ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %xattr_value_len)
  %cmp5.i = icmp eq i32 %call2.i, %xattr_value_len
  br i1 %cmp5.i, label %if.then6.i, label %if.end4.i.if.end10.i_crit_edge

if.end4.i.if.end10.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %xattr_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %xattr_data.i, align 4
  %bcmp.i = call i32 @bcmp(ptr %xattr_value, ptr %45, i32 %xattr_value_len) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool8.i = icmp ne i32 %bcmp.i, 0
  %lnot.ext.i = zext i1 %tobool8.i to i32
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %if.end4.i.if.end10.i_crit_edge
  %rc.0.i = phi i32 [ %lnot.ext.i, %if.then6.i ], [ 1, %if.end4.i.if.end10.i_crit_edge ]
  %46 = ptrtoint ptr %xattr_data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %xattr_data.i, align 4
  call void @kfree(ptr noundef %47) #11
  br label %evm_xattr_change.exit

evm_xattr_change.exit:                            ; preds = %if.end10.i, %evm_xattr_acl_change.exit.i
  %retval.0.i101 = phi i32 [ %retval.0.i.i, %evm_xattr_acl_change.exit.i ], [ %rc.0.i, %if.end10.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xattr_data.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i101)
  %tobool49.not = icmp eq i32 %retval.0.i101, 0
  br i1 %tobool49.not, label %evm_xattr_change.exit.cleanup62_crit_edge, label %evm_xattr_change.exit.if.end60_crit_edge

evm_xattr_change.exit.if.end60_crit_edge:         ; preds = %evm_xattr_change.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

evm_xattr_change.exit.cleanup62_crit_edge:        ; preds = %evm_xattr_change.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

if.then55:                                        ; preds = %if.end42.if.then55_crit_edge, %land.lhs.true37.if.then55_crit_edge
  %d_inode.i102 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %48 = ptrtoint ptr %d_inode.i102 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %d_inode.i102, align 8
  %name58 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %name58 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %name58, align 8
  %arrayidx59 = getelementptr [7 x ptr], ptr @integrity_status_msg, i32 0, i32 %evm_status.0
  %52 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx59, align 4
  tail call void @integrity_audit_msg(i32 noundef 1801, ptr noundef %49, ptr noundef %51, ptr noundef nonnull @.str.1, ptr noundef %53, i32 noundef -1, i32 noundef 0) #11
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %evm_xattr_change.exit.if.end60_crit_edge, %evm_xattr_change.exit.thread, %if.end42.if.end60_crit_edge, %land.lhs.true37.if.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %evm_status.0)
  %cmp61 = icmp ne i32 %evm_status.0, 0
  %cond = sext i1 %cmp61 to i32
  br label %cleanup62

cleanup62:                                        ; preds = %if.end60, %evm_xattr_change.exit.cleanup62_crit_edge, %if.end42.cleanup62_crit_edge, %land.lhs.true37.cleanup62_crit_edge, %land.lhs.true37.cleanup62_crit_edge110, %land.lhs.true37.cleanup62_crit_edge111, %if.end27.cleanup62_crit_edge, %if.end27.cleanup62_crit_edge109, %land.lhs.true.cleanup62_crit_edge, %if.then18.cleanup62_crit_edge, %evm_verify_current_integrity.exit.cleanup62_crit_edge, %evm_verify_current_integrity.exit.cleanup62_crit_edge108, %lor.lhs.false3.i.cleanup62_crit_edge, %lor.lhs.false.i.cleanup62_crit_edge, %if.end8.cleanup62_crit_edge, %if.then4.cleanup62_crit_edge, %if.then.cleanup62_crit_edge
  %retval.1 = phi i32 [ %cond, %if.end60 ], [ -1, %if.then.cleanup62_crit_edge ], [ 0, %if.then4.cleanup62_crit_edge ], [ 0, %evm_verify_current_integrity.exit.cleanup62_crit_edge ], [ 0, %evm_verify_current_integrity.exit.cleanup62_crit_edge108 ], [ 0, %if.end27.cleanup62_crit_edge ], [ 0, %if.end27.cleanup62_crit_edge109 ], [ 0, %land.lhs.true.cleanup62_crit_edge ], [ 0, %if.then18.cleanup62_crit_edge ], [ 0, %land.lhs.true37.cleanup62_crit_edge ], [ 0, %land.lhs.true37.cleanup62_crit_edge110 ], [ 0, %land.lhs.true37.cleanup62_crit_edge111 ], [ 0, %if.end42.cleanup62_crit_edge ], [ 0, %evm_xattr_change.exit.cleanup62_crit_edge ], [ 0, %lor.lhs.false3.i.cleanup62_crit_edge ], [ 0, %lor.lhs.false.i.cleanup62_crit_edge ], [ 0, %if.end8.cleanup62_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @evm_inode_removexattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %xattr_name) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @evm_initialized, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @evm_protect_xattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %xattr_name, ptr noundef null, i32 noundef 0)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @evm_revalidate_status(ptr noundef %xattr_name) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @evm_initialized, align 4
  %and.i = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %xattr_name, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end2:                                          ; preds = %if.end
  %call3 = tail call fastcc i32 @evm_protected_xattr(ptr noundef nonnull %xattr_name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end2.if.end11_crit_edge

if.end2.if.end11_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end2
  %call5 = tail call i32 @posix_xattr_acl(ptr noundef nonnull %xattr_name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true7:                                   ; preds = %land.lhs.true
  %call8 = tail call i32 @strcmp(ptr noundef nonnull %xattr_name, ptr noundef nonnull dereferenceable(13) @.str) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true7.if.end11_crit_edge, label %land.lhs.true7.return_crit_edge

land.lhs.true7.return_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.lhs.true7.if.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true7.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end2.if.end11_crit_edge
  br label %return

return:                                           ; preds = %if.end11, %land.lhs.true7.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end11 ], [ false, %entry.return_crit_edge ], [ true, %if.end.return_crit_edge ], [ false, %land.lhs.true7.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_xattr_acl(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @evm_inode_post_setxattr(ptr noundef %dentry, ptr noundef %xattr_name, ptr noundef %xattr_value, i32 noundef %xattr_value_len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @evm_initialized, align 4
  %and.i.i = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.return_crit_edge, label %if.end.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %xattr_name, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.end2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = tail call fastcc i32 @evm_protected_xattr(ptr noundef nonnull %xattr_name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %if.end2.i.if.end_crit_edge

if.end2.i.if.end_crit_edge:                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end2.i
  %call5.i = tail call i32 @posix_xattr_acl(ptr noundef nonnull %xattr_name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true7.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %call8.i = tail call i32 @strcmp(ptr noundef nonnull %xattr_name, ptr noundef nonnull dereferenceable(13) @.str) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true7.i.if.end_crit_edge, label %land.lhs.true7.i.return_crit_edge

land.lhs.true7.i.return_crit_edge:                ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.lhs.true7.i.if.end_crit_edge:                ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true7.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.end2.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode, align 8
  %call.i = tail call ptr @integrity_iint_find(ptr noundef %2) #11
  %tobool.not.i11 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i11, label %if.end.evm_reset_status.exit_crit_edge, label %if.then.i

if.end.evm_reset_status.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %evm_reset_status.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %evm_status.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %evm_status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load.i = load i32, ptr %evm_status.i, align 4
  %bf.clear.i = and i32 %bf.load.i, -3841
  %bf.set.i = or i32 %bf.clear.i, 1536
  store i32 %bf.set.i, ptr %evm_status.i, align 4
  br label %evm_reset_status.exit

evm_reset_status.exit:                            ; preds = %if.then.i, %if.end.evm_reset_status.exit_crit_edge
  %call1 = tail call i32 @strcmp(ptr noundef %xattr_name, ptr noundef nonnull dereferenceable(13) @.str) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %evm_reset_status.exit.return_crit_edge, label %if.end3

evm_reset_status.exit.return_crit_edge:           ; preds = %evm_reset_status.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end3:                                          ; preds = %evm_reset_status.exit
  %4 = load i32, ptr @evm_initialized, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.return_crit_edge, label %if.end6

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @evm_update_evmxattr(ptr noundef %dentry, ptr noundef %xattr_name, ptr noundef %xattr_value, i32 noundef %xattr_value_len) #11
  br label %return

return:                                           ; preds = %if.end6, %if.end3.return_crit_edge, %evm_reset_status.exit.return_crit_edge, %land.lhs.true7.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evm_update_evmxattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @evm_inode_post_removexattr(ptr noundef %dentry, ptr noundef %xattr_name) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @evm_initialized, align 4
  %and.i.i = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.return_crit_edge, label %if.end.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %xattr_name, null
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.end2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end2.i:                                        ; preds = %if.end.i
  %call3.i = tail call fastcc i32 @evm_protected_xattr(ptr noundef nonnull %xattr_name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %if.end2.i.if.end_crit_edge

if.end2.i.if.end_crit_edge:                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end2.i
  %call5.i = tail call i32 @posix_xattr_acl(ptr noundef nonnull %xattr_name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true7.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %call8.i = tail call i32 @strcmp(ptr noundef nonnull %xattr_name, ptr noundef nonnull dereferenceable(13) @.str) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true7.i.if.end_crit_edge, label %land.lhs.true7.i.return_crit_edge

land.lhs.true7.i.return_crit_edge:                ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.lhs.true7.i.if.end_crit_edge:                ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true7.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.end2.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode, align 8
  %call.i = tail call ptr @integrity_iint_find(ptr noundef %2) #11
  %tobool.not.i11 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i11, label %if.end.evm_reset_status.exit_crit_edge, label %if.then.i

if.end.evm_reset_status.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %evm_reset_status.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %evm_status.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %evm_status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load.i = load i32, ptr %evm_status.i, align 4
  %bf.clear.i = and i32 %bf.load.i, -3841
  %bf.set.i = or i32 %bf.clear.i, 1536
  store i32 %bf.set.i, ptr %evm_status.i, align 4
  br label %evm_reset_status.exit

evm_reset_status.exit:                            ; preds = %if.then.i, %if.end.evm_reset_status.exit_crit_edge
  %call1 = tail call i32 @strcmp(ptr noundef %xattr_name, ptr noundef nonnull dereferenceable(13) @.str) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %evm_reset_status.exit.return_crit_edge, label %if.end3

evm_reset_status.exit.return_crit_edge:           ; preds = %evm_reset_status.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end3:                                          ; preds = %evm_reset_status.exit
  %4 = load i32, ptr @evm_initialized, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.return_crit_edge, label %if.end6

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @evm_update_evmxattr(ptr noundef %dentry, ptr noundef %xattr_name, ptr noundef null, i32 noundef 0) #11
  br label %return

return:                                           ; preds = %if.end6, %if.end3.return_crit_edge, %evm_reset_status.exit.return_crit_edge, %land.lhs.true7.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @evm_inode_setattr(ptr noundef %dentry, ptr nocapture noundef readonly %attr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @evm_initialized, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %attr, align 8
  %and2 = and i32 %2, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %and.i.i = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool.i.not.i
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %3 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_inode.i.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 8
  %7 = and i16 %6, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %7)
  %cmp.i = icmp eq i16 %7, -32768
  br i1 %cmp.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %.b.i = load i1, ptr @evm_fixmode, align 4
  br i1 %.b.i, label %lor.lhs.false3.i.cleanup_crit_edge, label %evm_verify_current_integrity.exit

lor.lhs.false3.i.cleanup_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

evm_verify_current_integrity.exit:                ; preds = %lor.lhs.false3.i
  %call4.i = tail call fastcc i32 @evm_verify_hmac(ptr noundef %dentry, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null) #11
  %8 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call4.i, label %lor.lhs.false9 [
    i32 0, label %evm_verify_current_integrity.exit.cleanup_crit_edge
    i32 5, label %evm_verify_current_integrity.exit.cleanup_crit_edge44
    i32 3, label %evm_verify_current_integrity.exit.cleanup_crit_edge45
  ]

evm_verify_current_integrity.exit.cleanup_crit_edge45: ; preds = %evm_verify_current_integrity.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

evm_verify_current_integrity.exit.cleanup_crit_edge44: ; preds = %evm_verify_current_integrity.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

evm_verify_current_integrity.exit.cleanup_crit_edge: ; preds = %evm_verify_current_integrity.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false9:                                   ; preds = %evm_verify_current_integrity.exit
  %9 = load i32, ptr @evm_initialized, align 4
  %10 = and i32 %9, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %10)
  %11 = icmp eq i32 %10, -2147483648
  br i1 %11, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %lor.lhs.false9
  %12 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call4.i, label %land.lhs.true.if.end21_crit_edge [
    i32 4, label %land.lhs.true.cleanup_crit_edge
    i32 6, label %land.lhs.true.cleanup_crit_edge46
    i32 1, label %land.lhs.true.land.lhs.true17_crit_edge
  ]

land.lhs.true.land.lhs.true17_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true17

land.lhs.true.cleanup_crit_edge46:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.end15:                                         ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp16 = icmp eq i32 %call4.i, 1
  br i1 %cmp16, label %if.end15.land.lhs.true17_crit_edge, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.end15.land.lhs.true17_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.end15.land.lhs.true17_crit_edge, %land.lhs.true.land.lhs.true17_crit_edge
  %13 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d_inode.i.i, align 8
  %15 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %attr, align 8
  %and.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true17.land.lhs.true.i_crit_edge, label %lor.lhs.false.i35

land.lhs.true17.land.lhs.true.i_crit_edge:        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

lor.lhs.false.i35:                                ; preds = %land.lhs.true17
  %ia_uid.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %ia_uid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack25.i = load i32, ptr %ia_uid.i, align 8
  %18 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack26.i = load i32, ptr %i_uid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack25.i, i32 %.unpack26.i)
  %cmp.i.i = icmp eq i32 %.unpack25.i, %.unpack26.i
  br i1 %cmp.i.i, label %lor.lhs.false.i35.land.lhs.true.i_crit_edge, label %lor.lhs.false.i35.if.end21_crit_edge

lor.lhs.false.i35.if.end21_crit_edge:             ; preds = %lor.lhs.false.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

lor.lhs.false.i35.land.lhs.true.i_crit_edge:      ; preds = %lor.lhs.false.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i35.land.lhs.true.i_crit_edge, %land.lhs.true17.land.lhs.true.i_crit_edge
  %and4.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.land.lhs.true10.i_crit_edge, label %lor.lhs.false6.i

land.lhs.true.i.land.lhs.true10.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true10.i

lor.lhs.false6.i:                                 ; preds = %land.lhs.true.i
  %ia_gid.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 3
  %19 = ptrtoint ptr %ia_gid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack.i = load i32, ptr %ia_gid.i, align 4
  %20 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack24.i = load i32, ptr %i_gid.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack.i, i32 %.unpack24.i)
  %cmp.i27.i = icmp eq i32 %.unpack.i, %.unpack24.i
  br i1 %cmp.i27.i, label %lor.lhs.false6.i.land.lhs.true10.i_crit_edge, label %lor.lhs.false6.i.if.end21_crit_edge

lor.lhs.false6.i.if.end21_crit_edge:              ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

lor.lhs.false6.i.land.lhs.true10.i_crit_edge:     ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true10.i

land.lhs.true10.i:                                ; preds = %lor.lhs.false6.i.land.lhs.true10.i_crit_edge, %land.lhs.true.i.land.lhs.true10.i_crit_edge
  %and11.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true10.i.cleanup_crit_edge, label %lor.lhs.false13.i

land.lhs.true10.i.cleanup_crit_edge:              ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false13.i:                                ; preds = %land.lhs.true10.i
  %ia_mode.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %21 = ptrtoint ptr %ia_mode.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ia_mode.i, align 4
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %14, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %24)
  %cmp.i36 = icmp eq i16 %22, %24
  br i1 %cmp.i36, label %lor.lhs.false13.i.cleanup_crit_edge, label %lor.lhs.false13.i.if.end21_crit_edge

lor.lhs.false13.i.if.end21_crit_edge:             ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

lor.lhs.false13.i.cleanup_crit_edge:              ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false13.i.if.end21_crit_edge, %lor.lhs.false6.i.if.end21_crit_edge, %lor.lhs.false.i35.if.end21_crit_edge, %if.end15.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge
  %25 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_inode.i.i, align 8
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 8
  %arrayidx = getelementptr [7 x ptr], ptr @integrity_status_msg, i32 0, i32 %call4.i
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  tail call void @integrity_audit_msg(i32 noundef 1801, ptr noundef %26, ptr noundef %28, ptr noundef nonnull @.str.1, ptr noundef %30, i32 noundef -1, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %lor.lhs.false13.i.cleanup_crit_edge, %land.lhs.true10.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge46, %evm_verify_current_integrity.exit.cleanup_crit_edge, %evm_verify_current_integrity.exit.cleanup_crit_edge44, %evm_verify_current_integrity.exit.cleanup_crit_edge45, %lor.lhs.false3.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end21 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge46 ], [ 0, %evm_verify_current_integrity.exit.cleanup_crit_edge ], [ 0, %evm_verify_current_integrity.exit.cleanup_crit_edge44 ], [ 0, %evm_verify_current_integrity.exit.cleanup_crit_edge45 ], [ 0, %lor.lhs.false3.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %lor.lhs.false13.i.cleanup_crit_edge ], [ 0, %land.lhs.true10.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @integrity_audit_msg(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @evm_inode_post_setattr(ptr noundef %dentry, i32 noundef %ia_valid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @evm_initialized, align 4
  %and.i.i = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end7_crit_edge, label %if.end

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end:                                           ; preds = %entry
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %1 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d_inode, align 8
  %call.i = tail call ptr @integrity_iint_find(ptr noundef %2) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.evm_reset_status.exit_crit_edge, label %if.then.i

if.end.evm_reset_status.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %evm_reset_status.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %evm_status.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %evm_status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load.i = load i32, ptr %evm_status.i, align 4
  %bf.clear.i = and i32 %bf.load.i, -3841
  %bf.set.i = or i32 %bf.clear.i, 1536
  store i32 %bf.set.i, ptr %evm_status.i, align 4
  br label %evm_reset_status.exit

evm_reset_status.exit:                            ; preds = %if.then.i, %if.end.evm_reset_status.exit_crit_edge
  %4 = load i32, ptr @evm_initialized, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %ia_valid, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = or i1 %tobool4.not, %tobool.not
  br i1 %or.cond, label %evm_reset_status.exit.if.end7_crit_edge, label %if.then5

evm_reset_status.exit.if.end7_crit_edge:          ; preds = %evm_reset_status.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %evm_reset_status.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 @evm_update_evmxattr(ptr noundef %dentry, ptr noundef null, ptr noundef null, i32 noundef 0) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %evm_reset_status.exit.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @evm_inode_init_security(ptr noundef %inode, ptr noundef %lsm_xattr, ptr nocapture noundef writeonly %evm_xattr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @evm_initialized, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %lsm_xattr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lsm_xattr, align 4
  %call = tail call fastcc i32 @evm_protected_xattr(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3392, i32 noundef 21) #17
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %call7.i.i, align 8
  %digest = getelementptr inbounds %struct.evm_xattr, ptr %call7.i.i, i32 0, i32 1
  %call6 = tail call i32 @evm_init_hmac(ptr noundef %inode, ptr noundef %lsm_xattr, ptr noundef %digest) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %out, label %if.end8

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %value = getelementptr inbounds %struct.xattr, ptr %evm_xattr, i32 0, i32 1
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %value, align 4
  %value_len = getelementptr inbounds %struct.xattr, ptr %evm_xattr, i32 0, i32 2
  %6 = ptrtoint ptr %value_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 21, ptr %value_len, align 4
  %7 = ptrtoint ptr %evm_xattr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.2, ptr %evm_xattr, align 4
  br label %cleanup

out:                                              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %out ], [ 0, %if.end8 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evm_init_hmac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @evm_load_x509() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @integrity_load_x509(i32 noundef 0, ptr noundef nonnull @.str.3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @evm_initialized, align 4
  %or = or i32 %0, 2
  store i32 %or, ptr @evm_initialized, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @integrity_load_x509(i32 noundef, ptr noundef) local_unnamed_addr #7 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_evm() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @evm_init_config() #18
  %call = tail call i32 @integrity_init_keyring(i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then7_crit_edge

entry.if.then7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @evm_init_secfs() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %error5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #14
  br label %if.then7

error5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp6.not = icmp eq i32 %call1, 0
  br i1 %cmp6.not, label %error5.if.end15_crit_edge, label %error5.if.then7_crit_edge

error5.if.then7_crit_edge:                        ; preds = %error5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

error5.if.end15_crit_edge:                        ; preds = %error5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then7:                                         ; preds = %error5.if.then7_crit_edge, %do.end, %entry.if.then7_crit_edge
  %error.026 = phi i32 [ %call1, %error5.if.then7_crit_edge ], [ %call1, %do.end ], [ %call, %entry.if.then7_crit_edge ]
  %0 = load volatile ptr, ptr @evm_config_xattrnames, align 4
  %cmp.i.not = icmp eq ptr %0, @evm_config_xattrnames
  br i1 %cmp.i.not, label %if.then7.if.end15_crit_edge, label %if.then7.for.body_crit_edge

if.then7.for.body_crit_edge:                      ; preds = %if.then7
  br label %for.body

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.then7.for.body_crit_edge
  %pos.030 = phi ptr [ %q.032, %list_del.exit.for.body_crit_edge ], [ %0, %if.then7.for.body_crit_edge ]
  %1 = ptrtoint ptr %pos.030 to i32
  call void @__asan_load4_noabort(i32 %1)
  %q.032 = load ptr, ptr %pos.030, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.030) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.030, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %pos.030 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pos.030, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %pos.030 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.030, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.030, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp.i22.not = icmp eq ptr %q.032, @evm_config_xattrnames
  br i1 %cmp.i22.not, label %list_del.exit.if.end15_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.if.end15_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end15:                                         ; preds = %list_del.exit.if.end15_crit_edge, %if.then7.if.end15_crit_edge, %error5.if.end15_crit_edge
  %error.027 = phi i32 [ %error.026, %if.then7.if.end15_crit_edge ], [ 0, %error5.if.end15_crit_edge ], [ %error.026, %list_del.exit.if.end15_crit_edge ]
  ret i32 %error.027
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getxattr_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evm_calc_hmac(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evm_calc_hash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @integrity_digsig_verify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_from_xattr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_update_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @evm_init_config() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #14
  br label %do.end3

do.end3:                                          ; preds = %list_add_tail.exit.do.end3_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %list_add_tail.exit.do.end3_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.xattr_list], ptr @evm_config_default_xattrnames, i32 0, i32 %i.017
  %name = getelementptr [8 x %struct.xattr_list], ptr @evm_config_default_xattrnames, i32 0, i32 %i.017, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %enabled = getelementptr [8 x %struct.xattr_list], ptr @evm_config_default_xattrnames, i32 0, i32 %i.017, i32 2
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.26, ptr @.str.27
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %1, ptr noundef nonnull %cond) #14
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @evm_config_xattrnames, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %4, ptr noundef nonnull @evm_config_xattrnames) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end3.list_add_tail.exit_crit_edge

do.end3.list_add_tail.exit_crit_edge:             ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %arrayidx, ptr getelementptr inbounds (%struct.list_head, ptr @evm_config_xattrnames, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @evm_config_xattrnames, ptr %arrayidx, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %arrayidx, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end3.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %list_add_tail.exit.do.end3_crit_edge

list_add_tail.exit.do.end3_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

for.end:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  %8 = load i32, ptr @evm_hmac_attrs, align 4
  %or = or i32 %8, 1
  store i32 %or, ptr @evm_hmac_attrs, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %or) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @integrity_init_keyring(i32 noundef) local_unnamed_addr #7 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evm_init_secfs() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !28, !29, !30, !31, !33, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !72, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @evm_config_xattrnames, !1, !"evm_config_xattrnames", i1 false, i1 false}
!1 = !{!"../security/integrity/evm/evm_main.c", i32 79, i32 1}
!2 = !{ptr @__setup_evm_set_fixmode, !3, !"__setup_evm_set_fixmode", i1 false, i1 false}
!3 = !{!"../security/integrity/evm/evm_main.c", i32 91, i32 1}
!4 = !{ptr @__ksymtab_evm_verifyxattr, !5, !"__ksymtab_evm_verifyxattr", i1 false, i1 false}
!5 = !{!"../security/integrity/evm/evm_main.c", i32 425, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/integrity/evm/evm_main.c", i32 636, i32 25}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/integrity/evm/evm_main.c", i32 808, i32 29}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/integrity/evm/evm_main.c", i32 863, i32 20}
!12 = !{ptr @__ksymtab_evm_inode_init_security, !13, !"__ksymtab_evm_inode_init_security", i1 false, i1 false}
!13 = !{!"../security/integrity/evm/evm_main.c", i32 869, i32 1}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/integrity/evm/evm_main.c", i32 876, i32 50}
!16 = !{ptr @__initcall__kmod_evm__231_910_init_evm7, !17, !"__initcall__kmod_evm__231_910_init_evm7", i1 false, i1 false}
!17 = !{!"../security/integrity/evm/evm_main.c", i32 910, i32 1}
!18 = !{ptr @evm_initialized, !19, !"evm_initialized", i1 false, i1 false}
!19 = !{!"../security/integrity/evm/evm_main.c", i32 30, i32 5}
!20 = !{ptr @evm_hmac_attrs, !21, !"evm_hmac_attrs", i1 false, i1 false}
!21 = !{!"../security/integrity/evm/evm_main.c", i32 36, i32 5}
!22 = !{ptr @__setup_str_evm_set_fixmode, !3, !"__setup_str_evm_set_fixmode", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../security/integrity/evm/evm_main.c", i32 84, i32 19}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../security/integrity/evm/evm_main.c", i32 87, i32 3}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @evm_set_fixmode._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @evm_set_fixmode._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = distinct !{null, !32, !"evm_fixmode", i1 false, i1 false}
!32 = !{!"../security/integrity/evm/evm_main.c", i32 81, i32 12}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../security/integrity/evm/evm_main.c", i32 277, i32 2}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @evm_verify_hmac.__UNIQUE_ID_ddebug226, !34, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!37 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/integrity/evm/evm_main.c", i32 579, i32 9}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../security/integrity/evm/evm_main.c", i32 33, i32 2}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../security/integrity/evm/evm_main.c", i32 33, i32 10}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../security/integrity/evm/evm_main.c", i32 33, i32 28}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../security/integrity/evm/evm_main.c", i32 33, i32 36}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../security/integrity/evm/evm_main.c", i32 33, i32 54}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../security/integrity/evm/evm_main.c", i32 34, i32 2}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../security/integrity/evm/evm_main.c", i32 34, i32 15}
!54 = !{ptr @integrity_status_msg, !55, !"integrity_status_msg", i1 false, i1 false}
!55 = !{!"../security/integrity/evm/evm_main.c", i32 32, i32 27}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../security/integrity/evm/evm_main.c", i32 895, i32 3}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @init_evm._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @init_evm._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../security/integrity/evm/evm_main.c", i32 99, i32 2}
!63 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @evm_init_config._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @evm_init_config._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/integrity/evm/evm_main.c", i32 101, i32 3}
!68 = !{ptr @evm_init_config._entry.23, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @evm_init_config._entry_ptr.25, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../security/integrity/evm/evm_main.c", i32 111, i32 2}
!74 = !{ptr @evm_init_config._entry.28, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @evm_init_config._entry_ptr.30, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../security/integrity/evm/evm_main.c", i32 39, i32 11}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../security/integrity/evm/evm_main.c", i32 44, i32 11}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../security/integrity/evm/evm_main.c", i32 49, i32 11}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../security/integrity/evm/evm_main.c", i32 54, i32 11}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../security/integrity/evm/evm_main.c", i32 59, i32 11}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../security/integrity/evm/evm_main.c", i32 64, i32 11}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../security/integrity/evm/evm_main.c", i32 69, i32 11}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../security/integrity/evm/evm_main.c", i32 74, i32 11}
!92 = !{ptr @evm_config_default_xattrnames, !93, !"evm_config_default_xattrnames", i1 false, i1 false}
!93 = !{!"../security/integrity/evm/evm_main.c", i32 38, i32 26}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i8 0, i8 2}
!104 = !{i64 2148741916, i64 2148741921, i64 2148741934, i64 2148741978, i64 2148742012, i64 2148742033}
!105 = !{!"auto-init"}
!106 = !{i64 2148270792}
!107 = !{i64 2148185256, i64 2148185288, i64 2148185317, i64 2148185351, i64 2148185382, i64 2148185405}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{i64 2148883651}
