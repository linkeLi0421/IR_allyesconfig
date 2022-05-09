; ModuleID = '/llk/IR_all_yes/net/netfilter/ipset/ip_set_hash_netport.c_pt.bc'
source_filename = "../net/netfilter/ipset/ip_set_hash_netport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ip_set_type = type { %struct.list_head, [32 x i8], i8, i8, i8, i8, i8, [10 x i8], i16, ptr, [27 x %struct.nla_policy], [31 x %struct.nla_policy], ptr }
%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ip_set_type_variant = type { ptr, ptr, [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%union.nf_inet_addr = type { [4 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ip_set_ext_type = type { ptr, i32, i32, i8, i8 }
%struct.hash_netport6_elem = type { %union.nf_inet_addr, i16, i8, i8 }
%struct.ip_set = type { [32 x i8], %struct.spinlock, i32, i32, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, [4 x i32], ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nlattr = type { i16, i16 }
%struct.htable = type { %struct.atomic_t, %struct.atomic_t, i8, i32, ptr, [0 x ptr] }
%struct.hash_netport6 = type { ptr, %struct.htable_gc, i32, i32, i8, %struct.list_head, %struct.hash_netport6_elem, [128 x %struct.net_prefixes] }
%struct.htable_gc = type { %struct.delayed_work, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.net_prefixes = type { [1 x i32], [1 x i8] }
%struct.ip_set_region = type { %struct.spinlock, i32, i32 }
%struct.hash_netport4_elem = type { i32, i16, i8, i8 }
%struct.ip_set_ext = type { %struct.ip_set_skbinfo, i64, i64, ptr, i32, i8, i8, i8 }
%struct.ip_set_skbinfo = type { i32, i32, i32, i16, i16 }
%struct.hash_netport4 = type { ptr, %struct.htable_gc, i32, i32, i8, %struct.list_head, %struct.hash_netport4_elem, [32 x %struct.net_prefixes] }
%struct.sk_buff = type { %union.anon.82, %union.anon.151, %union.anon.152, [48 x i8], %union.anon.153, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.155, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.151 = type { ptr }
%union.anon.152 = type { i64 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i32, ptr }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.157, i32, i32, i32, i16, i16, %union.anon.159, i32, %union.anon.160, %union.anon.161, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.157 = type { i32 }
%union.anon.159 = type { i32 }
%union.anon.160 = type { i32 }
%union.anon.161 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ip_set_adt_opt = type { i8, i8, i8, i32, %struct.ip_set_ext }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.hbucket = type { %struct.callback_head, [2 x i32], i8, i8, [6 x i8], [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.ip_set_counter = type { %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.hash_netport4_resize_ad = type { %struct.list_head, i32, %struct.hash_netport4_elem, %struct.ip_set_ext, %struct.ip_set_ext, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.141 }
%union.anon.141 = type { [4 x i32] }
%struct.hash_netport6_resize_ad = type { %struct.list_head, i32, %struct.hash_netport6_elem, %struct.ip_set_ext, %struct.ip_set_ext, i32 }

@__UNIQUE_ID_file610 = internal constant [65 x i8] c"ip_set_hash_netport.file=net/netfilter/ipset/ip_set_hash_netport\00", section ".modinfo", align 1
@__UNIQUE_ID_license611 = internal constant [32 x i8] c"ip_set_hash_netport.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author612 = internal constant [67 x i8] c"ip_set_hash_netport.author=Jozsef Kadlecsik <kadlec@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description613 = internal constant [77 x i8] c"ip_set_hash_netport.description=hash:net,port type of IP sets, revisions 0-8\00", section ".modinfo", align 1
@__UNIQUE_ID_alias614 = internal constant [47 x i8] c"ip_set_hash_netport.alias=ip_set_hash:net,port\00", section ".modinfo", align 1
@hash_netport_type = internal global %struct.ip_set_type { %struct.list_head zeroinitializer, [32 x i8] c"hash:net,port\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 7, i8 2, i8 0, i8 0, i8 8, [10 x i8] c"\00\00\00\00\00\00\00\00\02\00", i16 131, ptr @hash_netport_create, [27 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [31 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 255, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer], ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_ip_set_hash_netport__774_519_hash_netport_init6 = internal global ptr @hash_netport_init, section ".initcall6.init", align 4
@__exitcall_hash_netport_fini = internal global ptr @hash_netport_fini, section ".exitcall.exit", align 4
@hash_netport_create.__UNIQUE_ID_ddebug771 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ip_set_hash_netport\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hash_netport_create\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"net/netfilter/ipset/ip_set_hash_gen.h\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Create set %s with family %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inet\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inet6\00", [26 x i8] zeroinitializer }, align 32
@hash_netport_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&t->hregion[i].lock\00", [44 x i8] zeroinitializer }, align 32
@hash_netport4_variant = internal constant { %struct.ip_set_type_variant, [40 x i8] } { %struct.ip_set_type_variant { ptr @hash_netport4_kadt, ptr @hash_netport4_uadt, [3 x ptr] [ptr @hash_netport4_add, ptr @hash_netport4_del, ptr @hash_netport4_test], ptr @hash_netport4_resize, ptr @hash_netport4_destroy, ptr @hash_netport4_flush, ptr null, ptr @hash_netport4_head, ptr @hash_netport4_list, ptr @hash_netport4_uref, ptr @hash_netport4_same_set, i8 1 }, [40 x i8] zeroinitializer }, align 32
@hash_netport6_variant = internal constant { %struct.ip_set_type_variant, [40 x i8] } { %struct.ip_set_type_variant { ptr @hash_netport6_kadt, ptr @hash_netport6_uadt, [3 x ptr] [ptr @hash_netport6_add, ptr @hash_netport6_del, ptr @hash_netport6_test], ptr @hash_netport6_resize, ptr @hash_netport6_destroy, ptr @hash_netport6_flush, ptr null, ptr @hash_netport6_head, ptr @hash_netport6_list, ptr @hash_netport6_uref, ptr @hash_netport6_same_set, i8 1 }, [40 x i8] zeroinitializer }, align 32
@hash_netport_create.__UNIQUE_ID_ddebug773 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 1, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"create %s hashsize %u (%u) maxelem %u: %p(%p)\0A\00", [49 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ip_set_netmask_map = external dso_local local_unnamed_addr constant [0 x %union.nf_inet_addr], align 4
@ip_set_hostmask_map = external dso_local local_unnamed_addr constant [0 x %union.nf_inet_addr], align 4
@hash_netport4_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@hash_netport4_add.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport4_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014Set %s is full, maxelem %u reached\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hash_netport4_add\00", [46 x i8] zeroinitializer }, align 32
@hash_netport4_add._entry_ptr = internal global ptr @hash_netport4_add._entry, section ".printk_index", align 4
@hash_netport4_add.__UNIQUE_ID_ddebug657 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -1, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Table destroy after resize by add: %p\0A\00", [57 x i8] zeroinitializer }, align 32
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@hash_netport4_gc_do.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hash_netport4_gc_do\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"expired %u/%u\0A\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ip_set_extensions = external dso_local local_unnamed_addr constant [0 x %struct.ip_set_ext_type], align 4
@hash_netport4_del.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport4_del.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport4_del.__UNIQUE_ID_ddebug671 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 1, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hash_netport4_del\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Table destroy after resize by del: %p\0A\00", [57 x i8] zeroinitializer }, align 32
@hash_netport4_test.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport4_test.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport4_test_cidrs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport4_test_cidrs.__UNIQUE_ID_ddebug674 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 1, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hash_netport4_test_cidrs\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"test by nets\0A\00", [18 x i8] zeroinitializer }, align 32
@hash_netport4_test_cidrs.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport4_resize.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport4_resize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@hash_netport4_resize.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport4_resize.__UNIQUE_ID_ddebug635 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hash_netport4_resize\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"attempt to resize set %s from %u to %u, t %p\0A\00", [50 x i8] zeroinitializer }, align 32
@hash_netport4_resize.__UNIQUE_ID_ddebug642 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.30, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"set %s resized from %u (%p) to %u (%p)\0A\00", [56 x i8] zeroinitializer }, align 32
@hash_netport4_resize.__UNIQUE_ID_ddebug643 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.31, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Table destroy by resize %p\0A\00", [36 x i8] zeroinitializer }, align 32
@hash_netport4_resize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.26, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014Cannot increase the hashsize of set %s further\0A\00", [46 x i8] zeroinitializer }, align 32
@hash_netport4_resize._entry_ptr = internal global ptr @hash_netport4_resize._entry, section ".printk_index", align 4
@hash_netport4_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@hash_netport4_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport4_head.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport4_ext_size.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport4_ext_size.__warned.35 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport4_list.__UNIQUE_ID_ddebug688 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 1, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hash_netport4_list\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"list hash set %s\0A\00", [46 x i8] zeroinitializer }, align 32
@hash_netport4_list.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport4_list.__UNIQUE_ID_ddebug691 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.38, i8 1, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cb->arg bucket: %lu, t %p n %p\0A\00", [32 x i8] zeroinitializer }, align 32
@hash_netport4_list.__UNIQUE_ID_ddebug692 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.39, i8 1, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"list hash %lu hbucket %p i %u, data %p\0A\00", [56 x i8] zeroinitializer }, align 32
@hash_netport4_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.36, ptr @.str.2, i32 1401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\014Can't list set %s: one bucket does not fit into a message. Please report it!\0A\00", [48 x i8] zeroinitializer }, align 32
@hash_netport4_list._entry_ptr = internal global ptr @hash_netport4_list._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/linux/sched.h\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@hash_netport4_uref.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport4_uref.__UNIQUE_ID_ddebug687 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 1, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hash_netport4_uref\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Table destroy after resize  by dump: %p\0A\00", [55 x i8] zeroinitializer }, align 32
@__const.hash_netport6_uadt.e = private unnamed_addr constant %struct.hash_netport6_elem { %union.nf_inet_addr zeroinitializer, i16 0, i8 0, i8 -2 }, align 4
@hash_netport6_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport6_add.__warned.47 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport6_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.48, ptr @.str.2, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hash_netport6_add\00", [46 x i8] zeroinitializer }, align 32
@hash_netport6_add._entry_ptr = internal global ptr @hash_netport6_add._entry, section ".printk_index", align 4
@hash_netport6_add.__UNIQUE_ID_ddebug735 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.12, i8 0, i8 -1, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hash_netport6_gc_do.__UNIQUE_ID_ddebug697 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.17, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hash_netport6_gc_do\00", [44 x i8] zeroinitializer }, align 32
@hash_netport6_del.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport6_del.__warned.50 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport6_del.__UNIQUE_ID_ddebug749 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.20, i8 1, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hash_netport6_del\00", [46 x i8] zeroinitializer }, align 32
@hash_netport6_test.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport6_test.__warned.52 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport6_test_cidrs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport6_test_cidrs.__UNIQUE_ID_ddebug752 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.23, i8 1, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hash_netport6_test_cidrs\00", [39 x i8] zeroinitializer }, align 32
@hash_netport6_test_cidrs.__warned.54 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport6_resize.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport6_resize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@hash_netport6_resize.__warned.55 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport6_resize.__UNIQUE_ID_ddebug713 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.27, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hash_netport6_resize\00", [43 x i8] zeroinitializer }, align 32
@hash_netport6_resize.__UNIQUE_ID_ddebug720 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.30, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hash_netport6_resize.__UNIQUE_ID_ddebug721 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.31, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hash_netport6_resize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.56, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hash_netport6_resize._entry_ptr = internal global ptr @hash_netport6_resize._entry, section ".printk_index", align 4
@hash_netport6_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport6_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport6_head.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport6_ext_size.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport6_ext_size.__warned.60 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport6_list.__UNIQUE_ID_ddebug766 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.37, i8 1, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hash_netport6_list\00", [45 x i8] zeroinitializer }, align 32
@hash_netport6_list.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport6_list.__UNIQUE_ID_ddebug769 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.38, i8 1, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hash_netport6_list.__UNIQUE_ID_ddebug770 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.39, i8 1, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hash_netport6_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.61, ptr @.str.2, i32 1401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hash_netport6_list._entry_ptr = internal global ptr @hash_netport6_list._entry, section ".printk_index", align 4
@hash_netport6_uref.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport6_uref.__UNIQUE_ID_ddebug765 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.46, i8 1, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hash_netport6_uref\00", [45 x i8] zeroinitializer }, align 32
@hash_netport4_gc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&(&gc->dwork)->work)\00", [57 x i8] zeroinitializer }, align 32
@hash_netport4_gc_init.__key.64 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&gc->dwork)->timer\00", [43 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@hash_netport4_gc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport4_gc.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.67, i8 0, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hash_netport4_gc\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Table destroy after resize by expire: %p\0A\00", [54 x i8] zeroinitializer }, align 32
@hash_netport6_gc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@hash_netport6_gc_init.__key.68 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@hash_netport6_gc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netport6_gc.__UNIQUE_ID_ddebug708 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.67, i8 0, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hash_netport6_gc\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.70 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 6, i64 17, i64 132, i64 136]
@__sancov_gen_cov_switch_values.71 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 6, i64 17, i64 58, i64 132, i64 136]
@___asan_gen_ = private constant [45 x i8] c"../net/netfilter/ipset/ip_set_hash_netport.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1458, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1537, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [22 x i8] c"hash_netport4_variant\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [22 x i8] c"hash_netport6_variant\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1422, i32 41 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1592, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 855, i32 6 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1022, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 749, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 760, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 764, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 782, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 466, i32 27 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1363, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1373, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 695, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [25 x i8] c"../include/linux/sched.h\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 2089, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 991, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 723, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1015, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 520, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1135, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1172, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 672, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 680, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 803, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1354, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1400, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1328, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 608, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [41 x i8] c"../net/netfilter/ipset/ip_set_hash_gen.h\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 597, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_alias614, ptr @__UNIQUE_ID_author612, ptr @__UNIQUE_ID_description613, ptr @__UNIQUE_ID_file610, ptr @__UNIQUE_ID_license611, ptr @__exitcall_hash_netport_fini, ptr @__initcall__kmod_ip_set_hash_netport__774_519_hash_netport_init6, ptr @hash_netport4_add._entry, ptr @hash_netport4_add._entry_ptr, ptr @hash_netport4_list._entry, ptr @hash_netport4_list._entry_ptr, ptr @hash_netport4_resize._entry, ptr @hash_netport4_resize._entry_ptr, ptr @hash_netport6_add._entry, ptr @hash_netport6_add._entry_ptr, ptr @hash_netport6_list._entry, ptr @hash_netport6_list._entry_ptr, ptr @hash_netport6_resize._entry, ptr @hash_netport6_resize._entry_ptr, ptr @hash_netport_fini, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @hash_netport_create.__key, ptr @.str.6, ptr @hash_netport4_variant, ptr @hash_netport6_variant, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @hash_netport4_resize.__key, ptr @.str.26, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @hash_netport6_resize.__key, ptr @.str.56, ptr @.str.61, ptr @.str.62, ptr @hash_netport4_gc_init.__key, ptr @.str.63, ptr @hash_netport4_gc_init.__key.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @hash_netport6_gc_init.__key, ptr @hash_netport6_gc_init.__key.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netport_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netport4_variant to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netport6_variant to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netport4_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netport4_resize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netport4_resize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netport4_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netport6_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netport6_resize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netport6_resize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netport6_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netport4_gc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netport4_gc_init.__key.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netport6_gc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netport6_gc_init.__key.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hash_netport_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rcu_barrier() #12
  tail call void @ip_set_type_unregister(ptr noundef nonnull @hash_netport_type) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_set_type_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netport_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_set_type_register(ptr noundef nonnull @hash_netport_type) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netport_create(ptr nocapture noundef readnone %net, ptr noundef %set, ptr noundef %tb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport_create.__UNIQUE_ID_ddebug771, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport_create, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !222

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %family = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  %cond = select i1 %cmp, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport_create.__UNIQUE_ID_ddebug771, ptr noundef nonnull @.str.3, ptr noundef %set, ptr noundef nonnull %cond) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %family4 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 6
  %2 = ptrtoint ptr %family4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family4, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %do.end.cleanup_crit_edge [
    i8 2, label %do.end.if.end13_crit_edge
    i8 10, label %do.end.if.end13_crit_edge333
  ]

do.end.if.end13_crit_edge333:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %do.end.if.end13_crit_edge, %do.end.if.end13_crit_edge333
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 18
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i296 = icmp eq ptr %6, null
  br i1 %tobool.not.i296, label %if.end13.lor.lhs.false15_crit_edge, label %ip_set_optattr_netorder.exit

if.end13.lor.lhs.false15_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false15

ip_set_optattr_netorder.exit:                     ; preds = %if.end13
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nla_type.i, align 2
  %9 = and i16 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool2.i.not = icmp eq i16 %9, 0
  br i1 %tobool2.i.not, label %ip_set_optattr_netorder.exit.cleanup_crit_edge, label %ip_set_optattr_netorder.exit.lor.lhs.false15_crit_edge, !prof !223

ip_set_optattr_netorder.exit.lor.lhs.false15_crit_edge: ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false15

ip_set_optattr_netorder.exit.cleanup_crit_edge:   ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false15:                                  ; preds = %ip_set_optattr_netorder.exit.lor.lhs.false15_crit_edge, %if.end13.lor.lhs.false15_crit_edge
  %arrayidx.i297 = getelementptr ptr, ptr %tb, i32 19
  %10 = ptrtoint ptr %arrayidx.i297 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i297, align 4
  %tobool.not.i298 = icmp eq ptr %11, null
  br i1 %tobool.not.i298, label %lor.lhs.false15.lor.lhs.false17_crit_edge, label %ip_set_optattr_netorder.exit302

lor.lhs.false15.lor.lhs.false17_crit_edge:        ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false17

ip_set_optattr_netorder.exit302:                  ; preds = %lor.lhs.false15
  %nla_type.i299 = getelementptr inbounds %struct.nlattr, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %nla_type.i299 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %nla_type.i299, align 2
  %14 = and i16 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool2.i300.not = icmp eq i16 %14, 0
  br i1 %tobool2.i300.not, label %ip_set_optattr_netorder.exit302.cleanup_crit_edge, label %ip_set_optattr_netorder.exit302.lor.lhs.false17_crit_edge, !prof !223

ip_set_optattr_netorder.exit302.lor.lhs.false17_crit_edge: ; preds = %ip_set_optattr_netorder.exit302
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false17

ip_set_optattr_netorder.exit302.cleanup_crit_edge: ; preds = %ip_set_optattr_netorder.exit302
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false17:                                  ; preds = %ip_set_optattr_netorder.exit302.lor.lhs.false17_crit_edge, %lor.lhs.false15.lor.lhs.false17_crit_edge
  %arrayidx.i303 = getelementptr ptr, ptr %tb, i32 6
  %15 = ptrtoint ptr %arrayidx.i303 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i303, align 4
  %tobool.not.i304 = icmp eq ptr %16, null
  br i1 %tobool.not.i304, label %lor.lhs.false17.lor.rhs_crit_edge, label %ip_set_optattr_netorder.exit308

lor.lhs.false17.lor.rhs_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs

ip_set_optattr_netorder.exit308:                  ; preds = %lor.lhs.false17
  %nla_type.i305 = getelementptr inbounds %struct.nlattr, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %nla_type.i305 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %nla_type.i305, align 2
  %19 = and i16 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool2.i306.not = icmp eq i16 %19, 0
  br i1 %tobool2.i306.not, label %ip_set_optattr_netorder.exit308.cleanup_crit_edge, label %ip_set_optattr_netorder.exit308.lor.rhs_crit_edge, !prof !223

ip_set_optattr_netorder.exit308.lor.rhs_crit_edge: ; preds = %ip_set_optattr_netorder.exit308
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs

ip_set_optattr_netorder.exit308.cleanup_crit_edge: ; preds = %ip_set_optattr_netorder.exit308
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.rhs:                                          ; preds = %ip_set_optattr_netorder.exit308.lor.rhs_crit_edge, %lor.lhs.false17.lor.rhs_crit_edge
  %arrayidx.i309 = getelementptr ptr, ptr %tb, i32 8
  %20 = ptrtoint ptr %arrayidx.i309 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i309, align 4
  %tobool.not.i310 = icmp eq ptr %21, null
  br i1 %tobool.not.i310, label %lor.rhs.if.end29_crit_edge, label %ip_set_optattr_netorder.exit314

lor.rhs.if.end29_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

ip_set_optattr_netorder.exit314:                  ; preds = %lor.rhs
  %nla_type.i311 = getelementptr inbounds %struct.nlattr, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %nla_type.i311 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %nla_type.i311, align 2
  %24 = and i16 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool2.i312.not = icmp eq i16 %24, 0
  br i1 %tobool2.i312.not, label %ip_set_optattr_netorder.exit314.cleanup_crit_edge, label %ip_set_optattr_netorder.exit314.if.end29_crit_edge, !prof !223

ip_set_optattr_netorder.exit314.if.end29_crit_edge: ; preds = %ip_set_optattr_netorder.exit314
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

ip_set_optattr_netorder.exit314.cleanup_crit_edge: ; preds = %ip_set_optattr_netorder.exit314
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end29:                                         ; preds = %ip_set_optattr_netorder.exit314.if.end29_crit_edge, %lor.rhs.if.end29_crit_edge
  br i1 %tobool.not.i296, label %if.end29.if.end38_crit_edge, label %if.then31

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i.i, align 4
  %27 = tail call i32 @llvm.umax.i32(i32 %26, i32 64)
  %phi.bo327 = add i32 %27, -1
  br label %if.end38

if.end38:                                         ; preds = %if.then31, %if.end29.if.end38_crit_edge
  %hashsize.0 = phi i32 [ %phi.bo327, %if.then31 ], [ 1023, %if.end29.if.end38_crit_edge ]
  br i1 %tobool.not.i298, label %if.end38.if.end44_crit_edge, label %if.then41

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i315 = getelementptr i8, ptr %11, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i.i315 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i.i315, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end38.if.end44_crit_edge
  %maxelem.0 = phi i32 [ %29, %if.then41 ], [ 65536, %if.end38.if.end44_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 1176) #15
  %tobool46.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %31 = tail call i32 @llvm.ctlz.i32(i32 %hashsize.0, i1 true) #12, !range !224
  %sub.i = sub nuw nsw i32 32, %31
  %conv50 = trunc i32 %sub.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %conv50)
  %cmp3.i = icmp ugt i8 %conv50, 28
  %mul.i = shl i32 4, %sub.i
  %add.i = add i32 %mul.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp52328 = icmp eq i32 %add.i, 0
  %cmp52 = select i1 %cmp3.i, i1 true, i1 %cmp52328
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end55:                                         ; preds = %if.end48
  %call56 = tail call ptr @ip_set_alloc(i32 noundef %add.i) #12
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %hashsize.0)
  %cmp61 = icmp ult i32 %hashsize.0, 512
  %sub64 = sub nsw i32 22, %31
  %phi.bo = shl nuw nsw i32 52, %sub64
  %cond65 = select i1 %cmp61, i32 52, i32 %phi.bo
  %call66 = tail call ptr @ip_set_alloc(i32 noundef %cond65) #12
  %hregion = getelementptr inbounds %struct.htable, ptr %call56, i32 0, i32 4
  %32 = ptrtoint ptr %hregion to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call66, ptr %hregion, align 4
  %tobool68.not = icmp eq ptr %call66, null
  br i1 %tobool68.not, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ip_set_free(ptr noundef nonnull %call56) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end70:                                         ; preds = %if.end59
  %set71 = getelementptr inbounds %struct.hash_netport6, ptr %call7.i.i, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %set71 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %set, ptr %set71, align 8
  %shl79 = shl nuw nsw i32 1, %sub64
  %cond81 = select i1 %cmp61, i32 1, i32 %shl79
  br label %do.body84

do.body84:                                        ; preds = %do.body84.do.body84_crit_edge, %if.end70
  %i.0330 = phi i32 [ 0, %if.end70 ], [ %inc, %do.body84.do.body84_crit_edge ]
  %34 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hregion, align 4
  %arrayidx86 = getelementptr %struct.ip_set_region, ptr %35, i32 %i.0330
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx86, ptr noundef nonnull @.str.6, ptr noundef nonnull @hash_netport_create.__key, i16 noundef signext 3) #12
  %inc = add nuw i32 %i.0330, 1
  %exitcond.not = icmp eq i32 %inc, %cond81
  br i1 %exitcond.not, label %for.end, label %do.body84.do.body84_crit_edge

do.body84.do.body84_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body84

for.end:                                          ; preds = %do.body84
  %gc = getelementptr inbounds %struct.hash_netport6, ptr %call7.i.i, i32 0, i32 1
  %maxelem90 = getelementptr inbounds %struct.hash_netport6, ptr %call7.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %maxelem90 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %maxelem.0, ptr %maxelem90, align 8
  %arrayidx91 = getelementptr ptr, ptr %tb, i32 17
  %37 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx91, align 4
  %tobool92.not = icmp eq ptr %38, null
  br i1 %tobool92.not, label %if.else, label %if.then93

if.then93:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 4
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i, align 4
  %initval = getelementptr inbounds %struct.hash_netport6, ptr %call7.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %initval to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %initval, align 4
  br label %if.end97

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %initval96 = getelementptr inbounds %struct.hash_netport6, ptr %call7.i.i, i32 0, i32 3
  tail call void @get_random_bytes(ptr noundef %initval96, i32 noundef 4) #12
  br label %if.end97

if.end97:                                         ; preds = %if.else, %if.then93
  %bucketsize = getelementptr inbounds %struct.hash_netport6, ptr %call7.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %bucketsize to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 12, ptr %bucketsize, align 8
  %arrayidx98 = getelementptr ptr, ptr %tb, i32 21
  %43 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx98, align 4
  %tobool99.not = icmp eq ptr %44, null
  br i1 %tobool99.not, label %if.end97.if.end128_crit_edge, label %if.then100

if.end97.if.end128_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

if.then100:                                       ; preds = %if.end97
  %add.ptr.i.i317 = getelementptr i8, ptr %44, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i317 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add.ptr.i.i317, align 1
  %47 = ptrtoint ptr %bucketsize to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %bucketsize, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %46)
  %cmp106 = icmp ult i8 %46, 2
  br i1 %cmp106, label %if.then100.if.end128.sink.split_crit_edge, label %if.else110

if.then100.if.end128.sink.split_crit_edge:        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128.sink.split

if.else110:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %46)
  %cmp113 = icmp ugt i8 %46, 12
  br i1 %cmp113, label %if.else110.if.end128.sink.split_crit_edge, label %if.else117

if.else110.if.end128.sink.split_crit_edge:        ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128.sink.split

if.else117:                                       ; preds = %if.else110
  %48 = and i8 %46, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool120.not = icmp eq i8 %48, 0
  br i1 %tobool120.not, label %if.else117.if.end128_crit_edge, label %if.then121

if.else117.if.end128_crit_edge:                   ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

if.then121:                                       ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #14
  %add = add nuw nsw i8 %46, 1
  br label %if.end128.sink.split

if.end128.sink.split:                             ; preds = %if.then121, %if.else110.if.end128.sink.split_crit_edge, %if.then100.if.end128.sink.split_crit_edge
  %.sink = phi i8 [ %add, %if.then121 ], [ 2, %if.then100.if.end128.sink.split_crit_edge ], [ 12, %if.else110.if.end128.sink.split_crit_edge ]
  %49 = ptrtoint ptr %bucketsize to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %.sink, ptr %bucketsize, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.end128.sink.split, %if.else117.if.end128_crit_edge, %if.end97.if.end128_crit_edge
  %htable_bits = getelementptr inbounds %struct.htable, ptr %call56, i32 0, i32 2
  %50 = ptrtoint ptr %htable_bits to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv50, ptr %htable_bits, align 4
  %51 = ptrtoint ptr %maxelem90 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %maxelem90, align 8
  %53 = select i1 %cmp61, i32 0, i32 %sub64
  %div329 = lshr i32 %52, %53
  %maxelem140 = getelementptr inbounds %struct.htable, ptr %call56, i32 0, i32 3
  %54 = ptrtoint ptr %maxelem140 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %div329, ptr %maxelem140, align 4
  %55 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %call56, ptr %call7.i.i, align 8
  %ad = getelementptr inbounds %struct.hash_netport6, ptr %call7.i.i, i32 0, i32 5
  %56 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %ad, ptr %ad, align 4
  %prev.i = getelementptr inbounds %struct.hash_netport6, ptr %call7.i.i, i32 0, i32 5, i32 1
  %57 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %ad, ptr %prev.i, align 8
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %58 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call7.i.i, ptr %data, align 4
  %59 = ptrtoint ptr %family4 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %family4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %60)
  %cmp155 = icmp eq i8 %60, 2
  %hash_netport4_variant.hash_netport6_variant = select i1 %cmp155, ptr @hash_netport4_variant, ptr @hash_netport6_variant
  %. = select i1 %cmp155, i32 8, i32 20
  %variant160 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 5
  %61 = ptrtoint ptr %variant160 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %hash_netport4_variant.hash_netport6_variant, ptr %variant160, align 4
  %call161 = tail call i32 @ip_set_elem_len(ptr noundef %set, ptr noundef %tb, i32 noundef %., i32 noundef 4) #12
  %62 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call161, ptr %62, align 4
  %timeout = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 10
  %64 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %timeout, align 4
  %65 = ptrtoint ptr %arrayidx.i303 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i303, align 4
  %tobool165.not = icmp eq ptr %66, null
  br i1 %tobool165.not, label %if.end128.do.body180_crit_edge, label %if.then166

if.end128.do.body180_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body180

if.then166:                                       ; preds = %if.end128
  %add.ptr.i.i.i.i = getelementptr i8, ptr %66, i32 4
  %67 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %69 = tail call i32 @llvm.umin.i32(i32 %68, i32 2147483) #12
  %70 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %timeout, align 4
  %71 = ptrtoint ptr %family4 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %family4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %72)
  %cmp172 = icmp eq i8 %72, 2
  tail call void @__init_work(ptr noundef %gc, i32 noundef 0) #12
  %73 = ptrtoint ptr %gc to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -64, ptr %gc, align 4
  %lockdep_map.i = getelementptr inbounds %struct.hash_netport6, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 3
  br i1 %cmp172, label %if.then174, label %if.else176

if.then174:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.63, ptr noundef nonnull @hash_netport4_gc_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry8.i = getelementptr inbounds %struct.hash_netport6, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %74 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %entry8.i, ptr %entry8.i, align 8
  br label %do.body180.sink.split

if.else176:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.63, ptr noundef nonnull @hash_netport6_gc_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry8.i319 = getelementptr inbounds %struct.hash_netport6, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %75 = ptrtoint ptr %entry8.i319 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %entry8.i319, ptr %entry8.i319, align 8
  br label %do.body180.sink.split

do.body180.sink.split:                            ; preds = %if.else176, %if.then174
  %entry8.i319.sink = phi ptr [ %entry8.i319, %if.else176 ], [ %entry8.i, %if.then174 ]
  %hash_netport6_gc.sink = phi ptr [ @hash_netport6_gc, %if.else176 ], [ @hash_netport4_gc, %if.then174 ]
  %hash_netport6_gc_init.__key.68.sink = phi ptr [ @hash_netport6_gc_init.__key.68, %if.else176 ], [ @hash_netport4_gc_init.__key.64, %if.then174 ]
  %prev.i.i320 = getelementptr inbounds %struct.hash_netport6, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %prev.i.i320 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %entry8.i319.sink, ptr %prev.i.i320, align 4
  %func.i321 = getelementptr inbounds %struct.hash_netport6, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %77 = ptrtoint ptr %func.i321 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %hash_netport6_gc.sink, ptr %func.i321, align 8
  %timer.i322 = getelementptr inbounds %struct.hash_netport6, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i322, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.65, ptr noundef nonnull %hash_netport6_gc_init.__key.68.sink) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %78 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i.i323 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %78, ptr noundef %gc, i32 noundef 100) #12
  br label %do.body180

do.body180:                                       ; preds = %do.body180.sink.split, %if.end128.do.body180_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport_create.__UNIQUE_ID_ddebug773, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport_create, %if.then192)) #12
          to label %cleanup [label %if.then192], !srcloc !222

if.then192:                                       ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %htable_bits, align 4
  %conv196 = zext i8 %80 to i32
  %shl197 = shl nuw i32 1, %conv196
  %81 = ptrtoint ptr %maxelem90 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %maxelem90, align 8
  %83 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport_create.__UNIQUE_ID_ddebug773, ptr noundef nonnull @.str.7, ptr noundef %set, i32 noundef %shl197, i32 noundef %conv196, i32 noundef %82, ptr noundef %84, ptr noundef nonnull %call56) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then192, %do.body180, %if.then69, %if.then58, %if.then54, %if.end44.cleanup_crit_edge, %ip_set_optattr_netorder.exit314.cleanup_crit_edge, %ip_set_optattr_netorder.exit308.cleanup_crit_edge, %ip_set_optattr_netorder.exit302.cleanup_crit_edge, %ip_set_optattr_netorder.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then54 ], [ -12, %if.then69 ], [ -12, %if.then58 ], [ -4106, %do.end.cleanup_crit_edge ], [ -4097, %ip_set_optattr_netorder.exit314.cleanup_crit_edge ], [ -12, %if.end44.cleanup_crit_edge ], [ 0, %if.then192 ], [ -4097, %ip_set_optattr_netorder.exit308.cleanup_crit_edge ], [ -4097, %ip_set_optattr_netorder.exit302.cleanup_crit_edge ], [ -4097, %ip_set_optattr_netorder.exit.cleanup_crit_edge ], [ 0, %do.body180 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_set_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_set_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_elem_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netport4_kadt(ptr noundef %set, ptr noundef %skb, ptr nocapture noundef readnone %par, i32 noundef %adt, ptr noundef %opt) #2 align 64 {
entry:
  %e = alloca %struct.hash_netport4_elem, align 4
  %ext = alloca %struct.ip_set_ext, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %variant = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 5
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %arrayidx = getelementptr %struct.ip_set_type_variant, ptr %3, i32 0, i32 2, i32 %adt
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %e) #12
  %6 = getelementptr inbounds %struct.hash_netport4_elem, ptr %e, i32 0, i32 1
  %7 = getelementptr inbounds %struct.hash_netport4_elem, ptr %e, i32 0, i32 2
  %8 = getelementptr inbounds %struct.hash_netport4_elem, ptr %e, i32 0, i32 3
  %9 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %e, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %6, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %7, align 2
  %cidr3 = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 7, i32 0, i32 1
  %12 = ptrtoint ptr %cidr3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cidr3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %phi.bo = shl i8 %13, 1
  %phi.bo68 = add i8 %phi.bo, -4
  %cond = select i1 %tobool.not, i8 62, i8 %phi.bo68
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %cond, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ext) #12
  %15 = getelementptr inbounds i8, ptr %ext, i32 40
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %15, align 8, !annotation !225
  %17 = call ptr @memset(ptr %ext, i32 0, i32 16)
  %packets = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %18 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 1, ptr %packets, align 8
  %bytes = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %conv15 = zext i32 %20 to i64
  %21 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv15, ptr %bytes, align 8
  %comment = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 3
  %22 = ptrtoint ptr %comment to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %comment, align 8
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %ext16 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4
  %timeout17 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 4
  %23 = ptrtoint ptr %timeout17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %timeout17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.not = icmp eq i32 %24, -1
  br i1 %cmp.not, label %cond.false22, label %entry.cond.end24_crit_edge

entry.cond.end24_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end24

cond.false22:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %timeout23 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 10
  %25 = ptrtoint ptr %timeout23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %timeout23, align 4
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false22, %entry.cond.end24_crit_edge
  %cond25 = phi i32 [ %26, %cond.false22 ], [ %24, %entry.cond.end24_crit_edge ]
  %27 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond25, ptr %timeout, align 4
  %packets_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 5
  %28 = ptrtoint ptr %packets_op to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %packets_op, align 8
  %bytes_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 6
  %29 = ptrtoint ptr %bytes_op to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %bytes_op, align 1
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %30 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %target, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %adt)
  %cmp26 = icmp eq i32 %adt, 2
  br i1 %cmp26, label %if.then, label %cond.end24.if.end_crit_edge

cond.end24.if.end_crit_edge:                      ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 62, ptr %8, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end24.if.end_crit_edge
  %flags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 2
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flags, align 2
  %34 = and i8 %33, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool33 = icmp ne i8 %34, 0
  %call = call zeroext i1 @ip_set_get_ip4_port(ptr noundef %skb, i1 noundef zeroext %tobool33, ptr noundef %6, ptr noundef %7) #12
  br i1 %call, label %if.end37, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flags, align 2
  %37 = and i8 %36, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool41.not = icmp eq i8 %37, 0
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %38 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %40 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %41 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %39, i32 %conv.i.i.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %cond.in.i = select i1 %tobool41.not, ptr %daddr.i, ptr %saddr.i
  %42 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load44 = load i8, ptr %8, align 1
  %bf.lshr = lshr i8 %bf.load44, 1
  %narrow = add nuw i8 %bf.lshr, 1
  %idxprom.i = zext i8 %narrow to i32
  %arrayidx.i = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_netmask_map, i32 0, i32 %idxprom.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  %and49 = and i32 %45, %cond.i
  %46 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and49, ptr %e, align 4
  %cmdflags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 3
  %47 = ptrtoint ptr %cmdflags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cmdflags, align 4
  %call51 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef %ext16, i32 noundef %48) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %if.end37 ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ext) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %e) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netport4_uadt(ptr noundef %set, ptr noundef %tb, i32 noundef %adt, ptr nocapture noundef writeonly %lineno, i32 noundef %flags, i1 noundef zeroext %retried) #2 align 64 {
entry:
  %ip.i320 = alloca i32, align 4
  %ip.i = alloca i32, align 4
  %e = alloca %struct.hash_netport4_elem, align 8
  %ext = alloca %struct.ip_set_ext, align 8
  %cidr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %variant = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 5
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %arrayidx = getelementptr %struct.ip_set_type_variant, ptr %3, i32 0, i32 2, i32 %adt
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %e) #12
  %6 = ptrtoint ptr %e to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 62, ptr %e, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ext) #12
  %7 = getelementptr inbounds i8, ptr %ext, i32 40
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %7, align 8, !annotation !225
  %9 = call ptr @memset(ptr %ext, i32 0, i32 16)
  %packets = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %comment = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 3
  %10 = call ptr @memset(ptr %packets, i32 255, i32 16)
  %11 = ptrtoint ptr %comment to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %comment, align 8
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %timeout2 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 10
  %12 = ptrtoint ptr %timeout2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timeout2, align 4
  %14 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %timeout, align 4
  %packets_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 5
  %15 = ptrtoint ptr %packets_op to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %packets_op, align 8
  %bytes_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 6
  %16 = ptrtoint ptr %bytes_op to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %bytes_op, align 1
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %17 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %target, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cidr) #12
  %18 = ptrtoint ptr %cidr to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %cidr, align 1, !annotation !225
  %arrayidx3 = getelementptr ptr, ptr %tb, i32 9
  %19 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i, align 4
  %23 = ptrtoint ptr %lineno to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %lineno, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx5 = getelementptr ptr, ptr %tb, i32 1
  %24 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %25, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false, !prof !223

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 4
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %lor.lhs.false.cleanup_crit_edge, label %ip_set_attr_netorder.exit, !prof !226

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

ip_set_attr_netorder.exit:                        ; preds = %lor.lhs.false
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %nla_type.i, align 2
  %30 = and i16 %29, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool2.i.not = icmp eq i16 %30, 0
  br i1 %tobool2.i.not, label %ip_set_attr_netorder.exit.cleanup_crit_edge, label %lor.lhs.false8, !prof !223

ip_set_attr_netorder.exit.cleanup_crit_edge:      ; preds = %ip_set_attr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false8:                                   ; preds = %ip_set_attr_netorder.exit
  %arrayidx.i301 = getelementptr ptr, ptr %tb, i32 5
  %31 = ptrtoint ptr %arrayidx.i301 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i301, align 4
  %tobool.not.i302 = icmp eq ptr %32, null
  br i1 %tobool.not.i302, label %lor.lhs.false8.lor.rhs_crit_edge, label %ip_set_optattr_netorder.exit

lor.lhs.false8.lor.rhs_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs

ip_set_optattr_netorder.exit:                     ; preds = %lor.lhs.false8
  %nla_type.i303 = getelementptr inbounds %struct.nlattr, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %nla_type.i303 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %nla_type.i303, align 2
  %35 = and i16 %34, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool2.i304.not = icmp eq i16 %35, 0
  br i1 %tobool2.i304.not, label %ip_set_optattr_netorder.exit.cleanup_crit_edge, label %ip_set_optattr_netorder.exit.lor.rhs_crit_edge, !prof !223

ip_set_optattr_netorder.exit.lor.rhs_crit_edge:   ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs

ip_set_optattr_netorder.exit.cleanup_crit_edge:   ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.rhs:                                          ; preds = %ip_set_optattr_netorder.exit.lor.rhs_crit_edge, %lor.lhs.false8.lor.rhs_crit_edge
  %arrayidx.i305 = getelementptr ptr, ptr %tb, i32 8
  %36 = ptrtoint ptr %arrayidx.i305 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i305, align 4
  %tobool.not.i306 = icmp eq ptr %37, null
  br i1 %tobool.not.i306, label %lor.rhs.if.end15_crit_edge, label %ip_set_optattr_netorder.exit310

lor.rhs.if.end15_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

ip_set_optattr_netorder.exit310:                  ; preds = %lor.rhs
  %nla_type.i307 = getelementptr inbounds %struct.nlattr, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %nla_type.i307 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %nla_type.i307, align 2
  %40 = and i16 %39, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool2.i308.not = icmp eq i16 %40, 0
  br i1 %tobool2.i308.not, label %ip_set_optattr_netorder.exit310.cleanup_crit_edge, label %ip_set_optattr_netorder.exit310.if.end15_crit_edge, !prof !223

ip_set_optattr_netorder.exit310.if.end15_crit_edge: ; preds = %ip_set_optattr_netorder.exit310
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

ip_set_optattr_netorder.exit310.cleanup_crit_edge: ; preds = %ip_set_optattr_netorder.exit310
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %ip_set_optattr_netorder.exit310.if.end15_crit_edge, %lor.rhs.if.end15_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip.i) #12
  %41 = ptrtoint ptr %ip.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %ip.i, align 4, !annotation !225
  %call.i = call i32 @ip_set_get_ipaddr4(ptr noundef nonnull %25, ptr noundef nonnull %ip.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i311 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i311, label %if.end20, label %ip_set_get_hostipaddr4.exit

ip_set_get_hostipaddr4.exit:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %42 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ip.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i) #12
  %call21 = call i32 @ip_set_get_extensions(ptr noundef %set, ptr noundef %tb, ptr noundef nonnull %ext) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %arrayidx25 = getelementptr ptr, ptr %tb, i32 3
  %44 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %45, null
  br i1 %tobool26.not, label %if.end24.if.end38_crit_edge, label %if.then27

if.end24.if.end38_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then27:                                        ; preds = %if.end24
  %add.ptr.i.i312 = getelementptr i8, ptr %45, i32 4
  %46 = ptrtoint ptr %add.ptr.i.i312 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr.i.i312, align 1
  %48 = ptrtoint ptr %cidr to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %cidr, align 1
  %49 = add i8 %47, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %49)
  %50 = icmp ult i8 %49, -32
  br i1 %50, label %if.then27.cleanup_crit_edge, label %if.end34

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end34:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %cidr37 = getelementptr inbounds %struct.hash_netport4_elem, ptr %e, i32 0, i32 3
  %51 = ptrtoint ptr %cidr37 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %cidr37, align 1
  %sub = shl nuw nsw i8 %47, 1
  %bf.shl = add nsw i8 %sub, -2
  %bf.clear = and i8 %bf.load, 1
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %cidr37, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.end34, %if.end24.if.end38_crit_edge
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i313 = getelementptr i8, ptr %53, i32 4
  %54 = ptrtoint ptr %add.ptr.i.i313 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr.i.i313, align 2
  %port41 = getelementptr inbounds %struct.hash_netport4_elem, ptr %e, i32 0, i32 1
  %56 = ptrtoint ptr %port41 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %port41, align 4
  %arrayidx42 = getelementptr ptr, ptr %tb, i32 7
  %57 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx42, align 4
  %tobool43.not = icmp eq ptr %58, null
  br i1 %tobool43.not, label %if.end38.cleanup_crit_edge, label %if.then44

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then44:                                        ; preds = %if.end38
  %add.ptr.i.i314 = getelementptr i8, ptr %58, i32 4
  %59 = ptrtoint ptr %add.ptr.i.i314 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %add.ptr.i.i314, align 1
  %proto = getelementptr inbounds %struct.hash_netport4_elem, ptr %e, i32 0, i32 2
  %61 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %proto, align 2
  %62 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %60, label %if.then64 [
    i8 6, label %if.then44.land.rhs_crit_edge
    i8 -124, label %if.then44.land.rhs_crit_edge373
    i8 17, label %if.then44.land.rhs_crit_edge374
    i8 -120, label %if.then44.land.rhs_crit_edge375
    i8 0, label %if.then44.cleanup_crit_edge
    i8 1, label %if.then44.land.end_crit_edge
  ]

if.then44.land.end_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then44.land.rhs_crit_edge375:                  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

if.then44.land.rhs_crit_edge374:                  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

if.then44.land.rhs_crit_edge373:                  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

if.then44.land.rhs_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

if.then64:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %port41 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %port41, align 4
  br label %land.end

land.rhs:                                         ; preds = %if.then44.land.rhs_crit_edge, %if.then44.land.rhs_crit_edge373, %if.then44.land.rhs_crit_edge374, %if.then44.land.rhs_crit_edge375
  %64 = ptrtoint ptr %arrayidx.i301 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i301, align 4
  %tobool70 = icmp ne ptr %65, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then64, %if.then44.land.end_crit_edge
  %66 = phi i1 [ %tobool70, %land.rhs ], [ false, %if.then64 ], [ false, %if.then44.land.end_crit_edge ]
  %67 = ptrtoint ptr %arrayidx.i305 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i305, align 4
  %tobool73.not = icmp eq ptr %68, null
  br i1 %tobool73.not, label %land.end.if.end80_crit_edge, label %if.then74

land.end.if.end80_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then74:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i = getelementptr i8, ptr %68, i32 4
  %69 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr.i.i.i, align 4
  %and = shl i32 %70, 16
  %71 = and i32 %and, 262144
  %72 = or i32 %71, %flags
  br label %if.end80

if.end80:                                         ; preds = %if.then74, %land.end.if.end80_crit_edge
  %flags.addr.1 = phi i32 [ %72, %if.then74 ], [ %flags, %land.end.if.end80_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %adt)
  %cmp81 = icmp eq i32 %adt, 2
  br i1 %cmp81, label %if.end80.if.then89_crit_edge, label %lor.lhs.false83

if.end80.if.then89_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then89

lor.lhs.false83:                                  ; preds = %if.end80
  br i1 %66, label %lor.lhs.false83.if.end107_crit_edge, label %lor.lhs.false86

lor.lhs.false83.if.end107_crit_edge:              ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

lor.lhs.false86:                                  ; preds = %lor.lhs.false83
  %arrayidx87 = getelementptr ptr, ptr %tb, i32 2
  %73 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx87, align 4
  %tobool88.not = icmp eq ptr %74, null
  br i1 %tobool88.not, label %lor.lhs.false86.if.then89_crit_edge, label %lor.lhs.false86.if.end107_crit_edge

lor.lhs.false86.if.end107_crit_edge:              ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

lor.lhs.false86.if.then89_crit_edge:              ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then89

if.then89:                                        ; preds = %lor.lhs.false86.if.then89_crit_edge, %if.end80.if.then89_crit_edge
  %cidr90 = getelementptr inbounds %struct.hash_netport4_elem, ptr %e, i32 0, i32 3
  %75 = ptrtoint ptr %cidr90 to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load91 = load i8, ptr %cidr90, align 1
  %bf.lshr = lshr i8 %bf.load91, 1
  %narrow = add nuw i8 %bf.lshr, 1
  %idxprom.i = zext i8 %narrow to i32
  %arrayidx.i315 = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_hostmask_map, i32 0, i32 %idxprom.i
  %76 = ptrtoint ptr %arrayidx.i315 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i315, align 4
  %and95 = and i32 %77, %43
  %78 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %and95, ptr %e, align 8
  %call97 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef nonnull %ext, i32 noundef %flags.addr.1) #12
  br i1 %cmp81, label %land.lhs.true.i, label %if.then89.cond.false_crit_edge

if.then89.cond.false_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

land.lhs.true.i:                                  ; preds = %if.then89
  %type.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 4
  %79 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %type.i, align 4
  %features.i = getelementptr inbounds %struct.ip_set_type, ptr %80, i32 0, i32 8
  %81 = ptrtoint ptr %features.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %features.i, align 4
  %83 = and i16 %82, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool.not.i316 = icmp eq i16 %83, 0
  %84 = and i32 %flags.addr.1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool3.not.i = icmp eq i32 %84, 0
  %or.cond.i = or i1 %tobool3.not.i, %tobool.not.i316
  br i1 %or.cond.i, label %land.lhs.true.i.cond.false_crit_edge, label %ip_set_enomatch.exit

land.lhs.true.i.cond.false_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

ip_set_enomatch.exit:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp4.i = icmp sgt i32 %call97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -39, i32 %call97)
  %cmp6.i = icmp eq i32 %call97, -39
  %spec.select.i = or i1 %cmp4.i, %cmp6.i
  br i1 %spec.select.i, label %cond.true, label %ip_set_enomatch.exit.cond.false_crit_edge

ip_set_enomatch.exit.cond.false_crit_edge:        ; preds = %ip_set_enomatch.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

cond.true:                                        ; preds = %ip_set_enomatch.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub100 = sub nsw i32 0, %call97
  br label %cleanup

cond.false:                                       ; preds = %ip_set_enomatch.exit.cond.false_crit_edge, %land.lhs.true.i.cond.false_crit_edge, %if.then89.cond.false_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4103, i32 %call97)
  %cmp.i318 = icmp eq i32 %call97, -4103
  %and.i = and i32 %flags.addr.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %85 = and i1 %tobool.i, %cmp.i318
  %spec.select298 = select i1 %85, i32 0, i32 %call97
  br label %cleanup

if.end107:                                        ; preds = %lor.lhs.false86.if.end107_crit_edge, %lor.lhs.false83.if.end107_crit_edge
  %86 = ptrtoint ptr %port41 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %port41, align 4
  %conv109 = zext i16 %87 to i32
  %88 = ptrtoint ptr %arrayidx.i301 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i301, align 4
  %tobool111.not = icmp eq ptr %89, null
  br i1 %tobool111.not, label %if.end107.if.end120_crit_edge, label %if.then112

if.end107.if.end120_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

if.then112:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i319 = getelementptr i8, ptr %89, i32 4
  %90 = ptrtoint ptr %add.ptr.i.i.i319 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %add.ptr.i.i.i319, align 2
  %92 = call i16 @llvm.umin.i16(i16 %91, i16 %87)
  %93 = zext i16 %92 to i32
  %94 = call i16 @llvm.umax.i16(i16 %91, i16 %87)
  %95 = zext i16 %94 to i32
  br label %if.end120

if.end120:                                        ; preds = %if.then112, %if.end107.if.end120_crit_edge
  %port.0 = phi i32 [ %conv109, %if.end107.if.end120_crit_edge ], [ %93, %if.then112 ]
  %port_to.0 = phi i32 [ %conv109, %if.end107.if.end120_crit_edge ], [ %95, %if.then112 ]
  %arrayidx121 = getelementptr ptr, ptr %tb, i32 2
  %96 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx121, align 4
  %tobool122.not = icmp eq ptr %97, null
  br i1 %tobool122.not, label %do.body143, label %if.then123

if.then123:                                       ; preds = %if.end120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip.i320) #12
  %98 = ptrtoint ptr %ip.i320 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %ip.i320, align 4, !annotation !225
  %call.i321 = call i32 @ip_set_get_ipaddr4(ptr noundef nonnull %97, ptr noundef nonnull %ip.i320) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i321)
  %tobool.not.i322 = icmp eq i32 %call.i321, 0
  br i1 %tobool.not.i322, label %if.end128, label %ip_set_get_hostipaddr4.exit324

ip_set_get_hostipaddr4.exit324:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i320) #12
  br label %cleanup

if.end128:                                        ; preds = %if.then123
  %99 = ptrtoint ptr %ip.i320 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ip.i320, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i320) #12
  %101 = call i32 @llvm.umin.i32(i32 %100, i32 %43)
  %102 = call i32 @llvm.umax.i32(i32 %100, i32 %43)
  %add137 = add i32 %101, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add137, i32 %102)
  %cmp138 = icmp eq i32 %add137, %102
  br i1 %cmp138, label %if.end128.cleanup_crit_edge, label %if.end128.if.end162_crit_edge

if.end128.if.end162_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end162

if.end128.cleanup_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body143:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  %cidr144 = getelementptr inbounds %struct.hash_netport4_elem, ptr %e, i32 0, i32 3
  %103 = ptrtoint ptr %cidr144 to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load145 = load i8, ptr %cidr144, align 1
  %bf.lshr146 = lshr i8 %bf.load145, 1
  %narrow293 = add nuw i8 %bf.lshr146, 1
  %idxprom.i325 = zext i8 %narrow293 to i32
  %arrayidx.i326 = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_hostmask_map, i32 0, i32 %idxprom.i325
  %104 = ptrtoint ptr %arrayidx.i326 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i326, align 4
  %and151 = and i32 %105, %43
  %neg = xor i32 %105, -1
  %or159 = or i32 %43, %neg
  br label %if.end162

if.end162:                                        ; preds = %do.body143, %if.end128.if.end162_crit_edge
  %ip.2 = phi i32 [ %and151, %do.body143 ], [ %101, %if.end128.if.end162_crit_edge ]
  %ip_to.2 = phi i32 [ %or159, %do.body143 ], [ %102, %if.end128.if.end162_crit_edge ]
  br label %do.body163

do.body163:                                       ; preds = %do.body163.do.body163_crit_edge, %if.end162
  %ipn.0 = phi i32 [ %ip.2, %if.end162 ], [ %inc166, %do.body163.do.body163_crit_edge ]
  %n.0 = phi i64 [ 0, %if.end162 ], [ %inc, %do.body163.do.body163_crit_edge ]
  %call164 = call i32 @ip_set_range_to_cidr(i32 noundef %ipn.0, i32 noundef %ip_to.2, ptr noundef nonnull %cidr) #12
  %inc = add i64 %n.0, 1
  %inc166 = add i32 %call164, 1
  %cmp167 = icmp ult i32 %call164, %ip_to.2
  br i1 %cmp167, label %do.body163.do.body163_crit_edge, label %do.end169

do.body163.do.body163_crit_edge:                  ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body163

do.end169:                                        ; preds = %do.body163
  %sub170 = sub nsw i32 1, %port.0
  %add171 = add nsw i32 %sub170, %port_to.0
  %conv172 = zext i32 %add171 to i64
  %mul = mul i64 %inc, %conv172
  call void @__sanitizer_cov_trace_const_cmp8(i64 1048576, i64 %mul)
  %cmp173 = icmp ugt i64 %mul, 1048576
  br i1 %cmp173, label %do.end169.cleanup_crit_edge, label %if.end176

do.end169.cleanup_crit_edge:                      ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end176:                                        ; preds = %do.end169
  br i1 %retried, label %if.then178, label %if.end176.if.end184_crit_edge

if.end176.if.end184_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end184

if.then178:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  %next = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 6
  %106 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %next, align 4
  %port181 = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 6, i32 1
  %108 = ptrtoint ptr %port181 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %port181, align 4
  %conv182 = zext i16 %109 to i32
  br label %if.end184

if.end184:                                        ; preds = %if.then178, %if.end176.if.end184_crit_edge
  %ip.3 = phi i32 [ %107, %if.then178 ], [ %ip.2, %if.end176.if.end184_crit_edge ]
  %p.0 = phi i32 [ %conv182, %if.then178 ], [ %port.0, %if.end176.if.end184_crit_edge ]
  %cidr191 = getelementptr inbounds %struct.hash_netport4_elem, ptr %e, i32 0, i32 3
  %and.i330 = and i32 %flags.addr.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i330)
  %tobool.i331 = icmp ne i32 %and.i330, 0
  br label %do.body185

do.body185:                                       ; preds = %for.end.do.body185_crit_edge, %if.end184
  %ip.4 = phi i32 [ %ip.3, %if.end184 ], [ %inc208, %for.end.do.body185_crit_edge ]
  %p.1 = phi i32 [ %p.0, %if.end184 ], [ %port.0, %for.end.do.body185_crit_edge ]
  %110 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %ip.4, ptr %e, align 8
  %call187 = call i32 @ip_set_range_to_cidr(i32 noundef %ip.4, i32 noundef %ip_to.2, ptr noundef nonnull %cidr) #12
  %111 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %cidr, align 1
  %113 = ptrtoint ptr %cidr191 to i32
  call void @__asan_load1_noabort(i32 %113)
  %bf.load192 = load i8, ptr %cidr191, align 1
  %sub189 = shl i8 %112, 1
  %bf.shl194 = add i8 %sub189, -2
  %bf.clear195 = and i8 %bf.load192, 1
  %bf.set196 = or i8 %bf.clear195, %bf.shl194
  store i8 %bf.set196, ptr %cidr191, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %p.1, i32 %port_to.0)
  %cmp197.not362 = icmp ugt i32 %p.1, %port_to.0
  br i1 %cmp197.not362, label %do.body185.for.end_crit_edge, label %do.body185.for.body_crit_edge

do.body185.for.body_crit_edge:                    ; preds = %do.body185
  br label %for.body

do.body185.for.end_crit_edge:                     ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end205.for.body_crit_edge, %do.body185.for.body_crit_edge
  %p.2363 = phi i32 [ %inc206, %if.end205.for.body_crit_edge ], [ %p.1, %do.body185.for.body_crit_edge ]
  %conv199 = trunc i32 %p.2363 to i16
  %114 = ptrtoint ptr %port41 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv199, ptr %port41, align 4
  %call201 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef nonnull %ext, i32 noundef %flags.addr.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4103, i32 %call201)
  %cmp.i329 = icmp eq i32 %call201, -4103
  %115 = and i1 %tobool.i331, %cmp.i329
  %or.cond = select i1 %tobool202.not, i1 true, i1 %115
  br i1 %or.cond, label %if.end205, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end205:                                        ; preds = %for.body
  %inc206 = add nuw nsw i32 %p.2363, 1
  %exitcond = icmp eq i32 %p.2363, %port_to.0
  br i1 %exitcond, label %if.end205.for.end_crit_edge, label %if.end205.for.body_crit_edge

if.end205.for.body_crit_edge:                     ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end205.for.end_crit_edge:                      ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end205.for.end_crit_edge, %do.body185.for.end_crit_edge
  %inc208 = add i32 %call187, 1
  %cmp209 = icmp ult i32 %call187, %ip_to.2
  br i1 %cmp209, label %for.end.do.body185_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.end.do.body185_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body185

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end169.cleanup_crit_edge, %if.end128.cleanup_crit_edge, %ip_set_get_hostipaddr4.exit324, %cond.false, %cond.true, %if.then44.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %ip_set_get_hostipaddr4.exit, %ip_set_optattr_netorder.exit310.cleanup_crit_edge, %ip_set_optattr_netorder.exit.cleanup_crit_edge, %ip_set_attr_netorder.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -4097, %ip_set_optattr_netorder.exit310.cleanup_crit_edge ], [ %call.i, %ip_set_get_hostipaddr4.exit ], [ %call21, %if.end20.cleanup_crit_edge ], [ -4104, %if.then27.cleanup_crit_edge ], [ -4355, %if.end38.cleanup_crit_edge ], [ %sub100, %cond.true ], [ %spec.select298, %cond.false ], [ %call.i321, %ip_set_get_hostipaddr4.exit324 ], [ -4357, %if.end128.cleanup_crit_edge ], [ -34, %do.end169.cleanup_crit_edge ], [ -4097, %ip_set_optattr_netorder.exit.cleanup_crit_edge ], [ -4097, %ip_set_attr_netorder.exit.cleanup_crit_edge ], [ -4097, %if.end.cleanup_crit_edge ], [ -4097, %lor.lhs.false.cleanup_crit_edge ], [ -4354, %if.then44.cleanup_crit_edge ], [ %call201, %for.body.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cidr) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ext) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %e) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netport4_add(ptr noundef %set, ptr nocapture noundef readonly %value, ptr noundef %ext, ptr nocapture noundef readonly %mext, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 750, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %call3 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end10_crit_edge

rcu_read_lock_bh.exit.do.end10_crit_edge:         ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b604 = load i1, ptr @hash_netport4_add.__warned, align 1
  br i1 %.b604, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport4_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 855, ptr noundef nonnull @.str.8) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock_bh.exit.do.end10_crit_edge
  %initval = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %initval, align 4
  %add1.i = add i32 %5, -559038729
  %arrayidx32.i = getelementptr i32, ptr %value, i32 1
  %6 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %7, %add1.i
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  %add36.i = add i32 %9, %add1.i
  %xor37.i = xor i32 %add33.i, %add1.i
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #12
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %sub39.i, %add36.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #12
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #12
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #12
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #12
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #12
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #12
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  %htable_bits = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %htable_bits, align 4
  %conv = zext i8 %11 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %and17 = and i32 %sub57.i, %sub
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %11)
  %cmp = icmp ult i8 %11, 10
  %sub23 = add nsw i32 %conv, -10
  %notmask727 = shl nsw i32 -1, %sub23
  %shl24.op = xor i32 %notmask727, -1
  %12 = select i1 %cmp, i32 0, i32 %shl24.op
  %rem = and i32 %and17, %12
  %uref = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !227
  %hregion = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hregion, align 4
  %elements25 = getelementptr %struct.ip_set_region, ptr %15, i32 %rem, i32 2
  %16 = ptrtoint ptr %elements25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %elements25, align 4
  %maxelem26 = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %maxelem26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %maxelem26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp27.not = icmp ult i32 %17, %19
  br i1 %cmp27.not, label %do.end10.if.end62_crit_edge, label %if.then29

do.end10.if.end62_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then29:                                        ; preds = %do.end10
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %20 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %extensions, align 2
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool32.not = icmp eq i8 %22, 0
  br i1 %tobool32.not, label %if.then29.if.end34_crit_edge, label %if.then33

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then33:                                        ; preds = %if.then29
  %call.i611 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i611, label %if.then33.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i614

if.then33.rcu_read_unlock_bh.exit_crit_edge:      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i614:                               ; preds = %if.then33
  %call1.i612 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i612)
  %tobool.not.i613 = icmp eq i32 %call1.i612, 0
  br i1 %tobool.not.i613, label %land.lhs.true.i614.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i616

land.lhs.true.i614.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i614
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i616:                              ; preds = %land.lhs.true.i614
  %.b4.i615 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i615, label %land.lhs.true2.i616.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i617

land.lhs.true2.i616.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i616
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i617:                                     ; preds = %land.lhs.true2.i616
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i617, %land.lhs.true2.i616.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i614.rcu_read_unlock_bh.exit_crit_edge, %if.then33.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  tail call fastcc void @hash_netport4_gc_do(ptr noundef %set, ptr noundef %1, ptr noundef %3, i32 noundef %rem)
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i618 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i618, label %rcu_read_unlock_bh.exit.if.end34_crit_edge, label %land.lhs.true.i621

rcu_read_unlock_bh.exit.if.end34_crit_edge:       ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.lhs.true.i621:                               ; preds = %rcu_read_unlock_bh.exit
  %call1.i619 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i619)
  %tobool.not.i620 = icmp eq i32 %call1.i619, 0
  br i1 %tobool.not.i620, label %land.lhs.true.i621.if.end34_crit_edge, label %land.lhs.true2.i623

land.lhs.true.i621.if.end34_crit_edge:            ; preds = %land.lhs.true.i621
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.lhs.true2.i623:                              ; preds = %land.lhs.true.i621
  %.b4.i622 = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i622, label %land.lhs.true2.i623.if.end34_crit_edge, label %if.then.i624

land.lhs.true2.i623.if.end34_crit_edge:           ; preds = %land.lhs.true2.i623
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then.i624:                                     ; preds = %land.lhs.true2.i623
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 750, ptr noundef nonnull @.str.14) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then.i624, %land.lhs.true2.i623.if.end34_crit_edge, %land.lhs.true.i621.if.end34_crit_edge, %rcu_read_unlock_bh.exit.if.end34_crit_edge, %if.then29.if.end34_crit_edge
  %maxelem35 = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %maxelem35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %maxelem35, align 4
  %25 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %htable_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %26)
  %cmp38 = icmp ult i8 %26, 10
  %conv37 = zext i8 %26 to i32
  %sub44 = add nsw i32 %conv37, -10
  %shl45 = shl nuw i32 1, %sub44
  %cond47 = select i1 %cmp38, i32 1, i32 %shl45
  %27 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hregion, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end34
  %e.0735 = phi i32 [ 0, %if.end34 ], [ %inc, %for.body.for.body_crit_edge ]
  %elements.0734 = phi i32 [ 0, %if.end34 ], [ %add, %for.body.for.body_crit_edge ]
  %elements52 = getelementptr %struct.ip_set_region, ptr %28, i32 %e.0735, i32 2
  %29 = ptrtoint ptr %elements52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %elements52, align 4
  %add = add i32 %30, %elements.0734
  %inc = add nuw i32 %e.0735, 1
  %exitcond.not = icmp eq i32 %inc, %cond47
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %24)
  %cmp53.not = icmp ult i32 %add, %24
  br i1 %cmp53.not, label %for.end.if.end62_crit_edge, label %land.lhs.true55

for.end.if.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

land.lhs.true55:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %flags56 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 9
  %31 = ptrtoint ptr %flags56 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flags56, align 1
  %33 = and i8 %32, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool59.not = icmp ne i8 %33, 0
  br label %if.end62

if.end62:                                         ; preds = %land.lhs.true55, %for.end.if.end62_crit_edge, %do.end10.if.end62_crit_edge
  %forceadd.1.off0 = phi i1 [ false, %do.end10.if.end62_crit_edge ], [ false, %for.end.if.end62_crit_edge ], [ %tobool59.not, %land.lhs.true55 ]
  %elements.1 = phi i32 [ %17, %do.end10.if.end62_crit_edge ], [ %add, %for.end.if.end62_crit_edge ], [ %add, %land.lhs.true55 ]
  %maxelem.0 = phi i32 [ %19, %do.end10.if.end62_crit_edge ], [ %24, %for.end.if.end62_crit_edge ], [ %24, %land.lhs.true55 ]
  %call.i626 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i626, label %if.end62.rcu_read_unlock_bh.exit633_crit_edge, label %land.lhs.true.i629

if.end62.rcu_read_unlock_bh.exit633_crit_edge:    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit633

land.lhs.true.i629:                               ; preds = %if.end62
  %call1.i627 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i627)
  %tobool.not.i628 = icmp eq i32 %call1.i627, 0
  br i1 %tobool.not.i628, label %land.lhs.true.i629.rcu_read_unlock_bh.exit633_crit_edge, label %land.lhs.true2.i631

land.lhs.true.i629.rcu_read_unlock_bh.exit633_crit_edge: ; preds = %land.lhs.true.i629
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit633

land.lhs.true2.i631:                              ; preds = %land.lhs.true.i629
  %.b4.i630 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i630, label %land.lhs.true2.i631.rcu_read_unlock_bh.exit633_crit_edge, label %if.then.i632

land.lhs.true2.i631.rcu_read_unlock_bh.exit633_crit_edge: ; preds = %land.lhs.true2.i631
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit633

if.then.i632:                                     ; preds = %land.lhs.true2.i631
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit633

rcu_read_unlock_bh.exit633:                       ; preds = %if.then.i632, %land.lhs.true2.i631.rcu_read_unlock_bh.exit633_crit_edge, %land.lhs.true.i629.rcu_read_unlock_bh.exit633_crit_edge, %if.end62.rcu_read_unlock_bh.exit633_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  %34 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hregion, align 4
  %arrayidx64 = getelementptr %struct.ip_set_region, ptr %35, i32 %rem
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx64) #12
  %arrayidx69 = getelementptr %struct.htable, ptr %3, i32 0, i32 5, i32 %and17
  %36 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %arrayidx69, align 4
  %call71 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %land.lhs.true73, label %rcu_read_unlock_bh.exit633.do.end81_crit_edge

rcu_read_unlock_bh.exit633.do.end81_crit_edge:    ; preds = %rcu_read_unlock_bh.exit633
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81

land.lhs.true73:                                  ; preds = %rcu_read_unlock_bh.exit633
  %call74 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true73.do.end81_crit_edge, label %land.lhs.true76

land.lhs.true73.do.end81_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81

land.lhs.true76:                                  ; preds = %land.lhs.true73
  %.b591603 = load i1, ptr @hash_netport4_add.__warned.9, align 1
  br i1 %.b591603, label %land.lhs.true76.do.end81_crit_edge, label %if.then78

land.lhs.true76.do.end81_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81

if.then78:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport4_add.__warned.9, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 878, ptr noundef nonnull @.str.8) #12
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %land.lhs.true76.do.end81_crit_edge, %land.lhs.true73.do.end81_crit_edge, %rcu_read_unlock_bh.exit633.do.end81_crit_edge
  %tobool83.not = icmp eq ptr %37, null
  br i1 %tobool83.not, label %if.then84, label %for.cond103.preheader

for.cond103.preheader:                            ; preds = %do.end81
  %pos = getelementptr inbounds %struct.hbucket, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pos, align 1
  %conv104 = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp105736.not = icmp eq i8 %39, 0
  br i1 %cmp105736.not, label %for.end154.thread, label %for.body107.lr.ph

for.body107.lr.ph:                                ; preds = %for.cond103.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %37, i32 0, i32 1
  %value116 = getelementptr inbounds %struct.hbucket, ptr %37, i32 0, i32 5
  %dsize118 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %proto10.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %value, i32 0, i32 2
  %cidr15.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %value, i32 0, i32 3
  %extensions137 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx143 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  br label %for.body107

if.then84:                                        ; preds = %do.end81
  %forceadd.1.off0.not = xor i1 %forceadd.1.off0, true
  call void @__sanitizer_cov_trace_cmp4(i32 %elements.1, i32 %maxelem.0)
  %cmp87.not = icmp ult i32 %elements.1, %maxelem.0
  %or.cond = select i1 %forceadd.1.off0.not, i1 %cmp87.not, i1 false
  br i1 %or.cond, label %if.end90, label %if.then84.set_full_crit_edge

if.then84.set_full_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_full

if.end90:                                         ; preds = %if.then84
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %40 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dsize, align 4
  %mul = shl i32 %41, 1
  %add91 = add i32 %mul, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add91, i32 noundef 2848) #16
  %tobool93.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool93.not, label %if.end90.unlock_crit_edge, label %if.end90.copy_elem.sink.split_crit_edge

if.end90.copy_elem.sink.split_crit_edge:          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_elem.sink.split

if.end90.unlock_crit_edge:                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

for.body107:                                      ; preds = %for.inc152.for.body107_crit_edge, %for.body107.lr.ph
  %i.0740 = phi i32 [ 0, %for.body107.lr.ph ], [ %inc153, %for.inc152.for.body107_crit_edge ]
  %j.0739 = phi i32 [ -1, %for.body107.lr.ph ], [ %j.1, %for.inc152.for.body107_crit_edge ]
  %reuse.0.off0738 = phi i1 [ false, %for.body107.lr.ph ], [ %reuse.1.off0, %for.inc152.for.body107_crit_edge ]
  %deleted.0.off0737 = phi i1 [ false, %for.body107.lr.ph ], [ %deleted.1.off0, %for.inc152.for.body107_crit_edge ]
  %div3.i = lshr i32 %i.0740, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0740, 31
  %44 = shl nuw i32 1, %and.i
  %45 = and i32 %43, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool109.not = icmp eq i32 %45, 0
  br i1 %tobool109.not, label %if.then110, label %if.end115

if.then110:                                       ; preds = %for.body107
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.0739)
  %cmp111 = icmp eq i32 %j.0739, -1
  br i1 %cmp111, label %if.then113, label %if.then110.for.inc152_crit_edge

if.then110.for.inc152_crit_edge:                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc152

if.then113:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc152

if.end115:                                        ; preds = %for.body107
  %46 = ptrtoint ptr %dsize118 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dsize118, align 4
  %mul119 = mul i32 %47, %i.0740
  %add.ptr = getelementptr i8, ptr %value116, i32 %mul119
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr, align 4
  %50 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp.i = icmp eq i32 %49, %51
  br i1 %cmp.i, label %land.lhs.true.i635, label %if.end115.if.end136_crit_edge

if.end115.if.end136_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

land.lhs.true.i635:                               ; preds = %if.end115
  %port.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %add.ptr, i32 0, i32 1
  %52 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %port.i, align 4
  %54 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx32.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %55)
  %cmp6.i = icmp eq i16 %53, %55
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i635.if.end136_crit_edge

land.lhs.true.i635.if.end136_crit_edge:           ; preds = %land.lhs.true.i635
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i635
  %proto.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %add.ptr, i32 0, i32 2
  %56 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %proto.i, align 2
  %58 = ptrtoint ptr %proto10.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %proto10.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp12.i = icmp eq i8 %57, %59
  br i1 %cmp12.i, label %hash_netport4_data_equal.exit, label %land.lhs.true8.i.if.end136_crit_edge

land.lhs.true8.i.if.end136_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

hash_netport4_data_equal.exit:                    ; preds = %land.lhs.true8.i
  %cidr.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %add.ptr, i32 0, i32 3
  %60 = ptrtoint ptr %cidr.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load.i = load i8, ptr %cidr.i, align 1
  %61 = ptrtoint ptr %cidr15.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load16.i = load i8, ptr %cidr15.i, align 1
  %cmp19.unshifted.i = xor i8 %bf.load16.i, %bf.load.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %cmp19.unshifted.i)
  %cmp19.i = icmp ult i8 %cmp19.unshifted.i, 2
  br i1 %cmp19.i, label %if.then121, label %hash_netport4_data_equal.exit.if.end136_crit_edge

hash_netport4_data_equal.exit.if.end136_crit_edge: ; preds = %hash_netport4_data_equal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

if.then121:                                       ; preds = %hash_netport4_data_equal.exit
  br i1 %tobool.not, label %lor.lhs.false124, label %if.then121.overwrite_extensions_crit_edge

if.then121.overwrite_extensions_crit_edge:        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #14
  br label %overwrite_extensions

lor.lhs.false124:                                 ; preds = %if.then121
  %62 = ptrtoint ptr %extensions137 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %extensions137, align 2
  %64 = and i8 %63, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool128.not = icmp eq i8 %64, 0
  br i1 %tobool128.not, label %lor.lhs.false124.unlock_crit_edge, label %land.lhs.true129

lor.lhs.false124.unlock_crit_edge:                ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

land.lhs.true129:                                 ; preds = %lor.lhs.false124
  %65 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx143, align 4
  %add.ptr131 = getelementptr i8, ptr %add.ptr, i32 %66
  %67 = ptrtoint ptr %add.ptr131 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.not.i = icmp eq i32 %68, 0
  br i1 %cmp.not.i, label %land.lhs.true129.unlock_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true129.unlock_crit_edge:                ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %68, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge, label %ip_set_timeout_expired.exit.unlock_crit_edge

ip_set_timeout_expired.exit.unlock_crit_edge:     ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

ip_set_timeout_expired.exit.overwrite_extensions_crit_edge: ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %overwrite_extensions

if.end136:                                        ; preds = %hash_netport4_data_equal.exit.if.end136_crit_edge, %land.lhs.true8.i.if.end136_crit_edge, %land.lhs.true.i635.if.end136_crit_edge, %if.end115.if.end136_crit_edge
  %70 = ptrtoint ptr %extensions137 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %extensions137, align 2
  %72 = and i8 %71, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool140.not = icmp eq i8 %72, 0
  br i1 %tobool140.not, label %if.end136.for.inc152_crit_edge, label %land.lhs.true141

if.end136.for.inc152_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc152

land.lhs.true141:                                 ; preds = %if.end136
  %73 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx143, align 4
  %add.ptr144 = getelementptr i8, ptr %add.ptr, i32 %74
  %75 = ptrtoint ptr %add.ptr144 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.not.i637 = icmp eq i32 %76, 0
  br i1 %cmp.not.i637, label %land.lhs.true141.ip_set_timeout_expired.exit641_crit_edge, label %land.rhs.i640

land.lhs.true141.ip_set_timeout_expired.exit641_crit_edge: ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_timeout_expired.exit641

land.rhs.i640:                                    ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %sub.i638 = sub i32 %76, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i638)
  %cmp1.i639 = icmp slt i32 %sub.i638, 0
  br label %ip_set_timeout_expired.exit641

ip_set_timeout_expired.exit641:                   ; preds = %land.rhs.i640, %land.lhs.true141.ip_set_timeout_expired.exit641_crit_edge
  %78 = phi i1 [ false, %land.lhs.true141.ip_set_timeout_expired.exit641_crit_edge ], [ %cmp1.i639, %land.rhs.i640 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.0739)
  %cmp148 = icmp eq i32 %j.0739, -1
  %or.cond605 = select i1 %78, i1 %cmp148, i1 false
  %spec.select606 = select i1 %or.cond605, i1 true, i1 %reuse.0.off0738
  %spec.select607 = select i1 %or.cond605, i32 %i.0740, i32 %j.0739
  br label %for.inc152

for.inc152:                                       ; preds = %ip_set_timeout_expired.exit641, %if.end136.for.inc152_crit_edge, %if.then113, %if.then110.for.inc152_crit_edge
  %deleted.1.off0 = phi i1 [ %deleted.0.off0737, %if.end136.for.inc152_crit_edge ], [ true, %if.then113 ], [ %deleted.0.off0737, %if.then110.for.inc152_crit_edge ], [ %deleted.0.off0737, %ip_set_timeout_expired.exit641 ]
  %reuse.1.off0 = phi i1 [ %reuse.0.off0738, %if.end136.for.inc152_crit_edge ], [ true, %if.then113 ], [ %reuse.0.off0738, %if.then110.for.inc152_crit_edge ], [ %spec.select606, %ip_set_timeout_expired.exit641 ]
  %j.1 = phi i32 [ %j.0739, %if.end136.for.inc152_crit_edge ], [ %i.0740, %if.then113 ], [ %j.0739, %if.then110.for.inc152_crit_edge ], [ %spec.select607, %ip_set_timeout_expired.exit641 ]
  %inc153 = add nuw nsw i32 %i.0740, 1
  %exitcond748.not = icmp eq i32 %inc153, %conv104
  br i1 %exitcond748.not, label %for.end154, label %for.inc152.for.body107_crit_edge

for.inc152.for.body107_crit_edge:                 ; preds = %for.inc152
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body107

for.end154:                                       ; preds = %for.inc152
  %brmerge = select i1 %reuse.1.off0, i1 true, i1 %forceadd.1.off0
  br i1 %brmerge, label %if.then160, label %for.end154.if.end188_crit_edge

for.end154.if.end188_crit_edge:                   ; preds = %for.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

for.end154.thread:                                ; preds = %for.cond103.preheader
  br i1 %forceadd.1.off0, label %if.then160.thread, label %for.end154.thread.if.end188_crit_edge

for.end154.thread.if.end188_crit_edge:            ; preds = %for.end154.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

if.then160.thread:                                ; preds = %for.end154.thread
  call void @__sanitizer_cov_trace_pc() #14
  %value165759 = getelementptr inbounds %struct.hbucket, ptr %37, i32 0, i32 5
  br label %for.body175

if.then160:                                       ; preds = %for.end154
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.1)
  %cmp161 = icmp eq i32 %j.1, -1
  %spec.store.select = select i1 %cmp161, i32 0, i32 %j.1
  %value165 = getelementptr inbounds %struct.hbucket, ptr %37, i32 0, i32 5
  %dsize167 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %79 = ptrtoint ptr %dsize167 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dsize167, align 4
  %mul168 = mul i32 %80, %spec.store.select
  %add.ptr169 = getelementptr i8, ptr %value165, i32 %mul168
  br i1 %deleted.1.off0, label %if.then160.copy_data_crit_edge, label %if.then160.for.body175_crit_edge

if.then160.for.body175_crit_edge:                 ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body175

if.then160.copy_data_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_data

for.body175:                                      ; preds = %if.then160.for.body175_crit_edge, %if.then160.thread
  %add.ptr169764 = phi ptr [ %value165759, %if.then160.thread ], [ %add.ptr169, %if.then160.for.body175_crit_edge ]
  %spec.store.select763 = phi i32 [ 0, %if.then160.thread ], [ %spec.store.select, %if.then160.for.body175_crit_edge ]
  %cidr = getelementptr inbounds %struct.hash_netport4_elem, ptr %add.ptr169764, i32 0, i32 3
  %81 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load = load i8, ptr %cidr, align 1
  %bf.lshr = lshr i8 %bf.load, 1
  %narrow602 = add nuw i8 %bf.lshr, 2
  %lock.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc57.i.for.body.i_crit_edge, %for.body175
  %indvars.iv.i = phi i32 [ 0, %for.body175 ], [ %indvars.iv.next.i, %for.inc57.i.for.body.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.hash_netport4, ptr %1, i32 0, i32 7, i32 %indvars.iv.i, i32 1, i32 0
  %82 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %narrow602)
  %cmp7.not.i = icmp eq i8 %83, %narrow602
  br i1 %cmp7.not.i, label %if.end.i, label %for.inc57.i

if.end.i:                                         ; preds = %for.body.i
  %sub.i642 = zext i8 %bf.lshr to i32
  %arrayidx11.i = getelementptr %struct.hash_netport4, ptr %1, i32 0, i32 7, i32 %sub.i642
  %84 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx11.i, align 4
  %dec.i = add i32 %85, -1
  store i32 %dec.i, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp22.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp22.not.i, label %for.cond26.preheader.i, label %if.end.i.hash_netport4_del_cidr.exit_crit_edge

if.end.i.hash_netport4_del_cidr.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hash_netport4_del_cidr.exit

for.cond26.preheader.i:                           ; preds = %if.end.i
  %86 = trunc i32 %indvars.iv.i to i8
  %conv2786.i = and i32 %indvars.iv.i, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %86)
  %cmp2987.i = icmp ult i8 %86, 31
  br i1 %cmp2987.i, label %for.cond26.preheader.i.land.rhs.i644_crit_edge, label %for.cond26.preheader.i.for.end.i_crit_edge

for.cond26.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.cond26.preheader.i.land.rhs.i644_crit_edge:   ; preds = %for.cond26.preheader.i
  br label %land.rhs.i644

land.rhs.i644:                                    ; preds = %for.body38.i.land.rhs.i644_crit_edge, %for.cond26.preheader.i.land.rhs.i644_crit_edge
  %indvars.iv92.i = phi i32 [ %add.i, %for.body38.i.land.rhs.i644_crit_edge ], [ %indvars.iv.i, %for.cond26.preheader.i.land.rhs.i644_crit_edge ]
  %arrayidx36.i = getelementptr %struct.hash_netport4, ptr %1, i32 0, i32 7, i32 %indvars.iv92.i, i32 1, i32 0
  %87 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i643 = icmp eq i8 %88, 0
  br i1 %tobool.not.i643, label %land.rhs.i644.for.end.i_crit_edge, label %for.body38.i

land.rhs.i644.for.end.i_crit_edge:                ; preds = %land.rhs.i644
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body38.i:                                     ; preds = %land.rhs.i644
  %add.i = add nuw nsw i32 %indvars.iv92.i, 1
  %arrayidx44.i = getelementptr %struct.hash_netport4, ptr %1, i32 0, i32 7, i32 %add.i, i32 1, i32 0
  %89 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx44.i, align 1
  %91 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %arrayidx36.i, align 1
  %exitcond94.not.i = icmp eq i32 %add.i, 31
  br i1 %exitcond94.not.i, label %for.body38.i.for.end.i_crit_edge, label %for.body38.i.land.rhs.i644_crit_edge

for.body38.i.land.rhs.i644_crit_edge:             ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i644

for.body38.i.for.end.i_crit_edge:                 ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body38.i.for.end.i_crit_edge, %land.rhs.i644.for.end.i_crit_edge, %for.cond26.preheader.i.for.end.i_crit_edge
  %conv27.lcssa.i = phi i32 [ %conv2786.i, %for.cond26.preheader.i.for.end.i_crit_edge ], [ %indvars.iv92.i, %land.rhs.i644.for.end.i_crit_edge ], [ 31, %for.body38.i.for.end.i_crit_edge ]
  %arrayidx56.i = getelementptr %struct.hash_netport4, ptr %1, i32 0, i32 7, i32 %conv27.lcssa.i, i32 1, i32 0
  %92 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %arrayidx56.i, align 1
  br label %hash_netport4_del_cidr.exit

for.inc57.i:                                      ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %for.inc57.i.hash_netport4_del_cidr.exit_crit_edge, label %for.inc57.i.for.body.i_crit_edge

for.inc57.i.for.body.i_crit_edge:                 ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc57.i.hash_netport4_del_cidr.exit_crit_edge: ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hash_netport4_del_cidr.exit

hash_netport4_del_cidr.exit:                      ; preds = %for.inc57.i.hash_netport4_del_cidr.exit_crit_edge, %for.end.i, %if.end.i.hash_netport4_del_cidr.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  %extensions.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %93 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %extensions.i, align 2
  %95 = and i8 %94, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i645 = icmp eq i8 %95, 0
  br i1 %tobool.not.i645, label %hash_netport4_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge, label %if.then.i647

hash_netport4_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge: ; preds = %hash_netport4_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_ext_destroy.exit

if.then.i647:                                     ; preds = %hash_netport4_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i646 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %96 = ptrtoint ptr %arrayidx.i646 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i646, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr169764, i32 %97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %98 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %98(ptr noundef %set, ptr noundef %add.ptr.i) #12
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i647, %hash_netport4_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge
  %99 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hregion, align 4
  %elements186 = getelementptr %struct.ip_set_region, ptr %100, i32 %rem, i32 2
  %101 = ptrtoint ptr %elements186 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %elements186, align 4
  %dec = add i32 %102, -1
  store i32 %dec, ptr %elements186, align 4
  br label %copy_data

if.end188:                                        ; preds = %for.end154.thread.if.end188_crit_edge, %for.end154.if.end188_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %elements.1, i32 %maxelem.0)
  %cmp189.not = icmp ult i32 %elements.1, %maxelem.0
  br i1 %cmp189.not, label %if.end192, label %if.end188.set_full_crit_edge

if.end188.set_full_crit_edge:                     ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_full

if.end192:                                        ; preds = %if.end188
  %size195 = getelementptr inbounds %struct.hbucket, ptr %37, i32 0, i32 2
  %103 = ptrtoint ptr %size195 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %size195, align 8
  %conv196 = zext i8 %104 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %104)
  %cmp197.not = icmp ult i8 %39, %104
  br i1 %cmp197.not, label %if.end192.copy_elem_crit_edge, label %if.then199

if.end192.copy_elem_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_elem

if.then199:                                       ; preds = %if.end192
  %bucketsize = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 4
  %105 = ptrtoint ptr %bucketsize to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %bucketsize, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %104, i8 %106)
  %cmp203.not = icmp ult i8 %104, %106
  br i1 %cmp203.not, label %if.end206, label %if.then205

if.then205:                                       ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #14
  %next = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 6
  %107 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %value, align 4
  %109 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %next, align 4
  %110 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %arrayidx32.i, align 4
  %port2.i = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 6, i32 1
  %112 = ptrtoint ptr %port2.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %port2.i, align 4
  br label %resize

if.end206:                                        ; preds = %if.then199
  %dsize210 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %113 = ptrtoint ptr %dsize210 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %dsize210, align 4
  %add209 = add nuw nsw i32 %conv196, 2
  %mul211 = mul i32 %114, %add209
  %add212 = add i32 %mul211, 24
  %call9.i.i678 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add212, i32 noundef 2848) #16
  %tobool214.not = icmp eq ptr %call9.i.i678, null
  br i1 %tobool214.not, label %if.end206.unlock_crit_edge, label %if.end216

if.end206.unlock_crit_edge:                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end216:                                        ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #14
  %115 = ptrtoint ptr %size195 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %size195, align 8
  %conv218 = zext i8 %116 to i32
  %117 = ptrtoint ptr %dsize210 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dsize210, align 4
  %mul220 = mul i32 %118, %conv218
  %add221 = add i32 %mul220, 24
  %119 = call ptr @memcpy(ptr %call9.i.i678, ptr %37, i32 %add221)
  %120 = load i8, ptr %size195, align 8
  %add224 = add i8 %120, 2
  br label %copy_elem.sink.split

copy_elem.sink.split:                             ; preds = %if.end216, %if.end90.copy_elem.sink.split_crit_edge
  %retval.1.i.i722.sink = phi ptr [ %call9.i.i678, %if.end216 ], [ %call9.i.i, %if.end90.copy_elem.sink.split_crit_edge ]
  %.sink = phi i8 [ %add224, %if.end216 ], [ 2, %if.end90.copy_elem.sink.split_crit_edge ]
  %dsize.sink = phi ptr [ %dsize210, %if.end216 ], [ %dsize, %if.end90.copy_elem.sink.split_crit_edge ]
  %old.0.ph = phi ptr [ %37, %if.end216 ], [ null, %if.end90.copy_elem.sink.split_crit_edge ]
  %size = getelementptr inbounds %struct.hbucket, ptr %retval.1.i.i722.sink, i32 0, i32 2
  %121 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %.sink, ptr %size, align 16
  %122 = ptrtoint ptr %dsize.sink to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %dsize.sink, align 4
  %mul97 = shl i32 %123, 1
  %add98 = add i32 %mul97, 24
  %124 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %125, i32 %rem, i32 1
  %126 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ext_size, align 4
  %add233 = add i32 %add98, %127
  store i32 %add233, ptr %ext_size, align 4
  br label %copy_elem

copy_elem:                                        ; preds = %copy_elem.sink.split, %if.end192.copy_elem_crit_edge
  %old.0 = phi ptr [ inttoptr (i32 -2 to ptr), %if.end192.copy_elem_crit_edge ], [ %old.0.ph, %copy_elem.sink.split ]
  %n.0 = phi ptr [ %37, %if.end192.copy_elem_crit_edge ], [ %retval.1.i.i722.sink, %copy_elem.sink.split ]
  %pos235 = getelementptr inbounds %struct.hbucket, ptr %n.0, i32 0, i32 3
  %128 = ptrtoint ptr %pos235 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %pos235, align 1
  %inc236 = add i8 %129, 1
  store i8 %inc236, ptr %pos235, align 1
  %conv237 = zext i8 %129 to i32
  %value238 = getelementptr inbounds %struct.hbucket, ptr %n.0, i32 0, i32 5
  %dsize240 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %130 = ptrtoint ptr %dsize240 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %dsize240, align 4
  %mul241 = mul i32 %131, %conv237
  %add.ptr242 = getelementptr i8, ptr %value238, i32 %mul241
  br label %copy_data

copy_data:                                        ; preds = %copy_elem, %ip_set_ext_destroy.exit, %if.then160.copy_data_crit_edge
  %j.2 = phi i32 [ %spec.store.select, %if.then160.copy_data_crit_edge ], [ %spec.store.select763, %ip_set_ext_destroy.exit ], [ %conv237, %copy_elem ]
  %old.1 = phi ptr [ inttoptr (i32 -2 to ptr), %if.then160.copy_data_crit_edge ], [ inttoptr (i32 -2 to ptr), %ip_set_ext_destroy.exit ], [ %old.0, %copy_elem ]
  %n.1 = phi ptr [ %37, %if.then160.copy_data_crit_edge ], [ %37, %ip_set_ext_destroy.exit ], [ %n.0, %copy_elem ]
  %data1.0 = phi ptr [ %add.ptr169, %if.then160.copy_data_crit_edge ], [ %add.ptr169764, %ip_set_ext_destroy.exit ], [ %add.ptr242, %copy_elem ]
  %132 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hregion, align 4
  %elements245 = getelementptr %struct.ip_set_region, ptr %133, i32 %rem, i32 2
  %134 = ptrtoint ptr %elements245 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %elements245, align 4
  %inc246 = add i32 %135, 1
  store i32 %inc246, ptr %elements245, align 4
  %cidr251 = getelementptr inbounds %struct.hash_netport4_elem, ptr %value, i32 0, i32 3
  %136 = ptrtoint ptr %cidr251 to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load252 = load i8, ptr %cidr251, align 1
  %bf.lshr253 = lshr i8 %bf.load252, 1
  %narrow = add nuw i8 %bf.lshr253, 2
  %lock.i682 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i682) #12
  br label %land.rhs.i684

land.rhs.i684:                                    ; preds = %for.inc.i.land.rhs.i684_crit_edge, %copy_data
  %j.05.i = phi i32 [ -1, %copy_data ], [ %j.1.i, %for.inc.i.land.rhs.i684_crit_edge ]
  %i.03.i = phi i32 [ 0, %copy_data ], [ %inc34.i, %for.inc.i.land.rhs.i684_crit_edge ]
  %cidr1.i = getelementptr %struct.hash_netport4, ptr %1, i32 0, i32 7, i32 %i.03.i, i32 1
  %137 = ptrtoint ptr %cidr1.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %cidr1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool.not.i683 = icmp eq i8 %138, 0
  br i1 %tobool.not.i683, label %land.rhs.i684.for.end.i689_crit_edge, label %for.body.i685

land.rhs.i684.for.end.i689_crit_edge:             ; preds = %land.rhs.i684
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i689

for.body.i685:                                    ; preds = %land.rhs.i684
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.05.i)
  %cmp3.not.i = icmp eq i32 %j.05.i, -1
  br i1 %cmp3.not.i, label %if.else.i, label %for.body.i685.for.inc.i_crit_edge

for.body.i685.for.inc.i_crit_edge:                ; preds = %for.body.i685
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i685
  call void @__sanitizer_cov_trace_cmp1(i8 %138, i8 %narrow)
  %cmp12.i686 = icmp ult i8 %138, %narrow
  br i1 %cmp12.i686, label %if.else.i.for.inc.i_crit_edge, label %if.else15.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.else15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp1(i8 %138, i8 %narrow)
  %cmp23.i = icmp eq i8 %138, %narrow
  br i1 %cmp23.i, label %if.then25.i, label %if.else15.i.for.inc.i_crit_edge

if.else15.i.for.inc.i_crit_edge:                  ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then25.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i687 = zext i8 %bf.lshr253 to i32
  %arrayidx28.i = getelementptr %struct.hash_netport4, ptr %1, i32 0, i32 7, i32 %sub.i687
  %139 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx28.i, align 4
  %inc.i = add i32 %140, 1
  store i32 %inc.i, ptr %arrayidx28.i, align 4
  br label %hash_netport4_add_cidr.exit

for.inc.i:                                        ; preds = %if.else15.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge, %for.body.i685.for.inc.i_crit_edge
  %j.1.i = phi i32 [ %j.05.i, %for.body.i685.for.inc.i_crit_edge ], [ -1, %if.else15.i.for.inc.i_crit_edge ], [ %i.03.i, %if.else.i.for.inc.i_crit_edge ]
  %inc34.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i688 = icmp eq i32 %inc34.i, 32
  br i1 %exitcond.not.i688, label %for.inc.i.for.end.i689_crit_edge, label %for.inc.i.land.rhs.i684_crit_edge

for.inc.i.land.rhs.i684_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i684

for.inc.i.for.end.i689_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i689

for.end.i689:                                     ; preds = %for.inc.i.for.end.i689_crit_edge, %land.rhs.i684.for.end.i689_crit_edge
  %i.0.lcssa.i = phi i32 [ 32, %for.inc.i.for.end.i689_crit_edge ], [ %i.03.i, %land.rhs.i684.for.end.i689_crit_edge ]
  %j.0.lcssa.i = phi i32 [ %j.1.i, %for.inc.i.for.end.i689_crit_edge ], [ %j.05.i, %land.rhs.i684.for.end.i689_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.0.lcssa.i)
  %cmp35.not.i = icmp ne i32 %j.0.lcssa.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %j.0.lcssa.i)
  %cmp396.i = icmp sgt i32 %i.0.lcssa.i, %j.0.lcssa.i
  %or.cond.i = select i1 %cmp35.not.i, i1 %cmp396.i, i1 false
  br i1 %or.cond.i, label %for.end.i689.for.body41.i_crit_edge, label %for.end.i689.if.end55.i_crit_edge

for.end.i689.if.end55.i_crit_edge:                ; preds = %for.end.i689
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.i

for.end.i689.for.body41.i_crit_edge:              ; preds = %for.end.i689
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i.for.body41.i_crit_edge, %for.end.i689.for.body41.i_crit_edge
  %i.17.i = phi i32 [ %sub43.i, %for.body41.i.for.body41.i_crit_edge ], [ %i.0.lcssa.i, %for.end.i689.for.body41.i_crit_edge ]
  %sub43.i = add nsw i32 %i.17.i, -1
  %cidr45.i = getelementptr %struct.hash_netport4, ptr %1, i32 0, i32 7, i32 %sub43.i, i32 1
  %141 = ptrtoint ptr %cidr45.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %cidr45.i, align 1
  %cidr50.i = getelementptr %struct.hash_netport4, ptr %1, i32 0, i32 7, i32 %i.17.i, i32 1
  %143 = ptrtoint ptr %cidr50.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %cidr50.i, align 1
  %cmp39.i = icmp sgt i32 %sub43.i, %j.0.lcssa.i
  br i1 %cmp39.i, label %for.body41.i.for.body41.i_crit_edge, label %for.body41.i.if.end55.i_crit_edge

for.body41.i.if.end55.i_crit_edge:                ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.i

for.body41.i.for.body41.i_crit_edge:              ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body41.i

if.end55.i:                                       ; preds = %for.body41.i.if.end55.i_crit_edge, %for.end.i689.if.end55.i_crit_edge
  %i.2.i = phi i32 [ %i.0.lcssa.i, %for.end.i689.if.end55.i_crit_edge ], [ %j.0.lcssa.i, %for.body41.i.if.end55.i_crit_edge ]
  %cidr58.i = getelementptr %struct.hash_netport4, ptr %1, i32 0, i32 7, i32 %i.2.i, i32 1
  %144 = ptrtoint ptr %cidr58.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %narrow, ptr %cidr58.i, align 1
  %sub63.i = zext i8 %bf.lshr253 to i32
  %arrayidx64.i = getelementptr %struct.hash_netport4, ptr %1, i32 0, i32 7, i32 %sub63.i
  %145 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %arrayidx64.i, align 4
  br label %hash_netport4_add_cidr.exit

hash_netport4_add_cidr.exit:                      ; preds = %if.end55.i, %if.then25.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i682) #12
  %146 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %146, i32 8)
  %147 = load i64, ptr %value, align 4
  %148 = ptrtoint ptr %data1.0 to i32
  call void @__asan_storeN_noabort(i32 %148, i32 8)
  store i64 %147, ptr %data1.0, align 4
  br label %overwrite_extensions

overwrite_extensions:                             ; preds = %hash_netport4_add_cidr.exit, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge, %if.then121.overwrite_extensions_crit_edge
  %j.3 = phi i32 [ %j.2, %hash_netport4_add_cidr.exit ], [ %i.0740, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ %i.0740, %if.then121.overwrite_extensions_crit_edge ]
  %old.2 = phi ptr [ %old.1, %hash_netport4_add_cidr.exit ], [ inttoptr (i32 -2 to ptr), %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then121.overwrite_extensions_crit_edge ]
  %n.2 = phi ptr [ %n.1, %hash_netport4_add_cidr.exit ], [ %37, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ %37, %if.then121.overwrite_extensions_crit_edge ]
  %data1.1 = phi ptr [ %data1.0, %hash_netport4_add_cidr.exit ], [ %add.ptr, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ %add.ptr, %if.then121.overwrite_extensions_crit_edge ]
  %149 = lshr i32 %flags, 18
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  %nomatch.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %data1.1, i32 0, i32 3
  %152 = ptrtoint ptr %nomatch.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %bf.load.i690 = load i8, ptr %nomatch.i, align 1
  %bf.clear.i = and i8 %bf.load.i690, -2
  %bf.set.i = or i8 %bf.clear.i, %151
  store i8 %bf.set.i, ptr %nomatch.i, align 1
  %extensions262 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %153 = ptrtoint ptr %extensions262 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %extensions262, align 2
  %155 = and i8 %154, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool265.not = icmp eq i8 %155, 0
  br i1 %tobool265.not, label %overwrite_extensions.if.end270_crit_edge, label %if.then266

overwrite_extensions.if.end270_crit_edge:         ; preds = %overwrite_extensions
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end270

if.then266:                                       ; preds = %overwrite_extensions
  %offset267 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 14
  %156 = ptrtoint ptr %offset267 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %offset267, align 4
  %add.ptr269 = getelementptr i8, ptr %data1.1, i32 %157
  %bytes.i = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 2
  %158 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %159)
  %cmp.not.i691 = icmp eq i64 %159, -1
  br i1 %cmp.not.i691, label %if.then266.if.end.i694_crit_edge, label %if.then.i692

if.then266.if.end.i694_crit_edge:                 ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i694

if.then.i692:                                     ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr269, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %add.ptr269, i64 noundef %159) #12
  br label %if.end.i694

if.end.i694:                                      ; preds = %if.then.i692, %if.then266.if.end.i694_crit_edge
  %packets.i = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %160 = ptrtoint ptr %packets.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %packets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %161)
  %cmp3.not.i693 = icmp eq i64 %161, -1
  br i1 %cmp3.not.i693, label %if.end.i694.if.end270_crit_edge, label %if.then4.i

if.end.i694.if.end270_crit_edge:                  ; preds = %if.end.i694
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end270

if.then4.i:                                       ; preds = %if.end.i694
  call void @__sanitizer_cov_trace_pc() #14
  %packets5.i = getelementptr inbounds %struct.ip_set_counter, ptr %add.ptr269, i32 0, i32 1
  %call.i.i13.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %packets5.i, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %packets5.i, i64 noundef %161) #12
  br label %if.end270

if.end270:                                        ; preds = %if.then4.i, %if.end.i694.if.end270_crit_edge, %overwrite_extensions.if.end270_crit_edge
  %162 = ptrtoint ptr %extensions262 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %extensions262, align 2
  %164 = and i8 %163, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool274.not = icmp eq i8 %164, 0
  br i1 %tobool274.not, label %if.end270.if.end279_crit_edge, label %if.then275

if.end270.if.end279_crit_edge:                    ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end279

if.then275:                                       ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx277 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %165 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx277, align 4
  %add.ptr278 = getelementptr i8, ptr %data1.1, i32 %166
  tail call void @ip_set_init_comment(ptr noundef %set, ptr noundef %add.ptr278, ptr noundef %ext) #12
  br label %if.end279

if.end279:                                        ; preds = %if.then275, %if.end270.if.end279_crit_edge
  %167 = ptrtoint ptr %extensions262 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %extensions262, align 2
  %169 = and i8 %168, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool283.not = icmp eq i8 %169, 0
  br i1 %tobool283.not, label %if.end279.if.end288_crit_edge, label %if.then284

if.end279.if.end288_crit_edge:                    ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end288

if.then284:                                       ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx286 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 2
  %170 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx286, align 4
  %add.ptr287 = getelementptr i8, ptr %data1.1, i32 %171
  %172 = call ptr @memcpy(ptr %add.ptr287, ptr %ext, i32 16)
  br label %if.end288

if.end288:                                        ; preds = %if.then284, %if.end279.if.end288_crit_edge
  %173 = ptrtoint ptr %extensions262 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %extensions262, align 2
  %175 = and i8 %174, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool292.not = icmp eq i8 %175, 0
  br i1 %tobool292.not, label %if.end288.do.end301_crit_edge, label %if.then293

if.end288.do.end301_crit_edge:                    ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end301

if.then293:                                       ; preds = %if.end288
  %arrayidx295 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %176 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx295, align 4
  %add.ptr296 = getelementptr i8, ptr %data1.1, i32 %177
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %178 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool.not.i695 = icmp eq i32 %179, 0
  br i1 %tobool.not.i695, label %if.then293.ip_set_timeout_set.exit_crit_edge, label %if.else.i.i

if.then293.ip_set_timeout_set.exit_crit_edge:     ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_timeout_set.exit

if.else.i.i:                                      ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i = mul i32 %179, 1000
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %180 = load volatile i32, ptr @jiffies, align 128
  %add.i700 = add i32 %180, %call2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i700)
  %cmp.i701 = icmp eq i32 %add.i700, 0
  %spec.select.i = select i1 %cmp.i701, i32 -1, i32 %add.i700
  br label %ip_set_timeout_set.exit

ip_set_timeout_set.exit:                          ; preds = %if.else.i.i, %if.then293.ip_set_timeout_set.exit_crit_edge
  %storemerge.i = phi i32 [ %spec.select.i, %if.else.i.i ], [ 0, %if.then293.ip_set_timeout_set.exit_crit_edge ]
  %181 = ptrtoint ptr %add.ptr296 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %storemerge.i, ptr %add.ptr296, align 4
  br label %do.end301

do.end301:                                        ; preds = %ip_set_timeout_set.exit, %if.end288.do.end301_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !228
  %used304 = getelementptr inbounds %struct.hbucket, ptr %n.2, i32 0, i32 1
  tail call void @_set_bit(i32 noundef %j.3, ptr noundef %used304) #12
  %cmp307.not = icmp eq ptr %old.2, inttoptr (i32 -2 to ptr)
  br i1 %cmp307.not, label %do.end301.resize_crit_edge, label %do.body310

do.end301.resize_crit_edge:                       ; preds = %do.end301
  call void @__sanitizer_cov_trace_pc() #14
  br label %resize

do.body310:                                       ; preds = %do.end301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !229
  %182 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %182)
  store volatile ptr %n.2, ptr %arrayidx69, align 4
  %tobool352.not = icmp eq ptr %old.2, null
  br i1 %tobool352.not, label %do.body310.resize_crit_edge, label %do.end359

do.body310.resize_crit_edge:                      ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #14
  br label %resize

do.end359:                                        ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kvfree_call_rcu(ptr noundef nonnull %old.2, ptr noundef null) #12
  br label %resize

resize:                                           ; preds = %do.end359, %do.body310.resize_crit_edge, %do.end301.resize_crit_edge, %if.then205
  %ret.0 = phi i32 [ -11, %if.then205 ], [ 0, %do.body310.resize_crit_edge ], [ 0, %do.end359 ], [ 0, %do.end301.resize_crit_edge ]
  %183 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %hregion, align 4
  %arrayidx366 = getelementptr %struct.ip_set_region, ptr %184, i32 %rem
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx366) #12
  %call.i.i608 = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #12
  %185 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool369.not = icmp eq i32 %186, 0
  br i1 %tobool369.not, label %resize.out_crit_edge, label %land.lhs.true370

resize.out_crit_edge:                             ; preds = %resize
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true370:                                 ; preds = %resize
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %187 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %target, align 2, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool371.not = icmp eq i8 %188, 0
  br i1 %tobool371.not, label %land.lhs.true370.out_crit_edge, label %if.then373

land.lhs.true370.out_crit_edge:                   ; preds = %land.lhs.true370
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then373:                                       ; preds = %land.lhs.true370
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %189 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i708 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %189, i32 noundef 2848, i32 noundef 128) #15
  %tobool375.not = icmp eq ptr %call7.i.i708, null
  br i1 %tobool375.not, label %if.then373.out_crit_edge, label %if.end377

if.then373.out_crit_edge:                         ; preds = %if.then373
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end377:                                        ; preds = %if.then373
  %ad = getelementptr inbounds %struct.hash_netport4_resize_ad, ptr %call7.i.i708, i32 0, i32 1
  %190 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %ad, align 8
  %d378 = getelementptr inbounds %struct.hash_netport4_resize_ad, ptr %call7.i.i708, i32 0, i32 2
  %191 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %191, i32 8)
  %192 = load i64, ptr %value, align 1
  %193 = ptrtoint ptr %d378 to i32
  call void @__asan_storeN_noabort(i32 %193, i32 8)
  store i64 %192, ptr %d378, align 4
  %ext379 = getelementptr inbounds %struct.hash_netport4_resize_ad, ptr %call7.i.i708, i32 0, i32 3
  %194 = call ptr @memcpy(ptr %ext379, ptr %ext, i32 48)
  %mext380 = getelementptr inbounds %struct.hash_netport4_resize_ad, ptr %call7.i.i708, i32 0, i32 4
  %195 = call ptr @memcpy(ptr %mext380, ptr %mext, i32 48)
  %flags381 = getelementptr inbounds %struct.hash_netport4_resize_ad, ptr %call7.i.i708, i32 0, i32 5
  %196 = ptrtoint ptr %flags381 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %flags, ptr %flags381, align 8
  %lock382 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock382) #12
  %ad383 = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 5, i32 1
  %197 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %prev.i, align 4
  %call.i.i710 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i708, ptr noundef %198, ptr noundef %ad383) #12
  br i1 %call.i.i710, label %if.end.i.i711, label %if.end377.out.sink.split_crit_edge

if.end377.out.sink.split_crit_edge:               ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.end.i.i711:                                    ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #14
  %199 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %call7.i.i708, ptr %prev.i, align 4
  %200 = ptrtoint ptr %call7.i.i708 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %ad383, ptr %call7.i.i708, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i708, i32 0, i32 1
  %201 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %198, ptr %prev3.i.i, align 4
  %202 = ptrtoint ptr %198 to i32
  call void @__asan_store4_noabort(i32 %202)
  store volatile ptr %call7.i.i708, ptr %198, align 4
  br label %out.sink.split

set_full:                                         ; preds = %if.end188.set_full_crit_edge, %if.then84.set_full_crit_edge
  %call386 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call386)
  %tobool387.not = icmp eq i32 %call386, 0
  br i1 %tobool387.not, label %set_full.unlock_crit_edge, label %do.end391

set_full.unlock_crit_edge:                        ; preds = %set_full
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

do.end391:                                        ; preds = %set_full
  call void @__sanitizer_cov_trace_pc() #14
  %call394 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %set, i32 noundef %maxelem.0) #17
  br label %unlock

unlock:                                           ; preds = %do.end391, %set_full.unlock_crit_edge, %if.end206.unlock_crit_edge, %ip_set_timeout_expired.exit.unlock_crit_edge, %land.lhs.true129.unlock_crit_edge, %lor.lhs.false124.unlock_crit_edge, %if.end90.unlock_crit_edge
  %ret.1 = phi i32 [ -12, %if.end90.unlock_crit_edge ], [ -4103, %ip_set_timeout_expired.exit.unlock_crit_edge ], [ -4103, %lor.lhs.false124.unlock_crit_edge ], [ -12, %if.end206.unlock_crit_edge ], [ -4352, %do.end391 ], [ -4352, %set_full.unlock_crit_edge ], [ -4103, %land.lhs.true129.unlock_crit_edge ]
  %203 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %hregion, align 4
  %arrayidx397 = getelementptr %struct.ip_set_region, ptr %204, i32 %rem
  br label %out.sink.split

out.sink.split:                                   ; preds = %unlock, %if.end.i.i711, %if.end377.out.sink.split_crit_edge
  %lock382.sink = phi ptr [ %arrayidx397, %unlock ], [ %lock382, %if.end377.out.sink.split_crit_edge ], [ %lock382, %if.end.i.i711 ]
  %ret.2.ph = phi i32 [ %ret.1, %unlock ], [ %ret.0, %if.end377.out.sink.split_crit_edge ], [ %ret.0, %if.end.i.i711 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock382.sink) #12
  br label %out

out:                                              ; preds = %out.sink.split, %if.then373.out_crit_edge, %land.lhs.true370.out_crit_edge, %resize.out_crit_edge
  %ret.2 = phi i32 [ %ret.0, %land.lhs.true370.out_crit_edge ], [ %ret.0, %resize.out_crit_edge ], [ %ret.0, %if.then373.out_crit_edge ], [ %ret.2.ph, %out.sink.split ]
  %call.i.i609 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %205 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !232
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %205, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !233
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true402, label %out.cleanup419_crit_edge

out.cleanup419_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup419

land.lhs.true402:                                 ; preds = %out
  %call.i.i610 = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #12
  %206 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool405.not = icmp eq i32 %207, 0
  br i1 %tobool405.not, label %land.lhs.true402.cleanup419_crit_edge, label %do.body407

land.lhs.true402.cleanup419_crit_edge:            ; preds = %land.lhs.true402
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup419

do.body407:                                       ; preds = %land.lhs.true402
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport4_add.__UNIQUE_ID_ddebug657, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport4_add, %if.then414)) #12
          to label %do.end.i [label %if.then414], !srcloc !222

if.then414:                                       ; preds = %do.body407
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport4_add.__UNIQUE_ID_ddebug657, ptr noundef nonnull @.str.12, ptr noundef %3) #12
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i718.do.end.i_crit_edge, %if.then414, %do.body407
  %i.017.i = phi i32 [ %inc.i716, %for.inc.i718.do.end.i_crit_edge ], [ 0, %do.body407 ], [ 0, %if.then414 ]
  %arrayidx.i713 = getelementptr %struct.htable, ptr %3, i32 0, i32 5, i32 %i.017.i
  %208 = ptrtoint ptr %arrayidx.i713 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx.i713, align 4
  %tobool.not.i714 = icmp eq ptr %209, null
  br i1 %tobool.not.i714, label %do.end.i.for.inc.i718_crit_edge, label %if.end.i715

do.end.i.for.inc.i718_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i718

if.end.i715:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %209) #12
  br label %for.inc.i718

for.inc.i718:                                     ; preds = %if.end.i715, %do.end.i.for.inc.i718_crit_edge
  %inc.i716 = add i32 %i.017.i, 1
  %210 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %htable_bits, align 4
  %conv.i = zext i8 %211 to i32
  %i.0.highbits.i = lshr i32 %inc.i716, %conv.i
  %cmp.i717 = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i717, label %for.inc.i718.do.end.i_crit_edge, label %hash_netport4_ahash_destroy.exit

for.inc.i718.do.end.i_crit_edge:                  ; preds = %for.inc.i718
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hash_netport4_ahash_destroy.exit:                 ; preds = %for.inc.i718
  call void @__sanitizer_cov_trace_pc() #14
  %212 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %213) #12
  tail call void @ip_set_free(ptr noundef %3) #12
  br label %cleanup419

cleanup419:                                       ; preds = %hash_netport4_ahash_destroy.exit, %land.lhs.true402.cleanup419_crit_edge, %out.cleanup419_crit_edge
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netport4_del(ptr noundef %set, ptr nocapture noundef readonly %value, ptr nocapture noundef readonly %ext, ptr nocapture noundef readnone %mext, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dsize2 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %2 = ptrtoint ptr %dsize2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsize2, align 4
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 750, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %1, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end9_crit_edge

rcu_read_lock_bh.exit.do.end9_crit_edge:          ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b444 = load i1, ptr @hash_netport4_del.__warned, align 1
  br i1 %.b444, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport4_del.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1048, ptr noundef nonnull @.str.8) #12
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock_bh.exit.do.end9_crit_edge
  %initval = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %initval, align 4
  %add1.i = add i32 %7, -559038729
  %arrayidx32.i = getelementptr i32, ptr %value, i32 1
  %8 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %9, %add1.i
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  %add36.i = add i32 %11, %add1.i
  %xor37.i = xor i32 %add33.i, %add1.i
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #12
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %sub39.i, %add36.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #12
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #12
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #12
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #12
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #12
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #12
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  %htable_bits = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %htable_bits, align 4
  %conv = zext i8 %13 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %and = and i32 %sub57.i, %sub
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %cmp = icmp ult i8 %13, 10
  %sub21 = add nsw i32 %conv, -10
  %notmask488 = shl nsw i32 -1, %sub21
  %shl22.op = xor i32 %notmask488, -1
  %14 = select i1 %cmp, i32 0, i32 %shl22.op
  %rem = and i32 %and, %14
  %uref = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !227
  %call.i458 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i458, label %do.end9.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i461

do.end9.rcu_read_unlock_bh.exit_crit_edge:        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i461:                               ; preds = %do.end9
  %call1.i459 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i459)
  %tobool.not.i460 = icmp eq i32 %call1.i459, 0
  br i1 %tobool.not.i460, label %land.lhs.true.i461.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i463

land.lhs.true.i461.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i461
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i463:                              ; preds = %land.lhs.true.i461
  %.b4.i462 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i462, label %land.lhs.true2.i463.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i464

land.lhs.true2.i463.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i463
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i464:                                     ; preds = %land.lhs.true2.i463
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i464, %land.lhs.true2.i463.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i461.rcu_read_unlock_bh.exit_crit_edge, %do.end9.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  %hregion = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hregion, align 4
  %arrayidx = getelementptr %struct.ip_set_region, ptr %17, i32 %rem
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #12
  %arrayidx27 = getelementptr %struct.htable, ptr %5, i32 0, i32 5, i32 %and
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx27, align 4
  %call29 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true31, label %rcu_read_unlock_bh.exit.do.end39_crit_edge

rcu_read_unlock_bh.exit.do.end39_crit_edge:       ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

land.lhs.true31:                                  ; preds = %rcu_read_unlock_bh.exit
  %call32 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.do.end39_crit_edge, label %land.lhs.true34

land.lhs.true31.do.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %.b442443 = load i1, ptr @hash_netport4_del.__warned.18, align 1
  br i1 %.b442443, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport4_del.__warned.18, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1055, ptr noundef nonnull @.str.8) #12
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %land.lhs.true34.do.end39_crit_edge, %land.lhs.true31.do.end39_crit_edge, %rcu_read_unlock_bh.exit.do.end39_crit_edge
  %tobool41.not = icmp eq ptr %19, null
  br i1 %tobool41.not, label %do.end39.out_crit_edge, label %for.cond.preheader

do.end39.out_crit_edge:                           ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.cond.preheader:                               ; preds = %do.end39
  %pos = getelementptr inbounds %struct.hbucket, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pos, align 1
  %conv44 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp45493.not = icmp eq i8 %21, 0
  br i1 %cmp45493.not, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %19, i32 0, i32 1
  %value51 = getelementptr inbounds %struct.hbucket, ptr %19, i32 0, i32 5
  %proto10.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %value, i32 0, i32 2
  %cidr15.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %value, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc297.for.body_crit_edge, %for.body.lr.ph
  %i.0495 = phi i32 [ 0, %for.body.lr.ph ], [ %inc298, %for.inc297.for.body_crit_edge ]
  %k.0494 = phi i32 [ 0, %for.body.lr.ph ], [ %k.5, %for.inc297.for.body_crit_edge ]
  %div3.i = lshr i32 %i.0495, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0495, 31
  %24 = shl nuw i32 1, %and.i
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool48.not = icmp eq i32 %25, 0
  br i1 %tobool48.not, label %if.then49, label %if.end50

if.then49:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %k.0494, 1
  br label %for.inc297

if.end50:                                         ; preds = %for.body
  %mul = mul i32 %i.0495, %3
  %add.ptr = getelementptr i8, ptr %value51, i32 %mul
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr, align 4
  %28 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp.i = icmp eq i32 %27, %29
  br i1 %cmp.i, label %land.lhs.true.i465, label %if.end50.for.inc297_crit_edge

if.end50.for.inc297_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc297

land.lhs.true.i465:                               ; preds = %if.end50
  %port.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %add.ptr, i32 0, i32 1
  %30 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %port.i, align 4
  %32 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx32.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %33)
  %cmp6.i = icmp eq i16 %31, %33
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i465.for.inc297_crit_edge

land.lhs.true.i465.for.inc297_crit_edge:          ; preds = %land.lhs.true.i465
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc297

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i465
  %proto.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %add.ptr, i32 0, i32 2
  %34 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %proto.i, align 2
  %36 = ptrtoint ptr %proto10.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %proto10.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %37)
  %cmp12.i = icmp eq i8 %35, %37
  br i1 %cmp12.i, label %hash_netport4_data_equal.exit, label %land.lhs.true8.i.for.inc297_crit_edge

land.lhs.true8.i.for.inc297_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc297

hash_netport4_data_equal.exit:                    ; preds = %land.lhs.true8.i
  %cidr.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %add.ptr, i32 0, i32 3
  %38 = ptrtoint ptr %cidr.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i = load i8, ptr %cidr.i, align 1
  %39 = ptrtoint ptr %cidr15.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load16.i = load i8, ptr %cidr15.i, align 1
  %cmp19.unshifted.i = xor i8 %bf.load16.i, %bf.load.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %cmp19.unshifted.i)
  %cmp19.i = icmp ult i8 %cmp19.unshifted.i, 2
  br i1 %cmp19.i, label %if.end55, label %hash_netport4_data_equal.exit.for.inc297_crit_edge

hash_netport4_data_equal.exit.for.inc297_crit_edge: ; preds = %hash_netport4_data_equal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc297

if.end55:                                         ; preds = %hash_netport4_data_equal.exit
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %40 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %extensions, align 2
  %42 = and i8 %41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool58.not = icmp eq i8 %42, 0
  br i1 %tobool58.not, label %if.end55.if.end65_crit_edge, label %land.lhs.true59

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

land.lhs.true59:                                  ; preds = %if.end55
  %arrayidx60 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %43 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx60, align 4
  %add.ptr61 = getelementptr i8, ptr %add.ptr, i32 %44
  %45 = ptrtoint ptr %add.ptr61 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.not.i = icmp eq i32 %46, 0
  br i1 %cmp.not.i, label %land.lhs.true59.if.end65_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true59.if.end65_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %46, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.out_crit_edge, label %ip_set_timeout_expired.exit.if.end65_crit_edge

ip_set_timeout_expired.exit.if.end65_crit_edge:   ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

ip_set_timeout_expired.exit.out_crit_edge:        ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end65:                                         ; preds = %ip_set_timeout_expired.exit.if.end65_crit_edge, %land.lhs.true59.if.end65_crit_edge, %if.end55.if.end65_crit_edge
  tail call void @_clear_bit(i32 noundef %i.0495, ptr noundef %used) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !234
  %add = add nuw nsw i32 %i.0495, 1
  %48 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pos, align 1
  %conv75 = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv75)
  %cmp76 = icmp eq i32 %add, %conv75
  br i1 %cmp76, label %if.then78, label %if.end65.if.end80_crit_edge

if.end65.if.end80_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then78:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %dec = add i8 %49, -1
  %50 = ptrtoint ptr %pos to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %dec, ptr %pos, align 1
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end65.if.end80_crit_edge
  %51 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %52, i32 %rem, i32 2
  %53 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %elements, align 4
  %dec83 = add i32 %54, -1
  store i32 %dec83, ptr %elements, align 4
  %55 = ptrtoint ptr %cidr15.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load = load i8, ptr %cidr15.i, align 1
  %bf.lshr = lshr i8 %bf.load, 1
  %narrow = add nuw i8 %bf.lshr, 2
  %lock.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc57.i.for.body.i_crit_edge, %if.end80
  %indvars.iv.i = phi i32 [ 0, %if.end80 ], [ %indvars.iv.next.i, %for.inc57.i.for.body.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.hash_netport4, ptr %1, i32 0, i32 7, i32 %indvars.iv.i, i32 1, i32 0
  %56 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %narrow)
  %cmp7.not.i = icmp eq i8 %57, %narrow
  br i1 %cmp7.not.i, label %if.end.i, label %for.inc57.i

if.end.i:                                         ; preds = %for.body.i
  %sub.i467 = zext i8 %bf.lshr to i32
  %arrayidx11.i = getelementptr %struct.hash_netport4, ptr %1, i32 0, i32 7, i32 %sub.i467
  %58 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx11.i, align 4
  %dec.i = add i32 %59, -1
  store i32 %dec.i, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp22.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp22.not.i, label %for.cond26.preheader.i, label %if.end.i.hash_netport4_del_cidr.exit_crit_edge

if.end.i.hash_netport4_del_cidr.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hash_netport4_del_cidr.exit

for.cond26.preheader.i:                           ; preds = %if.end.i
  %60 = trunc i32 %indvars.iv.i to i8
  %conv2786.i = and i32 %indvars.iv.i, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %60)
  %cmp2987.i = icmp ult i8 %60, 31
  br i1 %cmp2987.i, label %for.cond26.preheader.i.land.rhs.i469_crit_edge, label %for.cond26.preheader.i.for.end.i_crit_edge

for.cond26.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.cond26.preheader.i.land.rhs.i469_crit_edge:   ; preds = %for.cond26.preheader.i
  br label %land.rhs.i469

land.rhs.i469:                                    ; preds = %for.body38.i.land.rhs.i469_crit_edge, %for.cond26.preheader.i.land.rhs.i469_crit_edge
  %indvars.iv92.i = phi i32 [ %add.i, %for.body38.i.land.rhs.i469_crit_edge ], [ %indvars.iv.i, %for.cond26.preheader.i.land.rhs.i469_crit_edge ]
  %arrayidx36.i = getelementptr %struct.hash_netport4, ptr %1, i32 0, i32 7, i32 %indvars.iv92.i, i32 1, i32 0
  %61 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i468 = icmp eq i8 %62, 0
  br i1 %tobool.not.i468, label %land.rhs.i469.for.end.i_crit_edge, label %for.body38.i

land.rhs.i469.for.end.i_crit_edge:                ; preds = %land.rhs.i469
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body38.i:                                     ; preds = %land.rhs.i469
  %add.i = add nuw nsw i32 %indvars.iv92.i, 1
  %arrayidx44.i = getelementptr %struct.hash_netport4, ptr %1, i32 0, i32 7, i32 %add.i, i32 1, i32 0
  %63 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx44.i, align 1
  %65 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx36.i, align 1
  %exitcond94.not.i = icmp eq i32 %add.i, 31
  br i1 %exitcond94.not.i, label %for.body38.i.for.end.i_crit_edge, label %for.body38.i.land.rhs.i469_crit_edge

for.body38.i.land.rhs.i469_crit_edge:             ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i469

for.body38.i.for.end.i_crit_edge:                 ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body38.i.for.end.i_crit_edge, %land.rhs.i469.for.end.i_crit_edge, %for.cond26.preheader.i.for.end.i_crit_edge
  %conv27.lcssa.i = phi i32 [ %conv2786.i, %for.cond26.preheader.i.for.end.i_crit_edge ], [ %indvars.iv92.i, %land.rhs.i469.for.end.i_crit_edge ], [ 31, %for.body38.i.for.end.i_crit_edge ]
  %arrayidx56.i = getelementptr %struct.hash_netport4, ptr %1, i32 0, i32 7, i32 %conv27.lcssa.i, i32 1, i32 0
  %66 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %arrayidx56.i, align 1
  br label %hash_netport4_del_cidr.exit

for.inc57.i:                                      ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %for.inc57.i.hash_netport4_del_cidr.exit_crit_edge, label %for.inc57.i.for.body.i_crit_edge

for.inc57.i.for.body.i_crit_edge:                 ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc57.i.hash_netport4_del_cidr.exit_crit_edge: ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hash_netport4_del_cidr.exit

hash_netport4_del_cidr.exit:                      ; preds = %for.inc57.i.hash_netport4_del_cidr.exit_crit_edge, %for.end.i, %if.end.i.hash_netport4_del_cidr.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  %67 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %extensions, align 2
  %69 = and i8 %68, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i470 = icmp eq i8 %69, 0
  br i1 %tobool.not.i470, label %hash_netport4_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge, label %if.then.i472

hash_netport4_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge: ; preds = %hash_netport4_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_ext_destroy.exit

if.then.i472:                                     ; preds = %hash_netport4_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i471 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %70 = ptrtoint ptr %arrayidx.i471 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i471, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %72 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %72(ptr noundef %set, ptr noundef %add.ptr.i) #12
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i472, %hash_netport4_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge
  %call.i.i445 = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #12
  %73 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool95.not = icmp eq i32 %74, 0
  br i1 %tobool95.not, label %ip_set_ext_destroy.exit.if.end106_crit_edge, label %land.lhs.true96

ip_set_ext_destroy.exit.if.end106_crit_edge:      ; preds = %ip_set_ext_destroy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

land.lhs.true96:                                  ; preds = %ip_set_ext_destroy.exit
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %75 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %target, align 2, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool97.not = icmp eq i8 %76, 0
  br i1 %tobool97.not, label %land.lhs.true96.if.end106_crit_edge, label %if.then99

land.lhs.true96.if.end106_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then99:                                        ; preds = %land.lhs.true96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %77 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %77, i32 noundef 2848, i32 noundef 128) #15
  %tobool101.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool101.not, label %if.then99.if.end106_crit_edge, label %if.then102

if.then99.if.end106_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then102:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #14
  %ad = getelementptr inbounds %struct.hash_netport4_resize_ad, ptr %call7.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %ad, align 8
  %d103 = getelementptr inbounds %struct.hash_netport4_resize_ad, ptr %call7.i.i, i32 0, i32 2
  %79 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %79, i32 8)
  %80 = load i64, ptr %value, align 1
  %81 = ptrtoint ptr %d103 to i32
  call void @__asan_storeN_noabort(i32 %81, i32 8)
  store i64 %80, ptr %d103, align 4
  %flags104 = getelementptr inbounds %struct.hash_netport4_resize_ad, ptr %call7.i.i, i32 0, i32 5
  %82 = ptrtoint ptr %flags104 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %flags, ptr %flags104, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.then102, %if.then99.if.end106_crit_edge, %land.lhs.true96.if.end106_crit_edge, %ip_set_ext_destroy.exit.if.end106_crit_edge
  %x.0 = phi ptr [ %call7.i.i, %if.then102 ], [ null, %if.then99.if.end106_crit_edge ], [ null, %land.lhs.true96.if.end106_crit_edge ], [ null, %ip_set_ext_destroy.exit.if.end106_crit_edge ]
  %83 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %pos, align 1
  %conv109 = zext i8 %84 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0495, i32 %conv109)
  %cmp110497 = icmp ult i32 %i.0495, %conv109
  br i1 %cmp110497, label %if.end106.for.body112_crit_edge, label %if.end106.for.end122_crit_edge

if.end106.for.end122_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end122

if.end106.for.body112_crit_edge:                  ; preds = %if.end106
  br label %for.body112

for.body112:                                      ; preds = %for.body112.for.body112_crit_edge, %if.end106.for.body112_crit_edge
  %i.1499 = phi i32 [ %inc121, %for.body112.for.body112_crit_edge ], [ %i.0495, %if.end106.for.body112_crit_edge ]
  %k.1498 = phi i32 [ %spec.select, %for.body112.for.body112_crit_edge ], [ %k.0494, %if.end106.for.body112_crit_edge ]
  %div3.i446 = lshr i32 %i.1499, 5
  %arrayidx.i447 = getelementptr i32, ptr %used, i32 %div3.i446
  %85 = ptrtoint ptr %arrayidx.i447 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %arrayidx.i447, align 4
  %and.i448 = and i32 %i.1499, 31
  %87 = xor i32 %86, -1
  %88 = lshr i32 %87, %and.i448
  %89 = and i32 %88, 1
  %spec.select = add i32 %89, %k.1498
  %inc121 = add nuw nsw i32 %i.1499, 1
  %exitcond510.not = icmp eq i32 %inc121, %conv109
  br i1 %exitcond510.not, label %for.body112.for.end122_crit_edge, label %for.body112.for.body112_crit_edge

for.body112.for.body112_crit_edge:                ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body112

for.body112.for.end122_crit_edge:                 ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end122

for.end122:                                       ; preds = %for.body112.for.end122_crit_edge, %if.end106.for.end122_crit_edge
  %k.1.lcssa = phi i32 [ %k.0494, %if.end106.for.end122_crit_edge ], [ %spec.select, %for.body112.for.end122_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp125 = icmp eq i8 %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.1.lcssa)
  %cmp128 = icmp eq i32 %k.1.lcssa, 0
  %or.cond = select i1 %cmp125, i1 %cmp128, i1 false
  br i1 %or.cond, label %if.then130, label %if.else187

if.then130:                                       ; preds = %for.end122
  call void @__sanitizer_cov_trace_pc() #14
  %size = getelementptr inbounds %struct.hbucket, ptr %19, i32 0, i32 2
  %90 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %size, align 8
  %conv131 = zext i8 %91 to i32
  %mul132 = mul i32 %3, %conv131
  %92 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %93, i32 %rem, i32 1
  %94 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ext_size, align 4
  %add133.neg = add i32 %95, -24
  %sub136 = sub i32 %add133.neg, %mul132
  store i32 %sub136, ptr %ext_size, align 4
  br label %out.sink.split

if.else187:                                       ; preds = %for.end122
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %k.1.lcssa)
  %cmp188 = icmp sgt i32 %k.1.lcssa, 1
  br i1 %cmp188, label %if.then190, label %if.else187.out_crit_edge

if.else187.out_crit_edge:                         ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then190:                                       ; preds = %if.else187
  %size192 = getelementptr inbounds %struct.hbucket, ptr %19, i32 0, i32 2
  %96 = ptrtoint ptr %size192 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %size192, align 8
  %conv193 = zext i8 %97 to i32
  %sub194 = add nsw i32 %conv193, -2
  %mul195 = mul i32 %sub194, %3
  %add196 = add i32 %mul195, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add196, i32 noundef 2848) #16
  %tobool198.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool198.not, label %if.then190.out_crit_edge, label %if.end200

if.then190.out_crit_edge:                         ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end200:                                        ; preds = %if.then190
  %98 = ptrtoint ptr %size192 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %size192, align 8
  %sub203 = add i8 %99, -2
  %size205 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 2
  %100 = ptrtoint ptr %size205 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %sub203, ptr %size205, align 16
  %101 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp209502.not = icmp eq i8 %102, 0
  br i1 %cmp209502.not, label %if.end200.for.end231_crit_edge, label %for.body211.lr.ph

if.end200.for.end231_crit_edge:                   ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end231

for.body211.lr.ph:                                ; preds = %if.end200
  %value222 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 5
  %used226 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 1
  br label %for.body211

for.body211:                                      ; preds = %for.inc229.for.body211_crit_edge, %for.body211.lr.ph
  %j.1504 = phi i32 [ 0, %for.body211.lr.ph ], [ %inc230, %for.inc229.for.body211_crit_edge ]
  %k.3503 = phi i32 [ 0, %for.body211.lr.ph ], [ %k.4, %for.inc229.for.body211_crit_edge ]
  %div3.i451 = lshr i32 %j.1504, 5
  %arrayidx.i452 = getelementptr i32, ptr %used, i32 %div3.i451
  %103 = ptrtoint ptr %arrayidx.i452 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %arrayidx.i452, align 4
  %and.i453 = and i32 %j.1504, 31
  %105 = shl nuw i32 1, %and.i453
  %106 = and i32 %104, %105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool215.not = icmp eq i32 %106, 0
  br i1 %tobool215.not, label %for.body211.for.inc229_crit_edge, label %if.end217

for.body211.for.inc229_crit_edge:                 ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc229

if.end217:                                        ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #14
  %mul220 = mul i32 %j.1504, %3
  %add.ptr221 = getelementptr i8, ptr %value51, i32 %mul220
  %mul224 = mul i32 %k.3503, %3
  %add.ptr225 = getelementptr i8, ptr %value222, i32 %mul224
  %107 = call ptr @memcpy(ptr %add.ptr225, ptr %add.ptr221, i32 %3)
  tail call void @_set_bit(i32 noundef %k.3503, ptr noundef %used226) #12
  %inc228 = add i32 %k.3503, 1
  br label %for.inc229

for.inc229:                                       ; preds = %if.end217, %for.body211.for.inc229_crit_edge
  %k.4 = phi i32 [ %inc228, %if.end217 ], [ %k.3503, %for.body211.for.inc229_crit_edge ]
  %inc230 = add nuw nsw i32 %j.1504, 1
  %108 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %pos, align 1
  %conv208 = zext i8 %109 to i32
  %cmp209 = icmp ult i32 %inc230, %conv208
  br i1 %cmp209, label %for.inc229.for.body211_crit_edge, label %for.inc229.for.end231_crit_edge

for.inc229.for.end231_crit_edge:                  ; preds = %for.inc229
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end231

for.inc229.for.body211_crit_edge:                 ; preds = %for.inc229
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body211

for.end231:                                       ; preds = %for.inc229.for.end231_crit_edge, %if.end200.for.end231_crit_edge
  %k.3.lcssa = phi i32 [ 0, %if.end200.for.end231_crit_edge ], [ %k.4, %for.inc229.for.end231_crit_edge ]
  %conv232 = trunc i32 %k.3.lcssa to i8
  %pos233 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 3
  %110 = ptrtoint ptr %pos233 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv232, ptr %pos233, align 1
  %mul234.neg = mul i32 %3, -2
  %add235.neg = add i32 %mul234.neg, -24
  %111 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hregion, align 4
  %ext_size238 = getelementptr %struct.ip_set_region, ptr %112, i32 %rem, i32 1
  %113 = ptrtoint ptr %ext_size238 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ext_size238, align 4
  %sub239 = add i32 %add235.neg, %114
  store i32 %sub239, ptr %ext_size238, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !235
  br label %out.sink.split

for.inc297:                                       ; preds = %hash_netport4_data_equal.exit.for.inc297_crit_edge, %land.lhs.true8.i.for.inc297_crit_edge, %land.lhs.true.i465.for.inc297_crit_edge, %if.end50.for.inc297_crit_edge, %if.then49
  %k.5 = phi i32 [ %k.0494, %hash_netport4_data_equal.exit.for.inc297_crit_edge ], [ %inc, %if.then49 ], [ %k.0494, %land.lhs.true8.i.for.inc297_crit_edge ], [ %k.0494, %land.lhs.true.i465.for.inc297_crit_edge ], [ %k.0494, %if.end50.for.inc297_crit_edge ]
  %inc298 = add nuw nsw i32 %i.0495, 1
  %exitcond.not = icmp eq i32 %inc298, %conv44
  br i1 %exitcond.not, label %for.inc297.out_crit_edge, label %for.inc297.for.body_crit_edge

for.inc297.for.body_crit_edge:                    ; preds = %for.inc297
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc297.out_crit_edge:                         ; preds = %for.inc297
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out.sink.split:                                   ; preds = %for.end231, %if.then130
  %retval.1.i.i486.sink = phi ptr [ %call9.i.i, %for.end231 ], [ null, %if.then130 ]
  %115 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %retval.1.i.i486.sink, ptr %arrayidx27, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %19, ptr noundef null) #12
  br label %out

out:                                              ; preds = %out.sink.split, %for.inc297.out_crit_edge, %if.then190.out_crit_edge, %if.else187.out_crit_edge, %ip_set_timeout_expired.exit.out_crit_edge, %for.cond.preheader.out_crit_edge, %do.end39.out_crit_edge
  %ret.0 = phi i32 [ -4103, %ip_set_timeout_expired.exit.out_crit_edge ], [ 0, %if.else187.out_crit_edge ], [ -4103, %do.end39.out_crit_edge ], [ 0, %if.then190.out_crit_edge ], [ -4103, %for.cond.preheader.out_crit_edge ], [ 0, %out.sink.split ], [ -4103, %for.inc297.out_crit_edge ]
  %x.1 = phi ptr [ null, %ip_set_timeout_expired.exit.out_crit_edge ], [ %x.0, %if.else187.out_crit_edge ], [ null, %do.end39.out_crit_edge ], [ %x.0, %if.then190.out_crit_edge ], [ null, %for.cond.preheader.out_crit_edge ], [ %x.0, %out.sink.split ], [ null, %for.inc297.out_crit_edge ]
  %116 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hregion, align 4
  %arrayidx301 = getelementptr %struct.ip_set_region, ptr %117, i32 %rem
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx301) #12
  %tobool303.not = icmp eq ptr %x.1, null
  br i1 %tobool303.not, label %out.if.end308_crit_edge, label %if.then304

out.if.end308_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end308

if.then304:                                       ; preds = %out
  %lock305 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock305) #12
  %ad306 = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 5
  %118 = ptrtoint ptr %ad306 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ad306, align 4
  %call.i.i476 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %x.1, ptr noundef %ad306, ptr noundef %119) #12
  br i1 %call.i.i476, label %if.end.i.i477, label %if.then304.list_add.exit_crit_edge

if.then304.list_add.exit_crit_edge:               ; preds = %if.then304
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i477:                                    ; preds = %if.then304
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %x.1, ptr %prev1.i.i, align 4
  %121 = ptrtoint ptr %x.1 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %119, ptr %x.1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %x.1, i32 0, i32 1
  %122 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %ad306, ptr %prev3.i.i, align 4
  %123 = ptrtoint ptr %ad306 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %x.1, ptr %ad306, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i477, %if.then304.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock305) #12
  br label %if.end308

if.end308:                                        ; preds = %list_add.exit, %out.if.end308_crit_edge
  %call.i.i456 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %124 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !232
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %124, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !233
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true312, label %if.end308.cleanup328_crit_edge

if.end308.cleanup328_crit_edge:                   ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup328

land.lhs.true312:                                 ; preds = %if.end308
  %call.i.i457 = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #12
  %125 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool315.not = icmp eq i32 %126, 0
  br i1 %tobool315.not, label %land.lhs.true312.cleanup328_crit_edge, label %do.body317

land.lhs.true312.cleanup328_crit_edge:            ; preds = %land.lhs.true312
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup328

do.body317:                                       ; preds = %land.lhs.true312
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport4_del.__UNIQUE_ID_ddebug671, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport4_del, %if.then323)) #12
          to label %do.end.i [label %if.then323], !srcloc !222

if.then323:                                       ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport4_del.__UNIQUE_ID_ddebug671, ptr noundef nonnull @.str.20, ptr noundef %5) #12
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.then323, %do.body317
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.do.end.i_crit_edge ], [ 0, %do.body317 ], [ 0, %if.then323 ]
  %arrayidx.i479 = getelementptr %struct.htable, ptr %5, i32 0, i32 5, i32 %i.017.i
  %127 = ptrtoint ptr %arrayidx.i479 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx.i479, align 4
  %tobool.not.i480 = icmp eq ptr %128, null
  br i1 %tobool.not.i480, label %do.end.i.for.inc.i_crit_edge, label %if.end.i481

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i481:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %128) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i481, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %129 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %htable_bits, align 4
  %conv.i = zext i8 %130 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i
  %cmp.i482 = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i482, label %for.inc.i.do.end.i_crit_edge, label %hash_netport4_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hash_netport4_ahash_destroy.exit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %131 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %132) #12
  tail call void @ip_set_free(ptr noundef %5) #12
  br label %cleanup328

cleanup328:                                       ; preds = %hash_netport4_ahash_destroy.exit, %land.lhs.true312.cleanup328_crit_edge, %if.end308.cleanup328_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netport4_test(ptr noundef %set, ptr nocapture noundef %value, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 750, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end8_crit_edge

rcu_read_lock_bh.exit.do.end8_crit_edge:          ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b91 = load i1, ptr @hash_netport4_test.__warned, align 1
  br i1 %.b91, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport4_test.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1224, ptr noundef nonnull @.str.8) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock_bh.exit.do.end8_crit_edge
  %cidr = getelementptr inbounds %struct.hash_netport4_elem, ptr %value, i32 0, i32 3
  %4 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %cidr, align 1
  %bf.lshr.mask = and i8 %bf.load, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %bf.lshr.mask)
  %cmp10.not = icmp eq i8 %bf.lshr.mask, 62
  br i1 %cmp10.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = tail call fastcc i32 @hash_netport4_test_cidrs(ptr noundef %set, ptr noundef %value, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags)
  br label %out

if.end18:                                         ; preds = %do.end8
  %initval = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %initval, align 4
  %add1.i = add i32 %6, -559038729
  %arrayidx32.i = getelementptr i32, ptr %value, i32 1
  %7 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %8, %add1.i
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %add36.i = add i32 %10, %add1.i
  %xor37.i = xor i32 %add33.i, %add1.i
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #12
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %sub39.i, %add36.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #12
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #12
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #12
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #12
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #12
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #12
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  %htable_bits = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %htable_bits, align 4
  %conv24 = zext i8 %12 to i32
  %notmask = shl nsw i32 -1, %conv24
  %sub = xor i32 %notmask, -1
  %and = and i32 %sub57.i, %sub
  %arrayidx = getelementptr %struct.htable, ptr %3, i32 0, i32 5, i32 %and
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx, align 4
  %call30 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true32, label %if.end18.do.end40_crit_edge

if.end18.do.end40_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end40

land.lhs.true32:                                  ; preds = %if.end18
  %call33 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true32.do.end40_crit_edge, label %land.lhs.true35

land.lhs.true32.do.end40_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end40

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %.b8990 = load i1, ptr @hash_netport4_test.__warned.21, align 1
  br i1 %.b8990, label %land.lhs.true35.do.end40_crit_edge, label %if.then37

land.lhs.true35.do.end40_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end40

if.then37:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport4_test.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1239, ptr noundef nonnull @.str.8) #12
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %land.lhs.true35.do.end40_crit_edge, %land.lhs.true32.do.end40_crit_edge, %if.end18.do.end40_crit_edge
  %tobool42.not = icmp eq ptr %14, null
  br i1 %tobool42.not, label %do.end40.out_crit_edge, label %for.cond45.preheader

do.end40.out_crit_edge:                           ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.cond45.preheader:                             ; preds = %do.end40
  %pos = getelementptr inbounds %struct.hbucket, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp47105.not = icmp eq i8 %16, 0
  br i1 %cmp47105.not, label %for.cond45.preheader.out_crit_edge, label %for.body49.lr.ph

for.cond45.preheader.out_crit_edge:               ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body49.lr.ph:                                 ; preds = %for.cond45.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %14, i32 0, i32 1
  %value54 = getelementptr inbounds %struct.hbucket, ptr %14, i32 0, i32 5
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %proto10.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %value, i32 0, i32 2
  br label %for.body49

for.body49:                                       ; preds = %for.inc64.for.body49_crit_edge, %for.body49.lr.ph
  %i.1106 = phi i32 [ 0, %for.body49.lr.ph ], [ %inc65, %for.inc64.for.body49_crit_edge ]
  %div3.i = lshr i32 %i.1106, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.1106, 31
  %19 = shl nuw i32 1, %and.i
  %20 = and i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool51.not = icmp eq i32 %20, 0
  br i1 %tobool51.not, label %for.body49.for.inc64_crit_edge, label %if.end53

for.body49.for.inc64_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc64

if.end53:                                         ; preds = %for.body49
  %21 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dsize, align 4
  %mul = mul i32 %22, %i.1106
  %add.ptr = getelementptr i8, ptr %value54, i32 %mul
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr, align 4
  %25 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.i = icmp eq i32 %24, %26
  br i1 %cmp.i, label %land.lhs.true.i92, label %if.end53.for.inc64_crit_edge

if.end53.for.inc64_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc64

land.lhs.true.i92:                                ; preds = %if.end53
  %port.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %add.ptr, i32 0, i32 1
  %27 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %port.i, align 4
  %29 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx32.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp6.i = icmp eq i16 %28, %30
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i92.for.inc64_crit_edge

land.lhs.true.i92.for.inc64_crit_edge:            ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc64

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i92
  %proto.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %add.ptr, i32 0, i32 2
  %31 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %proto.i, align 2
  %33 = ptrtoint ptr %proto10.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %proto10.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %34)
  %cmp12.i = icmp eq i8 %32, %34
  br i1 %cmp12.i, label %hash_netport4_data_equal.exit, label %land.lhs.true8.i.for.inc64_crit_edge

land.lhs.true8.i.for.inc64_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc64

hash_netport4_data_equal.exit:                    ; preds = %land.lhs.true8.i
  %cidr.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %add.ptr, i32 0, i32 3
  %35 = ptrtoint ptr %cidr.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i = load i8, ptr %cidr.i, align 1
  %36 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load16.i = load i8, ptr %cidr, align 1
  %cmp19.unshifted.i = xor i8 %bf.load16.i, %bf.load.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %cmp19.unshifted.i)
  %cmp19.i = icmp ult i8 %cmp19.unshifted.i, 2
  br i1 %cmp19.i, label %if.end58, label %hash_netport4_data_equal.exit.for.inc64_crit_edge

hash_netport4_data_equal.exit.for.inc64_crit_edge: ; preds = %hash_netport4_data_equal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc64

if.end58:                                         ; preds = %hash_netport4_data_equal.exit
  %call.i93 = tail call zeroext i1 @ip_set_match_extensions(ptr noundef %set, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags, ptr noundef %add.ptr) #12
  br i1 %call.i93, label %hash_netport4_data_match.exit, label %if.end58.for.inc64_crit_edge

if.end58.for.inc64_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc64

hash_netport4_data_match.exit:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %cidr.i.le = getelementptr inbounds %struct.hash_netport4_elem, ptr %add.ptr, i32 0, i32 3
  %37 = ptrtoint ptr %cidr.i.le to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load.i.i = load i8, ptr %cidr.i.le, align 1
  %bf.clear.i.i = and i8 %bf.load.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i.i)
  %tobool.not.i.i = icmp eq i8 %bf.clear.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 -39
  br label %out

for.inc64:                                        ; preds = %if.end58.for.inc64_crit_edge, %hash_netport4_data_equal.exit.for.inc64_crit_edge, %land.lhs.true8.i.for.inc64_crit_edge, %land.lhs.true.i92.for.inc64_crit_edge, %if.end53.for.inc64_crit_edge, %for.body49.for.inc64_crit_edge
  %inc65 = add nuw nsw i32 %i.1106, 1
  %38 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pos, align 1
  %conv46 = zext i8 %39 to i32
  %cmp47 = icmp ult i32 %inc65, %conv46
  br i1 %cmp47, label %for.inc64.for.body49_crit_edge, label %for.inc64.out_crit_edge

for.inc64.out_crit_edge:                          ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.inc64.for.body49_crit_edge:                   ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body49

out:                                              ; preds = %for.inc64.out_crit_edge, %hash_netport4_data_match.exit, %for.cond45.preheader.out_crit_edge, %do.end40.out_crit_edge, %if.then16
  %ret.2 = phi i32 [ %call17, %if.then16 ], [ %cond.i.i, %hash_netport4_data_match.exit ], [ 0, %do.end40.out_crit_edge ], [ 0, %for.cond45.preheader.out_crit_edge ], [ 0, %for.inc64.out_crit_edge ]
  %call.i94 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i94, label %out.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i97

out.rcu_read_unlock_bh.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i97:                                ; preds = %out
  %call1.i95 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i95)
  %tobool.not.i96 = icmp eq i32 %call1.i95, 0
  br i1 %tobool.not.i96, label %land.lhs.true.i97.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i99

land.lhs.true.i97.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i97
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i99:                               ; preds = %land.lhs.true.i97
  %.b4.i98 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i98, label %land.lhs.true2.i99.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i100

land.lhs.true2.i99.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i99
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i100:                                     ; preds = %land.lhs.true2.i99
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i100, %land.lhs.true2.i99.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i97.rcu_read_unlock_bh.exit_crit_edge, %out.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netport4_resize(ptr noundef %set, i1 noundef zeroext %retried) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dsize1 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %2 = ptrtoint ptr %dsize1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsize1, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup426_crit_edge, label %if.end

entry.cleanup426_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup426

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %1, align 4
  %call5 = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #12
  br i1 %call5, label %if.end.do.end15_crit_edge, label %lor.lhs.false

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

lor.lhs.false:                                    ; preds = %if.end
  %call6 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %lor.lhs.false.do.end15_crit_edge

lor.lhs.false.do.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b581 = load i1, ptr @hash_netport4_resize.__warned, align 1
  br i1 %.b581, label %land.lhs.true10.do.end15_crit_edge, label %if.then12

land.lhs.true10.do.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport4_resize.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 647, ptr noundef nonnull @.str.8) #12
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %land.lhs.true10.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %lor.lhs.false.do.end15_crit_edge, %if.end.do.end15_crit_edge
  %htable_bits17 = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %htable_bits17 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %htable_bits17, align 4
  %maxelem = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 2
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx165 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %nomatch.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %call9.i, i32 0, i32 3
  %initval = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 3
  %arrayidx32.i = getelementptr i32, ptr %call9.i, i32 1
  %bucketsize = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 4
  %mul260 = shl i32 %3, 1
  %add261 = add i32 %mul260, 24
  br label %retry

retry:                                            ; preds = %hash_netport4_ahash_destroy.exit679.retry_crit_edge, %do.end15
  %htable_bits.0 = phi i8 [ %7, %do.end15 ], [ %inc, %hash_netport4_ahash_destroy.exit679.retry_crit_edge ]
  %inc = add i8 %htable_bits.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc)
  %tobool18.not = icmp eq i8 %inc, 0
  br i1 %tobool18.not, label %retry.do.end421_crit_edge, label %if.end20

retry.do.end421_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end421

if.end20:                                         ; preds = %retry
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %inc)
  %cmp3.i = icmp ugt i8 %inc, 28
  %conv.i = zext i8 %inc to i32
  %mul.i = shl i32 4, %conv.i
  %add.i = add i32 %mul.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool22.not701 = icmp eq i32 %add.i, 0
  %tobool22.not = select i1 %cmp3.i, i1 true, i1 %tobool22.not701
  br i1 %tobool22.not, label %if.end20.do.end421_crit_edge, label %if.end24

if.end20.do.end421_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end421

if.end24:                                         ; preds = %if.end20
  %call25 = tail call ptr @ip_set_alloc(i32 noundef %add.i) #12
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.out_crit_edge, label %if.end28

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %inc)
  %cmp = icmp ult i8 %inc, 10
  %sub = add nsw i32 %conv.i, -10
  %shl = shl nuw i32 1, %sub
  %cond = select i1 %cmp, i32 1, i32 %shl
  %mul = mul i32 %cond, 52
  %call31 = tail call ptr @ip_set_alloc(i32 noundef %mul) #12
  %hregion = getelementptr inbounds %struct.htable, ptr %call25, i32 0, i32 4
  %8 = ptrtoint ptr %hregion to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call31, ptr %hregion, align 4
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ip_set_free(ptr noundef nonnull %call25) #12
  br label %out

if.end35:                                         ; preds = %if.end28
  %htable_bits36 = getelementptr inbounds %struct.htable, ptr %call25, i32 0, i32 2
  %9 = ptrtoint ptr %htable_bits36 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %inc, ptr %htable_bits36, align 4
  %10 = ptrtoint ptr %maxelem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maxelem, align 4
  %12 = select i1 %cmp, i32 0, i32 %sub
  %div702 = lshr i32 %11, %12
  %maxelem47 = getelementptr inbounds %struct.htable, ptr %call25, i32 0, i32 3
  %13 = ptrtoint ptr %maxelem47 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div702, ptr %maxelem47, align 4
  br label %do.body60

do.body60:                                        ; preds = %do.body60.do.body60_crit_edge, %if.end35
  %i.0706 = phi i32 [ 0, %if.end35 ], [ %inc65, %do.body60.do.body60_crit_edge ]
  %14 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hregion, align 4
  %arrayidx = getelementptr %struct.ip_set_region, ptr %15, i32 %i.0706
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.6, ptr noundef nonnull @hash_netport4_resize.__key, i16 noundef signext 3) #12
  %inc65 = add nuw i32 %i.0706, 1
  %exitcond.not = icmp eq i32 %inc65, %cond
  br i1 %exitcond.not, label %for.end, label %do.body60.do.body60_crit_edge

do.body60.do.body60_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body60

for.end:                                          ; preds = %do.body60
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %1, align 4
  %call72 = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #12
  br i1 %call72, label %for.end.do.end85_crit_edge, label %lor.lhs.false74

for.end.do.end85_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end85

lor.lhs.false74:                                  ; preds = %for.end
  %call75 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %land.lhs.true77, label %lor.lhs.false74.do.end85_crit_edge

lor.lhs.false74.do.end85_crit_edge:               ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end85

land.lhs.true77:                                  ; preds = %lor.lhs.false74
  %call78 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %land.lhs.true77.do.end85_crit_edge, label %land.lhs.true80

land.lhs.true77.do.end85_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end85

land.lhs.true80:                                  ; preds = %land.lhs.true77
  %.b579580 = load i1, ptr @hash_netport4_resize.__warned.25, align 1
  br i1 %.b579580, label %land.lhs.true80.do.end85_crit_edge, label %if.then82

land.lhs.true80.do.end85_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end85

if.then82:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport4_resize.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 677, ptr noundef nonnull @.str.8) #12
  br label %do.end85

do.end85:                                         ; preds = %if.then82, %land.lhs.true80.do.end85_crit_edge, %land.lhs.true77.do.end85_crit_edge, %lor.lhs.false74.do.end85_crit_edge, %for.end.do.end85_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %17, i32 noundef 4) #12
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %17, align 4
  %uref = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 1
  %call.i.i584 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport4_resize.__UNIQUE_ID_ddebug635, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport4_resize, %if.then94)) #12
          to label %do.end100 [label %if.then94], !srcloc !222

if.then94:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #14
  %htable_bits95 = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %htable_bits95 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %htable_bits95, align 4
  %conv96 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport4_resize.__UNIQUE_ID_ddebug635, ptr noundef nonnull @.str.27, ptr noundef %set, i32 noundef %conv96, i32 noundef %conv.i, ptr noundef %17) #12
  br label %do.end100

do.end100:                                        ; preds = %if.then94, %do.end85
  %htable_bits102 = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 2
  %notmask = shl nsw i32 -1, %conv.i
  %sub178 = xor i32 %notmask, -1
  %22 = add i32 %cond, -1
  br label %for.body116

for.body116:                                      ; preds = %rcu_read_unlock_bh.exit.for.body116_crit_edge, %do.end100
  %r.0722 = phi i32 [ 0, %do.end100 ], [ %inc303, %rcu_read_unlock_bh.exit.for.body116_crit_edge ]
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %for.body116.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

for.body116.rcu_read_lock_bh.exit_crit_edge:      ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %for.body116
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i596

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

if.then.i596:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 750, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i596, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %for.body116.rcu_read_lock_bh.exit_crit_edge
  %23 = ptrtoint ptr %htable_bits102 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %htable_bits102, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %24)
  %cmp119 = icmp ult i8 %24, 10
  %mul123 = shl i32 %r.0722, 10
  %spec.select = select i1 %cmp119, i32 0, i32 %mul123
  %mul136 = add i32 %mul123, 1024
  %conv128712 = zext i8 %24 to i32
  %shl134713 = shl nuw i32 1, %conv128712
  %cond138714 = select i1 %cmp119, i32 %shl134713, i32 %mul136
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %cond138714)
  %cmp139715 = icmp ult i32 %spec.select, %cond138714
  br i1 %cmp139715, label %rcu_read_lock_bh.exit.do.end144_crit_edge, label %rcu_read_lock_bh.exit.for.end301_crit_edge

rcu_read_lock_bh.exit.for.end301_crit_edge:       ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end301

rcu_read_lock_bh.exit.do.end144_crit_edge:        ; preds = %rcu_read_lock_bh.exit
  br label %do.end144

do.end144:                                        ; preds = %for.inc299.do.end144_crit_edge, %rcu_read_lock_bh.exit.do.end144_crit_edge
  %i.1716 = phi i32 [ %inc300, %for.inc299.do.end144_crit_edge ], [ %spec.select, %rcu_read_lock_bh.exit.do.end144_crit_edge ]
  %arrayidx146 = getelementptr %struct.htable, ptr %17, i32 0, i32 5, i32 %i.1716
  %25 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx146, align 4
  %tobool147.not = icmp eq ptr %26, null
  br i1 %tobool147.not, label %do.end144.for.inc299_crit_edge, label %for.cond150.preheader

do.end144.for.inc299_crit_edge:                   ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc299

for.cond150.preheader:                            ; preds = %do.end144
  %pos = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp152708.not = icmp eq i8 %28, 0
  br i1 %cmp152708.not, label %for.cond150.preheader.for.inc299_crit_edge, label %for.body154.lr.ph

for.cond150.preheader.for.inc299_crit_edge:       ; preds = %for.cond150.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc299

for.body154.lr.ph:                                ; preds = %for.cond150.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 5
  br label %for.body154

for.body154:                                      ; preds = %for.inc296.for.body154_crit_edge, %for.body154.lr.ph
  %j.0709 = phi i32 [ 0, %for.body154.lr.ph ], [ %inc297, %for.inc296.for.body154_crit_edge ]
  %div3.i = lshr i32 %j.0709, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %j.0709, 31
  %31 = shl nuw i32 1, %and.i
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool157.not = icmp eq i32 %32, 0
  br i1 %tobool157.not, label %for.body154.for.inc296_crit_edge, label %if.end159

for.body154.for.inc296_crit_edge:                 ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc296

if.end159:                                        ; preds = %for.body154
  %mul161 = mul i32 %j.0709, %3
  %add.ptr = getelementptr i8, ptr %value, i32 %mul161
  %33 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %extensions, align 2
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool163.not = icmp eq i8 %35, 0
  br i1 %tobool163.not, label %if.end159.if.end170_crit_edge, label %land.lhs.true164

if.end159.if.end170_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

land.lhs.true164:                                 ; preds = %if.end159
  %36 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx165, align 4
  %add.ptr166 = getelementptr i8, ptr %add.ptr, i32 %37
  %38 = ptrtoint ptr %add.ptr166 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not.i = icmp eq i32 %39, 0
  br i1 %cmp.not.i, label %land.lhs.true164.if.end170_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true164.if.end170_crit_edge:             ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true164
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %39, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.for.inc296_crit_edge, label %ip_set_timeout_expired.exit.if.end170_crit_edge

ip_set_timeout_expired.exit.if.end170_crit_edge:  ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

ip_set_timeout_expired.exit.for.inc296_crit_edge: ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc296

if.end170:                                        ; preds = %ip_set_timeout_expired.exit.if.end170_crit_edge, %land.lhs.true164.if.end170_crit_edge, %if.end159.if.end170_crit_edge
  %41 = call ptr @memcpy(ptr %call9.i, ptr %add.ptr, i32 %3)
  %42 = ptrtoint ptr %nomatch.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i = load i8, ptr %nomatch.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 1
  %bf.clear3.i = and i8 %bf.load.i, -2
  store i8 %bf.clear3.i, ptr %nomatch.i, align 1
  %43 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %initval, align 4
  %add1.i = add i32 %44, -559038729
  %45 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %46, %add1.i
  %47 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call9.i, align 128
  %add36.i = add i32 %48, %add1.i
  %xor37.i = xor i32 %add33.i, %add1.i
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #12
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %sub39.i, %add36.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #12
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #12
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #12
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #12
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #12
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #12
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  %and179 = and i32 %sub57.i, %sub178
  %arrayidx185 = getelementptr %struct.htable, ptr %call25, i32 0, i32 5, i32 %and179
  %49 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx185, align 4
  %rem = and i32 %and179, %22
  %tobool196.not = icmp eq ptr %50, null
  br i1 %tobool196.not, label %if.end8.i.i, label %if.else

if.end8.i.i:                                      ; preds = %if.end170
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add261, i32 noundef 2848) #16
  %tobool201.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool201.not, label %if.end8.i.i.cleanup412_crit_edge, label %if.end203

if.end8.i.i.cleanup412_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup412

if.end203:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %size = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %size, align 16
  %52 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %53, i32 %rem, i32 1
  %54 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ext_size, align 4
  %add208 = add i32 %55, %add261
  store i32 %add208, ptr %ext_size, align 4
  br label %if.end281.sink.split

if.else:                                          ; preds = %if.end170
  %pos223 = getelementptr inbounds %struct.hbucket, ptr %50, i32 0, i32 3
  %56 = ptrtoint ptr %pos223 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %pos223, align 1
  %size225 = getelementptr inbounds %struct.hbucket, ptr %50, i32 0, i32 2
  %58 = ptrtoint ptr %size225 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %size225, align 8
  %conv226 = zext i8 %59 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp227.not = icmp ult i8 %57, %59
  br i1 %cmp227.not, label %if.else.if.end281_crit_edge, label %if.then229

if.else.if.end281_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end281

if.then229:                                       ; preds = %if.else
  %60 = ptrtoint ptr %bucketsize to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bucketsize, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %61)
  %cmp233.not = icmp ult i8 %59, %61
  br i1 %cmp233.not, label %if.end8.i.i628, label %if.then229.cleanup412_crit_edge

if.then229.cleanup412_crit_edge:                  ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup412

if.end8.i.i628:                                   ; preds = %if.then229
  %add239 = add nuw nsw i32 %conv226, 2
  %mul240 = mul i32 %add239, %3
  %add241 = add i32 %mul240, 24
  %call9.i.i627 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add241, i32 noundef 2848) #16
  %tobool243.not = icmp eq ptr %call9.i.i627, null
  br i1 %tobool243.not, label %if.end8.i.i628.cleanup412_crit_edge, label %cleanup

if.end8.i.i628.cleanup412_crit_edge:              ; preds = %if.end8.i.i628
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup412

cleanup:                                          ; preds = %if.end8.i.i628
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %size225 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %size225, align 8
  %conv252 = zext i8 %63 to i32
  %mul253 = mul i32 %3, %conv252
  %add254 = add i32 %mul253, 24
  %64 = call ptr @memcpy(ptr %call9.i.i627, ptr %50, i32 %add254)
  %65 = load i8, ptr %size225, align 8
  %add257 = add i8 %65, 2
  %size259 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i627, i32 0, i32 2
  %66 = ptrtoint ptr %size259 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %add257, ptr %size259, align 16
  %67 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hregion, align 4
  %ext_size264 = getelementptr %struct.ip_set_region, ptr %68, i32 %rem, i32 1
  %69 = ptrtoint ptr %ext_size264 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ext_size264, align 4
  %add265 = add i32 %add261, %70
  store i32 %add265, ptr %ext_size264, align 4
  tail call void @kfree(ptr noundef nonnull %50) #12
  br label %if.end281.sink.split

if.end281.sink.split:                             ; preds = %cleanup, %if.end203
  %ht.0.sink = phi ptr [ %call9.i.i627, %cleanup ], [ %call9.i.i, %if.end203 ]
  %71 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %ht.0.sink, ptr %arrayidx185, align 4
  br label %if.end281

if.end281:                                        ; preds = %if.end281.sink.split, %if.else.if.end281_crit_edge
  %m.1 = phi ptr [ %50, %if.else.if.end281_crit_edge ], [ %ht.0.sink, %if.end281.sink.split ]
  %value282 = getelementptr inbounds %struct.hbucket, ptr %m.1, i32 0, i32 5
  %pos284 = getelementptr inbounds %struct.hbucket, ptr %m.1, i32 0, i32 3
  %72 = ptrtoint ptr %pos284 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %pos284, align 1
  %conv285 = zext i8 %73 to i32
  %mul286 = mul i32 %3, %conv285
  %add.ptr287 = getelementptr i8, ptr %value282, i32 %mul286
  %74 = call ptr @memcpy(ptr %add.ptr287, ptr %call9.i, i32 %3)
  %75 = load i8, ptr %pos284, align 1
  %inc289 = add i8 %75, 1
  store i8 %inc289, ptr %pos284, align 1
  %conv290 = zext i8 %75 to i32
  %used291 = getelementptr inbounds %struct.hbucket, ptr %m.1, i32 0, i32 1
  tail call void @_set_bit(i32 noundef %conv290, ptr noundef %used291) #12
  %76 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %77, i32 %rem, i32 2
  %78 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %elements, align 4
  %inc295 = add i32 %79, 1
  store i32 %inc295, ptr %elements, align 4
  %nomatch.i631 = getelementptr inbounds %struct.hash_netport4_elem, ptr %add.ptr287, i32 0, i32 3
  %80 = ptrtoint ptr %nomatch.i631 to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load.i632 = load i8, ptr %nomatch.i631, align 1
  %bf.clear3.i636 = and i8 %bf.load.i632, -2
  %bf.set.i637 = or i8 %bf.clear3.i636, %bf.clear.i
  store i8 %bf.set.i637, ptr %nomatch.i631, align 1
  br label %for.inc296

for.inc296:                                       ; preds = %if.end281, %ip_set_timeout_expired.exit.for.inc296_crit_edge, %for.body154.for.inc296_crit_edge
  %inc297 = add nuw nsw i32 %j.0709, 1
  %81 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %pos, align 1
  %conv151 = zext i8 %82 to i32
  %cmp152 = icmp ult i32 %inc297, %conv151
  br i1 %cmp152, label %for.inc296.for.body154_crit_edge, label %for.inc296.for.inc299_crit_edge

for.inc296.for.inc299_crit_edge:                  ; preds = %for.inc296
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc299

for.inc296.for.body154_crit_edge:                 ; preds = %for.inc296
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body154

for.inc299:                                       ; preds = %for.inc296.for.inc299_crit_edge, %for.cond150.preheader.for.inc299_crit_edge, %do.end144.for.inc299_crit_edge
  %inc300 = add nuw i32 %i.1716, 1
  %83 = ptrtoint ptr %htable_bits102 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %htable_bits102, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %84)
  %cmp129 = icmp ult i8 %84, 10
  %conv128 = zext i8 %84 to i32
  %shl134 = shl nuw i32 1, %conv128
  %cond138 = select i1 %cmp129, i32 %shl134, i32 %mul136
  %cmp139 = icmp ult i32 %inc300, %cond138
  br i1 %cmp139, label %for.inc299.do.end144_crit_edge, label %for.inc299.for.end301_crit_edge

for.inc299.for.end301_crit_edge:                  ; preds = %for.inc299
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end301

for.inc299.do.end144_crit_edge:                   ; preds = %for.inc299
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end144

for.end301:                                       ; preds = %for.inc299.for.end301_crit_edge, %rcu_read_lock_bh.exit.for.end301_crit_edge
  %call.i638 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i638, label %for.end301.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i641

for.end301.rcu_read_unlock_bh.exit_crit_edge:     ; preds = %for.end301
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i641:                               ; preds = %for.end301
  %call1.i639 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i639)
  %tobool.not.i640 = icmp eq i32 %call1.i639, 0
  br i1 %tobool.not.i640, label %land.lhs.true.i641.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i643

land.lhs.true.i641.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i641
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i643:                              ; preds = %land.lhs.true.i641
  %.b4.i642 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i642, label %land.lhs.true2.i643.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i644

land.lhs.true2.i643.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i643
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i644:                                     ; preds = %land.lhs.true2.i643
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i644, %land.lhs.true2.i643.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i641.rcu_read_unlock_bh.exit_crit_edge, %for.end301.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  %inc303 = add nuw i32 %r.0722, 1
  %85 = ptrtoint ptr %htable_bits102 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %htable_bits102, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %86)
  %cmp104 = icmp ult i8 %86, 10
  %conv103 = zext i8 %86 to i32
  %sub110 = add nsw i32 %conv103, -10
  %shl111 = shl nuw i32 1, %sub110
  %cond113 = select i1 %cmp104, i32 1, i32 %shl111
  %cmp114 = icmp ult i32 %inc303, %cond113
  br i1 %cmp114, label %rcu_read_unlock_bh.exit.for.body116_crit_edge, label %do.body305

rcu_read_unlock_bh.exit.for.body116_crit_edge:    ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body116

do.body305:                                       ; preds = %rcu_read_unlock_bh.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !236
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %call25, ptr %1, align 4
  tail call void @synchronize_rcu() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport4_resize.__UNIQUE_ID_ddebug642, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport4_resize, %if.then358)) #12
          to label %do.end367 [label %if.then358], !srcloc !222

if.then358:                                       ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %htable_bits102 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %htable_bits102, align 4
  %conv362 = zext i8 %89 to i32
  %90 = ptrtoint ptr %htable_bits36 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %htable_bits36, align 4
  %conv364 = zext i8 %91 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport4_resize.__UNIQUE_ID_ddebug642, ptr noundef nonnull @.str.30, ptr noundef %set, i32 noundef %conv362, ptr noundef %17, i32 noundef %conv364, ptr noundef nonnull %call25) #12
  br label %do.end367

do.end367:                                        ; preds = %if.then358, %do.body305
  %ad = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 5
  %92 = ptrtoint ptr %ad to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ad, align 4
  %cmp.i645.not724 = icmp eq ptr %93, %ad
  br i1 %cmp.i645.not724, label %do.end367.for.end391_crit_edge, label %do.end367.for.body375_crit_edge

do.end367.for.body375_crit_edge:                  ; preds = %do.end367
  br label %for.body375

do.end367.for.end391_crit_edge:                   ; preds = %do.end367
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end391

for.body375:                                      ; preds = %list_del.exit.for.body375_crit_edge, %do.end367.for.body375_crit_edge
  %l.0725 = phi ptr [ %lt.0727, %list_del.exit.for.body375_crit_edge ], [ %93, %do.end367.for.body375_crit_edge ]
  %94 = ptrtoint ptr %l.0725 to i32
  call void @__asan_load4_noabort(i32 %94)
  %lt.0727 = load ptr, ptr %l.0725, align 4
  %ad378 = getelementptr inbounds %struct.hash_netport4_resize_ad, ptr %l.0725, i32 0, i32 1
  %95 = ptrtoint ptr %ad378 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ad378, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp379 = icmp eq i32 %96, 0
  %d382 = getelementptr inbounds %struct.hash_netport4_resize_ad, ptr %l.0725, i32 0, i32 2
  br i1 %cmp379, label %if.then381, label %if.else385

if.then381:                                       ; preds = %for.body375
  call void @__sanitizer_cov_trace_pc() #14
  %ext = getelementptr inbounds %struct.hash_netport4_resize_ad, ptr %l.0725, i32 0, i32 3
  %mext = getelementptr inbounds %struct.hash_netport4_resize_ad, ptr %l.0725, i32 0, i32 4
  %flags383 = getelementptr inbounds %struct.hash_netport4_resize_ad, ptr %l.0725, i32 0, i32 5
  %97 = ptrtoint ptr %flags383 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags383, align 8
  %call384 = tail call i32 @hash_netport4_add(ptr noundef %set, ptr noundef %d382, ptr noundef %ext, ptr noundef %mext, i32 noundef %98)
  br label %if.end388

if.else385:                                       ; preds = %for.body375
  call void @__sanitizer_cov_trace_pc() #14
  %call387 = tail call i32 @hash_netport4_del(ptr noundef %set, ptr noundef %d382, ptr noundef null, ptr noundef null, i32 noundef 0)
  br label %if.end388

if.end388:                                        ; preds = %if.else385, %if.then381
  %call.i.i647 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l.0725) #12
  br i1 %call.i.i647, label %if.end.i.i648, label %if.end388.list_del.exit_crit_edge

if.end388.list_del.exit_crit_edge:                ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i648:                                    ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %l.0725, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i.i, align 4
  %101 = ptrtoint ptr %l.0725 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %l.0725, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev1.i.i.i, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %102, ptr %100, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i648, %if.end388.list_del.exit_crit_edge
  %105 = ptrtoint ptr %l.0725 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr inttoptr (i32 256 to ptr), ptr %l.0725, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %l.0725, i32 0, i32 1
  %106 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %l.0725) #12
  %cmp.i645.not = icmp eq ptr %lt.0727, %ad
  br i1 %cmp.i645.not, label %list_del.exit.for.end391_crit_edge, label %list_del.exit.for.body375_crit_edge

list_del.exit.for.body375_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body375

list_del.exit.for.end391_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end391

for.end391:                                       ; preds = %list_del.exit.for.end391_crit_edge, %do.end367.for.end391_crit_edge
  %call.i.i588 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %107 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !232
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %107, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !233
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i589 = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i589, label %do.body395, label %for.end391.out_crit_edge

for.end391.out_crit_edge:                         ; preds = %for.end391
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body395:                                       ; preds = %for.end391
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport4_resize.__UNIQUE_ID_ddebug643, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport4_resize, %if.then407)) #12
          to label %do.end.i [label %if.then407], !srcloc !222

if.then407:                                       ; preds = %do.body395
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport4_resize.__UNIQUE_ID_ddebug643, ptr noundef nonnull @.str.31, ptr noundef %17) #12
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.then407, %do.body395
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.do.end.i_crit_edge ], [ 0, %do.body395 ], [ 0, %if.then407 ]
  %arrayidx.i649 = getelementptr %struct.htable, ptr %17, i32 0, i32 5, i32 %i.017.i
  %108 = ptrtoint ptr %arrayidx.i649 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i649, align 4
  %tobool.not.i650 = icmp eq ptr %109, null
  br i1 %tobool.not.i650, label %do.end.i.for.inc.i_crit_edge, label %if.end.i651

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i651:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %109) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i651, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %110 = ptrtoint ptr %htable_bits102 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %htable_bits102, align 4
  %conv.i652 = zext i8 %111 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i652
  %cmp.i653 = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i653, label %for.inc.i.do.end.i_crit_edge, label %hash_netport4_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hash_netport4_ahash_destroy.exit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %hregion.i = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 4
  %112 = ptrtoint ptr %hregion.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hregion.i, align 4
  tail call void @ip_set_free(ptr noundef %113) #12
  tail call void @ip_set_free(ptr noundef %17) #12
  br label %out

out:                                              ; preds = %do.end421, %hash_netport4_ahash_destroy.exit679.out_crit_edge, %hash_netport4_ahash_destroy.exit, %for.end391.out_crit_edge, %if.then34, %if.end24.out_crit_edge
  %ret.7 = phi i32 [ 0, %hash_netport4_ahash_destroy.exit ], [ 0, %for.end391.out_crit_edge ], [ -12, %if.then34 ], [ -4352, %do.end421 ], [ -12, %if.end24.out_crit_edge ], [ %ret.8, %hash_netport4_ahash_destroy.exit679.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %cleanup426

cleanup412:                                       ; preds = %if.end8.i.i628.cleanup412_crit_edge, %if.then229.cleanup412_crit_edge, %if.end8.i.i.cleanup412_crit_edge
  %cmp415 = phi i1 [ false, %if.end8.i.i628.cleanup412_crit_edge ], [ true, %if.then229.cleanup412_crit_edge ], [ false, %if.end8.i.i.cleanup412_crit_edge ]
  %ret.8 = phi i32 [ -12, %if.end8.i.i628.cleanup412_crit_edge ], [ -11, %if.then229.cleanup412_crit_edge ], [ -12, %if.end8.i.i.cleanup412_crit_edge ]
  %call.i654 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i654, label %cleanup412.rcu_read_unlock_bh.exit662_crit_edge, label %land.lhs.true.i657

cleanup412.rcu_read_unlock_bh.exit662_crit_edge:  ; preds = %cleanup412
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit662

land.lhs.true.i657:                               ; preds = %cleanup412
  %call1.i655 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i655)
  %tobool.not.i656 = icmp eq i32 %call1.i655, 0
  br i1 %tobool.not.i656, label %land.lhs.true.i657.rcu_read_unlock_bh.exit662_crit_edge, label %land.lhs.true2.i659

land.lhs.true.i657.rcu_read_unlock_bh.exit662_crit_edge: ; preds = %land.lhs.true.i657
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit662

land.lhs.true2.i659:                              ; preds = %land.lhs.true.i657
  %.b4.i658 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i658, label %land.lhs.true2.i659.rcu_read_unlock_bh.exit662_crit_edge, label %if.then.i660

land.lhs.true2.i659.rcu_read_unlock_bh.exit662_crit_edge: ; preds = %land.lhs.true2.i659
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit662

if.then.i660:                                     ; preds = %land.lhs.true2.i659
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit662

rcu_read_unlock_bh.exit662:                       ; preds = %if.then.i660, %land.lhs.true2.i659.rcu_read_unlock_bh.exit662_crit_edge, %land.lhs.true.i657.rcu_read_unlock_bh.exit662_crit_edge, %cleanup412.rcu_read_unlock_bh.exit662_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  %call.i.i593 = tail call zeroext i1 @__kasan_check_write(ptr noundef %17, i32 noundef 4) #12
  %114 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 0, ptr %17, align 4
  %call.i.i594 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %115 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !237
  br label %do.end.i670

do.end.i670:                                      ; preds = %for.inc.i677.do.end.i670_crit_edge, %rcu_read_unlock_bh.exit662
  %i.017.i667 = phi i32 [ 0, %rcu_read_unlock_bh.exit662 ], [ %inc.i673, %for.inc.i677.do.end.i670_crit_edge ]
  %arrayidx.i668 = getelementptr %struct.htable, ptr %call25, i32 0, i32 5, i32 %i.017.i667
  %116 = ptrtoint ptr %arrayidx.i668 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i668, align 4
  %tobool.not.i669 = icmp eq ptr %117, null
  br i1 %tobool.not.i669, label %do.end.i670.for.inc.i677_crit_edge, label %if.end.i672

do.end.i670.for.inc.i677_crit_edge:               ; preds = %do.end.i670
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i677

if.end.i672:                                      ; preds = %do.end.i670
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %117) #12
  br label %for.inc.i677

for.inc.i677:                                     ; preds = %if.end.i672, %do.end.i670.for.inc.i677_crit_edge
  %inc.i673 = add i32 %i.017.i667, 1
  %118 = ptrtoint ptr %htable_bits36 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %htable_bits36, align 4
  %conv.i674 = zext i8 %119 to i32
  %i.0.highbits.i675 = lshr i32 %inc.i673, %conv.i674
  %cmp.i676 = icmp eq i32 %i.0.highbits.i675, 0
  br i1 %cmp.i676, label %for.inc.i677.do.end.i670_crit_edge, label %hash_netport4_ahash_destroy.exit679

for.inc.i677.do.end.i670_crit_edge:               ; preds = %for.inc.i677
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i670

hash_netport4_ahash_destroy.exit679:              ; preds = %for.inc.i677
  %120 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %121) #12
  tail call void @ip_set_free(ptr noundef nonnull %call25) #12
  br i1 %cmp415, label %hash_netport4_ahash_destroy.exit679.retry_crit_edge, label %hash_netport4_ahash_destroy.exit679.out_crit_edge

hash_netport4_ahash_destroy.exit679.out_crit_edge: ; preds = %hash_netport4_ahash_destroy.exit679
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

hash_netport4_ahash_destroy.exit679.retry_crit_edge: ; preds = %hash_netport4_ahash_destroy.exit679
  call void @__sanitizer_cov_trace_pc() #14
  br label %retry

do.end421:                                        ; preds = %if.end20.do.end421_crit_edge, %retry.do.end421_crit_edge
  %call425 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %set) #17
  br label %out

cleanup426:                                       ; preds = %out, %entry.cleanup426_crit_edge
  %retval.0 = phi i32 [ %ret.7, %out ], [ -12, %entry.cleanup426_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_netport4_destroy(ptr noundef %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %2 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %extensions, align 2
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %gc = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 1
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %gc) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #12
  br i1 %call1, label %if.end.do.end_crit_edge, label %land.lhs.true

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b25 = load i1, ptr @hash_netport4_destroy.__warned, align 1
  br i1 %.b25, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport4_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 466, ptr noundef nonnull @.str.33) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call fastcc void @hash_netport4_ahash_destroy(ptr noundef %set, ptr noundef %6, i1 noundef zeroext true)
  %ad = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %ad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ad, align 4
  %cmp.i.not27 = icmp eq ptr %8, %ad
  br i1 %cmp.i.not27, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %l.028 = phi ptr [ %lt.030, %list_del.exit.for.body_crit_edge ], [ %8, %do.end.for.body_crit_edge ]
  %9 = ptrtoint ptr %l.028 to i32
  call void @__asan_load4_noabort(i32 %9)
  %lt.030 = load ptr, ptr %l.028, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l.028) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %l.028, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %l.028 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %l.028, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %16 = ptrtoint ptr %l.028 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %l.028, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %l.028, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %l.028) #12
  %cmp.i.not = icmp eq ptr %lt.030, %ad
  br i1 %cmp.i.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @kfree(ptr noundef %1) #12
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %data, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_netport4_flush(ptr noundef %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #12
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b135 = load i1, ptr @hash_netport4_flush.__warned, align 1
  br i1 %.b135, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport4_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 412, ptr noundef nonnull @.str.33) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %htable_bits = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 2
  %hregion = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 4
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %dsize.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %arrayidx.i9.i = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %do.end
  %r.0147 = phi i32 [ 0, %do.end ], [ %inc103, %for.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hregion, align 4
  %arrayidx = getelementptr %struct.ip_set_region, ptr %5, i32 %r.0147
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #12
  %6 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %htable_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cmp11 = icmp ult i8 %7, 10
  %mul = shl i32 %r.0147, 10
  %spec.select = select i1 %cmp11, i32 0, i32 %mul
  %mul27 = add i32 %mul, 1024
  %conv19137 = zext i8 %7 to i32
  %shl25138 = shl nuw i32 1, %conv19137
  %cond29139 = select i1 %cmp11, i32 %shl25138, i32 %mul27
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %cond29139)
  %cmp30140 = icmp ult i32 %spec.select, %cond29139
  br i1 %cmp30140, label %for.body.do.end35_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.do.end35_crit_edge:                      ; preds = %for.body
  br label %do.end35

do.end35:                                         ; preds = %for.inc.do.end35_crit_edge, %for.body.do.end35_crit_edge
  %i.0141 = phi i32 [ %inc, %for.inc.do.end35_crit_edge ], [ %spec.select, %for.body.do.end35_crit_edge ]
  %arrayidx37 = getelementptr %struct.htable, ptr %3, i32 0, i32 5, i32 %i.0141
  %8 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx37, align 4
  %tobool38.not = icmp eq ptr %9, null
  br i1 %tobool38.not, label %do.end35.for.inc_crit_edge, label %if.end40

do.end35.for.inc_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end40:                                         ; preds = %do.end35
  %10 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %extensions, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool42.not = icmp sgt i8 %11, -1
  br i1 %tobool42.not, label %if.end40.do.body53_crit_edge, label %if.then43

if.end40.do.body53_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

if.then43:                                        ; preds = %if.end40
  %pos.i = getelementptr inbounds %struct.hbucket, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp11.not.i = icmp eq i8 %13, 0
  br i1 %cmp11.not.i, label %if.then43.do.body53_crit_edge, label %for.body.lr.ph.i

if.then43.do.body53_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

for.body.lr.ph.i:                                 ; preds = %if.then43
  %used.i = getelementptr inbounds %struct.hbucket, ptr %9, i32 0, i32 1
  %value.i = getelementptr inbounds %struct.hbucket, ptr %9, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %i.012.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %used.i, i32 %div3.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.012.i, 31
  %16 = shl nuw i32 1, %and.i.i
  %17 = and i32 %16, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %18 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %extensions, align 2
  %20 = and i8 %19, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %dsize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dsize.i, align 4
  %mul.i = mul i32 %22, %i.012.i
  %add.ptr.i = getelementptr i8, ptr %value.i, i32 %mul.i
  %23 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i9.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %25(ptr noundef %set, ptr noundef %add.ptr.i.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %26 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pos.i, align 1
  %conv.i = zext i8 %27 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.body53_crit_edge

for.inc.i.do.body53_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.body53:                                        ; preds = %for.inc.i.do.body53_crit_edge, %if.then43.do.body53_crit_edge, %if.end40.do.body53_crit_edge
  %28 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr null, ptr %arrayidx37, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %9, ptr noundef null) #12
  br label %for.inc

for.inc:                                          ; preds = %do.body53, %do.end35.for.inc_crit_edge
  %inc = add nuw i32 %i.0141, 1
  %29 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %htable_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %30)
  %cmp20 = icmp ult i8 %30, 10
  %conv19 = zext i8 %30 to i32
  %shl25 = shl nuw i32 1, %conv19
  %cond29 = select i1 %cmp20, i32 %shl25, i32 %mul27
  %cmp30 = icmp ult i32 %inc, %cond29
  br i1 %cmp30, label %for.inc.do.end35_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.do.end35_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %31 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %32, i32 %r.0147, i32 1
  %33 = ptrtoint ptr %ext_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %ext_size, align 4
  %34 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %34, i32 %r.0147, i32 2
  %35 = ptrtoint ptr %elements to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %elements, align 4
  %36 = load ptr, ptr %hregion, align 4
  %arrayidx100 = getelementptr %struct.ip_set_region, ptr %36, i32 %r.0147
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx100) #12
  %inc103 = add nuw i32 %r.0147, 1
  %37 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %htable_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %38)
  %cmp = icmp ult i8 %38, 10
  %conv = zext i8 %38 to i32
  %sub = add nsw i32 %conv, -10
  %shl = shl nuw i32 1, %sub
  %cond = select i1 %cmp, i32 1, i32 %shl
  %cmp7 = icmp ult i32 %inc103, %cond
  br i1 %cmp7, label %for.end.for.body_crit_edge, label %for.end104

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end104:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %nets = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 7
  %39 = call ptr @memset(ptr %nets, i32 0, i32 256)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netport4_head(ptr noundef %set, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i.i103 = alloca i32, align 4
  %tmp.i.i101 = alloca i32, align 4
  %tmp.i.i99 = alloca i32, align 4
  %tmp.i.i97 = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  %tmp.i.i94 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 750, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end7_crit_edge

rcu_read_lock_bh.exit.do.end7_crit_edge:          ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b77 = load i1, ptr @hash_netport4_head.__warned, align 1
  br i1 %.b77, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport4_head.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1272, ptr noundef nonnull @.str.8) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock_bh.exit.do.end7_crit_edge
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %5, align 4
  %call.i78 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool.not.i79 = icmp eq i32 %call.i78, 0
  br i1 %tobool.not.i79, label %land.lhs.true.i80, label %do.end7.do.end8.i_crit_edge

do.end7.do.end8.i_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

land.lhs.true.i80:                                ; preds = %do.end7
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i80.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i80.do.end8.i_crit_edge:            ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i80
  %.b112.i = load i1, ptr @hash_netport4_ext_size.__warned, align 1
  br i1 %.b112.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i81

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

if.then.i81:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport4_ext_size.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 818, ptr noundef nonnull @.str.8) #12
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i81, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i80.do.end8.i_crit_edge, %do.end7.do.end8.i_crit_edge
  %htable_bits.i = getelementptr inbounds %struct.htable, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %htable_bits.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %htable_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %9)
  %cmp124.i = icmp ult i8 %9, 10
  %extensions.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %dsize.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %arrayidx73.i = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %hregion.i = getelementptr inbounds %struct.htable, ptr %7, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.end82.i.for.body.i_crit_edge, %do.end8.i
  %elements.0 = phi i32 [ 0, %do.end8.i ], [ %elements.5, %for.end82.i.for.body.i_crit_edge ]
  %ext_size.0 = phi i32 [ 0, %do.end8.i ], [ %add85.i, %for.end82.i.for.body.i_crit_edge ]
  %cmp130.i = phi i1 [ %cmp124.i, %do.end8.i ], [ %cmp.i, %for.end82.i.for.body.i_crit_edge ]
  %r.0129.i = phi i32 [ 0, %do.end8.i ], [ %inc87.i, %for.end82.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %r.0129.i, 10
  %spec.select.i = select i1 %cmp130.i, i32 0, i32 %mul.i
  %mul33.i = add i32 %mul.i, 1024
  %10 = ptrtoint ptr %htable_bits.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %htable_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %11)
  %cmp26118.i = icmp ult i8 %11, 10
  %conv25119.i = zext i8 %11 to i32
  %shl31120.i = shl nuw i32 1, %conv25119.i
  %cond35121.i = select i1 %cmp26118.i, i32 %shl31120.i, i32 %mul33.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %cond35121.i)
  %cmp36122.i = icmp ult i32 %spec.select.i, %cond35121.i
  br i1 %cmp36122.i, label %for.body.i.for.body38.i_crit_edge, label %for.body.i.for.end82.i_crit_edge

for.body.i.for.end82.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end82.i

for.body.i.for.body38.i_crit_edge:                ; preds = %for.body.i
  br label %for.body38.i

for.body38.i:                                     ; preds = %for.inc80.i.for.body38.i_crit_edge, %for.body.i.for.body38.i_crit_edge
  %elements.1 = phi i32 [ %elements.4, %for.inc80.i.for.body38.i_crit_edge ], [ %elements.0, %for.body.i.for.body38.i_crit_edge ]
  %i.0123.i = phi i32 [ %inc81.i, %for.inc80.i.for.body38.i_crit_edge ], [ %spec.select.i, %for.body.i.for.body38.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.htable, ptr %7, i32 0, i32 5, i32 %i.0123.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx.i, align 4
  %call44.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %land.lhs.true46.i, label %for.body38.i.do.end54.i_crit_edge

for.body38.i.do.end54.i_crit_edge:                ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54.i

land.lhs.true46.i:                                ; preds = %for.body38.i
  %call47.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %land.lhs.true46.i.do.end54.i_crit_edge, label %land.lhs.true49.i

land.lhs.true46.i.do.end54.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54.i

land.lhs.true49.i:                                ; preds = %land.lhs.true46.i
  %.b110111.i = load i1, ptr @hash_netport4_ext_size.__warned.35, align 1
  br i1 %.b110111.i, label %land.lhs.true49.i.do.end54.i_crit_edge, label %if.then51.i

land.lhs.true49.i.do.end54.i_crit_edge:           ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54.i

if.then51.i:                                      ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport4_ext_size.__warned.35, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 822, ptr noundef nonnull @.str.8) #12
  br label %do.end54.i

do.end54.i:                                       ; preds = %if.then51.i, %land.lhs.true49.i.do.end54.i_crit_edge, %land.lhs.true46.i.do.end54.i_crit_edge, %for.body38.i.do.end54.i_crit_edge
  %tobool56.not.i = icmp eq ptr %13, null
  br i1 %tobool56.not.i, label %do.end54.i.for.inc80.i_crit_edge, label %for.cond59.preheader.i

do.end54.i.for.inc80.i_crit_edge:                 ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc80.i

for.cond59.preheader.i:                           ; preds = %do.end54.i
  %pos.i = getelementptr inbounds %struct.hbucket, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp61114.not.i = icmp eq i8 %15, 0
  br i1 %cmp61114.not.i, label %for.cond59.preheader.i.for.inc80.i_crit_edge, label %for.body63.lr.ph.i

for.cond59.preheader.i.for.inc80.i_crit_edge:     ; preds = %for.cond59.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc80.i

for.body63.lr.ph.i:                               ; preds = %for.cond59.preheader.i
  %used.i = getelementptr inbounds %struct.hbucket, ptr %13, i32 0, i32 1
  %value.i = getelementptr inbounds %struct.hbucket, ptr %13, i32 0, i32 5
  %conv60.i = zext i8 %15 to i32
  br label %for.body63.i

for.body63.i:                                     ; preds = %for.inc.i.for.body63.i_crit_edge, %for.body63.lr.ph.i
  %elements.2 = phi i32 [ %elements.1, %for.body63.lr.ph.i ], [ %elements.3, %for.inc.i.for.body63.i_crit_edge ]
  %j.0115.i = phi i32 [ 0, %for.body63.lr.ph.i ], [ %inc79.i, %for.inc.i.for.body63.i_crit_edge ]
  %div3.i.i = lshr i32 %j.0115.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %used.i, i32 %div3.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %j.0115.i, 31
  %18 = shl nuw i32 1, %and.i.i
  %19 = and i32 %18, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool65.not.i = icmp eq i32 %19, 0
  br i1 %tobool65.not.i, label %for.body63.i.for.inc.i_crit_edge, label %if.end67.i

for.body63.i.for.inc.i_crit_edge:                 ; preds = %for.body63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end67.i:                                       ; preds = %for.body63.i
  %20 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %extensions.i, align 2
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool71.not.i = icmp eq i8 %22, 0
  br i1 %tobool71.not.i, label %if.end67.i.if.then77.i_crit_edge, label %land.lhs.true72.i

if.end67.i.if.then77.i_crit_edge:                 ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then77.i

land.lhs.true72.i:                                ; preds = %if.end67.i
  %23 = ptrtoint ptr %dsize.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dsize.i, align 4
  %mul69.i = mul i32 %24, %j.0115.i
  %add.ptr.i = getelementptr i8, ptr %value.i, i32 %mul69.i
  %25 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx73.i, align 4
  %add.ptr74.i = getelementptr i8, ptr %add.ptr.i, i32 %26
  %27 = ptrtoint ptr %add.ptr74.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr74.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not.i.i = icmp eq i32 %28, 0
  br i1 %cmp.not.i.i, label %land.lhs.true72.i.if.then77.i_crit_edge, label %ip_set_timeout_expired.exit.i

land.lhs.true72.i.if.then77.i_crit_edge:          ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then77.i

ip_set_timeout_expired.exit.i:                    ; preds = %land.lhs.true72.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %28, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp1.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp1.i.i, label %ip_set_timeout_expired.exit.i.for.inc.i_crit_edge, label %ip_set_timeout_expired.exit.i.if.then77.i_crit_edge

ip_set_timeout_expired.exit.i.if.then77.i_crit_edge: ; preds = %ip_set_timeout_expired.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then77.i

ip_set_timeout_expired.exit.i.for.inc.i_crit_edge: ; preds = %ip_set_timeout_expired.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then77.i:                                      ; preds = %ip_set_timeout_expired.exit.i.if.then77.i_crit_edge, %land.lhs.true72.i.if.then77.i_crit_edge, %if.end67.i.if.then77.i_crit_edge
  %inc.i = add i32 %elements.2, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then77.i, %ip_set_timeout_expired.exit.i.for.inc.i_crit_edge, %for.body63.i.for.inc.i_crit_edge
  %elements.3 = phi i32 [ %elements.2, %for.body63.i.for.inc.i_crit_edge ], [ %inc.i, %if.then77.i ], [ %elements.2, %ip_set_timeout_expired.exit.i.for.inc.i_crit_edge ]
  %inc79.i = add nuw nsw i32 %j.0115.i, 1
  %exitcond.not = icmp eq i32 %inc79.i, %conv60.i
  br i1 %exitcond.not, label %for.inc.i.for.inc80.i_crit_edge, label %for.inc.i.for.body63.i_crit_edge

for.inc.i.for.body63.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body63.i

for.inc.i.for.inc80.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc80.i

for.inc80.i:                                      ; preds = %for.inc.i.for.inc80.i_crit_edge, %for.cond59.preheader.i.for.inc80.i_crit_edge, %do.end54.i.for.inc80.i_crit_edge
  %elements.4 = phi i32 [ %elements.1, %do.end54.i.for.inc80.i_crit_edge ], [ %elements.1, %for.cond59.preheader.i.for.inc80.i_crit_edge ], [ %elements.3, %for.inc.i.for.inc80.i_crit_edge ]
  %inc81.i = add nuw i32 %i.0123.i, 1
  %30 = ptrtoint ptr %htable_bits.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %htable_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %31)
  %cmp26.i = icmp ult i8 %31, 10
  %conv25.i = zext i8 %31 to i32
  %shl31.i = shl nuw i32 1, %conv25.i
  %cond35.i = select i1 %cmp26.i, i32 %shl31.i, i32 %mul33.i
  %cmp36.i = icmp ult i32 %inc81.i, %cond35.i
  br i1 %cmp36.i, label %for.inc80.i.for.body38.i_crit_edge, label %for.inc80.i.for.end82.i_crit_edge

for.inc80.i.for.end82.i_crit_edge:                ; preds = %for.inc80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end82.i

for.inc80.i.for.body38.i_crit_edge:               ; preds = %for.inc80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body38.i

for.end82.i:                                      ; preds = %for.inc80.i.for.end82.i_crit_edge, %for.body.i.for.end82.i_crit_edge
  %elements.5 = phi i32 [ %elements.0, %for.body.i.for.end82.i_crit_edge ], [ %elements.4, %for.inc80.i.for.end82.i_crit_edge ]
  %32 = ptrtoint ptr %hregion.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hregion.i, align 4
  %ext_size84.i = getelementptr %struct.ip_set_region, ptr %33, i32 %r.0129.i, i32 1
  %34 = ptrtoint ptr %ext_size84.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ext_size84.i, align 4
  %add85.i = add i32 %35, %ext_size.0
  %inc87.i = add nuw i32 %r.0129.i, 1
  %36 = ptrtoint ptr %htable_bits.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %htable_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %37)
  %cmp.i = icmp ult i8 %37, 10
  %conv.i = zext i8 %37 to i32
  %sub.i = add nsw i32 %conv.i, -10
  %shl.i = shl nuw i32 1, %sub.i
  %cond.i = select i1 %cmp.i, i32 1, i32 %shl.i
  %cmp13.i = icmp ult i32 %inc87.i, %cond.i
  br i1 %cmp13.i, label %for.end82.i.for.body.i_crit_edge, label %hash_netport4_ext_size.exit

for.end82.i.for.body.i_crit_edge:                 ; preds = %for.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

hash_netport4_ext_size.exit:                      ; preds = %for.end82.i
  %htable_bits.i82 = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 2
  %38 = ptrtoint ptr %htable_bits.i82 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %htable_bits.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %39)
  %cmp.i83 = icmp ult i8 %39, 10
  %conv.i84 = zext i8 %39 to i32
  %sub.i85 = add nsw i32 %conv.i84, -10
  %phi.bo.i = shl i32 52, %sub.i85
  %phi.bo1.i = add i32 %phi.bo.i, 416
  %cond.i86 = select i1 %cmp.i83, i32 468, i32 %phi.bo1.i
  %ext_size10 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 12
  %40 = ptrtoint ptr %ext_size10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ext_size10, align 4
  %add = add i32 %41, %add85.i
  %add11 = add i32 %add, %cond.i86
  %call.i87 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i87, label %hash_netport4_ext_size.exit.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i90

hash_netport4_ext_size.exit.rcu_read_unlock_bh.exit_crit_edge: ; preds = %hash_netport4_ext_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i90:                                ; preds = %hash_netport4_ext_size.exit
  %call1.i88 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %tobool.not.i89 = icmp eq i32 %call1.i88, 0
  br i1 %tobool.not.i89, label %land.lhs.true.i90.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i92

land.lhs.true.i90.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i92:                               ; preds = %land.lhs.true.i90
  %.b4.i91 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i91, label %land.lhs.true2.i92.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i93

land.lhs.true2.i92.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i93:                                      ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i93, %land.lhs.true2.i92.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i90.rcu_read_unlock_bh.exit_crit_edge, %hash_netport4_ext_size.exit.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %42 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32775, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool14.not108 = icmp eq ptr %43, null
  %tobool14.not = select i1 %cmp.i.i, i1 true, i1 %tobool14.not108
  br i1 %tobool14.not, label %rcu_read_unlock_bh.exit.cleanup_crit_edge, label %if.end16

rcu_read_unlock_bh.exit.cleanup_crit_edge:        ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %rcu_read_unlock_bh.exit
  %shl = shl nuw i32 1, %conv.i84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #12
  %44 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shl, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 16402, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end16
  %maxelem = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %maxelem to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %maxelem, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i94) #12
  %47 = ptrtoint ptr %tmp.i.i94 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %tmp.i.i94, align 4
  %call.i.i95 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16403, i32 noundef 4, ptr noundef nonnull %tmp.i.i94) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i94) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i95)
  %tobool20.not = icmp eq i32 %call.i.i95, 0
  br i1 %tobool20.not, label %if.end22, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 9
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flags, align 1
  %50 = and i8 %49, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool24.not = icmp eq i8 %50, 0
  br i1 %tobool24.not, label %if.end22.if.end33_crit_edge, label %if.then25

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then25:                                        ; preds = %if.end22
  %bucketsize = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 4
  %51 = ptrtoint ptr %bucketsize to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bucketsize, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #12
  %53 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %tmp.i, align 1
  %call.i96 = call i32 @nla_put(ptr noundef %skb, i32 noundef 21, i32 noundef 1, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool27.not = icmp eq i32 %call.i96, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false28:                                  ; preds = %if.then25
  %initval = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 3
  %54 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %initval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i97) #12
  %56 = ptrtoint ptr %tmp.i.i97 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %tmp.i.i97, align 4
  %call.i.i98 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16401, i32 noundef 4, ptr noundef nonnull %tmp.i.i97) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i97) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98)
  %tobool30.not = icmp eq i32 %call.i.i98, 0
  br i1 %tobool30.not, label %lor.lhs.false28.if.end33_crit_edge, label %lor.lhs.false28.cleanup_crit_edge

lor.lhs.false28.cleanup_crit_edge:                ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false28.if.end33_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.end33:                                         ; preds = %lor.lhs.false28.if.end33_crit_edge, %if.end22.if.end33_crit_edge
  %ref = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 2
  %57 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ref, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i99) #12
  %59 = ptrtoint ptr %tmp.i.i99 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %tmp.i.i99, align 4
  %call.i.i100 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16409, i32 noundef 4, ptr noundef nonnull %tmp.i.i99) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i99) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i100)
  %tobool35.not = icmp eq i32 %call.i.i100, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false36:                                  ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i101) #12
  %60 = ptrtoint ptr %tmp.i.i101 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add11, ptr %tmp.i.i101, align 4
  %call.i.i102 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16410, i32 noundef 4, ptr noundef nonnull %tmp.i.i101) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i101) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102)
  %tobool38.not = icmp eq i32 %call.i.i102, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %lor.lhs.false36.cleanup_crit_edge

lor.lhs.false36.cleanup_crit_edge:                ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i103) #12
  %61 = ptrtoint ptr %tmp.i.i103 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %elements.5, ptr %tmp.i.i103, align 4
  %call.i.i104 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16408, i32 noundef 4, ptr noundef nonnull %tmp.i.i103) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i103) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i104)
  %tobool41.not = icmp eq i32 %call.i.i104, 0
  br i1 %tobool41.not, label %if.end43, label %lor.lhs.false39.cleanup_crit_edge

lor.lhs.false39.cleanup_crit_edge:                ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end43:                                         ; preds = %lor.lhs.false39
  %call44 = call i32 @ip_set_put_flags(ptr noundef %skb, ptr noundef %set) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end49, label %if.end43.cleanup_crit_edge, !prof !238

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %63 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i105 = trunc i32 %sub.ptr.sub.i to i16
  %64 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i105, ptr %43, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end43.cleanup_crit_edge, %lor.lhs.false39.cleanup_crit_edge, %lor.lhs.false36.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %lor.lhs.false28.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %rcu_read_unlock_bh.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -90, %if.end43.cleanup_crit_edge ], [ -90, %if.end33.cleanup_crit_edge ], [ -90, %lor.lhs.false36.cleanup_crit_edge ], [ -90, %lor.lhs.false39.cleanup_crit_edge ], [ -90, %if.then25.cleanup_crit_edge ], [ -90, %lor.lhs.false28.cleanup_crit_edge ], [ -90, %if.end16.cleanup_crit_edge ], [ -90, %lor.lhs.false.cleanup_crit_edge ], [ -90, %rcu_read_unlock_bh.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netport4_list(ptr noundef %set, ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %tmp.i.i28.i = alloca i32, align 4
  %tmp.i26.i = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  %tmp.i.i.i = alloca i16, align 2
  %tmp.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32776, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not226 = icmp eq ptr %3, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not226
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport4_list.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport4_list, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !222

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport4_list.__UNIQUE_ID_ddebug688, ptr noundef nonnull @.str.37, ptr noundef %set) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %arrayidx7 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx7, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !239
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %do.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end.rcu_read_lock.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.41) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end.rcu_read_lock.exit_crit_edge
  %htable_bits = getelementptr inbounds %struct.htable, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %htable_bits, align 4
  %conv234 = zext i8 %14 to i32
  %.highbits235 = lshr i32 %12, %conv234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.highbits235)
  %cmp236 = icmp eq i32 %.highbits235, 0
  br i1 %cmp236, label %for.body.lr.ph, label %rcu_read_lock.exit.for.end106_crit_edge

rcu_read_lock.exit.for.end106_crit_edge:          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end106

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx63 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc103.for.body_crit_edge, %for.body.lr.ph
  call fastcc void @cond_resched_rcu()
  %15 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i.i, align 8
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %arrayidx16 = getelementptr %struct.htable, ptr %6, i32 0, i32 5, i32 %18
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx16, align 4
  %call18 = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true, label %for.body.do.end27_crit_edge

for.body.do.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

land.lhs.true:                                    ; preds = %for.body
  %call20 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true.do.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true
  %.b180 = load i1, ptr @hash_netport4_list.__warned, align 1
  br i1 %.b180, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport4_list.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1362, ptr noundef nonnull @.str.8) #12
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true.do.end27_crit_edge, %for.body.do.end27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport4_list.__UNIQUE_ID_ddebug691, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport4_list, %if.then41)) #12
          to label %do.end45 [label %if.then41], !srcloc !222

if.then41:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport4_list.__UNIQUE_ID_ddebug691, ptr noundef nonnull @.str.38, i32 noundef %22, ptr noundef %6, ptr noundef %20) #12
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.end27
  %tobool46.not = icmp eq ptr %20, null
  br i1 %tobool46.not, label %do.end45.for.inc103_crit_edge, label %for.cond49.preheader

do.end45.for.inc103_crit_edge:                    ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc103

for.cond49.preheader:                             ; preds = %do.end45
  %pos = getelementptr inbounds %struct.hbucket, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp51230.not = icmp eq i8 %24, 0
  br i1 %cmp51230.not, label %for.cond49.preheader.for.inc103_crit_edge, label %for.body53.lr.ph

for.cond49.preheader.for.inc103_crit_edge:        ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc103

for.body53.lr.ph:                                 ; preds = %for.cond49.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %20, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %20, i32 0, i32 5
  br label %for.body53

for.body53:                                       ; preds = %for.inc.for.body53_crit_edge, %for.body53.lr.ph
  %i.0231 = phi i32 [ 0, %for.body53.lr.ph ], [ %inc, %for.inc.for.body53_crit_edge ]
  %div3.i = lshr i32 %i.0231, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0231, 31
  %27 = shl nuw i32 1, %and.i
  %28 = and i32 %26, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool56.not = icmp eq i32 %28, 0
  br i1 %tobool56.not, label %for.body53.for.inc_crit_edge, label %if.end58

for.body53.for.inc_crit_edge:                     ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end58:                                         ; preds = %for.body53
  %29 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dsize, align 4
  %mul = mul i32 %30, %i.0231
  %add.ptr = getelementptr i8, ptr %value, i32 %mul
  %31 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %extensions, align 2
  %33 = and i8 %32, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool61.not = icmp eq i8 %33, 0
  br i1 %tobool61.not, label %if.end58.do.body69_crit_edge, label %land.lhs.true62

if.end58.do.body69_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body69

land.lhs.true62:                                  ; preds = %if.end58
  %34 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx63, align 4
  %add.ptr64 = getelementptr i8, ptr %add.ptr, i32 %35
  %36 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.not.i = icmp eq i32 %37, 0
  br i1 %cmp.not.i, label %land.lhs.true62.do.body69_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true62.do.body69_crit_edge:              ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body69

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %37, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.for.inc_crit_edge, label %ip_set_timeout_expired.exit.do.body69_crit_edge

ip_set_timeout_expired.exit.do.body69_crit_edge:  ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body69

ip_set_timeout_expired.exit.for.inc_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.body69:                                        ; preds = %ip_set_timeout_expired.exit.do.body69_crit_edge, %land.lhs.true62.do.body69_crit_edge, %if.end58.do.body69_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport4_list.__UNIQUE_ID_ddebug692, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport4_list, %if.then81)) #12
          to label %do.end85 [label %if.then81], !srcloc !222

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport4_list.__UNIQUE_ID_ddebug692, ptr noundef nonnull @.str.39, i32 noundef %40, ptr noundef nonnull %20, i32 noundef %i.0231, ptr noundef %add.ptr) #12
  br label %do.end85

do.end85:                                         ; preds = %if.then81, %do.body69
  %41 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i188 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32775, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i188)
  %cmp.i.i189 = icmp slt i32 %call1.i.i188, 0
  %tobool87.not227 = icmp eq ptr %42, null
  %tobool87.not = select i1 %cmp.i.i189, i1 true, i1 %tobool87.not227
  br i1 %tobool87.not, label %if.then88, label %if.end94

if.then88:                                        ; preds = %do.end85
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %1)
  %cmp90 = icmp eq i32 %44, %1
  br i1 %cmp90, label %if.then.i.i, label %if.then88.nla_put_failure_crit_edge

if.then88.nla_put_failure_crit_edge:              ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.then.i.i:                                      ; preds = %if.then88
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %45 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i191 = icmp ugt ptr %46, %3
  br i1 %cmp.i.i191, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !223

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #12
  br label %out

if.end94:                                         ; preds = %do.end85
  %nomatch.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %add.ptr, i32 0, i32 3
  %49 = ptrtoint ptr %nomatch.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i = load i8, ptr %nomatch.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool.not.i192 = icmp eq i8 %bf.clear.i, 0
  %50 = shl nuw nsw i8 %bf.clear.i, 2
  %51 = zext i8 %50 to i32
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr, align 4
  %54 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool.not1.i.i = icmp eq ptr %55, null
  %tobool.not.i.i193 = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool.not1.i.i
  br i1 %tobool.not.i.i193, label %if.end94.nla_put_failure_crit_edge, label %if.end.i.i194

if.end94.nla_put_failure_crit_edge:               ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end.i.i194:                                    ; preds = %if.end94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #12
  %56 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %53, ptr %tmp.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i, label %if.end.i.i194.nla_put_failure_crit_edge

if.end.i.i194.nla_put_failure_crit_edge:          ; preds = %if.end.i.i194
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false.i:                                  ; preds = %if.end.i.i194
  %57 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.i.i.i, ptr %55, align 2
  %port.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %add.ptr, i32 0, i32 1
  %60 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %port.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i.i) #12
  %62 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %tmp.i.i.i, align 2
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 16388, i32 noundef 2, ptr noundef nonnull %tmp.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.nla_put_failure_crit_edge

lor.lhs.false.i.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %63 = ptrtoint ptr %nomatch.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load5.i = load i8, ptr %nomatch.i, align 1
  %bf.lshr.i = lshr i8 %bf.load5.i, 1
  %narrow.i = add nuw i8 %bf.lshr.i, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #12
  %64 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %narrow.i, ptr %tmp.i.i, align 1
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false10.i, label %lor.lhs.false4.i.nla_put_failure_crit_edge

lor.lhs.false4.i.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false10.i:                                ; preds = %lor.lhs.false4.i
  %proto.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %add.ptr, i32 0, i32 2
  %65 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %proto.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i26.i) #12
  %67 = ptrtoint ptr %tmp.i26.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %tmp.i26.i, align 1
  %call.i27.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i26.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i26.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %tobool12.not.i = icmp eq i32 %call.i27.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false13.i, label %lor.lhs.false10.i.nla_put_failure_crit_edge

lor.lhs.false10.i.nla_put_failure_crit_edge:      ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false13.i:                                ; preds = %lor.lhs.false10.i
  br i1 %tobool.not.i192, label %lor.lhs.false13.i.if.end97_crit_edge, label %land.lhs.true.i195

lor.lhs.false13.i.if.end97_crit_edge:             ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

land.lhs.true.i195:                               ; preds = %lor.lhs.false13.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i28.i) #12
  %68 = ptrtoint ptr %tmp.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %51, ptr %tmp.i.i28.i, align 4
  %call.i.i29.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 16392, i32 noundef 4, ptr noundef nonnull %tmp.i.i28.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i28.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29.i)
  %tobool16.not.i = icmp eq i32 %call.i.i29.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i195.if.end97_crit_edge, label %land.lhs.true.i195.nla_put_failure_crit_edge

land.lhs.true.i195.nla_put_failure_crit_edge:     ; preds = %land.lhs.true.i195
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

land.lhs.true.i195.if.end97_crit_edge:            ; preds = %land.lhs.true.i195
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

if.end97:                                         ; preds = %land.lhs.true.i195.if.end97_crit_edge, %lor.lhs.false13.i.if.end97_crit_edge
  %call98 = call i32 @ip_set_put_extensions(ptr noundef %skb, ptr noundef %set, ptr noundef %add.ptr, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.end97.nla_put_failure_crit_edge

if.end97.nla_put_failure_crit_edge:               ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end101:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %70 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %71 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i, ptr %42, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end101, %ip_set_timeout_expired.exit.for.inc_crit_edge, %for.body53.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0231, 1
  %72 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %pos, align 1
  %conv50 = zext i8 %73 to i32
  %cmp51 = icmp ult i32 %inc, %conv50
  br i1 %cmp51, label %for.inc.for.body53_crit_edge, label %for.inc.for.inc103_crit_edge

for.inc.for.inc103_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc103

for.inc.for.body53_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body53

for.inc103:                                       ; preds = %for.inc.for.inc103_crit_edge, %for.cond49.preheader.for.inc103_crit_edge, %do.end45.for.inc103_crit_edge
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx, align 4
  %inc105 = add i32 %75, 1
  store i32 %inc105, ptr %arrayidx, align 4
  %76 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %htable_bits, align 4
  %conv = zext i8 %77 to i32
  %.highbits = lshr i32 %inc105, %conv
  %cmp = icmp eq i32 %.highbits, 0
  br i1 %cmp, label %for.inc103.for.body_crit_edge, label %for.inc103.for.end106_crit_edge

for.inc103.for.end106_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end106

for.inc103.for.body_crit_edge:                    ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end106:                                       ; preds = %for.inc103.for.end106_crit_edge, %rcu_read_lock.exit.for.end106_crit_edge
  %78 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i198 = ptrtoint ptr %79 to i32
  %sub.ptr.rhs.cast.i199 = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i200 = sub i32 %sub.ptr.lhs.cast.i198, %sub.ptr.rhs.cast.i199
  %conv.i201 = trunc i32 %sub.ptr.sub.i200 to i16
  %80 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i201, ptr %3, align 2
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %arrayidx, align 4
  br label %out

nla_put_failure:                                  ; preds = %if.end97.nla_put_failure_crit_edge, %land.lhs.true.i195.nla_put_failure_crit_edge, %lor.lhs.false10.i.nla_put_failure_crit_edge, %lor.lhs.false4.i.nla_put_failure_crit_edge, %lor.lhs.false.i.nla_put_failure_crit_edge, %if.end.i.i194.nla_put_failure_crit_edge, %if.end94.nla_put_failure_crit_edge, %if.then88.nla_put_failure_crit_edge
  %tobool.not.i202 = icmp eq ptr %16, null
  br i1 %tobool.not.i202, label %nla_put_failure.nlmsg_trim.exit_crit_edge, label %if.then.i203

nla_put_failure.nlmsg_trim.exit_crit_edge:        ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #14
  br label %nlmsg_trim.exit

if.then.i203:                                     ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %82 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %83, %16
  br i1 %cmp.i, label %do.end.i, label %if.then.i203.if.end.i_crit_edge, !prof !223

if.then.i203.if.end.i_crit_edge:                  ; preds = %if.then.i203
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i203
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i203.if.end.i_crit_edge
  %84 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i204 = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i205 = ptrtoint ptr %85 to i32
  %sub.ptr.sub.i206 = sub i32 %sub.ptr.lhs.cast.i204, %sub.ptr.rhs.cast.i205
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i206) #12
  br label %nlmsg_trim.exit

nlmsg_trim.exit:                                  ; preds = %if.end.i, %nla_put_failure.nlmsg_trim.exit_crit_edge
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %87)
  %cmp110 = icmp eq i32 %1, %87
  br i1 %cmp110, label %do.end121, label %if.else, !prof !223

do.end121:                                        ; preds = %nlmsg_trim.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %set) #17
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %arrayidx, align 4
  br label %out

if.else:                                          ; preds = %nlmsg_trim.exit
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i208 = ptrtoint ptr %90 to i32
  %sub.ptr.rhs.cast.i209 = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i210 = sub i32 %sub.ptr.lhs.cast.i208, %sub.ptr.rhs.cast.i209
  %conv.i211 = trunc i32 %sub.ptr.sub.i210 to i16
  %91 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv.i211, ptr %3, align 2
  br label %out

out:                                              ; preds = %if.else, %do.end121, %for.end106, %nla_nest_cancel.exit
  %ret.0 = phi i32 [ -90, %do.end121 ], [ 0, %if.else ], [ -90, %nla_nest_cancel.exit ], [ 0, %for.end106 ]
  %call.i212 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i212, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i215

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i215:                               ; preds = %out
  %call1.i213 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i213)
  %tobool.not.i214 = icmp eq i32 %call1.i213, 0
  br i1 %tobool.not.i214, label %land.lhs.true.i215.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i217

land.lhs.true.i215.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i215
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i217:                              ; preds = %land.lhs.true.i215
  %.b4.i216 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i216, label %land.lhs.true2.i217.rcu_read_unlock.exit_crit_edge, label %if.then.i218

land.lhs.true2.i217.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i217
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i218:                                     ; preds = %land.lhs.true2.i217
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.44) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i218, %land.lhs.true2.i217.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i215.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !240
  %92 = call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i.i.i219 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i.i.i219 to ptr
  %preempt_count.i.i.i.i220 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %preempt_count.i.i.i.i220 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %preempt_count.i.i.i.i220, align 4
  %sub.i.i.i = add i32 %95, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i220, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_netport4_uref(ptr nocapture noundef readonly %set, ptr nocapture noundef %cb, i1 noundef zeroext %start) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %start, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.then.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock_bh.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 750, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %if.then.rcu_read_lock_bh.exit_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %call = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #12
  br i1 %call, label %rcu_read_lock_bh.exit.do.end10_crit_edge, label %lor.lhs.false

rcu_read_lock_bh.exit.do.end10_crit_edge:         ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

lor.lhs.false:                                    ; preds = %rcu_read_lock_bh.exit
  %call2 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true6

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b46 = load i1, ptr @hash_netport4_uref.__warned, align 1
  br i1 %.b46, label %land.lhs.true6.do.end10_crit_edge, label %if.then8

land.lhs.true6.do.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport4_uref.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1321, ptr noundef nonnull @.str.8) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %land.lhs.true6.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %rcu_read_lock_bh.exit.do.end10_crit_edge
  %uref = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !227
  %5 = ptrtoint ptr %3 to i32
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx, align 4
  %call.i49 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i49, label %do.end10.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i52

do.end10.rcu_read_unlock_bh.exit_crit_edge:       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i52:                                ; preds = %do.end10
  %call1.i50 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool.not.i51, label %land.lhs.true.i52.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i54

land.lhs.true.i52.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i54:                               ; preds = %land.lhs.true.i52
  %.b4.i53 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i53, label %land.lhs.true2.i54.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i55

land.lhs.true2.i54.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i55:                                      ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i55, %land.lhs.true2.i54.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i52.rcu_read_unlock_bh.exit_crit_edge, %do.end10.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  br label %if.end36

if.else:                                          ; preds = %entry
  %arrayidx12 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not = icmp eq i32 %8, 0
  br i1 %tobool13.not, label %if.else.if.end36_crit_edge, label %if.then14

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then14:                                        ; preds = %if.else
  %9 = inttoptr i32 %8 to ptr
  %uref16 = getelementptr inbounds %struct.htable, ptr %9, i32 0, i32 1
  %call.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref16, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void @llvm.prefetch.p0(ptr %uref16, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref16, ptr %uref16, i32 1, ptr elementtype(i32) %uref16) #12, !srcloc !232
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !233
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true18, label %if.then14.if.end33_crit_edge

if.then14.if.end33_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true18:                                  ; preds = %if.then14
  %call.i.i48 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %9, i32 noundef 4) #12
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool20.not = icmp eq i32 %12, 0
  br i1 %tobool20.not, label %land.lhs.true18.if.end33_crit_edge, label %do.body22

land.lhs.true18.if.end33_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

do.body22:                                        ; preds = %land.lhs.true18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport4_uref.__UNIQUE_ID_ddebug687, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport4_uref, %if.then29)) #12
          to label %do.end32 [label %if.then29], !srcloc !222

if.then29:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport4_uref.__UNIQUE_ID_ddebug687, ptr noundef nonnull @.str.46, ptr noundef nonnull %9) #12
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body22
  %htable_bits.i = getelementptr inbounds %struct.htable, ptr %9, i32 0, i32 2
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %do.end32
  %i.017.i = phi i32 [ 0, %do.end32 ], [ %inc.i, %for.inc.i.do.end.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.htable, ptr %9, i32 0, i32 5, i32 %i.017.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i56 = icmp eq ptr %14, null
  br i1 %tobool.not.i56, label %do.end.i.for.inc.i_crit_edge, label %if.end.i

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %14) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %15 = ptrtoint ptr %htable_bits.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %htable_bits.i, align 4
  %conv.i = zext i8 %16 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i
  %cmp.i = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i, label %for.inc.i.do.end.i_crit_edge, label %hash_netport4_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hash_netport4_ahash_destroy.exit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %hregion.i = getelementptr inbounds %struct.htable, ptr %9, i32 0, i32 4
  %17 = ptrtoint ptr %hregion.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hregion.i, align 4
  tail call void @ip_set_free(ptr noundef %18) #12
  tail call void @ip_set_free(ptr noundef nonnull %9) #12
  br label %if.end33

if.end33:                                         ; preds = %hash_netport4_ahash_destroy.exit, %land.lhs.true18.if.end33_crit_edge, %if.then14.if.end33_crit_edge
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx12, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %if.else.if.end36_crit_edge, %rcu_read_unlock_bh.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @hash_netport4_same_set(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %a, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %data1 = getelementptr inbounds %struct.ip_set, ptr %b, i32 0, i32 15
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %maxelem = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %maxelem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxelem, align 4
  %maxelem2 = getelementptr inbounds %struct.hash_netport4, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %maxelem2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxelem2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %timeout = getelementptr inbounds %struct.ip_set, ptr %a, i32 0, i32 10
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timeout, align 4
  %timeout3 = getelementptr inbounds %struct.ip_set, ptr %b, i32 0, i32 10
  %10 = ptrtoint ptr %timeout3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timeout3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp4 = icmp eq i32 %9, %11
  br i1 %cmp4, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %extensions = getelementptr inbounds %struct.ip_set, ptr %a, i32 0, i32 8
  %12 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %extensions, align 2
  %extensions5 = getelementptr inbounds %struct.ip_set, ptr %b, i32 0, i32 8
  %14 = ptrtoint ptr %extensions5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %extensions5, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp7 = icmp eq i8 %13, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %16 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %cmp7, %land.rhs ]
  ret i1 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ip_set_get_ip4_port(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_get_extensions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_range_to_cidr(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_get_ipaddr4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hash_netport4_gc_do(ptr noundef %set, ptr nocapture noundef %h, ptr noundef %t, i32 noundef %r) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dsize1 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %0 = ptrtoint ptr %dsize1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dsize1, align 4
  %htable_bits2 = getelementptr inbounds %struct.htable, ptr %t, i32 0, i32 2
  %2 = ptrtoint ptr %htable_bits2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %htable_bits2, align 4
  %hregion = getelementptr inbounds %struct.htable, ptr %t, i32 0, i32 4
  %4 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hregion, align 4
  %arrayidx = getelementptr %struct.ip_set_region, ptr %5, i32 %r
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #12
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp = icmp ult i8 %3, 10
  %mul = shl i32 %r, 10
  %spec.select = select i1 %cmp, i32 0, i32 %mul
  %shl = shl nuw i32 1, %conv
  %mul10 = add i32 %mul, 1024
  %cond12 = select i1 %cmp, i32 %shl, i32 %mul10
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %cond12)
  %cmp13342 = icmp ult i32 %spec.select, %cond12
  br i1 %cmp13342, label %do.end.lr.ph, label %entry.for.end235_crit_edge

entry.for.end235_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end235

do.end.lr.ph:                                     ; preds = %entry
  %arrayidx27 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %lock.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  %extensions.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx.i322 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %mul172.neg = mul i32 %1, -2
  %add173.neg = add i32 %mul172.neg, -24
  br label %do.end

do.end:                                           ; preds = %for.inc233.do.end_crit_edge, %do.end.lr.ph
  %i.0343 = phi i32 [ %spec.select, %do.end.lr.ph ], [ %inc234, %for.inc233.do.end_crit_edge ]
  %arrayidx16 = getelementptr %struct.htable, ptr %t, i32 0, i32 5, i32 %i.0343
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx16, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end.for.inc233_crit_edge, label %for.cond17.preheader

do.end.for.inc233_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc233

for.cond17.preheader:                             ; preds = %do.end
  %pos = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp19331.not = icmp eq i8 %9, 0
  br i1 %cmp19331.not, label %for.cond17.preheader.for.inc233_crit_edge, label %for.body21.lr.ph

for.cond17.preheader.for.inc233_crit_edge:        ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc233

for.body21.lr.ph:                                 ; preds = %for.cond17.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 5
  br label %for.body21

for.body21:                                       ; preds = %for.inc63.for.body21_crit_edge, %for.body21.lr.ph
  %d.0335 = phi i32 [ 0, %for.body21.lr.ph ], [ %d.1, %for.inc63.for.body21_crit_edge ]
  %j.0332 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc64, %for.inc63.for.body21_crit_edge ]
  %div3.i = lshr i32 %j.0332, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %j.0332, 31
  %12 = shl nuw i32 1, %and.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool22.not = icmp eq i32 %13, 0
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %d.0335, 1
  br label %for.inc63

if.end24:                                         ; preds = %for.body21
  %mul26 = mul i32 %j.0332, %1
  %add.ptr = getelementptr i8, ptr %value, i32 %mul26
  %14 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx27, align 4
  %add.ptr28 = getelementptr i8, ptr %add.ptr, i32 %15
  %16 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %if.end24.for.inc63_crit_edge, label %ip_set_timeout_expired.exit

if.end24.for.inc63_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc63

ip_set_timeout_expired.exit:                      ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %do.body32, label %ip_set_timeout_expired.exit.for.inc63_crit_edge

ip_set_timeout_expired.exit.for.inc63_crit_edge:  ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc63

do.body32:                                        ; preds = %ip_set_timeout_expired.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport4_gc_do.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport4_gc_do, %if.then38)) #12
          to label %do.end41 [label %if.then38], !srcloc !222

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport4_gc_do.__UNIQUE_ID_ddebug619, ptr noundef nonnull @.str.17, i32 noundef %i.0343, i32 noundef %j.0332) #12
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %do.body32
  tail call void @_clear_bit(i32 noundef %j.0332, ptr noundef %used) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !241
  %cidr = getelementptr inbounds %struct.hash_netport4_elem, ptr %add.ptr, i32 0, i32 3
  %19 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %cidr, align 1
  %bf.lshr = lshr i8 %bf.load, 1
  %narrow = add nuw i8 %bf.lshr, 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc57.i.for.body.i_crit_edge, %do.end41
  %indvars.iv.i = phi i32 [ 0, %do.end41 ], [ %indvars.iv.next.i, %for.inc57.i.for.body.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.hash_netport4, ptr %h, i32 0, i32 7, i32 %indvars.iv.i, i32 1, i32 0
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %narrow)
  %cmp7.not.i = icmp eq i8 %21, %narrow
  br i1 %cmp7.not.i, label %if.end.i, label %for.inc57.i

if.end.i:                                         ; preds = %for.body.i
  %sub.i319 = zext i8 %bf.lshr to i32
  %arrayidx11.i = getelementptr %struct.hash_netport4, ptr %h, i32 0, i32 7, i32 %sub.i319
  %22 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx11.i, align 4
  %dec.i = add i32 %23, -1
  store i32 %dec.i, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp22.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp22.not.i, label %for.cond26.preheader.i, label %if.end.i.hash_netport4_del_cidr.exit_crit_edge

if.end.i.hash_netport4_del_cidr.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hash_netport4_del_cidr.exit

for.cond26.preheader.i:                           ; preds = %if.end.i
  %24 = trunc i32 %indvars.iv.i to i8
  %conv2786.i = and i32 %indvars.iv.i, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %24)
  %cmp2987.i = icmp ult i8 %24, 31
  br i1 %cmp2987.i, label %for.cond26.preheader.i.land.rhs.i320_crit_edge, label %for.cond26.preheader.i.for.end.i_crit_edge

for.cond26.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.cond26.preheader.i.land.rhs.i320_crit_edge:   ; preds = %for.cond26.preheader.i
  br label %land.rhs.i320

land.rhs.i320:                                    ; preds = %for.body38.i.land.rhs.i320_crit_edge, %for.cond26.preheader.i.land.rhs.i320_crit_edge
  %indvars.iv92.i = phi i32 [ %add.i, %for.body38.i.land.rhs.i320_crit_edge ], [ %indvars.iv.i, %for.cond26.preheader.i.land.rhs.i320_crit_edge ]
  %arrayidx36.i = getelementptr %struct.hash_netport4, ptr %h, i32 0, i32 7, i32 %indvars.iv92.i, i32 1, i32 0
  %25 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %land.rhs.i320.for.end.i_crit_edge, label %for.body38.i

land.rhs.i320.for.end.i_crit_edge:                ; preds = %land.rhs.i320
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body38.i:                                     ; preds = %land.rhs.i320
  %add.i = add nuw nsw i32 %indvars.iv92.i, 1
  %arrayidx44.i = getelementptr %struct.hash_netport4, ptr %h, i32 0, i32 7, i32 %add.i, i32 1, i32 0
  %27 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx44.i, align 1
  %29 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx36.i, align 1
  %exitcond94.not.i = icmp eq i32 %add.i, 31
  br i1 %exitcond94.not.i, label %for.body38.i.for.end.i_crit_edge, label %for.body38.i.land.rhs.i320_crit_edge

for.body38.i.land.rhs.i320_crit_edge:             ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i320

for.body38.i.for.end.i_crit_edge:                 ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body38.i.for.end.i_crit_edge, %land.rhs.i320.for.end.i_crit_edge, %for.cond26.preheader.i.for.end.i_crit_edge
  %conv27.lcssa.i = phi i32 [ %conv2786.i, %for.cond26.preheader.i.for.end.i_crit_edge ], [ %indvars.iv92.i, %land.rhs.i320.for.end.i_crit_edge ], [ 31, %for.body38.i.for.end.i_crit_edge ]
  %arrayidx56.i = getelementptr %struct.hash_netport4, ptr %h, i32 0, i32 7, i32 %conv27.lcssa.i, i32 1, i32 0
  %30 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx56.i, align 1
  br label %hash_netport4_del_cidr.exit

for.inc57.i:                                      ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %for.inc57.i.hash_netport4_del_cidr.exit_crit_edge, label %for.inc57.i.for.body.i_crit_edge

for.inc57.i.for.body.i_crit_edge:                 ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc57.i.hash_netport4_del_cidr.exit_crit_edge: ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hash_netport4_del_cidr.exit

hash_netport4_del_cidr.exit:                      ; preds = %for.inc57.i.hash_netport4_del_cidr.exit_crit_edge, %for.end.i, %if.end.i.hash_netport4_del_cidr.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  %31 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %32, i32 %r, i32 2
  %33 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %elements, align 4
  %dec = add i32 %34, -1
  store i32 %dec, ptr %elements, align 4
  %35 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %extensions.i, align 2
  %37 = and i8 %36, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i321 = icmp eq i8 %37, 0
  br i1 %tobool.not.i321, label %hash_netport4_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge, label %if.then.i

hash_netport4_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge: ; preds = %hash_netport4_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_ext_destroy.exit

if.then.i:                                        ; preds = %hash_netport4_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %arrayidx.i322 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i322, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %40(ptr noundef %set, ptr noundef %add.ptr.i) #12
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i, %hash_netport4_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge
  %inc62 = add i32 %d.0335, 1
  br label %for.inc63

for.inc63:                                        ; preds = %ip_set_ext_destroy.exit, %ip_set_timeout_expired.exit.for.inc63_crit_edge, %if.end24.for.inc63_crit_edge, %if.then23
  %d.1 = phi i32 [ %inc62, %ip_set_ext_destroy.exit ], [ %d.0335, %ip_set_timeout_expired.exit.for.inc63_crit_edge ], [ %inc, %if.then23 ], [ %d.0335, %if.end24.for.inc63_crit_edge ]
  %inc64 = add nuw nsw i32 %j.0332, 1
  %41 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pos, align 1
  %conv18 = zext i8 %42 to i32
  %cmp19 = icmp ult i32 %inc64, %conv18
  br i1 %cmp19, label %for.inc63.for.body21_crit_edge, label %for.end65

for.inc63.for.body21_crit_edge:                   ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body21

for.end65:                                        ; preds = %for.inc63
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %d.1)
  %cmp66 = icmp ugt i32 %d.1, 1
  br i1 %cmp66, label %if.then68, label %for.end65.for.inc233_crit_edge

for.end65.for.inc233_crit_edge:                   ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc233

if.then68:                                        ; preds = %for.end65
  %size = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 2
  %43 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %size, align 8
  %conv69 = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %d.1, i32 %conv69)
  %cmp70.not = icmp ult i32 %d.1, %conv69
  br i1 %cmp70.not, label %if.end8.i.i, label %if.then72

if.then72:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  %mul75 = mul i32 %1, %conv69
  %45 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %46, i32 %r, i32 1
  %47 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ext_size, align 4
  %add76.neg = sub i32 -24, %mul75
  %sub = add i32 %add76.neg, %48
  store i32 %sub, ptr %ext_size, align 4
  br label %for.inc233.sink.split

if.end8.i.i:                                      ; preds = %if.then68
  %sub132 = add nsw i32 %conv69, -2
  %mul133 = mul i32 %sub132, %1
  %add134 = add i32 %mul133, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add134, i32 noundef 2848) #16
  %tobool136.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool136.not, label %if.end8.i.i.for.inc233_crit_edge, label %if.end138

if.end8.i.i.for.inc233_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc233

if.end138:                                        ; preds = %if.end8.i.i
  %49 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %size, align 8
  %sub141 = add i8 %50, -2
  %size143 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %size143 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %sub141, ptr %size143, align 16
  %52 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp147337.not = icmp eq i8 %53, 0
  br i1 %cmp147337.not, label %if.end138.for.end169_crit_edge, label %for.body149.lr.ph

if.end138.for.end169_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end169

for.body149.lr.ph:                                ; preds = %if.end138
  %used150 = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 1
  %value156 = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 5
  %value160 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 5
  %used164 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 1
  br label %for.body149

for.body149:                                      ; preds = %for.inc167.for.body149_crit_edge, %for.body149.lr.ph
  %d.2340 = phi i32 [ 0, %for.body149.lr.ph ], [ %d.3, %for.inc167.for.body149_crit_edge ]
  %j.1338 = phi i32 [ 0, %for.body149.lr.ph ], [ %inc168, %for.inc167.for.body149_crit_edge ]
  %div3.i314 = lshr i32 %j.1338, 5
  %arrayidx.i315 = getelementptr i32, ptr %used150, i32 %div3.i314
  %54 = ptrtoint ptr %arrayidx.i315 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %arrayidx.i315, align 4
  %and.i316 = and i32 %j.1338, 31
  %56 = shl nuw i32 1, %and.i316
  %57 = and i32 %55, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool153.not = icmp eq i32 %57, 0
  br i1 %tobool153.not, label %for.body149.for.inc167_crit_edge, label %if.end155

for.body149.for.inc167_crit_edge:                 ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc167

if.end155:                                        ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #14
  %mul158 = mul i32 %j.1338, %1
  %add.ptr159 = getelementptr i8, ptr %value156, i32 %mul158
  %mul162 = mul i32 %d.2340, %1
  %add.ptr163 = getelementptr i8, ptr %value160, i32 %mul162
  %58 = call ptr @memcpy(ptr %add.ptr163, ptr %add.ptr159, i32 %1)
  tail call void @_set_bit(i32 noundef %d.2340, ptr noundef %used164) #12
  %inc166 = add i32 %d.2340, 1
  br label %for.inc167

for.inc167:                                       ; preds = %if.end155, %for.body149.for.inc167_crit_edge
  %d.3 = phi i32 [ %inc166, %if.end155 ], [ %d.2340, %for.body149.for.inc167_crit_edge ]
  %inc168 = add nuw nsw i32 %j.1338, 1
  %59 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %pos, align 1
  %conv146 = zext i8 %60 to i32
  %cmp147 = icmp ult i32 %inc168, %conv146
  br i1 %cmp147, label %for.inc167.for.body149_crit_edge, label %for.inc167.for.end169_crit_edge

for.inc167.for.end169_crit_edge:                  ; preds = %for.inc167
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end169

for.inc167.for.body149_crit_edge:                 ; preds = %for.inc167
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body149

for.end169:                                       ; preds = %for.inc167.for.end169_crit_edge, %if.end138.for.end169_crit_edge
  %d.2.lcssa = phi i32 [ 0, %if.end138.for.end169_crit_edge ], [ %d.3, %for.inc167.for.end169_crit_edge ]
  %conv170 = trunc i32 %d.2.lcssa to i8
  %pos171 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %pos171 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv170, ptr %pos171, align 1
  %62 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hregion, align 4
  %ext_size176 = getelementptr %struct.ip_set_region, ptr %63, i32 %r, i32 1
  %64 = ptrtoint ptr %ext_size176 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ext_size176, align 4
  %sub177 = add i32 %add173.neg, %65
  store i32 %sub177, ptr %ext_size176, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !242
  br label %for.inc233.sink.split

for.inc233.sink.split:                            ; preds = %for.end169, %if.then72
  %retval.1.i.i327.sink = phi ptr [ %call9.i.i, %for.end169 ], [ null, %if.then72 ]
  %66 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %retval.1.i.i327.sink, ptr %arrayidx16, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %7, ptr noundef null) #12
  br label %for.inc233

for.inc233:                                       ; preds = %for.inc233.sink.split, %if.end8.i.i.for.inc233_crit_edge, %for.end65.for.inc233_crit_edge, %for.cond17.preheader.for.inc233_crit_edge, %do.end.for.inc233_crit_edge
  %inc234 = add nuw i32 %i.0343, 1
  %exitcond.not = icmp eq i32 %inc234, %cond12
  br i1 %exitcond.not, label %for.inc233.for.end235_crit_edge, label %for.inc233.do.end_crit_edge

for.inc233.do.end_crit_edge:                      ; preds = %for.inc233
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.inc233.for.end235_crit_edge:                  ; preds = %for.inc233
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end235

for.end235:                                       ; preds = %for.inc233.for.end235_crit_edge, %entry.for.end235_crit_edge
  %67 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hregion, align 4
  %arrayidx237 = getelementptr %struct.ip_set_region, ptr %68, i32 %r
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx237) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_set_init_comment(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hash_netport4_ahash_destroy(ptr noundef %set, ptr noundef %t, i1 noundef zeroext %ext_destroy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %htable_bits = getelementptr inbounds %struct.htable, ptr %t, i32 0, i32 2
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %dsize.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %arrayidx.i9.i = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %for.inc.do.end_crit_edge ]
  %arrayidx = getelementptr %struct.htable, ptr %t, i32 0, i32 5, i32 %i.017
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end.for.inc_crit_edge, label %if.end

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %do.end
  %2 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %extensions, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp slt i8 %3, 0
  %4 = and i1 %tobool3.not, %ext_destroy
  br i1 %4, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end
  %pos.i = getelementptr inbounds %struct.hbucket, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp11.not.i = icmp eq i8 %6, 0
  br i1 %cmp11.not.i, label %if.then6.if.end7_crit_edge, label %for.body.lr.ph.i

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

for.body.lr.ph.i:                                 ; preds = %if.then6
  %used.i = getelementptr inbounds %struct.hbucket, ptr %1, i32 0, i32 1
  %value.i = getelementptr inbounds %struct.hbucket, ptr %1, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %i.012.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %used.i, i32 %div3.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.012.i, 31
  %9 = shl nuw i32 1, %and.i.i
  %10 = and i32 %9, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %11 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %extensions, align 2
  %13 = and i8 %12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %dsize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dsize.i, align 4
  %mul.i = mul i32 %15, %i.012.i
  %add.ptr.i = getelementptr i8, ptr %value.i, i32 %mul.i
  %16 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i9.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %18(ptr noundef %set, ptr noundef %add.ptr.i.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %19 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pos.i, align 1
  %conv.i = zext i8 %20 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end7_crit_edge

for.inc.i.if.end7_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end7:                                          ; preds = %for.inc.i.if.end7_crit_edge, %if.then6.if.end7_crit_edge, %if.end.if.end7_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %do.end.for.inc_crit_edge
  %inc = add i32 %i.017, 1
  %21 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %htable_bits, align 4
  %conv = zext i8 %22 to i32
  %i.0.highbits = lshr i32 %inc, %conv
  %cmp = icmp eq i32 %i.0.highbits, 0
  br i1 %cmp, label %for.inc.do.end_crit_edge, label %for.end

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %hregion = getelementptr inbounds %struct.htable, ptr %t, i32 0, i32 4
  %23 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %24) #12
  tail call void @ip_set_free(ptr noundef %t) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hash_netport4_test_cidrs(ptr noundef %set, ptr nocapture noundef %d, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b111 = load i1, ptr @hash_netport4_test_cidrs.__warned, align 1
  br i1 %.b111, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport4_test_cidrs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1161, ptr noundef nonnull @.str.8) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport4_test_cidrs.__UNIQUE_ID_ddebug674, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport4_test_cidrs, %if.then16)) #12
          to label %do.end19 [label %if.then16], !srcloc !222

if.then16:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport4_test_cidrs.__UNIQUE_ID_ddebug674, ptr noundef nonnull @.str.23) #12
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.end7
  %cidr2.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %d, i32 0, i32 3
  %initval = getelementptr inbounds %struct.hash_netport4, ptr %1, i32 0, i32 3
  %arrayidx32.i = getelementptr i32, ptr %d, i32 1
  %htable_bits = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 2
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %proto10.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %d, i32 0, i32 2
  br label %land.lhs.true20

land.lhs.true20:                                  ; preds = %for.inc78.land.lhs.true20_crit_edge, %do.end19
  %j.0122 = phi i32 [ 0, %do.end19 ], [ %inc79, %for.inc78.land.lhs.true20_crit_edge ]
  %cidr = getelementptr %struct.hash_netport4, ptr %1, i32 0, i32 7, i32 %j.0122, i32 1
  %4 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cidr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool22.not = icmp eq i8 %5, 0
  br i1 %tobool22.not, label %land.lhs.true20.cleanup_crit_edge, label %for.body

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %land.lhs.true20
  %sub = add i8 %5, -1
  %idxprom.i.i = zext i8 %sub to i32
  %arrayidx.i.i = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_netmask_map, i32 0, i32 %idxprom.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %8 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %d, align 4
  %and.i112 = and i32 %9, %7
  store i32 %and.i112, ptr %d, align 4
  %10 = ptrtoint ptr %cidr2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %cidr2.i, align 1
  %sub.i = shl i8 %sub, 1
  %bf.shl.i = add i8 %sub.i, -2
  %bf.clear.i = and i8 %bf.load.i, 1
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %cidr2.i, align 1
  %11 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %initval, align 4
  %add1.i = add i32 %12, -559038729
  %13 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %14, %add1.i
  %add36.i = add i32 %add1.i, %and.i112
  %xor37.i = xor i32 %add33.i, %add1.i
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #12
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %sub39.i, %add36.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #12
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #12
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #12
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #12
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #12
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #12
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  %15 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %htable_bits, align 4
  %conv37 = zext i8 %16 to i32
  %notmask = shl nsw i32 -1, %conv37
  %sub38 = xor i32 %notmask, -1
  %and = and i32 %sub57.i, %sub38
  %arrayidx43 = getelementptr %struct.htable, ptr %3, i32 0, i32 5, i32 %and
  %17 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %arrayidx43, align 4
  %call45 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true47, label %for.body.do.end55_crit_edge

for.body.do.end55_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end55

land.lhs.true47:                                  ; preds = %for.body
  %call48 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true47.do.end55_crit_edge, label %land.lhs.true50

land.lhs.true47.do.end55_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end55

land.lhs.true50:                                  ; preds = %land.lhs.true47
  %.b109110 = load i1, ptr @hash_netport4_test_cidrs.__warned.24, align 1
  br i1 %.b109110, label %land.lhs.true50.do.end55_crit_edge, label %if.then52

land.lhs.true50.do.end55_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end55

if.then52:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport4_test_cidrs.__warned.24, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1185, ptr noundef nonnull @.str.8) #12
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %land.lhs.true50.do.end55_crit_edge, %land.lhs.true47.do.end55_crit_edge, %for.body.do.end55_crit_edge
  %tobool57.not = icmp eq ptr %18, null
  br i1 %tobool57.not, label %do.end55.for.inc78_crit_edge, label %for.cond60.preheader

do.end55.for.inc78_crit_edge:                     ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc78

for.cond60.preheader:                             ; preds = %do.end55
  %pos = getelementptr inbounds %struct.hbucket, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp62119.not = icmp eq i8 %20, 0
  br i1 %cmp62119.not, label %for.cond60.preheader.for.inc78_crit_edge, label %for.body64.lr.ph

for.cond60.preheader.for.inc78_crit_edge:         ; preds = %for.cond60.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc78

for.body64.lr.ph:                                 ; preds = %for.cond60.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %18, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %18, i32 0, i32 5
  br label %for.body64

for.body64:                                       ; preds = %for.inc.for.body64_crit_edge, %for.body64.lr.ph
  %i.0120 = phi i32 [ 0, %for.body64.lr.ph ], [ %inc, %for.inc.for.body64_crit_edge ]
  %div3.i = lshr i32 %i.0120, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0120, 31
  %23 = shl nuw i32 1, %and.i
  %24 = and i32 %22, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool66.not = icmp eq i32 %24, 0
  br i1 %tobool66.not, label %for.body64.for.inc_crit_edge, label %if.end68

for.body64.for.inc_crit_edge:                     ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end68:                                         ; preds = %for.body64
  %25 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dsize, align 4
  %mul = mul i32 %26, %i.0120
  %add.ptr = getelementptr i8, ptr %value, i32 %mul
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr, align 4
  %29 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %d, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp.i = icmp eq i32 %28, %30
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end68.for.inc_crit_edge

if.end68.for.inc_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.end68
  %port.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %add.ptr, i32 0, i32 1
  %31 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %port.i, align 4
  %33 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx32.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %34)
  %cmp6.i = icmp eq i16 %32, %34
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %proto.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %add.ptr, i32 0, i32 2
  %35 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %proto.i, align 2
  %37 = ptrtoint ptr %proto10.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %proto10.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp12.i = icmp eq i8 %36, %38
  br i1 %cmp12.i, label %hash_netport4_data_equal.exit, label %land.lhs.true8.i.for.inc_crit_edge

land.lhs.true8.i.for.inc_crit_edge:               ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

hash_netport4_data_equal.exit:                    ; preds = %land.lhs.true8.i
  %cidr.i = getelementptr inbounds %struct.hash_netport4_elem, ptr %add.ptr, i32 0, i32 3
  %39 = ptrtoint ptr %cidr.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i113 = load i8, ptr %cidr.i, align 1
  %40 = ptrtoint ptr %cidr2.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load16.i = load i8, ptr %cidr2.i, align 1
  %cmp19.unshifted.i = xor i8 %bf.load16.i, %bf.load.i113
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %cmp19.unshifted.i)
  %cmp19.i = icmp ult i8 %cmp19.unshifted.i, 2
  br i1 %cmp19.i, label %if.end72, label %hash_netport4_data_equal.exit.for.inc_crit_edge

hash_netport4_data_equal.exit.for.inc_crit_edge:  ; preds = %hash_netport4_data_equal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end72:                                         ; preds = %hash_netport4_data_equal.exit
  %call.i = tail call zeroext i1 @ip_set_match_extensions(ptr noundef %set, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags, ptr noundef %add.ptr) #12
  br i1 %call.i, label %hash_netport4_data_match.exit, label %if.end72.for.inc_crit_edge

if.end72.for.inc_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

hash_netport4_data_match.exit:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %cidr.i.le = getelementptr inbounds %struct.hash_netport4_elem, ptr %add.ptr, i32 0, i32 3
  %41 = ptrtoint ptr %cidr.i.le to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i.i = load i8, ptr %cidr.i.le, align 1
  %bf.clear.i.i = and i8 %bf.load.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i.i)
  %tobool.not.i.i = icmp eq i8 %bf.clear.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 -39
  br label %cleanup

for.inc:                                          ; preds = %if.end72.for.inc_crit_edge, %hash_netport4_data_equal.exit.for.inc_crit_edge, %land.lhs.true8.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end68.for.inc_crit_edge, %for.body64.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0120, 1
  %42 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pos, align 1
  %conv61 = zext i8 %43 to i32
  %cmp62 = icmp ult i32 %inc, %conv61
  br i1 %cmp62, label %for.inc.for.body64_crit_edge, label %for.inc.for.inc78_crit_edge

for.inc.for.inc78_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc78

for.inc.for.body64_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body64

for.inc78:                                        ; preds = %for.inc.for.inc78_crit_edge, %for.cond60.preheader.for.inc78_crit_edge, %do.end55.for.inc78_crit_edge
  %inc79 = add nuw nsw i32 %j.0122, 1
  %exitcond.not = icmp eq i32 %inc79, 32
  br i1 %exitcond.not, label %for.inc78.cleanup_crit_edge, label %for.inc78.land.lhs.true20_crit_edge

for.inc78.land.lhs.true20_crit_edge:              ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true20

for.inc78.cleanup_crit_edge:                      ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc78.cleanup_crit_edge, %hash_netport4_data_match.exit, %land.lhs.true20.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond.i.i, %hash_netport4_data_match.exit ], [ 0, %for.inc78.cleanup_crit_edge ], [ 0, %land.lhs.true20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ip_set_match_extensions(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_put_flags(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cond_resched_rcu() unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call.i1 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i1, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i4

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i4:                                 ; preds = %entry
  %call1.i2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %tobool.not.i3 = icmp eq i32 %call1.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i6

land.lhs.true.i4.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i6:                                ; preds = %land.lhs.true.i4
  %.b4.i5 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5, label %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, label %if.then.i7

land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i7:                                       ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.44) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i7, %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !240
  %0 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i.i.i8 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i8 to ptr
  %preempt_count.i.i.i.i9 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i9, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i9, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  tail call void @__might_resched(ptr noundef nonnull @.str.42, i32 noundef 2089, i32 noundef 0) #12
  %call.i10 = tail call i32 @__cond_resched() #12
  %4 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !239
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %rcu_read_unlock.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

rcu_read_unlock.exit.rcu_read_lock.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %rcu_read_unlock.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.41) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %rcu_read_unlock.exit.rcu_read_lock.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_put_extensions(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netport6_kadt(ptr noundef %set, ptr noundef %skb, ptr nocapture noundef readnone %par, i32 noundef %adt, ptr noundef %opt) #2 align 64 {
entry:
  %e = alloca %struct.hash_netport6_elem, align 4
  %ext = alloca %struct.ip_set_ext, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %variant = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 5
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %arrayidx = getelementptr %struct.ip_set_type_variant, ptr %3, i32 0, i32 2, i32 %adt
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %e) #12
  %6 = getelementptr inbounds [4 x i32], ptr %e, i32 0, i32 1
  %7 = getelementptr inbounds [4 x i32], ptr %e, i32 0, i32 2
  %8 = getelementptr inbounds [4 x i32], ptr %e, i32 0, i32 3
  %9 = getelementptr inbounds %struct.hash_netport6_elem, ptr %e, i32 0, i32 1
  %10 = getelementptr inbounds %struct.hash_netport6_elem, ptr %e, i32 0, i32 2
  %11 = getelementptr inbounds %struct.hash_netport6_elem, ptr %e, i32 0, i32 3
  %12 = call ptr @memset(ptr %e, i32 0, i32 20)
  %cidr3 = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 7, i32 0, i32 1
  %13 = ptrtoint ptr %cidr3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cidr3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  %phi.bo = shl i8 %14, 1
  %phi.bo60 = add i8 %phi.bo, -4
  %cond = select i1 %tobool.not, i8 -2, i8 %phi.bo60
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %cond, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ext) #12
  %16 = getelementptr inbounds i8, ptr %ext, i32 40
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %16, align 8, !annotation !225
  %18 = call ptr @memset(ptr %ext, i32 0, i32 16)
  %packets = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %19 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1, ptr %packets, align 8
  %bytes = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %conv12 = zext i32 %21 to i64
  %22 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv12, ptr %bytes, align 8
  %comment = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 3
  %23 = ptrtoint ptr %comment to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %comment, align 8
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %ext13 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4
  %timeout14 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 4
  %24 = ptrtoint ptr %timeout14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timeout14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.not = icmp eq i32 %25, -1
  br i1 %cmp.not, label %cond.false19, label %entry.cond.end21_crit_edge

entry.cond.end21_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end21

cond.false19:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %timeout20 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 10
  %26 = ptrtoint ptr %timeout20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %timeout20, align 4
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false19, %entry.cond.end21_crit_edge
  %cond22 = phi i32 [ %27, %cond.false19 ], [ %25, %entry.cond.end21_crit_edge ]
  %28 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond22, ptr %timeout, align 4
  %packets_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 5
  %29 = ptrtoint ptr %packets_op to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %packets_op, align 8
  %bytes_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 6
  %30 = ptrtoint ptr %bytes_op to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %bytes_op, align 1
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %31 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %target, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %adt)
  %cmp23 = icmp eq i32 %adt, 2
  br i1 %cmp23, label %if.then, label %cond.end21.if.end_crit_edge

cond.end21.if.end_crit_edge:                      ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -2, ptr %11, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end21.if.end_crit_edge
  %flags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 2
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %flags, align 2
  %35 = and i8 %34, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool30 = icmp ne i8 %35, 0
  %call = call zeroext i1 @ip_set_get_ip6_port(ptr noundef %skb, i1 noundef zeroext %tobool30, ptr noundef %9, ptr noundef %10) #12
  br i1 %call, label %if.end32, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %flags, align 2
  %38 = and i8 %37, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool36.not = icmp eq i8 %38, 0
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %39 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %41 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %42 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %40, i32 %conv.i.i.i
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %cond.i = select i1 %tobool36.not, ptr %daddr.i, ptr %saddr.i
  %43 = call ptr @memcpy(ptr %e, ptr %cond.i, i32 16)
  %44 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load39 = load i8, ptr %11, align 1
  %bf.lshr = lshr i8 %bf.load39, 1
  %narrow = add nuw i8 %bf.lshr, 1
  %idxprom.i.i = zext i8 %narrow to i32
  %arrayidx.i.i = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_netmask_map, i32 0, i32 %idxprom.i.i
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i, align 4
  %47 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %e, align 4
  %and.i = and i32 %48, %46
  store i32 %and.i, ptr %e, align 4
  %arrayidx3.i = getelementptr i32, ptr %arrayidx.i.i, i32 1
  %49 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx3.i, align 4
  %51 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %6, align 4
  %and5.i = and i32 %52, %50
  store i32 %and5.i, ptr %6, align 4
  %arrayidx7.i = getelementptr i32, ptr %arrayidx.i.i, i32 2
  %53 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx7.i, align 4
  %55 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %7, align 4
  %and9.i = and i32 %56, %54
  store i32 %and9.i, ptr %7, align 4
  %arrayidx11.i = getelementptr i32, ptr %arrayidx.i.i, i32 3
  %57 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx11.i, align 4
  %59 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %8, align 4
  %and13.i = and i32 %60, %58
  store i32 %and13.i, ptr %8, align 4
  %cmdflags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 3
  %61 = ptrtoint ptr %cmdflags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cmdflags, align 4
  %call43 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef %ext13, i32 noundef %62) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.end32 ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ext) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %e) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netport6_uadt(ptr noundef %set, ptr noundef %tb, i32 noundef %adt, ptr nocapture noundef writeonly %lineno, i32 noundef %flags, i1 noundef zeroext %retried) #2 align 64 {
entry:
  %e = alloca %struct.hash_netport6_elem, align 4
  %ext = alloca %struct.ip_set_ext, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %variant = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 5
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %arrayidx = getelementptr %struct.ip_set_type_variant, ptr %3, i32 0, i32 2, i32 %adt
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %e) #12
  %6 = call ptr @memcpy(ptr %e, ptr @__const.hash_netport6_uadt.e, i32 20)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ext) #12
  %7 = getelementptr inbounds i8, ptr %ext, i32 40
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %7, align 8, !annotation !225
  %9 = call ptr @memset(ptr %ext, i32 0, i32 16)
  %packets = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %comment = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 3
  %10 = call ptr @memset(ptr %packets, i32 255, i32 16)
  %11 = ptrtoint ptr %comment to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %comment, align 8
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %timeout2 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 10
  %12 = ptrtoint ptr %timeout2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timeout2, align 4
  %14 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %timeout, align 4
  %packets_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 5
  %15 = ptrtoint ptr %packets_op to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %packets_op, align 8
  %bytes_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 6
  %16 = ptrtoint ptr %bytes_op to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %bytes_op, align 1
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %17 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %target, align 2
  %arrayidx3 = getelementptr ptr, ptr %tb, i32 9
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i, align 4
  %22 = ptrtoint ptr %lineno to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %lineno, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx5 = getelementptr ptr, ptr %tb, i32 1
  %23 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %24, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false, !prof !223

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 4
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %lor.lhs.false.cleanup_crit_edge, label %ip_set_attr_netorder.exit, !prof !226

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

ip_set_attr_netorder.exit:                        ; preds = %lor.lhs.false
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %nla_type.i, align 2
  %29 = and i16 %28, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool2.i.not = icmp eq i16 %29, 0
  br i1 %tobool2.i.not, label %ip_set_attr_netorder.exit.cleanup_crit_edge, label %lor.lhs.false8, !prof !223

ip_set_attr_netorder.exit.cleanup_crit_edge:      ; preds = %ip_set_attr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false8:                                   ; preds = %ip_set_attr_netorder.exit
  %arrayidx.i202 = getelementptr ptr, ptr %tb, i32 5
  %30 = ptrtoint ptr %arrayidx.i202 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i202, align 4
  %tobool.not.i203 = icmp eq ptr %31, null
  br i1 %tobool.not.i203, label %lor.lhs.false8.lor.rhs_crit_edge, label %ip_set_optattr_netorder.exit

lor.lhs.false8.lor.rhs_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs

ip_set_optattr_netorder.exit:                     ; preds = %lor.lhs.false8
  %nla_type.i204 = getelementptr inbounds %struct.nlattr, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %nla_type.i204 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nla_type.i204, align 2
  %34 = and i16 %33, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool2.i205.not = icmp eq i16 %34, 0
  br i1 %tobool2.i205.not, label %ip_set_optattr_netorder.exit.cleanup_crit_edge, label %ip_set_optattr_netorder.exit.lor.rhs_crit_edge, !prof !223

ip_set_optattr_netorder.exit.lor.rhs_crit_edge:   ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs

ip_set_optattr_netorder.exit.cleanup_crit_edge:   ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.rhs:                                          ; preds = %ip_set_optattr_netorder.exit.lor.rhs_crit_edge, %lor.lhs.false8.lor.rhs_crit_edge
  %arrayidx.i206 = getelementptr ptr, ptr %tb, i32 8
  %35 = ptrtoint ptr %arrayidx.i206 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i206, align 4
  %tobool.not.i207 = icmp eq ptr %36, null
  br i1 %tobool.not.i207, label %lor.rhs.if.end15_crit_edge, label %ip_set_optattr_netorder.exit211

lor.rhs.if.end15_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

ip_set_optattr_netorder.exit211:                  ; preds = %lor.rhs
  %nla_type.i208 = getelementptr inbounds %struct.nlattr, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %nla_type.i208 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %nla_type.i208, align 2
  %39 = and i16 %38, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool2.i209.not = icmp eq i16 %39, 0
  br i1 %tobool2.i209.not, label %ip_set_optattr_netorder.exit211.cleanup_crit_edge, label %ip_set_optattr_netorder.exit211.if.end15_crit_edge, !prof !223

ip_set_optattr_netorder.exit211.if.end15_crit_edge: ; preds = %ip_set_optattr_netorder.exit211
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

ip_set_optattr_netorder.exit211.cleanup_crit_edge: ; preds = %ip_set_optattr_netorder.exit211
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %ip_set_optattr_netorder.exit211.if.end15_crit_edge, %lor.rhs.if.end15_crit_edge
  %arrayidx16 = getelementptr ptr, ptr %tb, i32 2
  %40 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx16, align 4
  %tobool17.not = icmp eq ptr %41, null
  br i1 %tobool17.not, label %if.end25, label %if.end15.cleanup_crit_edge, !prof !238

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %call27 = call i32 @ip_set_get_ipaddr6(ptr noundef nonnull %24, ptr noundef nonnull %e) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %call31 = call i32 @ip_set_get_extensions(ptr noundef %set, ptr noundef %tb, ptr noundef nonnull %ext) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %arrayidx35 = getelementptr ptr, ptr %tb, i32 3
  %42 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx35, align 4
  %tobool36.not = icmp eq ptr %43, null
  br i1 %tobool36.not, label %if.end34.if.end48_crit_edge, label %if.then37

if.end34.if.end48_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then37:                                        ; preds = %if.end34
  %add.ptr.i.i212 = getelementptr i8, ptr %43, i32 4
  %44 = ptrtoint ptr %add.ptr.i.i212 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %add.ptr.i.i212, align 1
  %46 = add i8 %45, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %47 = icmp slt i8 %46, 0
  br i1 %47, label %if.then37.cleanup_crit_edge, label %if.end44

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end44:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  %cidr47 = getelementptr inbounds %struct.hash_netport6_elem, ptr %e, i32 0, i32 3
  %48 = ptrtoint ptr %cidr47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load = load i8, ptr %cidr47, align 1
  %sub = shl i8 %45, 1
  %bf.shl = add i8 %sub, -2
  %bf.clear = and i8 %bf.load, 1
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %cidr47, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.end44, %if.end34.if.end48_crit_edge
  %cidr50 = getelementptr inbounds %struct.hash_netport6_elem, ptr %e, i32 0, i32 3
  %49 = ptrtoint ptr %cidr50 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load51 = load i8, ptr %cidr50, align 1
  %bf.lshr = lshr i8 %bf.load51, 1
  %narrow = add nuw i8 %bf.lshr, 1
  %idxprom.i.i = zext i8 %narrow to i32
  %arrayidx.i.i = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_netmask_map, i32 0, i32 %idxprom.i.i
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i, align 4
  %52 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %e, align 4
  %and.i = and i32 %53, %51
  store i32 %and.i, ptr %e, align 4
  %arrayidx3.i = getelementptr i32, ptr %arrayidx.i.i, i32 1
  %54 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr inbounds [4 x i32], ptr %e, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx4.i, align 4
  %and5.i = and i32 %57, %55
  store i32 %and5.i, ptr %arrayidx4.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %arrayidx.i.i, i32 2
  %58 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr inbounds [4 x i32], ptr %e, i32 0, i32 2
  %60 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx8.i, align 4
  %and9.i = and i32 %61, %59
  store i32 %and9.i, ptr %arrayidx8.i, align 4
  %arrayidx11.i = getelementptr i32, ptr %arrayidx.i.i, i32 3
  %62 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx11.i, align 4
  %arrayidx12.i = getelementptr inbounds [4 x i32], ptr %e, i32 0, i32 3
  %64 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx12.i, align 4
  %and13.i = and i32 %65, %63
  store i32 %and13.i, ptr %arrayidx12.i, align 4
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i213 = getelementptr i8, ptr %67, i32 4
  %68 = ptrtoint ptr %add.ptr.i.i213 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %add.ptr.i.i213, align 2
  %port56 = getelementptr inbounds %struct.hash_netport6_elem, ptr %e, i32 0, i32 1
  %70 = ptrtoint ptr %port56 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %port56, align 4
  %arrayidx57 = getelementptr ptr, ptr %tb, i32 7
  %71 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx57, align 4
  %tobool58.not = icmp eq ptr %72, null
  br i1 %tobool58.not, label %if.end48.cleanup_crit_edge, label %if.then59

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then59:                                        ; preds = %if.end48
  %add.ptr.i.i214 = getelementptr i8, ptr %72, i32 4
  %73 = ptrtoint ptr %add.ptr.i.i214 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %add.ptr.i.i214, align 1
  %proto = getelementptr inbounds %struct.hash_netport6_elem, ptr %e, i32 0, i32 2
  %75 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %proto, align 2
  %76 = zext i8 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %74, label %if.then79 [
    i8 6, label %if.then59.if.end81_crit_edge
    i8 -124, label %if.then59.if.end81_crit_edge238
    i8 17, label %if.then59.if.end81_crit_edge239
    i8 -120, label %if.then59.if.end81_crit_edge240
    i8 0, label %if.then59.cleanup_crit_edge
    i8 58, label %if.end81.fold.split
  ]

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then59.if.end81_crit_edge240:                  ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then59.if.end81_crit_edge239:                  ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then59.if.end81_crit_edge238:                  ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then59.if.end81_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then79:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %port56 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %port56, align 4
  br label %if.end81

if.end81.fold.split:                              ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.end81:                                         ; preds = %if.end81.fold.split, %if.then79, %if.then59.if.end81_crit_edge, %if.then59.if.end81_crit_edge238, %if.then59.if.end81_crit_edge239, %if.then59.if.end81_crit_edge240
  %retval.0.i226230 = phi i1 [ true, %if.then79 ], [ false, %if.then59.if.end81_crit_edge ], [ false, %if.then59.if.end81_crit_edge238 ], [ false, %if.then59.if.end81_crit_edge239 ], [ false, %if.then59.if.end81_crit_edge240 ], [ true, %if.end81.fold.split ]
  %78 = ptrtoint ptr %arrayidx.i206 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i206, align 4
  %tobool83.not = icmp eq ptr %79, null
  br i1 %tobool83.not, label %if.end81.if.end90_crit_edge, label %if.then84

if.end81.if.end90_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i = getelementptr i8, ptr %79, i32 4
  %80 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i.i.i, align 4
  %and = shl i32 %81, 16
  %82 = and i32 %and, 262144
  %83 = or i32 %82, %flags
  br label %if.end90

if.end90:                                         ; preds = %if.then84, %if.end81.if.end90_crit_edge
  %flags.addr.1 = phi i32 [ %83, %if.then84 ], [ %flags, %if.end81.if.end90_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %adt)
  %cmp91 = icmp eq i32 %adt, 2
  %brmerge = or i1 %cmp91, %retval.0.i226230
  br i1 %brmerge, label %if.end90.if.then98_crit_edge, label %lor.lhs.false95

if.end90.if.then98_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then98

lor.lhs.false95:                                  ; preds = %if.end90
  %84 = ptrtoint ptr %arrayidx.i202 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i202, align 4
  %tobool97.not = icmp eq ptr %85, null
  br i1 %tobool97.not, label %lor.lhs.false95.if.then98_crit_edge, label %if.end109

lor.lhs.false95.if.then98_crit_edge:              ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then98

if.then98:                                        ; preds = %lor.lhs.false95.if.then98_crit_edge, %if.end90.if.then98_crit_edge
  %call99 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef nonnull %ext, i32 noundef %flags.addr.1) #12
  br i1 %cmp91, label %land.lhs.true.i, label %if.then98.cond.false_crit_edge

if.then98.cond.false_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

land.lhs.true.i:                                  ; preds = %if.then98
  %type.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 4
  %86 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %type.i, align 4
  %features.i = getelementptr inbounds %struct.ip_set_type, ptr %87, i32 0, i32 8
  %88 = ptrtoint ptr %features.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %features.i, align 4
  %90 = and i16 %89, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool.not.i215 = icmp eq i16 %90, 0
  %91 = and i32 %flags.addr.1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool3.not.i = icmp eq i32 %91, 0
  %or.cond.i = or i1 %tobool3.not.i, %tobool.not.i215
  br i1 %or.cond.i, label %land.lhs.true.i.cond.false_crit_edge, label %ip_set_enomatch.exit

land.lhs.true.i.cond.false_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

ip_set_enomatch.exit:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp4.i = icmp sgt i32 %call99, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -39, i32 %call99)
  %cmp6.i = icmp eq i32 %call99, -39
  %spec.select.i = or i1 %cmp4.i, %cmp6.i
  br i1 %spec.select.i, label %cond.true, label %ip_set_enomatch.exit.cond.false_crit_edge

ip_set_enomatch.exit.cond.false_crit_edge:        ; preds = %ip_set_enomatch.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

cond.true:                                        ; preds = %ip_set_enomatch.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub102 = sub nsw i32 0, %call99
  br label %cleanup

cond.false:                                       ; preds = %ip_set_enomatch.exit.cond.false_crit_edge, %land.lhs.true.i.cond.false_crit_edge, %if.then98.cond.false_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4103, i32 %call99)
  %cmp.i217 = icmp eq i32 %call99, -4103
  %and.i218 = and i32 %flags.addr.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i218)
  %tobool.i = icmp ne i32 %and.i218, 0
  %92 = and i1 %tobool.i, %cmp.i217
  %spec.select199 = select i1 %92, i32 0, i32 %call99
  br label %cleanup

if.end109:                                        ; preds = %lor.lhs.false95
  %93 = ptrtoint ptr %port56 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %port56, align 4
  %add.ptr.i.i.i219 = getelementptr i8, ptr %85, i32 4
  %95 = ptrtoint ptr %add.ptr.i.i.i219 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %add.ptr.i.i.i219, align 2
  %97 = call i16 @llvm.umin.i16(i16 %94, i16 %96)
  %98 = call i16 @llvm.umax.i16(i16 %94, i16 %96)
  %spec.select201 = zext i16 %98 to i32
  br i1 %retried, label %if.end123, label %if.end109.for.body.lr.ph_crit_edge

if.end109.for.body.lr.ph_crit_edge:               ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

if.end123:                                        ; preds = %if.end109
  %port121 = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 6, i32 1
  %99 = ptrtoint ptr %port121 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %port121, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %100, i16 %98)
  %cmp124.not232 = icmp ugt i16 %100, %98
  br i1 %cmp124.not232, label %if.end123.cleanup_crit_edge, label %if.end123.for.body.lr.ph_crit_edge

if.end123.for.body.lr.ph_crit_edge:               ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end123.for.body.lr.ph_crit_edge, %if.end109.for.body.lr.ph_crit_edge
  %port.1.in237 = phi i16 [ %100, %if.end123.for.body.lr.ph_crit_edge ], [ %97, %if.end109.for.body.lr.ph_crit_edge ]
  %port.1 = zext i16 %port.1.in237 to i32
  %and.i221 = and i32 %flags.addr.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i221)
  %tobool.i222 = icmp ne i32 %and.i221, 0
  br label %for.body

for.body:                                         ; preds = %if.end132.for.body_crit_edge, %for.body.lr.ph
  %port.2233 = phi i32 [ %port.1, %for.body.lr.ph ], [ %inc, %if.end132.for.body_crit_edge ]
  %conv126 = trunc i32 %port.2233 to i16
  %101 = ptrtoint ptr %port56 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv126, ptr %port56, align 4
  %call128 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef nonnull %ext, i32 noundef %flags.addr.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4103, i32 %call128)
  %cmp.i220 = icmp eq i32 %call128, -4103
  %102 = and i1 %tobool.i222, %cmp.i220
  %or.cond = select i1 %tobool129.not, i1 true, i1 %102
  br i1 %or.cond, label %if.end132, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end132:                                        ; preds = %for.body
  %inc = add nuw nsw i32 %port.2233, 1
  %exitcond = icmp eq i32 %port.2233, %spec.select201
  br i1 %exitcond, label %if.end132.cleanup_crit_edge, label %if.end132.for.body_crit_edge

if.end132.for.body_crit_edge:                     ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end132.cleanup_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end132.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end123.cleanup_crit_edge, %cond.false, %cond.true, %if.then59.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %ip_set_optattr_netorder.exit211.cleanup_crit_edge, %ip_set_optattr_netorder.exit.cleanup_crit_edge, %ip_set_attr_netorder.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -4097, %ip_set_optattr_netorder.exit211.cleanup_crit_edge ], [ -4356, %if.end15.cleanup_crit_edge ], [ %call27, %if.end25.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ -4104, %if.then37.cleanup_crit_edge ], [ -4355, %if.end48.cleanup_crit_edge ], [ %sub102, %cond.true ], [ %spec.select199, %cond.false ], [ -4097, %ip_set_optattr_netorder.exit.cleanup_crit_edge ], [ -4097, %ip_set_attr_netorder.exit.cleanup_crit_edge ], [ -4097, %if.end.cleanup_crit_edge ], [ -4097, %lor.lhs.false.cleanup_crit_edge ], [ -4354, %if.then59.cleanup_crit_edge ], [ 0, %if.end123.cleanup_crit_edge ], [ %call128, %for.body.cleanup_crit_edge ], [ 0, %if.end132.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ext) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %e) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netport6_add(ptr noundef %set, ptr nocapture noundef readonly %value, ptr noundef %ext, ptr nocapture noundef readonly %mext, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 750, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %call3 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.jhash2.exit_crit_edge

rcu_read_lock_bh.exit.jhash2.exit_crit_edge:      ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %jhash2.exit

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.jhash2.exit_crit_edge, label %land.lhs.true7

land.lhs.true.jhash2.exit_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %jhash2.exit

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b604 = load i1, ptr @hash_netport6_add.__warned, align 1
  br i1 %.b604, label %land.lhs.true7.jhash2.exit_crit_edge, label %if.then

land.lhs.true7.jhash2.exit_crit_edge:             ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %jhash2.exit

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport6_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 855, ptr noundef nonnull @.str.8) #12
  br label %jhash2.exit

jhash2.exit:                                      ; preds = %if.then, %land.lhs.true7.jhash2.exit_crit_edge, %land.lhs.true.jhash2.exit_crit_edge, %rcu_read_lock_bh.exit.jhash2.exit_crit_edge
  %initval = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %initval, align 4
  %add1.i = add i32 %5, -559038717
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  %add2.i = add i32 %7, %add1.i
  %arrayidx3.i = getelementptr i32, ptr %value, i32 1
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.i, align 4
  %add4.i = add i32 %9, %add1.i
  %arrayidx5.i = getelementptr i32, ptr %value, i32 2
  %10 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5.i, align 4
  %add6.i = add i32 %11, %add1.i
  %sub.i = sub i32 %add2.i, %add6.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #12
  %xor.i = xor i32 %sub.i, %or.i.i
  %add7.i = add i32 %add6.i, %add4.i
  %sub8.i = sub i32 %add4.i, %xor.i
  %or.i135.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #12
  %xor10.i = xor i32 %sub8.i, %or.i135.i
  %add11.i = add i32 %xor.i, %add7.i
  %sub12.i = sub i32 %add7.i, %xor10.i
  %or.i136.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i, i32 %xor10.i, i32 8) #12
  %xor14.i = xor i32 %sub12.i, %or.i136.i
  %add15.i = add i32 %xor10.i, %add11.i
  %sub16.i = sub i32 %add11.i, %xor14.i
  %or.i137.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 16) #12
  %xor18.i = xor i32 %sub16.i, %or.i137.i
  %add19.i = add i32 %xor14.i, %add15.i
  %sub20.i = sub i32 %add15.i, %xor18.i
  %or.i138.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 19) #12
  %xor22.i = xor i32 %sub20.i, %or.i138.i
  %add23.i = add i32 %xor18.i, %add19.i
  %sub24.i = sub i32 %add19.i, %xor22.i
  %or.i139.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i, i32 %xor22.i, i32 4) #12
  %xor26.i = xor i32 %sub24.i, %or.i139.i
  %add27.i = add i32 %xor22.i, %add23.i
  %add.ptr.i = getelementptr i32, ptr %value, i32 3
  %arrayidx32.i = getelementptr i32, ptr %value, i32 4
  %12 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %13, %add27.i
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 4
  %add36.i = add i32 %15, %add23.i
  %xor37.i = xor i32 %xor26.i, %add33.i
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #12
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %add36.i, %sub39.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #12
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #12
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #12
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #12
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #12
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #12
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  %htable_bits = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %htable_bits, align 4
  %conv = zext i8 %17 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %and17 = and i32 %sub57.i, %sub
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %17)
  %cmp = icmp ult i8 %17, 10
  %sub23 = add nsw i32 %conv, -10
  %notmask733 = shl nsw i32 -1, %sub23
  %shl24.op = xor i32 %notmask733, -1
  %18 = select i1 %cmp, i32 0, i32 %shl24.op
  %rem = and i32 %18, %and17
  %uref = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !227
  %hregion = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hregion, align 4
  %elements25 = getelementptr %struct.ip_set_region, ptr %21, i32 %rem, i32 2
  %22 = ptrtoint ptr %elements25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %elements25, align 4
  %maxelem26 = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %maxelem26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %maxelem26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp27.not = icmp ult i32 %23, %25
  br i1 %cmp27.not, label %jhash2.exit.if.end62_crit_edge, label %if.then29

jhash2.exit.if.end62_crit_edge:                   ; preds = %jhash2.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then29:                                        ; preds = %jhash2.exit
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %26 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %extensions, align 2
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool32.not = icmp eq i8 %28, 0
  br i1 %tobool32.not, label %if.then29.if.end34_crit_edge, label %if.then33

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then33:                                        ; preds = %if.then29
  %call.i611 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i611, label %if.then33.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i614

if.then33.rcu_read_unlock_bh.exit_crit_edge:      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i614:                               ; preds = %if.then33
  %call1.i612 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i612)
  %tobool.not.i613 = icmp eq i32 %call1.i612, 0
  br i1 %tobool.not.i613, label %land.lhs.true.i614.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i616

land.lhs.true.i614.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i614
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i616:                              ; preds = %land.lhs.true.i614
  %.b4.i615 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i615, label %land.lhs.true2.i616.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i617

land.lhs.true2.i616.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i616
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i617:                                     ; preds = %land.lhs.true2.i616
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i617, %land.lhs.true2.i616.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i614.rcu_read_unlock_bh.exit_crit_edge, %if.then33.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  tail call fastcc void @hash_netport6_gc_do(ptr noundef %set, ptr noundef %1, ptr noundef %3, i32 noundef %rem)
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i618 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i618, label %rcu_read_unlock_bh.exit.if.end34_crit_edge, label %land.lhs.true.i621

rcu_read_unlock_bh.exit.if.end34_crit_edge:       ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.lhs.true.i621:                               ; preds = %rcu_read_unlock_bh.exit
  %call1.i619 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i619)
  %tobool.not.i620 = icmp eq i32 %call1.i619, 0
  br i1 %tobool.not.i620, label %land.lhs.true.i621.if.end34_crit_edge, label %land.lhs.true2.i623

land.lhs.true.i621.if.end34_crit_edge:            ; preds = %land.lhs.true.i621
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.lhs.true2.i623:                              ; preds = %land.lhs.true.i621
  %.b4.i622 = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i622, label %land.lhs.true2.i623.if.end34_crit_edge, label %if.then.i624

land.lhs.true2.i623.if.end34_crit_edge:           ; preds = %land.lhs.true2.i623
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then.i624:                                     ; preds = %land.lhs.true2.i623
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 750, ptr noundef nonnull @.str.14) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then.i624, %land.lhs.true2.i623.if.end34_crit_edge, %land.lhs.true.i621.if.end34_crit_edge, %rcu_read_unlock_bh.exit.if.end34_crit_edge, %if.then29.if.end34_crit_edge
  %maxelem35 = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %maxelem35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %maxelem35, align 4
  %31 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %htable_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %32)
  %cmp38 = icmp ult i8 %32, 10
  %conv37 = zext i8 %32 to i32
  %sub44 = add nsw i32 %conv37, -10
  %shl45 = shl nuw i32 1, %sub44
  %cond47 = select i1 %cmp38, i32 1, i32 %shl45
  %33 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hregion, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end34
  %e.0741 = phi i32 [ 0, %if.end34 ], [ %inc, %for.body.for.body_crit_edge ]
  %elements.0740 = phi i32 [ 0, %if.end34 ], [ %add, %for.body.for.body_crit_edge ]
  %elements52 = getelementptr %struct.ip_set_region, ptr %34, i32 %e.0741, i32 2
  %35 = ptrtoint ptr %elements52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %elements52, align 4
  %add = add i32 %36, %elements.0740
  %inc = add nuw i32 %e.0741, 1
  %exitcond.not = icmp eq i32 %inc, %cond47
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %30)
  %cmp53.not = icmp ult i32 %add, %30
  br i1 %cmp53.not, label %for.end.if.end62_crit_edge, label %land.lhs.true55

for.end.if.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

land.lhs.true55:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %flags56 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 9
  %37 = ptrtoint ptr %flags56 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %flags56, align 1
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool59.not = icmp ne i8 %39, 0
  br label %if.end62

if.end62:                                         ; preds = %land.lhs.true55, %for.end.if.end62_crit_edge, %jhash2.exit.if.end62_crit_edge
  %forceadd.1.off0 = phi i1 [ false, %jhash2.exit.if.end62_crit_edge ], [ false, %for.end.if.end62_crit_edge ], [ %tobool59.not, %land.lhs.true55 ]
  %elements.1 = phi i32 [ %23, %jhash2.exit.if.end62_crit_edge ], [ %add, %for.end.if.end62_crit_edge ], [ %add, %land.lhs.true55 ]
  %maxelem.0 = phi i32 [ %25, %jhash2.exit.if.end62_crit_edge ], [ %30, %for.end.if.end62_crit_edge ], [ %30, %land.lhs.true55 ]
  %call.i626 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i626, label %if.end62.rcu_read_unlock_bh.exit633_crit_edge, label %land.lhs.true.i629

if.end62.rcu_read_unlock_bh.exit633_crit_edge:    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit633

land.lhs.true.i629:                               ; preds = %if.end62
  %call1.i627 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i627)
  %tobool.not.i628 = icmp eq i32 %call1.i627, 0
  br i1 %tobool.not.i628, label %land.lhs.true.i629.rcu_read_unlock_bh.exit633_crit_edge, label %land.lhs.true2.i631

land.lhs.true.i629.rcu_read_unlock_bh.exit633_crit_edge: ; preds = %land.lhs.true.i629
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit633

land.lhs.true2.i631:                              ; preds = %land.lhs.true.i629
  %.b4.i630 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i630, label %land.lhs.true2.i631.rcu_read_unlock_bh.exit633_crit_edge, label %if.then.i632

land.lhs.true2.i631.rcu_read_unlock_bh.exit633_crit_edge: ; preds = %land.lhs.true2.i631
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit633

if.then.i632:                                     ; preds = %land.lhs.true2.i631
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit633

rcu_read_unlock_bh.exit633:                       ; preds = %if.then.i632, %land.lhs.true2.i631.rcu_read_unlock_bh.exit633_crit_edge, %land.lhs.true.i629.rcu_read_unlock_bh.exit633_crit_edge, %if.end62.rcu_read_unlock_bh.exit633_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  %40 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hregion, align 4
  %arrayidx64 = getelementptr %struct.ip_set_region, ptr %41, i32 %rem
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx64) #12
  %arrayidx69 = getelementptr %struct.htable, ptr %3, i32 0, i32 5, i32 %and17
  %42 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %arrayidx69, align 4
  %call71 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %land.lhs.true73, label %rcu_read_unlock_bh.exit633.do.end81_crit_edge

rcu_read_unlock_bh.exit633.do.end81_crit_edge:    ; preds = %rcu_read_unlock_bh.exit633
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81

land.lhs.true73:                                  ; preds = %rcu_read_unlock_bh.exit633
  %call74 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true73.do.end81_crit_edge, label %land.lhs.true76

land.lhs.true73.do.end81_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81

land.lhs.true76:                                  ; preds = %land.lhs.true73
  %.b591603 = load i1, ptr @hash_netport6_add.__warned.47, align 1
  br i1 %.b591603, label %land.lhs.true76.do.end81_crit_edge, label %if.then78

land.lhs.true76.do.end81_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81

if.then78:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport6_add.__warned.47, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 878, ptr noundef nonnull @.str.8) #12
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %land.lhs.true76.do.end81_crit_edge, %land.lhs.true73.do.end81_crit_edge, %rcu_read_unlock_bh.exit633.do.end81_crit_edge
  %tobool83.not = icmp eq ptr %43, null
  br i1 %tobool83.not, label %if.then84, label %for.cond103.preheader

for.cond103.preheader:                            ; preds = %do.end81
  %pos = getelementptr inbounds %struct.hbucket, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %pos, align 1
  %conv104 = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp105742.not = icmp eq i8 %45, 0
  br i1 %cmp105742.not, label %for.end154.thread, label %for.body107.lr.ph

for.body107.lr.ph:                                ; preds = %for.cond103.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %43, i32 0, i32 1
  %value116 = getelementptr inbounds %struct.hbucket, ptr %43, i32 0, i32 5
  %dsize118 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %port4.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %value, i32 0, i32 1
  %proto9.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %value, i32 0, i32 2
  %cidr14.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %value, i32 0, i32 3
  %extensions137 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx143 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  br label %for.body107

if.then84:                                        ; preds = %do.end81
  %forceadd.1.off0.not = xor i1 %forceadd.1.off0, true
  call void @__sanitizer_cov_trace_cmp4(i32 %elements.1, i32 %maxelem.0)
  %cmp87.not = icmp ult i32 %elements.1, %maxelem.0
  %or.cond = select i1 %forceadd.1.off0.not, i1 %cmp87.not, i1 false
  br i1 %or.cond, label %if.end90, label %if.then84.set_full_crit_edge

if.then84.set_full_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_full

if.end90:                                         ; preds = %if.then84
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %46 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dsize, align 4
  %mul = shl i32 %47, 1
  %add91 = add i32 %mul, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add91, i32 noundef 2848) #16
  %tobool93.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool93.not, label %if.end90.unlock_crit_edge, label %if.end90.copy_elem.sink.split_crit_edge

if.end90.copy_elem.sink.split_crit_edge:          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_elem.sink.split

if.end90.unlock_crit_edge:                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

for.body107:                                      ; preds = %for.inc152.for.body107_crit_edge, %for.body107.lr.ph
  %i.0746 = phi i32 [ 0, %for.body107.lr.ph ], [ %inc153, %for.inc152.for.body107_crit_edge ]
  %j.0745 = phi i32 [ -1, %for.body107.lr.ph ], [ %j.1, %for.inc152.for.body107_crit_edge ]
  %reuse.0.off0744 = phi i1 [ false, %for.body107.lr.ph ], [ %reuse.1.off0, %for.inc152.for.body107_crit_edge ]
  %deleted.0.off0743 = phi i1 [ false, %for.body107.lr.ph ], [ %deleted.1.off0, %for.inc152.for.body107_crit_edge ]
  %div3.i = lshr i32 %i.0746, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0746, 31
  %50 = shl nuw i32 1, %and.i
  %51 = and i32 %49, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool109.not = icmp eq i32 %51, 0
  br i1 %tobool109.not, label %if.then110, label %if.end115

if.then110:                                       ; preds = %for.body107
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.0745)
  %cmp111 = icmp eq i32 %j.0745, -1
  br i1 %cmp111, label %if.then113, label %if.then110.for.inc152_crit_edge

if.then110.for.inc152_crit_edge:                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc152

if.then113:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc152

if.end115:                                        ; preds = %for.body107
  %52 = ptrtoint ptr %dsize118 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dsize118, align 4
  %mul119 = mul i32 %53, %i.0746
  %add.ptr = getelementptr i8, ptr %value116, i32 %mul119
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr, align 4
  %56 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %value, align 4
  %xor.i.i = xor i32 %57, %55
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 1
  %58 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx4.i.i, align 4
  %60 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx3.i, align 4
  %xor7.i.i = xor i32 %61, %59
  %or.i.i636 = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx9.i.i, align 4
  %64 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx5.i, align 4
  %xor12.i.i = xor i32 %65, %63
  %or13.i.i = or i32 %or.i.i636, %xor12.i.i
  %arrayidx15.i.i = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 3
  %66 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx15.i.i, align 4
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i, align 4
  %xor18.i.i = xor i32 %69, %67
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i637 = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i637, label %land.lhs.true.i639, label %if.end115.if.end136_crit_edge

if.end115.if.end136_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

land.lhs.true.i639:                               ; preds = %if.end115
  %port.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %add.ptr, i32 0, i32 1
  %70 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %port.i, align 4
  %72 = ptrtoint ptr %port4.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %port4.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %71, i16 %73)
  %cmp.i638 = icmp eq i16 %71, %73
  br i1 %cmp.i638, label %land.lhs.true7.i, label %land.lhs.true.i639.if.end136_crit_edge

land.lhs.true.i639.if.end136_crit_edge:           ; preds = %land.lhs.true.i639
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i639
  %proto.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %add.ptr, i32 0, i32 2
  %74 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %proto.i, align 2
  %76 = ptrtoint ptr %proto9.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %proto9.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %75, i8 %77)
  %cmp11.i = icmp eq i8 %75, %77
  br i1 %cmp11.i, label %hash_netport6_data_equal.exit, label %land.lhs.true7.i.if.end136_crit_edge

land.lhs.true7.i.if.end136_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

hash_netport6_data_equal.exit:                    ; preds = %land.lhs.true7.i
  %cidr.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %add.ptr, i32 0, i32 3
  %78 = ptrtoint ptr %cidr.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load.i = load i8, ptr %cidr.i, align 1
  %79 = ptrtoint ptr %cidr14.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load15.i = load i8, ptr %cidr14.i, align 1
  %cmp18.unshifted.i = xor i8 %bf.load15.i, %bf.load.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %cmp18.unshifted.i)
  %cmp18.i = icmp ult i8 %cmp18.unshifted.i, 2
  br i1 %cmp18.i, label %if.then121, label %hash_netport6_data_equal.exit.if.end136_crit_edge

hash_netport6_data_equal.exit.if.end136_crit_edge: ; preds = %hash_netport6_data_equal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

if.then121:                                       ; preds = %hash_netport6_data_equal.exit
  br i1 %tobool.not, label %lor.lhs.false124, label %if.then121.overwrite_extensions_crit_edge

if.then121.overwrite_extensions_crit_edge:        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #14
  br label %overwrite_extensions

lor.lhs.false124:                                 ; preds = %if.then121
  %80 = ptrtoint ptr %extensions137 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %extensions137, align 2
  %82 = and i8 %81, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool128.not = icmp eq i8 %82, 0
  br i1 %tobool128.not, label %lor.lhs.false124.unlock_crit_edge, label %land.lhs.true129

lor.lhs.false124.unlock_crit_edge:                ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

land.lhs.true129:                                 ; preds = %lor.lhs.false124
  %83 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx143, align 4
  %add.ptr131 = getelementptr i8, ptr %add.ptr, i32 %84
  %85 = ptrtoint ptr %add.ptr131 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp.not.i = icmp eq i32 %86, 0
  br i1 %cmp.not.i, label %land.lhs.true129.unlock_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true129.unlock_crit_edge:                ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %sub.i640 = sub i32 %86, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i640)
  %cmp1.i = icmp slt i32 %sub.i640, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge, label %ip_set_timeout_expired.exit.unlock_crit_edge

ip_set_timeout_expired.exit.unlock_crit_edge:     ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

ip_set_timeout_expired.exit.overwrite_extensions_crit_edge: ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %overwrite_extensions

if.end136:                                        ; preds = %hash_netport6_data_equal.exit.if.end136_crit_edge, %land.lhs.true7.i.if.end136_crit_edge, %land.lhs.true.i639.if.end136_crit_edge, %if.end115.if.end136_crit_edge
  %88 = ptrtoint ptr %extensions137 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %extensions137, align 2
  %90 = and i8 %89, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool140.not = icmp eq i8 %90, 0
  br i1 %tobool140.not, label %if.end136.for.inc152_crit_edge, label %land.lhs.true141

if.end136.for.inc152_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc152

land.lhs.true141:                                 ; preds = %if.end136
  %91 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx143, align 4
  %add.ptr144 = getelementptr i8, ptr %add.ptr, i32 %92
  %93 = ptrtoint ptr %add.ptr144 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp.not.i642 = icmp eq i32 %94, 0
  br i1 %cmp.not.i642, label %land.lhs.true141.ip_set_timeout_expired.exit646_crit_edge, label %land.rhs.i645

land.lhs.true141.ip_set_timeout_expired.exit646_crit_edge: ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_timeout_expired.exit646

land.rhs.i645:                                    ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %sub.i643 = sub i32 %94, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i643)
  %cmp1.i644 = icmp slt i32 %sub.i643, 0
  br label %ip_set_timeout_expired.exit646

ip_set_timeout_expired.exit646:                   ; preds = %land.rhs.i645, %land.lhs.true141.ip_set_timeout_expired.exit646_crit_edge
  %96 = phi i1 [ false, %land.lhs.true141.ip_set_timeout_expired.exit646_crit_edge ], [ %cmp1.i644, %land.rhs.i645 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.0745)
  %cmp148 = icmp eq i32 %j.0745, -1
  %or.cond605 = select i1 %96, i1 %cmp148, i1 false
  %spec.select606 = select i1 %or.cond605, i1 true, i1 %reuse.0.off0744
  %spec.select607 = select i1 %or.cond605, i32 %i.0746, i32 %j.0745
  br label %for.inc152

for.inc152:                                       ; preds = %ip_set_timeout_expired.exit646, %if.end136.for.inc152_crit_edge, %if.then113, %if.then110.for.inc152_crit_edge
  %deleted.1.off0 = phi i1 [ %deleted.0.off0743, %if.end136.for.inc152_crit_edge ], [ true, %if.then113 ], [ %deleted.0.off0743, %if.then110.for.inc152_crit_edge ], [ %deleted.0.off0743, %ip_set_timeout_expired.exit646 ]
  %reuse.1.off0 = phi i1 [ %reuse.0.off0744, %if.end136.for.inc152_crit_edge ], [ true, %if.then113 ], [ %reuse.0.off0744, %if.then110.for.inc152_crit_edge ], [ %spec.select606, %ip_set_timeout_expired.exit646 ]
  %j.1 = phi i32 [ %j.0745, %if.end136.for.inc152_crit_edge ], [ %i.0746, %if.then113 ], [ %j.0745, %if.then110.for.inc152_crit_edge ], [ %spec.select607, %ip_set_timeout_expired.exit646 ]
  %inc153 = add nuw nsw i32 %i.0746, 1
  %exitcond754.not = icmp eq i32 %inc153, %conv104
  br i1 %exitcond754.not, label %for.end154, label %for.inc152.for.body107_crit_edge

for.inc152.for.body107_crit_edge:                 ; preds = %for.inc152
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body107

for.end154:                                       ; preds = %for.inc152
  %brmerge = select i1 %reuse.1.off0, i1 true, i1 %forceadd.1.off0
  br i1 %brmerge, label %if.then160, label %for.end154.if.end188_crit_edge

for.end154.if.end188_crit_edge:                   ; preds = %for.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

for.end154.thread:                                ; preds = %for.cond103.preheader
  br i1 %forceadd.1.off0, label %if.then160.thread, label %for.end154.thread.if.end188_crit_edge

for.end154.thread.if.end188_crit_edge:            ; preds = %for.end154.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

if.then160.thread:                                ; preds = %for.end154.thread
  call void @__sanitizer_cov_trace_pc() #14
  %value165765 = getelementptr inbounds %struct.hbucket, ptr %43, i32 0, i32 5
  br label %for.body175

if.then160:                                       ; preds = %for.end154
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.1)
  %cmp161 = icmp eq i32 %j.1, -1
  %spec.store.select = select i1 %cmp161, i32 0, i32 %j.1
  %value165 = getelementptr inbounds %struct.hbucket, ptr %43, i32 0, i32 5
  %dsize167 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %97 = ptrtoint ptr %dsize167 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dsize167, align 4
  %mul168 = mul i32 %98, %spec.store.select
  %add.ptr169 = getelementptr i8, ptr %value165, i32 %mul168
  br i1 %deleted.1.off0, label %if.then160.copy_data_crit_edge, label %if.then160.for.body175_crit_edge

if.then160.for.body175_crit_edge:                 ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body175

if.then160.copy_data_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_data

for.body175:                                      ; preds = %if.then160.for.body175_crit_edge, %if.then160.thread
  %add.ptr169770 = phi ptr [ %value165765, %if.then160.thread ], [ %add.ptr169, %if.then160.for.body175_crit_edge ]
  %spec.store.select769 = phi i32 [ 0, %if.then160.thread ], [ %spec.store.select, %if.then160.for.body175_crit_edge ]
  %cidr = getelementptr inbounds %struct.hash_netport6_elem, ptr %add.ptr169770, i32 0, i32 3
  %99 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load = load i8, ptr %cidr, align 1
  %bf.lshr = lshr i8 %bf.load, 1
  %narrow602 = add nuw i8 %bf.lshr, 2
  %lock.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc57.i.for.body.i_crit_edge, %for.body175
  %indvars.iv.i = phi i32 [ 0, %for.body175 ], [ %indvars.iv.next.i, %for.inc57.i.for.body.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.hash_netport6, ptr %1, i32 0, i32 7, i32 %indvars.iv.i, i32 1, i32 0
  %100 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %101, i8 %narrow602)
  %cmp7.not.i = icmp eq i8 %101, %narrow602
  br i1 %cmp7.not.i, label %if.end.i, label %for.inc57.i

if.end.i:                                         ; preds = %for.body.i
  %sub.i647 = zext i8 %bf.lshr to i32
  %arrayidx11.i = getelementptr %struct.hash_netport6, ptr %1, i32 0, i32 7, i32 %sub.i647
  %102 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx11.i, align 4
  %dec.i = add i32 %103, -1
  store i32 %dec.i, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp22.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp22.not.i, label %for.cond26.preheader.i, label %if.end.i.hash_netport6_del_cidr.exit_crit_edge

if.end.i.hash_netport6_del_cidr.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hash_netport6_del_cidr.exit

for.cond26.preheader.i:                           ; preds = %if.end.i
  %104 = trunc i32 %indvars.iv.i to i8
  %conv2786.i = and i32 %indvars.iv.i, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %104)
  %cmp2987.i = icmp ult i8 %104, 127
  br i1 %cmp2987.i, label %for.cond26.preheader.i.land.rhs.i649_crit_edge, label %for.cond26.preheader.i.for.end.i_crit_edge

for.cond26.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.cond26.preheader.i.land.rhs.i649_crit_edge:   ; preds = %for.cond26.preheader.i
  br label %land.rhs.i649

land.rhs.i649:                                    ; preds = %for.body38.i.land.rhs.i649_crit_edge, %for.cond26.preheader.i.land.rhs.i649_crit_edge
  %indvars.iv92.i = phi i32 [ %add.i, %for.body38.i.land.rhs.i649_crit_edge ], [ %indvars.iv.i, %for.cond26.preheader.i.land.rhs.i649_crit_edge ]
  %arrayidx36.i = getelementptr %struct.hash_netport6, ptr %1, i32 0, i32 7, i32 %indvars.iv92.i, i32 1, i32 0
  %105 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i648 = icmp eq i8 %106, 0
  br i1 %tobool.not.i648, label %land.rhs.i649.for.end.i_crit_edge, label %for.body38.i

land.rhs.i649.for.end.i_crit_edge:                ; preds = %land.rhs.i649
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body38.i:                                     ; preds = %land.rhs.i649
  %add.i = add nuw nsw i32 %indvars.iv92.i, 1
  %arrayidx44.i = getelementptr %struct.hash_netport6, ptr %1, i32 0, i32 7, i32 %add.i, i32 1, i32 0
  %107 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx44.i, align 1
  %109 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %arrayidx36.i, align 1
  %exitcond94.not.i = icmp eq i32 %add.i, 127
  br i1 %exitcond94.not.i, label %for.body38.i.for.end.i_crit_edge, label %for.body38.i.land.rhs.i649_crit_edge

for.body38.i.land.rhs.i649_crit_edge:             ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i649

for.body38.i.for.end.i_crit_edge:                 ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body38.i.for.end.i_crit_edge, %land.rhs.i649.for.end.i_crit_edge, %for.cond26.preheader.i.for.end.i_crit_edge
  %conv27.lcssa.i = phi i32 [ %conv2786.i, %for.cond26.preheader.i.for.end.i_crit_edge ], [ %indvars.iv92.i, %land.rhs.i649.for.end.i_crit_edge ], [ 127, %for.body38.i.for.end.i_crit_edge ]
  %arrayidx56.i = getelementptr %struct.hash_netport6, ptr %1, i32 0, i32 7, i32 %conv27.lcssa.i, i32 1, i32 0
  %110 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %arrayidx56.i, align 1
  br label %hash_netport6_del_cidr.exit

for.inc57.i:                                      ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 128
  br i1 %exitcond.not.i, label %for.inc57.i.hash_netport6_del_cidr.exit_crit_edge, label %for.inc57.i.for.body.i_crit_edge

for.inc57.i.for.body.i_crit_edge:                 ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc57.i.hash_netport6_del_cidr.exit_crit_edge: ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hash_netport6_del_cidr.exit

hash_netport6_del_cidr.exit:                      ; preds = %for.inc57.i.hash_netport6_del_cidr.exit_crit_edge, %for.end.i, %if.end.i.hash_netport6_del_cidr.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  %extensions.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %111 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %extensions.i, align 2
  %113 = and i8 %112, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i650 = icmp eq i8 %113, 0
  br i1 %tobool.not.i650, label %hash_netport6_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge, label %if.then.i653

hash_netport6_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge: ; preds = %hash_netport6_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_ext_destroy.exit

if.then.i653:                                     ; preds = %hash_netport6_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i651 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %114 = ptrtoint ptr %arrayidx.i651 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i651, align 4
  %add.ptr.i652 = getelementptr i8, ptr %add.ptr169770, i32 %115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %116 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %116(ptr noundef %set, ptr noundef %add.ptr.i652) #12
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i653, %hash_netport6_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge
  %117 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hregion, align 4
  %elements186 = getelementptr %struct.ip_set_region, ptr %118, i32 %rem, i32 2
  %119 = ptrtoint ptr %elements186 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %elements186, align 4
  %dec = add i32 %120, -1
  store i32 %dec, ptr %elements186, align 4
  br label %copy_data

if.end188:                                        ; preds = %for.end154.thread.if.end188_crit_edge, %for.end154.if.end188_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %elements.1, i32 %maxelem.0)
  %cmp189.not = icmp ult i32 %elements.1, %maxelem.0
  br i1 %cmp189.not, label %if.end192, label %if.end188.set_full_crit_edge

if.end188.set_full_crit_edge:                     ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_full

if.end192:                                        ; preds = %if.end188
  %size195 = getelementptr inbounds %struct.hbucket, ptr %43, i32 0, i32 2
  %121 = ptrtoint ptr %size195 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %size195, align 8
  %conv196 = zext i8 %122 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %122)
  %cmp197.not = icmp ult i8 %45, %122
  br i1 %cmp197.not, label %if.end192.copy_elem_crit_edge, label %if.then199

if.end192.copy_elem_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_elem

if.then199:                                       ; preds = %if.end192
  %bucketsize = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 4
  %123 = ptrtoint ptr %bucketsize to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %bucketsize, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %122, i8 %124)
  %cmp203.not = icmp ult i8 %122, %124
  br i1 %cmp203.not, label %if.end206, label %if.then205

if.then205:                                       ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #14
  %port.i655 = getelementptr inbounds %struct.hash_netport6_elem, ptr %value, i32 0, i32 1
  %125 = ptrtoint ptr %port.i655 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %port.i655, align 4
  %port1.i = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 6, i32 1
  %127 = ptrtoint ptr %port1.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %port1.i, align 4
  br label %resize

if.end206:                                        ; preds = %if.then199
  %dsize210 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %128 = ptrtoint ptr %dsize210 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %dsize210, align 4
  %add209 = add nuw nsw i32 %conv196, 2
  %mul211 = mul i32 %129, %add209
  %add212 = add i32 %mul211, 24
  %call9.i.i684 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add212, i32 noundef 2848) #16
  %tobool214.not = icmp eq ptr %call9.i.i684, null
  br i1 %tobool214.not, label %if.end206.unlock_crit_edge, label %if.end216

if.end206.unlock_crit_edge:                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end216:                                        ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #14
  %130 = ptrtoint ptr %size195 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %size195, align 8
  %conv218 = zext i8 %131 to i32
  %132 = ptrtoint ptr %dsize210 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %dsize210, align 4
  %mul220 = mul i32 %133, %conv218
  %add221 = add i32 %mul220, 24
  %134 = call ptr @memcpy(ptr %call9.i.i684, ptr %43, i32 %add221)
  %135 = load i8, ptr %size195, align 8
  %add224 = add i8 %135, 2
  br label %copy_elem.sink.split

copy_elem.sink.split:                             ; preds = %if.end216, %if.end90.copy_elem.sink.split_crit_edge
  %retval.1.i.i728.sink = phi ptr [ %call9.i.i684, %if.end216 ], [ %call9.i.i, %if.end90.copy_elem.sink.split_crit_edge ]
  %.sink = phi i8 [ %add224, %if.end216 ], [ 2, %if.end90.copy_elem.sink.split_crit_edge ]
  %dsize.sink = phi ptr [ %dsize210, %if.end216 ], [ %dsize, %if.end90.copy_elem.sink.split_crit_edge ]
  %old.0.ph = phi ptr [ %43, %if.end216 ], [ null, %if.end90.copy_elem.sink.split_crit_edge ]
  %size = getelementptr inbounds %struct.hbucket, ptr %retval.1.i.i728.sink, i32 0, i32 2
  %136 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %.sink, ptr %size, align 16
  %137 = ptrtoint ptr %dsize.sink to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %dsize.sink, align 4
  %mul97 = shl i32 %138, 1
  %add98 = add i32 %mul97, 24
  %139 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %140, i32 %rem, i32 1
  %141 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %ext_size, align 4
  %add233 = add i32 %add98, %142
  store i32 %add233, ptr %ext_size, align 4
  br label %copy_elem

copy_elem:                                        ; preds = %copy_elem.sink.split, %if.end192.copy_elem_crit_edge
  %old.0 = phi ptr [ inttoptr (i32 -2 to ptr), %if.end192.copy_elem_crit_edge ], [ %old.0.ph, %copy_elem.sink.split ]
  %n.0 = phi ptr [ %43, %if.end192.copy_elem_crit_edge ], [ %retval.1.i.i728.sink, %copy_elem.sink.split ]
  %pos235 = getelementptr inbounds %struct.hbucket, ptr %n.0, i32 0, i32 3
  %143 = ptrtoint ptr %pos235 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %pos235, align 1
  %inc236 = add i8 %144, 1
  store i8 %inc236, ptr %pos235, align 1
  %conv237 = zext i8 %144 to i32
  %value238 = getelementptr inbounds %struct.hbucket, ptr %n.0, i32 0, i32 5
  %dsize240 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %145 = ptrtoint ptr %dsize240 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dsize240, align 4
  %mul241 = mul i32 %146, %conv237
  %add.ptr242 = getelementptr i8, ptr %value238, i32 %mul241
  br label %copy_data

copy_data:                                        ; preds = %copy_elem, %ip_set_ext_destroy.exit, %if.then160.copy_data_crit_edge
  %j.2 = phi i32 [ %spec.store.select, %if.then160.copy_data_crit_edge ], [ %spec.store.select769, %ip_set_ext_destroy.exit ], [ %conv237, %copy_elem ]
  %old.1 = phi ptr [ inttoptr (i32 -2 to ptr), %if.then160.copy_data_crit_edge ], [ inttoptr (i32 -2 to ptr), %ip_set_ext_destroy.exit ], [ %old.0, %copy_elem ]
  %n.1 = phi ptr [ %43, %if.then160.copy_data_crit_edge ], [ %43, %ip_set_ext_destroy.exit ], [ %n.0, %copy_elem ]
  %data1.0 = phi ptr [ %add.ptr169, %if.then160.copy_data_crit_edge ], [ %add.ptr169770, %ip_set_ext_destroy.exit ], [ %add.ptr242, %copy_elem ]
  %147 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hregion, align 4
  %elements245 = getelementptr %struct.ip_set_region, ptr %148, i32 %rem, i32 2
  %149 = ptrtoint ptr %elements245 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %elements245, align 4
  %inc246 = add i32 %150, 1
  store i32 %inc246, ptr %elements245, align 4
  %cidr251 = getelementptr inbounds %struct.hash_netport6_elem, ptr %value, i32 0, i32 3
  %151 = ptrtoint ptr %cidr251 to i32
  call void @__asan_load1_noabort(i32 %151)
  %bf.load252 = load i8, ptr %cidr251, align 1
  %bf.lshr253 = lshr i8 %bf.load252, 1
  %narrow = add nuw i8 %bf.lshr253, 2
  %lock.i688 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i688) #12
  br label %land.rhs.i690

land.rhs.i690:                                    ; preds = %for.inc.i.land.rhs.i690_crit_edge, %copy_data
  %j.05.i = phi i32 [ -1, %copy_data ], [ %j.1.i, %for.inc.i.land.rhs.i690_crit_edge ]
  %i.03.i = phi i32 [ 0, %copy_data ], [ %inc34.i, %for.inc.i.land.rhs.i690_crit_edge ]
  %cidr1.i = getelementptr %struct.hash_netport6, ptr %1, i32 0, i32 7, i32 %i.03.i, i32 1
  %152 = ptrtoint ptr %cidr1.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %cidr1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool.not.i689 = icmp eq i8 %153, 0
  br i1 %tobool.not.i689, label %land.rhs.i690.for.end.i694_crit_edge, label %for.body.i691

land.rhs.i690.for.end.i694_crit_edge:             ; preds = %land.rhs.i690
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i694

for.body.i691:                                    ; preds = %land.rhs.i690
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.05.i)
  %cmp3.not.i = icmp eq i32 %j.05.i, -1
  br i1 %cmp3.not.i, label %if.else.i, label %for.body.i691.for.inc.i_crit_edge

for.body.i691.for.inc.i_crit_edge:                ; preds = %for.body.i691
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i691
  call void @__sanitizer_cov_trace_cmp1(i8 %153, i8 %narrow)
  %cmp12.i = icmp ult i8 %153, %narrow
  br i1 %cmp12.i, label %if.else.i.for.inc.i_crit_edge, label %if.else15.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.else15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp1(i8 %153, i8 %narrow)
  %cmp23.i = icmp eq i8 %153, %narrow
  br i1 %cmp23.i, label %if.then25.i, label %if.else15.i.for.inc.i_crit_edge

if.else15.i.for.inc.i_crit_edge:                  ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then25.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i692 = zext i8 %bf.lshr253 to i32
  %arrayidx28.i = getelementptr %struct.hash_netport6, ptr %1, i32 0, i32 7, i32 %sub.i692
  %154 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx28.i, align 4
  %inc.i = add i32 %155, 1
  store i32 %inc.i, ptr %arrayidx28.i, align 4
  br label %hash_netport6_add_cidr.exit

for.inc.i:                                        ; preds = %if.else15.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge, %for.body.i691.for.inc.i_crit_edge
  %j.1.i = phi i32 [ %j.05.i, %for.body.i691.for.inc.i_crit_edge ], [ -1, %if.else15.i.for.inc.i_crit_edge ], [ %i.03.i, %if.else.i.for.inc.i_crit_edge ]
  %inc34.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i693 = icmp eq i32 %inc34.i, 128
  br i1 %exitcond.not.i693, label %for.inc.i.for.end.i694_crit_edge, label %for.inc.i.land.rhs.i690_crit_edge

for.inc.i.land.rhs.i690_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i690

for.inc.i.for.end.i694_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i694

for.end.i694:                                     ; preds = %for.inc.i.for.end.i694_crit_edge, %land.rhs.i690.for.end.i694_crit_edge
  %i.0.lcssa.i = phi i32 [ 128, %for.inc.i.for.end.i694_crit_edge ], [ %i.03.i, %land.rhs.i690.for.end.i694_crit_edge ]
  %j.0.lcssa.i = phi i32 [ %j.1.i, %for.inc.i.for.end.i694_crit_edge ], [ %j.05.i, %land.rhs.i690.for.end.i694_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.0.lcssa.i)
  %cmp35.not.i = icmp ne i32 %j.0.lcssa.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %j.0.lcssa.i)
  %cmp396.i = icmp sgt i32 %i.0.lcssa.i, %j.0.lcssa.i
  %or.cond.i = select i1 %cmp35.not.i, i1 %cmp396.i, i1 false
  br i1 %or.cond.i, label %for.end.i694.for.body41.i_crit_edge, label %for.end.i694.if.end55.i_crit_edge

for.end.i694.if.end55.i_crit_edge:                ; preds = %for.end.i694
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.i

for.end.i694.for.body41.i_crit_edge:              ; preds = %for.end.i694
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i.for.body41.i_crit_edge, %for.end.i694.for.body41.i_crit_edge
  %i.17.i = phi i32 [ %sub43.i, %for.body41.i.for.body41.i_crit_edge ], [ %i.0.lcssa.i, %for.end.i694.for.body41.i_crit_edge ]
  %sub43.i = add nsw i32 %i.17.i, -1
  %cidr45.i = getelementptr %struct.hash_netport6, ptr %1, i32 0, i32 7, i32 %sub43.i, i32 1
  %156 = ptrtoint ptr %cidr45.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %cidr45.i, align 1
  %cidr50.i = getelementptr %struct.hash_netport6, ptr %1, i32 0, i32 7, i32 %i.17.i, i32 1
  %158 = ptrtoint ptr %cidr50.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %cidr50.i, align 1
  %cmp39.i = icmp sgt i32 %sub43.i, %j.0.lcssa.i
  br i1 %cmp39.i, label %for.body41.i.for.body41.i_crit_edge, label %for.body41.i.if.end55.i_crit_edge

for.body41.i.if.end55.i_crit_edge:                ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.i

for.body41.i.for.body41.i_crit_edge:              ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body41.i

if.end55.i:                                       ; preds = %for.body41.i.if.end55.i_crit_edge, %for.end.i694.if.end55.i_crit_edge
  %i.2.i = phi i32 [ %i.0.lcssa.i, %for.end.i694.if.end55.i_crit_edge ], [ %j.0.lcssa.i, %for.body41.i.if.end55.i_crit_edge ]
  %cidr58.i = getelementptr %struct.hash_netport6, ptr %1, i32 0, i32 7, i32 %i.2.i, i32 1
  %159 = ptrtoint ptr %cidr58.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %narrow, ptr %cidr58.i, align 1
  %sub63.i = zext i8 %bf.lshr253 to i32
  %arrayidx64.i = getelementptr %struct.hash_netport6, ptr %1, i32 0, i32 7, i32 %sub63.i
  %160 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 1, ptr %arrayidx64.i, align 4
  br label %hash_netport6_add_cidr.exit

hash_netport6_add_cidr.exit:                      ; preds = %if.end55.i, %if.then25.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i688) #12
  %161 = call ptr @memcpy(ptr %data1.0, ptr %value, i32 20)
  br label %overwrite_extensions

overwrite_extensions:                             ; preds = %hash_netport6_add_cidr.exit, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge, %if.then121.overwrite_extensions_crit_edge
  %j.3 = phi i32 [ %j.2, %hash_netport6_add_cidr.exit ], [ %i.0746, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ %i.0746, %if.then121.overwrite_extensions_crit_edge ]
  %old.2 = phi ptr [ %old.1, %hash_netport6_add_cidr.exit ], [ inttoptr (i32 -2 to ptr), %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then121.overwrite_extensions_crit_edge ]
  %n.2 = phi ptr [ %n.1, %hash_netport6_add_cidr.exit ], [ %43, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ %43, %if.then121.overwrite_extensions_crit_edge ]
  %data1.1 = phi ptr [ %data1.0, %hash_netport6_add_cidr.exit ], [ %add.ptr, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ %add.ptr, %if.then121.overwrite_extensions_crit_edge ]
  %162 = lshr i32 %flags, 18
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  %nomatch.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %data1.1, i32 0, i32 3
  %165 = ptrtoint ptr %nomatch.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %bf.load.i695 = load i8, ptr %nomatch.i, align 1
  %bf.clear.i = and i8 %bf.load.i695, -2
  %bf.set.i = or i8 %bf.clear.i, %164
  store i8 %bf.set.i, ptr %nomatch.i, align 1
  %extensions262 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %166 = ptrtoint ptr %extensions262 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %extensions262, align 2
  %168 = and i8 %167, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool265.not = icmp eq i8 %168, 0
  br i1 %tobool265.not, label %overwrite_extensions.if.end270_crit_edge, label %if.then266

overwrite_extensions.if.end270_crit_edge:         ; preds = %overwrite_extensions
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end270

if.then266:                                       ; preds = %overwrite_extensions
  %offset267 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 14
  %169 = ptrtoint ptr %offset267 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %offset267, align 4
  %add.ptr269 = getelementptr i8, ptr %data1.1, i32 %170
  %bytes.i = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 2
  %171 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %172)
  %cmp.not.i696 = icmp eq i64 %172, -1
  br i1 %cmp.not.i696, label %if.then266.if.end.i699_crit_edge, label %if.then.i697

if.then266.if.end.i699_crit_edge:                 ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i699

if.then.i697:                                     ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr269, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %add.ptr269, i64 noundef %172) #12
  br label %if.end.i699

if.end.i699:                                      ; preds = %if.then.i697, %if.then266.if.end.i699_crit_edge
  %packets.i = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %173 = ptrtoint ptr %packets.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %packets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %174)
  %cmp3.not.i698 = icmp eq i64 %174, -1
  br i1 %cmp3.not.i698, label %if.end.i699.if.end270_crit_edge, label %if.then4.i

if.end.i699.if.end270_crit_edge:                  ; preds = %if.end.i699
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end270

if.then4.i:                                       ; preds = %if.end.i699
  call void @__sanitizer_cov_trace_pc() #14
  %packets5.i = getelementptr inbounds %struct.ip_set_counter, ptr %add.ptr269, i32 0, i32 1
  %call.i.i13.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %packets5.i, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %packets5.i, i64 noundef %174) #12
  br label %if.end270

if.end270:                                        ; preds = %if.then4.i, %if.end.i699.if.end270_crit_edge, %overwrite_extensions.if.end270_crit_edge
  %175 = ptrtoint ptr %extensions262 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %extensions262, align 2
  %177 = and i8 %176, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool274.not = icmp eq i8 %177, 0
  br i1 %tobool274.not, label %if.end270.if.end279_crit_edge, label %if.then275

if.end270.if.end279_crit_edge:                    ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end279

if.then275:                                       ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx277 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %178 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx277, align 4
  %add.ptr278 = getelementptr i8, ptr %data1.1, i32 %179
  tail call void @ip_set_init_comment(ptr noundef %set, ptr noundef %add.ptr278, ptr noundef %ext) #12
  br label %if.end279

if.end279:                                        ; preds = %if.then275, %if.end270.if.end279_crit_edge
  %180 = ptrtoint ptr %extensions262 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %extensions262, align 2
  %182 = and i8 %181, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool283.not = icmp eq i8 %182, 0
  br i1 %tobool283.not, label %if.end279.if.end288_crit_edge, label %if.then284

if.end279.if.end288_crit_edge:                    ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end288

if.then284:                                       ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx286 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 2
  %183 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx286, align 4
  %add.ptr287 = getelementptr i8, ptr %data1.1, i32 %184
  %185 = call ptr @memcpy(ptr %add.ptr287, ptr %ext, i32 16)
  br label %if.end288

if.end288:                                        ; preds = %if.then284, %if.end279.if.end288_crit_edge
  %186 = ptrtoint ptr %extensions262 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %extensions262, align 2
  %188 = and i8 %187, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool292.not = icmp eq i8 %188, 0
  br i1 %tobool292.not, label %if.end288.do.end301_crit_edge, label %if.then293

if.end288.do.end301_crit_edge:                    ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end301

if.then293:                                       ; preds = %if.end288
  %arrayidx295 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %189 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx295, align 4
  %add.ptr296 = getelementptr i8, ptr %data1.1, i32 %190
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %191 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool.not.i700 = icmp eq i32 %192, 0
  br i1 %tobool.not.i700, label %if.then293.ip_set_timeout_set.exit_crit_edge, label %if.else.i.i

if.then293.ip_set_timeout_set.exit_crit_edge:     ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_timeout_set.exit

if.else.i.i:                                      ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i = mul i32 %192, 1000
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %193 = load volatile i32, ptr @jiffies, align 128
  %add.i705 = add i32 %193, %call2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i705)
  %cmp.i706 = icmp eq i32 %add.i705, 0
  %spec.select.i = select i1 %cmp.i706, i32 -1, i32 %add.i705
  br label %ip_set_timeout_set.exit

ip_set_timeout_set.exit:                          ; preds = %if.else.i.i, %if.then293.ip_set_timeout_set.exit_crit_edge
  %storemerge.i = phi i32 [ %spec.select.i, %if.else.i.i ], [ 0, %if.then293.ip_set_timeout_set.exit_crit_edge ]
  %194 = ptrtoint ptr %add.ptr296 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %storemerge.i, ptr %add.ptr296, align 4
  br label %do.end301

do.end301:                                        ; preds = %ip_set_timeout_set.exit, %if.end288.do.end301_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !243
  %used304 = getelementptr inbounds %struct.hbucket, ptr %n.2, i32 0, i32 1
  tail call void @_set_bit(i32 noundef %j.3, ptr noundef %used304) #12
  %cmp307.not = icmp eq ptr %old.2, inttoptr (i32 -2 to ptr)
  br i1 %cmp307.not, label %do.end301.resize_crit_edge, label %do.body310

do.end301.resize_crit_edge:                       ; preds = %do.end301
  call void @__sanitizer_cov_trace_pc() #14
  br label %resize

do.body310:                                       ; preds = %do.end301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !244
  %195 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %195)
  store volatile ptr %n.2, ptr %arrayidx69, align 4
  %tobool352.not = icmp eq ptr %old.2, null
  br i1 %tobool352.not, label %do.body310.resize_crit_edge, label %do.end359

do.body310.resize_crit_edge:                      ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #14
  br label %resize

do.end359:                                        ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kvfree_call_rcu(ptr noundef nonnull %old.2, ptr noundef null) #12
  br label %resize

resize:                                           ; preds = %do.end359, %do.body310.resize_crit_edge, %do.end301.resize_crit_edge, %if.then205
  %ret.0 = phi i32 [ -11, %if.then205 ], [ 0, %do.body310.resize_crit_edge ], [ 0, %do.end359 ], [ 0, %do.end301.resize_crit_edge ]
  %196 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %hregion, align 4
  %arrayidx366 = getelementptr %struct.ip_set_region, ptr %197, i32 %rem
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx366) #12
  %call.i.i608 = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #12
  %198 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool369.not = icmp eq i32 %199, 0
  br i1 %tobool369.not, label %resize.out_crit_edge, label %land.lhs.true370

resize.out_crit_edge:                             ; preds = %resize
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true370:                                 ; preds = %resize
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %200 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %target, align 2, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool371.not = icmp eq i8 %201, 0
  br i1 %tobool371.not, label %land.lhs.true370.out_crit_edge, label %if.then373

land.lhs.true370.out_crit_edge:                   ; preds = %land.lhs.true370
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then373:                                       ; preds = %land.lhs.true370
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %202 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i714 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %202, i32 noundef 2848, i32 noundef 136) #15
  %tobool375.not = icmp eq ptr %call7.i.i714, null
  br i1 %tobool375.not, label %if.then373.out_crit_edge, label %if.end377

if.then373.out_crit_edge:                         ; preds = %if.then373
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end377:                                        ; preds = %if.then373
  %ad = getelementptr inbounds %struct.hash_netport6_resize_ad, ptr %call7.i.i714, i32 0, i32 1
  %203 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 0, ptr %ad, align 8
  %d378 = getelementptr inbounds %struct.hash_netport6_resize_ad, ptr %call7.i.i714, i32 0, i32 2
  %204 = call ptr @memcpy(ptr %d378, ptr %value, i32 20)
  %ext379 = getelementptr inbounds %struct.hash_netport6_resize_ad, ptr %call7.i.i714, i32 0, i32 3
  %205 = call ptr @memcpy(ptr %ext379, ptr %ext, i32 48)
  %mext380 = getelementptr inbounds %struct.hash_netport6_resize_ad, ptr %call7.i.i714, i32 0, i32 4
  %206 = call ptr @memcpy(ptr %mext380, ptr %mext, i32 48)
  %flags381 = getelementptr inbounds %struct.hash_netport6_resize_ad, ptr %call7.i.i714, i32 0, i32 5
  %207 = ptrtoint ptr %flags381 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %flags, ptr %flags381, align 8
  %lock382 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock382) #12
  %ad383 = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 5, i32 1
  %208 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %prev.i, align 4
  %call.i.i716 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i714, ptr noundef %209, ptr noundef %ad383) #12
  br i1 %call.i.i716, label %if.end.i.i717, label %if.end377.out.sink.split_crit_edge

if.end377.out.sink.split_crit_edge:               ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.end.i.i717:                                    ; preds = %if.end377
  call void @__sanitizer_cov_trace_pc() #14
  %210 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %call7.i.i714, ptr %prev.i, align 4
  %211 = ptrtoint ptr %call7.i.i714 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %ad383, ptr %call7.i.i714, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i714, i32 0, i32 1
  %212 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %209, ptr %prev3.i.i, align 4
  %213 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %213)
  store volatile ptr %call7.i.i714, ptr %209, align 4
  br label %out.sink.split

set_full:                                         ; preds = %if.end188.set_full_crit_edge, %if.then84.set_full_crit_edge
  %call386 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call386)
  %tobool387.not = icmp eq i32 %call386, 0
  br i1 %tobool387.not, label %set_full.unlock_crit_edge, label %do.end391

set_full.unlock_crit_edge:                        ; preds = %set_full
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

do.end391:                                        ; preds = %set_full
  call void @__sanitizer_cov_trace_pc() #14
  %call394 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %set, i32 noundef %maxelem.0) #17
  br label %unlock

unlock:                                           ; preds = %do.end391, %set_full.unlock_crit_edge, %if.end206.unlock_crit_edge, %ip_set_timeout_expired.exit.unlock_crit_edge, %land.lhs.true129.unlock_crit_edge, %lor.lhs.false124.unlock_crit_edge, %if.end90.unlock_crit_edge
  %ret.1 = phi i32 [ -12, %if.end90.unlock_crit_edge ], [ -4103, %ip_set_timeout_expired.exit.unlock_crit_edge ], [ -4103, %lor.lhs.false124.unlock_crit_edge ], [ -12, %if.end206.unlock_crit_edge ], [ -4352, %do.end391 ], [ -4352, %set_full.unlock_crit_edge ], [ -4103, %land.lhs.true129.unlock_crit_edge ]
  %214 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %hregion, align 4
  %arrayidx397 = getelementptr %struct.ip_set_region, ptr %215, i32 %rem
  br label %out.sink.split

out.sink.split:                                   ; preds = %unlock, %if.end.i.i717, %if.end377.out.sink.split_crit_edge
  %lock382.sink = phi ptr [ %arrayidx397, %unlock ], [ %lock382, %if.end377.out.sink.split_crit_edge ], [ %lock382, %if.end.i.i717 ]
  %ret.2.ph = phi i32 [ %ret.1, %unlock ], [ %ret.0, %if.end377.out.sink.split_crit_edge ], [ %ret.0, %if.end.i.i717 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock382.sink) #12
  br label %out

out:                                              ; preds = %out.sink.split, %if.then373.out_crit_edge, %land.lhs.true370.out_crit_edge, %resize.out_crit_edge
  %ret.2 = phi i32 [ %ret.0, %land.lhs.true370.out_crit_edge ], [ %ret.0, %resize.out_crit_edge ], [ %ret.0, %if.then373.out_crit_edge ], [ %ret.2.ph, %out.sink.split ]
  %call.i.i609 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %216 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !232
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %216, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !233
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true402, label %out.cleanup419_crit_edge

out.cleanup419_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup419

land.lhs.true402:                                 ; preds = %out
  %call.i.i610 = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #12
  %217 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool405.not = icmp eq i32 %218, 0
  br i1 %tobool405.not, label %land.lhs.true402.cleanup419_crit_edge, label %do.body407

land.lhs.true402.cleanup419_crit_edge:            ; preds = %land.lhs.true402
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup419

do.body407:                                       ; preds = %land.lhs.true402
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport6_add.__UNIQUE_ID_ddebug735, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport6_add, %if.then414)) #12
          to label %do.end.i [label %if.then414], !srcloc !222

if.then414:                                       ; preds = %do.body407
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport6_add.__UNIQUE_ID_ddebug735, ptr noundef nonnull @.str.12, ptr noundef %3) #12
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i724.do.end.i_crit_edge, %if.then414, %do.body407
  %i.017.i = phi i32 [ %inc.i722, %for.inc.i724.do.end.i_crit_edge ], [ 0, %do.body407 ], [ 0, %if.then414 ]
  %arrayidx.i719 = getelementptr %struct.htable, ptr %3, i32 0, i32 5, i32 %i.017.i
  %219 = ptrtoint ptr %arrayidx.i719 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %arrayidx.i719, align 4
  %tobool.not.i720 = icmp eq ptr %220, null
  br i1 %tobool.not.i720, label %do.end.i.for.inc.i724_crit_edge, label %if.end.i721

do.end.i.for.inc.i724_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i724

if.end.i721:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %220) #12
  br label %for.inc.i724

for.inc.i724:                                     ; preds = %if.end.i721, %do.end.i.for.inc.i724_crit_edge
  %inc.i722 = add i32 %i.017.i, 1
  %221 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %htable_bits, align 4
  %conv.i = zext i8 %222 to i32
  %i.0.highbits.i = lshr i32 %inc.i722, %conv.i
  %cmp.i723 = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i723, label %for.inc.i724.do.end.i_crit_edge, label %hash_netport6_ahash_destroy.exit

for.inc.i724.do.end.i_crit_edge:                  ; preds = %for.inc.i724
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hash_netport6_ahash_destroy.exit:                 ; preds = %for.inc.i724
  call void @__sanitizer_cov_trace_pc() #14
  %223 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %224) #12
  tail call void @ip_set_free(ptr noundef %3) #12
  br label %cleanup419

cleanup419:                                       ; preds = %hash_netport6_ahash_destroy.exit, %land.lhs.true402.cleanup419_crit_edge, %out.cleanup419_crit_edge
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netport6_del(ptr noundef %set, ptr nocapture noundef readonly %value, ptr nocapture noundef readonly %ext, ptr nocapture noundef readnone %mext, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dsize2 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %2 = ptrtoint ptr %dsize2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsize2, align 4
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 750, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %1, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.jhash2.exit_crit_edge

rcu_read_lock_bh.exit.jhash2.exit_crit_edge:      ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %jhash2.exit

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.jhash2.exit_crit_edge, label %land.lhs.true6

land.lhs.true.jhash2.exit_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %jhash2.exit

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b444 = load i1, ptr @hash_netport6_del.__warned, align 1
  br i1 %.b444, label %land.lhs.true6.jhash2.exit_crit_edge, label %if.then

land.lhs.true6.jhash2.exit_crit_edge:             ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %jhash2.exit

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport6_del.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1048, ptr noundef nonnull @.str.8) #12
  br label %jhash2.exit

jhash2.exit:                                      ; preds = %if.then, %land.lhs.true6.jhash2.exit_crit_edge, %land.lhs.true.jhash2.exit_crit_edge, %rcu_read_lock_bh.exit.jhash2.exit_crit_edge
  %initval = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %initval, align 4
  %add1.i = add i32 %7, -559038717
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  %add2.i = add i32 %9, %add1.i
  %arrayidx3.i = getelementptr i32, ptr %value, i32 1
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3.i, align 4
  %add4.i = add i32 %11, %add1.i
  %arrayidx5.i = getelementptr i32, ptr %value, i32 2
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5.i, align 4
  %add6.i = add i32 %13, %add1.i
  %sub.i = sub i32 %add2.i, %add6.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #12
  %xor.i = xor i32 %sub.i, %or.i.i
  %add7.i = add i32 %add6.i, %add4.i
  %sub8.i = sub i32 %add4.i, %xor.i
  %or.i135.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #12
  %xor10.i = xor i32 %sub8.i, %or.i135.i
  %add11.i = add i32 %xor.i, %add7.i
  %sub12.i = sub i32 %add7.i, %xor10.i
  %or.i136.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i, i32 %xor10.i, i32 8) #12
  %xor14.i = xor i32 %sub12.i, %or.i136.i
  %add15.i = add i32 %xor10.i, %add11.i
  %sub16.i = sub i32 %add11.i, %xor14.i
  %or.i137.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 16) #12
  %xor18.i = xor i32 %sub16.i, %or.i137.i
  %add19.i = add i32 %xor14.i, %add15.i
  %sub20.i = sub i32 %add15.i, %xor18.i
  %or.i138.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 19) #12
  %xor22.i = xor i32 %sub20.i, %or.i138.i
  %add23.i = add i32 %xor18.i, %add19.i
  %sub24.i = sub i32 %add19.i, %xor22.i
  %or.i139.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i, i32 %xor22.i, i32 4) #12
  %xor26.i = xor i32 %sub24.i, %or.i139.i
  %add27.i = add i32 %xor22.i, %add23.i
  %add.ptr.i = getelementptr i32, ptr %value, i32 3
  %arrayidx32.i = getelementptr i32, ptr %value, i32 4
  %14 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %15, %add27.i
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i, align 4
  %add36.i = add i32 %17, %add23.i
  %xor37.i = xor i32 %xor26.i, %add33.i
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #12
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %add36.i, %sub39.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #12
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #12
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #12
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #12
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #12
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #12
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  %htable_bits = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 2
  %18 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %htable_bits, align 4
  %conv = zext i8 %19 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %and = and i32 %sub57.i, %sub
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %19)
  %cmp = icmp ult i8 %19, 10
  %sub21 = add nsw i32 %conv, -10
  %notmask495 = shl nsw i32 -1, %sub21
  %shl22.op = xor i32 %notmask495, -1
  %20 = select i1 %cmp, i32 0, i32 %shl22.op
  %rem = and i32 %20, %and
  %uref = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !227
  %call.i458 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i458, label %jhash2.exit.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i461

jhash2.exit.rcu_read_unlock_bh.exit_crit_edge:    ; preds = %jhash2.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i461:                               ; preds = %jhash2.exit
  %call1.i459 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i459)
  %tobool.not.i460 = icmp eq i32 %call1.i459, 0
  br i1 %tobool.not.i460, label %land.lhs.true.i461.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i463

land.lhs.true.i461.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i461
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i463:                              ; preds = %land.lhs.true.i461
  %.b4.i462 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i462, label %land.lhs.true2.i463.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i464

land.lhs.true2.i463.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i463
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i464:                                     ; preds = %land.lhs.true2.i463
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i464, %land.lhs.true2.i463.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i461.rcu_read_unlock_bh.exit_crit_edge, %jhash2.exit.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  %hregion = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 4
  %22 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hregion, align 4
  %arrayidx = getelementptr %struct.ip_set_region, ptr %23, i32 %rem
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #12
  %arrayidx27 = getelementptr %struct.htable, ptr %5, i32 0, i32 5, i32 %and
  %24 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %arrayidx27, align 4
  %call29 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true31, label %rcu_read_unlock_bh.exit.do.end39_crit_edge

rcu_read_unlock_bh.exit.do.end39_crit_edge:       ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

land.lhs.true31:                                  ; preds = %rcu_read_unlock_bh.exit
  %call32 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.do.end39_crit_edge, label %land.lhs.true34

land.lhs.true31.do.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %.b442443 = load i1, ptr @hash_netport6_del.__warned.50, align 1
  br i1 %.b442443, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport6_del.__warned.50, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1055, ptr noundef nonnull @.str.8) #12
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %land.lhs.true34.do.end39_crit_edge, %land.lhs.true31.do.end39_crit_edge, %rcu_read_unlock_bh.exit.do.end39_crit_edge
  %tobool41.not = icmp eq ptr %25, null
  br i1 %tobool41.not, label %do.end39.out_crit_edge, label %for.cond.preheader

do.end39.out_crit_edge:                           ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.cond.preheader:                               ; preds = %do.end39
  %pos = getelementptr inbounds %struct.hbucket, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pos, align 1
  %conv44 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp45500.not = icmp eq i8 %27, 0
  br i1 %cmp45500.not, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %25, i32 0, i32 1
  %value51 = getelementptr inbounds %struct.hbucket, ptr %25, i32 0, i32 5
  %port4.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %value, i32 0, i32 1
  %proto9.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %value, i32 0, i32 2
  %cidr14.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %value, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc297.for.body_crit_edge, %for.body.lr.ph
  %i.0502 = phi i32 [ 0, %for.body.lr.ph ], [ %inc298, %for.inc297.for.body_crit_edge ]
  %k.0501 = phi i32 [ 0, %for.body.lr.ph ], [ %k.5, %for.inc297.for.body_crit_edge ]
  %div3.i = lshr i32 %i.0502, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0502, 31
  %30 = shl nuw i32 1, %and.i
  %31 = and i32 %29, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool48.not = icmp eq i32 %31, 0
  br i1 %tobool48.not, label %if.then49, label %if.end50

if.then49:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %k.0501, 1
  br label %for.inc297

if.end50:                                         ; preds = %for.body
  %mul = mul i32 %i.0502, %3
  %add.ptr = getelementptr i8, ptr %value51, i32 %mul
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr, align 4
  %34 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %value, align 4
  %xor.i.i = xor i32 %35, %33
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx4.i.i, align 4
  %38 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx3.i, align 4
  %xor7.i.i = xor i32 %39, %37
  %or.i.i465 = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx9.i.i, align 4
  %42 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx5.i, align 4
  %xor12.i.i = xor i32 %43, %41
  %or13.i.i = or i32 %or.i.i465, %xor12.i.i
  %arrayidx15.i.i = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 3
  %44 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx15.i.i, align 4
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i, align 4
  %xor18.i.i = xor i32 %47, %45
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i466 = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i466, label %land.lhs.true.i468, label %if.end50.for.inc297_crit_edge

if.end50.for.inc297_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc297

land.lhs.true.i468:                               ; preds = %if.end50
  %port.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %add.ptr, i32 0, i32 1
  %48 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %port.i, align 4
  %50 = ptrtoint ptr %port4.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %port4.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %51)
  %cmp.i467 = icmp eq i16 %49, %51
  br i1 %cmp.i467, label %land.lhs.true7.i, label %land.lhs.true.i468.for.inc297_crit_edge

land.lhs.true.i468.for.inc297_crit_edge:          ; preds = %land.lhs.true.i468
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc297

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i468
  %proto.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %add.ptr, i32 0, i32 2
  %52 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %proto.i, align 2
  %54 = ptrtoint ptr %proto9.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %proto9.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp11.i = icmp eq i8 %53, %55
  br i1 %cmp11.i, label %hash_netport6_data_equal.exit, label %land.lhs.true7.i.for.inc297_crit_edge

land.lhs.true7.i.for.inc297_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc297

hash_netport6_data_equal.exit:                    ; preds = %land.lhs.true7.i
  %cidr.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %add.ptr, i32 0, i32 3
  %56 = ptrtoint ptr %cidr.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.i = load i8, ptr %cidr.i, align 1
  %57 = ptrtoint ptr %cidr14.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load15.i = load i8, ptr %cidr14.i, align 1
  %cmp18.unshifted.i = xor i8 %bf.load15.i, %bf.load.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %cmp18.unshifted.i)
  %cmp18.i = icmp ult i8 %cmp18.unshifted.i, 2
  br i1 %cmp18.i, label %if.end55, label %hash_netport6_data_equal.exit.for.inc297_crit_edge

hash_netport6_data_equal.exit.for.inc297_crit_edge: ; preds = %hash_netport6_data_equal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc297

if.end55:                                         ; preds = %hash_netport6_data_equal.exit
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %58 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %extensions, align 2
  %60 = and i8 %59, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool58.not = icmp eq i8 %60, 0
  br i1 %tobool58.not, label %if.end55.if.end65_crit_edge, label %land.lhs.true59

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

land.lhs.true59:                                  ; preds = %if.end55
  %arrayidx60 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %61 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx60, align 4
  %add.ptr61 = getelementptr i8, ptr %add.ptr, i32 %62
  %63 = ptrtoint ptr %add.ptr61 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp.not.i = icmp eq i32 %64, 0
  br i1 %cmp.not.i, label %land.lhs.true59.if.end65_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true59.if.end65_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %sub.i469 = sub i32 %64, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i469)
  %cmp1.i = icmp slt i32 %sub.i469, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.out_crit_edge, label %ip_set_timeout_expired.exit.if.end65_crit_edge

ip_set_timeout_expired.exit.if.end65_crit_edge:   ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

ip_set_timeout_expired.exit.out_crit_edge:        ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end65:                                         ; preds = %ip_set_timeout_expired.exit.if.end65_crit_edge, %land.lhs.true59.if.end65_crit_edge, %if.end55.if.end65_crit_edge
  tail call void @_clear_bit(i32 noundef %i.0502, ptr noundef %used) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !245
  %add = add nuw nsw i32 %i.0502, 1
  %66 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pos, align 1
  %conv75 = zext i8 %67 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv75)
  %cmp76 = icmp eq i32 %add, %conv75
  br i1 %cmp76, label %if.then78, label %if.end65.if.end80_crit_edge

if.end65.if.end80_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then78:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %dec = add i8 %67, -1
  %68 = ptrtoint ptr %pos to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %dec, ptr %pos, align 1
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end65.if.end80_crit_edge
  %69 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %70, i32 %rem, i32 2
  %71 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %elements, align 4
  %dec83 = add i32 %72, -1
  store i32 %dec83, ptr %elements, align 4
  %73 = ptrtoint ptr %cidr14.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load = load i8, ptr %cidr14.i, align 1
  %bf.lshr = lshr i8 %bf.load, 1
  %narrow = add nuw i8 %bf.lshr, 2
  %lock.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc57.i.for.body.i_crit_edge, %if.end80
  %indvars.iv.i = phi i32 [ 0, %if.end80 ], [ %indvars.iv.next.i, %for.inc57.i.for.body.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.hash_netport6, ptr %1, i32 0, i32 7, i32 %indvars.iv.i, i32 1, i32 0
  %74 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %75, i8 %narrow)
  %cmp7.not.i = icmp eq i8 %75, %narrow
  br i1 %cmp7.not.i, label %if.end.i, label %for.inc57.i

if.end.i:                                         ; preds = %for.body.i
  %sub.i471 = zext i8 %bf.lshr to i32
  %arrayidx11.i = getelementptr %struct.hash_netport6, ptr %1, i32 0, i32 7, i32 %sub.i471
  %76 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx11.i, align 4
  %dec.i = add i32 %77, -1
  store i32 %dec.i, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp22.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp22.not.i, label %for.cond26.preheader.i, label %if.end.i.hash_netport6_del_cidr.exit_crit_edge

if.end.i.hash_netport6_del_cidr.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hash_netport6_del_cidr.exit

for.cond26.preheader.i:                           ; preds = %if.end.i
  %78 = trunc i32 %indvars.iv.i to i8
  %conv2786.i = and i32 %indvars.iv.i, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %78)
  %cmp2987.i = icmp ult i8 %78, 127
  br i1 %cmp2987.i, label %for.cond26.preheader.i.land.rhs.i473_crit_edge, label %for.cond26.preheader.i.for.end.i_crit_edge

for.cond26.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.cond26.preheader.i.land.rhs.i473_crit_edge:   ; preds = %for.cond26.preheader.i
  br label %land.rhs.i473

land.rhs.i473:                                    ; preds = %for.body38.i.land.rhs.i473_crit_edge, %for.cond26.preheader.i.land.rhs.i473_crit_edge
  %indvars.iv92.i = phi i32 [ %add.i, %for.body38.i.land.rhs.i473_crit_edge ], [ %indvars.iv.i, %for.cond26.preheader.i.land.rhs.i473_crit_edge ]
  %arrayidx36.i = getelementptr %struct.hash_netport6, ptr %1, i32 0, i32 7, i32 %indvars.iv92.i, i32 1, i32 0
  %79 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i472 = icmp eq i8 %80, 0
  br i1 %tobool.not.i472, label %land.rhs.i473.for.end.i_crit_edge, label %for.body38.i

land.rhs.i473.for.end.i_crit_edge:                ; preds = %land.rhs.i473
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body38.i:                                     ; preds = %land.rhs.i473
  %add.i = add nuw nsw i32 %indvars.iv92.i, 1
  %arrayidx44.i = getelementptr %struct.hash_netport6, ptr %1, i32 0, i32 7, i32 %add.i, i32 1, i32 0
  %81 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx44.i, align 1
  %83 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %arrayidx36.i, align 1
  %exitcond94.not.i = icmp eq i32 %add.i, 127
  br i1 %exitcond94.not.i, label %for.body38.i.for.end.i_crit_edge, label %for.body38.i.land.rhs.i473_crit_edge

for.body38.i.land.rhs.i473_crit_edge:             ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i473

for.body38.i.for.end.i_crit_edge:                 ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body38.i.for.end.i_crit_edge, %land.rhs.i473.for.end.i_crit_edge, %for.cond26.preheader.i.for.end.i_crit_edge
  %conv27.lcssa.i = phi i32 [ %conv2786.i, %for.cond26.preheader.i.for.end.i_crit_edge ], [ %indvars.iv92.i, %land.rhs.i473.for.end.i_crit_edge ], [ 127, %for.body38.i.for.end.i_crit_edge ]
  %arrayidx56.i = getelementptr %struct.hash_netport6, ptr %1, i32 0, i32 7, i32 %conv27.lcssa.i, i32 1, i32 0
  %84 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %arrayidx56.i, align 1
  br label %hash_netport6_del_cidr.exit

for.inc57.i:                                      ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 128
  br i1 %exitcond.not.i, label %for.inc57.i.hash_netport6_del_cidr.exit_crit_edge, label %for.inc57.i.for.body.i_crit_edge

for.inc57.i.for.body.i_crit_edge:                 ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc57.i.hash_netport6_del_cidr.exit_crit_edge: ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hash_netport6_del_cidr.exit

hash_netport6_del_cidr.exit:                      ; preds = %for.inc57.i.hash_netport6_del_cidr.exit_crit_edge, %for.end.i, %if.end.i.hash_netport6_del_cidr.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  %85 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %extensions, align 2
  %87 = and i8 %86, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i474 = icmp eq i8 %87, 0
  br i1 %tobool.not.i474, label %hash_netport6_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge, label %if.then.i477

hash_netport6_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge: ; preds = %hash_netport6_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_ext_destroy.exit

if.then.i477:                                     ; preds = %hash_netport6_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i475 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %88 = ptrtoint ptr %arrayidx.i475 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i475, align 4
  %add.ptr.i476 = getelementptr i8, ptr %add.ptr, i32 %89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %90 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %90(ptr noundef %set, ptr noundef %add.ptr.i476) #12
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i477, %hash_netport6_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge
  %call.i.i445 = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #12
  %91 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool95.not = icmp eq i32 %92, 0
  br i1 %tobool95.not, label %ip_set_ext_destroy.exit.if.end106_crit_edge, label %land.lhs.true96

ip_set_ext_destroy.exit.if.end106_crit_edge:      ; preds = %ip_set_ext_destroy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

land.lhs.true96:                                  ; preds = %ip_set_ext_destroy.exit
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %93 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %target, align 2, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool97.not = icmp eq i8 %94, 0
  br i1 %tobool97.not, label %land.lhs.true96.if.end106_crit_edge, label %if.then99

land.lhs.true96.if.end106_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then99:                                        ; preds = %land.lhs.true96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %95 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %95, i32 noundef 2848, i32 noundef 136) #15
  %tobool101.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool101.not, label %if.then99.if.end106_crit_edge, label %if.then102

if.then99.if.end106_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then102:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #14
  %ad = getelementptr inbounds %struct.hash_netport6_resize_ad, ptr %call7.i.i, i32 0, i32 1
  %96 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %ad, align 8
  %d103 = getelementptr inbounds %struct.hash_netport6_resize_ad, ptr %call7.i.i, i32 0, i32 2
  %97 = call ptr @memcpy(ptr %d103, ptr %value, i32 20)
  %flags104 = getelementptr inbounds %struct.hash_netport6_resize_ad, ptr %call7.i.i, i32 0, i32 5
  %98 = ptrtoint ptr %flags104 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %flags, ptr %flags104, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.then102, %if.then99.if.end106_crit_edge, %land.lhs.true96.if.end106_crit_edge, %ip_set_ext_destroy.exit.if.end106_crit_edge
  %x.0 = phi ptr [ %call7.i.i, %if.then102 ], [ null, %if.then99.if.end106_crit_edge ], [ null, %land.lhs.true96.if.end106_crit_edge ], [ null, %ip_set_ext_destroy.exit.if.end106_crit_edge ]
  %99 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %pos, align 1
  %conv109 = zext i8 %100 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0502, i32 %conv109)
  %cmp110504 = icmp ult i32 %i.0502, %conv109
  br i1 %cmp110504, label %if.end106.for.body112_crit_edge, label %if.end106.for.end122_crit_edge

if.end106.for.end122_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end122

if.end106.for.body112_crit_edge:                  ; preds = %if.end106
  br label %for.body112

for.body112:                                      ; preds = %for.body112.for.body112_crit_edge, %if.end106.for.body112_crit_edge
  %i.1506 = phi i32 [ %inc121, %for.body112.for.body112_crit_edge ], [ %i.0502, %if.end106.for.body112_crit_edge ]
  %k.1505 = phi i32 [ %spec.select, %for.body112.for.body112_crit_edge ], [ %k.0501, %if.end106.for.body112_crit_edge ]
  %div3.i446 = lshr i32 %i.1506, 5
  %arrayidx.i447 = getelementptr i32, ptr %used, i32 %div3.i446
  %101 = ptrtoint ptr %arrayidx.i447 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %arrayidx.i447, align 4
  %and.i448 = and i32 %i.1506, 31
  %103 = xor i32 %102, -1
  %104 = lshr i32 %103, %and.i448
  %105 = and i32 %104, 1
  %spec.select = add i32 %105, %k.1505
  %inc121 = add nuw nsw i32 %i.1506, 1
  %exitcond517.not = icmp eq i32 %inc121, %conv109
  br i1 %exitcond517.not, label %for.body112.for.end122_crit_edge, label %for.body112.for.body112_crit_edge

for.body112.for.body112_crit_edge:                ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body112

for.body112.for.end122_crit_edge:                 ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end122

for.end122:                                       ; preds = %for.body112.for.end122_crit_edge, %if.end106.for.end122_crit_edge
  %k.1.lcssa = phi i32 [ %k.0501, %if.end106.for.end122_crit_edge ], [ %spec.select, %for.body112.for.end122_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp125 = icmp eq i8 %100, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.1.lcssa)
  %cmp128 = icmp eq i32 %k.1.lcssa, 0
  %or.cond = select i1 %cmp125, i1 %cmp128, i1 false
  br i1 %or.cond, label %if.then130, label %if.else187

if.then130:                                       ; preds = %for.end122
  call void @__sanitizer_cov_trace_pc() #14
  %size = getelementptr inbounds %struct.hbucket, ptr %25, i32 0, i32 2
  %106 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %size, align 8
  %conv131 = zext i8 %107 to i32
  %mul132 = mul i32 %3, %conv131
  %108 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %109, i32 %rem, i32 1
  %110 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ext_size, align 4
  %add133.neg = add i32 %111, -24
  %sub136 = sub i32 %add133.neg, %mul132
  store i32 %sub136, ptr %ext_size, align 4
  br label %out.sink.split

if.else187:                                       ; preds = %for.end122
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %k.1.lcssa)
  %cmp188 = icmp sgt i32 %k.1.lcssa, 1
  br i1 %cmp188, label %if.then190, label %if.else187.out_crit_edge

if.else187.out_crit_edge:                         ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then190:                                       ; preds = %if.else187
  %size192 = getelementptr inbounds %struct.hbucket, ptr %25, i32 0, i32 2
  %112 = ptrtoint ptr %size192 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %size192, align 8
  %conv193 = zext i8 %113 to i32
  %sub194 = add nsw i32 %conv193, -2
  %mul195 = mul i32 %sub194, %3
  %add196 = add i32 %mul195, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add196, i32 noundef 2848) #16
  %tobool198.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool198.not, label %if.then190.out_crit_edge, label %if.end200

if.then190.out_crit_edge:                         ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end200:                                        ; preds = %if.then190
  %114 = ptrtoint ptr %size192 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %size192, align 8
  %sub203 = add i8 %115, -2
  %size205 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 2
  %116 = ptrtoint ptr %size205 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %sub203, ptr %size205, align 16
  %117 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %cmp209509.not = icmp eq i8 %118, 0
  br i1 %cmp209509.not, label %if.end200.for.end231_crit_edge, label %for.body211.lr.ph

if.end200.for.end231_crit_edge:                   ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end231

for.body211.lr.ph:                                ; preds = %if.end200
  %value222 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 5
  %used226 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 1
  br label %for.body211

for.body211:                                      ; preds = %for.inc229.for.body211_crit_edge, %for.body211.lr.ph
  %j.1511 = phi i32 [ 0, %for.body211.lr.ph ], [ %inc230, %for.inc229.for.body211_crit_edge ]
  %k.3510 = phi i32 [ 0, %for.body211.lr.ph ], [ %k.4, %for.inc229.for.body211_crit_edge ]
  %div3.i451 = lshr i32 %j.1511, 5
  %arrayidx.i452 = getelementptr i32, ptr %used, i32 %div3.i451
  %119 = ptrtoint ptr %arrayidx.i452 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %arrayidx.i452, align 4
  %and.i453 = and i32 %j.1511, 31
  %121 = shl nuw i32 1, %and.i453
  %122 = and i32 %120, %121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool215.not = icmp eq i32 %122, 0
  br i1 %tobool215.not, label %for.body211.for.inc229_crit_edge, label %if.end217

for.body211.for.inc229_crit_edge:                 ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc229

if.end217:                                        ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #14
  %mul220 = mul i32 %j.1511, %3
  %add.ptr221 = getelementptr i8, ptr %value51, i32 %mul220
  %mul224 = mul i32 %k.3510, %3
  %add.ptr225 = getelementptr i8, ptr %value222, i32 %mul224
  %123 = call ptr @memcpy(ptr %add.ptr225, ptr %add.ptr221, i32 %3)
  tail call void @_set_bit(i32 noundef %k.3510, ptr noundef %used226) #12
  %inc228 = add i32 %k.3510, 1
  br label %for.inc229

for.inc229:                                       ; preds = %if.end217, %for.body211.for.inc229_crit_edge
  %k.4 = phi i32 [ %inc228, %if.end217 ], [ %k.3510, %for.body211.for.inc229_crit_edge ]
  %inc230 = add nuw nsw i32 %j.1511, 1
  %124 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %pos, align 1
  %conv208 = zext i8 %125 to i32
  %cmp209 = icmp ult i32 %inc230, %conv208
  br i1 %cmp209, label %for.inc229.for.body211_crit_edge, label %for.inc229.for.end231_crit_edge

for.inc229.for.end231_crit_edge:                  ; preds = %for.inc229
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end231

for.inc229.for.body211_crit_edge:                 ; preds = %for.inc229
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body211

for.end231:                                       ; preds = %for.inc229.for.end231_crit_edge, %if.end200.for.end231_crit_edge
  %k.3.lcssa = phi i32 [ 0, %if.end200.for.end231_crit_edge ], [ %k.4, %for.inc229.for.end231_crit_edge ]
  %conv232 = trunc i32 %k.3.lcssa to i8
  %pos233 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 3
  %126 = ptrtoint ptr %pos233 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv232, ptr %pos233, align 1
  %mul234.neg = mul i32 %3, -2
  %add235.neg = add i32 %mul234.neg, -24
  %127 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hregion, align 4
  %ext_size238 = getelementptr %struct.ip_set_region, ptr %128, i32 %rem, i32 1
  %129 = ptrtoint ptr %ext_size238 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ext_size238, align 4
  %sub239 = add i32 %add235.neg, %130
  store i32 %sub239, ptr %ext_size238, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !246
  br label %out.sink.split

for.inc297:                                       ; preds = %hash_netport6_data_equal.exit.for.inc297_crit_edge, %land.lhs.true7.i.for.inc297_crit_edge, %land.lhs.true.i468.for.inc297_crit_edge, %if.end50.for.inc297_crit_edge, %if.then49
  %k.5 = phi i32 [ %k.0501, %hash_netport6_data_equal.exit.for.inc297_crit_edge ], [ %inc, %if.then49 ], [ %k.0501, %land.lhs.true7.i.for.inc297_crit_edge ], [ %k.0501, %land.lhs.true.i468.for.inc297_crit_edge ], [ %k.0501, %if.end50.for.inc297_crit_edge ]
  %inc298 = add nuw nsw i32 %i.0502, 1
  %exitcond.not = icmp eq i32 %inc298, %conv44
  br i1 %exitcond.not, label %for.inc297.out_crit_edge, label %for.inc297.for.body_crit_edge

for.inc297.for.body_crit_edge:                    ; preds = %for.inc297
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc297.out_crit_edge:                         ; preds = %for.inc297
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out.sink.split:                                   ; preds = %for.end231, %if.then130
  %retval.1.i.i493.sink = phi ptr [ %call9.i.i, %for.end231 ], [ null, %if.then130 ]
  %131 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %retval.1.i.i493.sink, ptr %arrayidx27, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %25, ptr noundef null) #12
  br label %out

out:                                              ; preds = %out.sink.split, %for.inc297.out_crit_edge, %if.then190.out_crit_edge, %if.else187.out_crit_edge, %ip_set_timeout_expired.exit.out_crit_edge, %for.cond.preheader.out_crit_edge, %do.end39.out_crit_edge
  %ret.0 = phi i32 [ -4103, %ip_set_timeout_expired.exit.out_crit_edge ], [ 0, %if.else187.out_crit_edge ], [ -4103, %do.end39.out_crit_edge ], [ 0, %if.then190.out_crit_edge ], [ -4103, %for.cond.preheader.out_crit_edge ], [ 0, %out.sink.split ], [ -4103, %for.inc297.out_crit_edge ]
  %x.1 = phi ptr [ null, %ip_set_timeout_expired.exit.out_crit_edge ], [ %x.0, %if.else187.out_crit_edge ], [ null, %do.end39.out_crit_edge ], [ %x.0, %if.then190.out_crit_edge ], [ null, %for.cond.preheader.out_crit_edge ], [ %x.0, %out.sink.split ], [ null, %for.inc297.out_crit_edge ]
  %132 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %hregion, align 4
  %arrayidx301 = getelementptr %struct.ip_set_region, ptr %133, i32 %rem
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx301) #12
  %tobool303.not = icmp eq ptr %x.1, null
  br i1 %tobool303.not, label %out.if.end308_crit_edge, label %if.then304

out.if.end308_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end308

if.then304:                                       ; preds = %out
  %lock305 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock305) #12
  %ad306 = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 5
  %134 = ptrtoint ptr %ad306 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ad306, align 4
  %call.i.i483 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %x.1, ptr noundef %ad306, ptr noundef %135) #12
  br i1 %call.i.i483, label %if.end.i.i484, label %if.then304.list_add.exit_crit_edge

if.then304.list_add.exit_crit_edge:               ; preds = %if.then304
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i484:                                    ; preds = %if.then304
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %x.1, ptr %prev1.i.i, align 4
  %137 = ptrtoint ptr %x.1 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %135, ptr %x.1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %x.1, i32 0, i32 1
  %138 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %ad306, ptr %prev3.i.i, align 4
  %139 = ptrtoint ptr %ad306 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %x.1, ptr %ad306, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i484, %if.then304.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock305) #12
  br label %if.end308

if.end308:                                        ; preds = %list_add.exit, %out.if.end308_crit_edge
  %call.i.i456 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %140 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !232
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %140, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !233
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true312, label %if.end308.cleanup328_crit_edge

if.end308.cleanup328_crit_edge:                   ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup328

land.lhs.true312:                                 ; preds = %if.end308
  %call.i.i457 = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #12
  %141 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool315.not = icmp eq i32 %142, 0
  br i1 %tobool315.not, label %land.lhs.true312.cleanup328_crit_edge, label %do.body317

land.lhs.true312.cleanup328_crit_edge:            ; preds = %land.lhs.true312
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup328

do.body317:                                       ; preds = %land.lhs.true312
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport6_del.__UNIQUE_ID_ddebug749, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport6_del, %if.then323)) #12
          to label %do.end.i [label %if.then323], !srcloc !222

if.then323:                                       ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport6_del.__UNIQUE_ID_ddebug749, ptr noundef nonnull @.str.20, ptr noundef %5) #12
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.then323, %do.body317
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.do.end.i_crit_edge ], [ 0, %do.body317 ], [ 0, %if.then323 ]
  %arrayidx.i486 = getelementptr %struct.htable, ptr %5, i32 0, i32 5, i32 %i.017.i
  %143 = ptrtoint ptr %arrayidx.i486 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.i486, align 4
  %tobool.not.i487 = icmp eq ptr %144, null
  br i1 %tobool.not.i487, label %do.end.i.for.inc.i_crit_edge, label %if.end.i488

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i488:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %144) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i488, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %145 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %htable_bits, align 4
  %conv.i = zext i8 %146 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i
  %cmp.i489 = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i489, label %for.inc.i.do.end.i_crit_edge, label %hash_netport6_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hash_netport6_ahash_destroy.exit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %147 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %148) #12
  tail call void @ip_set_free(ptr noundef %5) #12
  br label %cleanup328

cleanup328:                                       ; preds = %hash_netport6_ahash_destroy.exit, %land.lhs.true312.cleanup328_crit_edge, %if.end308.cleanup328_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netport6_test(ptr noundef %set, ptr nocapture noundef %value, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 750, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end8_crit_edge

rcu_read_lock_bh.exit.do.end8_crit_edge:          ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b91 = load i1, ptr @hash_netport6_test.__warned, align 1
  br i1 %.b91, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport6_test.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1224, ptr noundef nonnull @.str.8) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock_bh.exit.do.end8_crit_edge
  %cidr = getelementptr inbounds %struct.hash_netport6_elem, ptr %value, i32 0, i32 3
  %4 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %cidr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %bf.load)
  %cmp10.not = icmp ugt i8 %bf.load, -3
  br i1 %cmp10.not, label %if.then16, label %jhash2.exit

if.then16:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = tail call fastcc i32 @hash_netport6_test_cidrs(ptr noundef %set, ptr noundef %value, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags)
  br label %out

jhash2.exit:                                      ; preds = %do.end8
  %initval = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %initval, align 4
  %add1.i = add i32 %6, -559038717
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %add2.i = add i32 %8, %add1.i
  %arrayidx3.i = getelementptr i32, ptr %value, i32 1
  %9 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx3.i, align 4
  %add4.i = add i32 %10, %add1.i
  %arrayidx5.i = getelementptr i32, ptr %value, i32 2
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx5.i, align 4
  %add6.i = add i32 %12, %add1.i
  %sub.i = sub i32 %add2.i, %add6.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #12
  %xor.i = xor i32 %sub.i, %or.i.i
  %add7.i = add i32 %add6.i, %add4.i
  %sub8.i = sub i32 %add4.i, %xor.i
  %or.i135.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #12
  %xor10.i = xor i32 %sub8.i, %or.i135.i
  %add11.i = add i32 %xor.i, %add7.i
  %sub12.i = sub i32 %add7.i, %xor10.i
  %or.i136.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i, i32 %xor10.i, i32 8) #12
  %xor14.i = xor i32 %sub12.i, %or.i136.i
  %add15.i = add i32 %xor10.i, %add11.i
  %sub16.i = sub i32 %add11.i, %xor14.i
  %or.i137.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 16) #12
  %xor18.i = xor i32 %sub16.i, %or.i137.i
  %add19.i = add i32 %xor14.i, %add15.i
  %sub20.i = sub i32 %add15.i, %xor18.i
  %or.i138.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 19) #12
  %xor22.i = xor i32 %sub20.i, %or.i138.i
  %add23.i = add i32 %xor18.i, %add19.i
  %sub24.i = sub i32 %add19.i, %xor22.i
  %or.i139.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i, i32 %xor22.i, i32 4) #12
  %xor26.i = xor i32 %sub24.i, %or.i139.i
  %add27.i = add i32 %xor22.i, %add23.i
  %add.ptr.i = getelementptr i32, ptr %value, i32 3
  %arrayidx32.i = getelementptr i32, ptr %value, i32 4
  %13 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %14, %add27.i
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 4
  %add36.i = add i32 %16, %add23.i
  %xor37.i = xor i32 %xor26.i, %add33.i
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #12
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %add36.i, %sub39.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #12
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #12
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #12
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #12
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #12
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #12
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  %htable_bits = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %htable_bits, align 4
  %conv24 = zext i8 %18 to i32
  %notmask = shl nsw i32 -1, %conv24
  %sub = xor i32 %notmask, -1
  %and = and i32 %sub57.i, %sub
  %arrayidx = getelementptr %struct.htable, ptr %3, i32 0, i32 5, i32 %and
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx, align 4
  %call30 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true32, label %jhash2.exit.do.end40_crit_edge

jhash2.exit.do.end40_crit_edge:                   ; preds = %jhash2.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end40

land.lhs.true32:                                  ; preds = %jhash2.exit
  %call33 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true32.do.end40_crit_edge, label %land.lhs.true35

land.lhs.true32.do.end40_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end40

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %.b8990 = load i1, ptr @hash_netport6_test.__warned.52, align 1
  br i1 %.b8990, label %land.lhs.true35.do.end40_crit_edge, label %if.then37

land.lhs.true35.do.end40_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end40

if.then37:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport6_test.__warned.52, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1239, ptr noundef nonnull @.str.8) #12
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %land.lhs.true35.do.end40_crit_edge, %land.lhs.true32.do.end40_crit_edge, %jhash2.exit.do.end40_crit_edge
  %tobool42.not = icmp eq ptr %20, null
  br i1 %tobool42.not, label %do.end40.out_crit_edge, label %for.cond45.preheader

do.end40.out_crit_edge:                           ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.cond45.preheader:                             ; preds = %do.end40
  %pos = getelementptr inbounds %struct.hbucket, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp47107.not = icmp eq i8 %22, 0
  br i1 %cmp47107.not, label %for.cond45.preheader.out_crit_edge, label %for.body49.lr.ph

for.cond45.preheader.out_crit_edge:               ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body49.lr.ph:                                 ; preds = %for.cond45.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %20, i32 0, i32 1
  %value54 = getelementptr inbounds %struct.hbucket, ptr %20, i32 0, i32 5
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %port4.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %value, i32 0, i32 1
  %proto9.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %value, i32 0, i32 2
  br label %for.body49

for.body49:                                       ; preds = %for.inc64.for.body49_crit_edge, %for.body49.lr.ph
  %i.1108 = phi i32 [ 0, %for.body49.lr.ph ], [ %inc65, %for.inc64.for.body49_crit_edge ]
  %div3.i = lshr i32 %i.1108, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.1108, 31
  %25 = shl nuw i32 1, %and.i
  %26 = and i32 %24, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool51.not = icmp eq i32 %26, 0
  br i1 %tobool51.not, label %for.body49.for.inc64_crit_edge, label %if.end53

for.body49.for.inc64_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc64

if.end53:                                         ; preds = %for.body49
  %27 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dsize, align 4
  %mul = mul i32 %28, %i.1108
  %add.ptr = getelementptr i8, ptr %value54, i32 %mul
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr, align 4
  %31 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %value, align 4
  %xor.i.i = xor i32 %32, %30
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx4.i.i, align 4
  %35 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx3.i, align 4
  %xor7.i.i = xor i32 %36, %34
  %or.i.i92 = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx9.i.i, align 4
  %39 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx5.i, align 4
  %xor12.i.i = xor i32 %40, %38
  %or13.i.i = or i32 %or.i.i92, %xor12.i.i
  %arrayidx15.i.i = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx15.i.i, align 4
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i, align 4
  %xor18.i.i = xor i32 %44, %42
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true.i94, label %if.end53.for.inc64_crit_edge

if.end53.for.inc64_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc64

land.lhs.true.i94:                                ; preds = %if.end53
  %port.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %add.ptr, i32 0, i32 1
  %45 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %port.i, align 4
  %47 = ptrtoint ptr %port4.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %port4.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %46, i16 %48)
  %cmp.i93 = icmp eq i16 %46, %48
  br i1 %cmp.i93, label %land.lhs.true7.i, label %land.lhs.true.i94.for.inc64_crit_edge

land.lhs.true.i94.for.inc64_crit_edge:            ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc64

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i94
  %proto.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %add.ptr, i32 0, i32 2
  %49 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %proto.i, align 2
  %51 = ptrtoint ptr %proto9.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %proto9.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %52)
  %cmp11.i = icmp eq i8 %50, %52
  br i1 %cmp11.i, label %hash_netport6_data_equal.exit, label %land.lhs.true7.i.for.inc64_crit_edge

land.lhs.true7.i.for.inc64_crit_edge:             ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc64

hash_netport6_data_equal.exit:                    ; preds = %land.lhs.true7.i
  %cidr.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %add.ptr, i32 0, i32 3
  %53 = ptrtoint ptr %cidr.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load.i = load i8, ptr %cidr.i, align 1
  %54 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load15.i = load i8, ptr %cidr, align 1
  %cmp18.unshifted.i = xor i8 %bf.load15.i, %bf.load.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %cmp18.unshifted.i)
  %cmp18.i = icmp ult i8 %cmp18.unshifted.i, 2
  br i1 %cmp18.i, label %if.end58, label %hash_netport6_data_equal.exit.for.inc64_crit_edge

hash_netport6_data_equal.exit.for.inc64_crit_edge: ; preds = %hash_netport6_data_equal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc64

if.end58:                                         ; preds = %hash_netport6_data_equal.exit
  %call.i95 = tail call zeroext i1 @ip_set_match_extensions(ptr noundef %set, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags, ptr noundef %add.ptr) #12
  br i1 %call.i95, label %hash_netport6_data_match.exit, label %if.end58.for.inc64_crit_edge

if.end58.for.inc64_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc64

hash_netport6_data_match.exit:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %cidr.i.le = getelementptr inbounds %struct.hash_netport6_elem, ptr %add.ptr, i32 0, i32 3
  %55 = ptrtoint ptr %cidr.i.le to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load.i.i = load i8, ptr %cidr.i.le, align 1
  %bf.clear.i.i = and i8 %bf.load.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i.i)
  %tobool.not.i.i = icmp eq i8 %bf.clear.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 -39
  br label %out

for.inc64:                                        ; preds = %if.end58.for.inc64_crit_edge, %hash_netport6_data_equal.exit.for.inc64_crit_edge, %land.lhs.true7.i.for.inc64_crit_edge, %land.lhs.true.i94.for.inc64_crit_edge, %if.end53.for.inc64_crit_edge, %for.body49.for.inc64_crit_edge
  %inc65 = add nuw nsw i32 %i.1108, 1
  %56 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %pos, align 1
  %conv46 = zext i8 %57 to i32
  %cmp47 = icmp ult i32 %inc65, %conv46
  br i1 %cmp47, label %for.inc64.for.body49_crit_edge, label %for.inc64.out_crit_edge

for.inc64.out_crit_edge:                          ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.inc64.for.body49_crit_edge:                   ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body49

out:                                              ; preds = %for.inc64.out_crit_edge, %hash_netport6_data_match.exit, %for.cond45.preheader.out_crit_edge, %do.end40.out_crit_edge, %if.then16
  %ret.2 = phi i32 [ %call17, %if.then16 ], [ %cond.i.i, %hash_netport6_data_match.exit ], [ 0, %do.end40.out_crit_edge ], [ 0, %for.cond45.preheader.out_crit_edge ], [ 0, %for.inc64.out_crit_edge ]
  %call.i96 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i96, label %out.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i99

out.rcu_read_unlock_bh.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i99:                                ; preds = %out
  %call1.i97 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i97)
  %tobool.not.i98 = icmp eq i32 %call1.i97, 0
  br i1 %tobool.not.i98, label %land.lhs.true.i99.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i101

land.lhs.true.i99.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i101:                              ; preds = %land.lhs.true.i99
  %.b4.i100 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i100, label %land.lhs.true2.i101.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i102

land.lhs.true2.i101.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i101
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i102:                                     ; preds = %land.lhs.true2.i101
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i102, %land.lhs.true2.i101.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i99.rcu_read_unlock_bh.exit_crit_edge, %out.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netport6_resize(ptr noundef %set, i1 noundef zeroext %retried) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dsize1 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %2 = ptrtoint ptr %dsize1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsize1, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup426_crit_edge, label %if.end

entry.cleanup426_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup426

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %1, align 4
  %call5 = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #12
  br i1 %call5, label %if.end.do.end15_crit_edge, label %lor.lhs.false

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

lor.lhs.false:                                    ; preds = %if.end
  %call6 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %lor.lhs.false.do.end15_crit_edge

lor.lhs.false.do.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b581 = load i1, ptr @hash_netport6_resize.__warned, align 1
  br i1 %.b581, label %land.lhs.true10.do.end15_crit_edge, label %if.then12

land.lhs.true10.do.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport6_resize.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 647, ptr noundef nonnull @.str.8) #12
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %land.lhs.true10.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %lor.lhs.false.do.end15_crit_edge, %if.end.do.end15_crit_edge
  %htable_bits17 = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %htable_bits17 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %htable_bits17, align 4
  %maxelem = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 2
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx165 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %nomatch.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %call9.i, i32 0, i32 3
  %initval = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 3
  %bucketsize = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 4
  %mul260 = shl i32 %3, 1
  %add261 = add i32 %mul260, 24
  %uglygep = getelementptr i8, ptr %call9.i, i32 12
  %arrayidx3.i = getelementptr i32, ptr %call9.i, i32 1
  %arrayidx5.i = getelementptr i32, ptr %call9.i, i32 2
  %arrayidx32.i = getelementptr i32, ptr %call9.i, i32 4
  br label %retry

retry:                                            ; preds = %hash_netport6_ahash_destroy.exit681.retry_crit_edge, %do.end15
  %htable_bits.0 = phi i8 [ %7, %do.end15 ], [ %inc, %hash_netport6_ahash_destroy.exit681.retry_crit_edge ]
  %inc = add i8 %htable_bits.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc)
  %tobool18.not = icmp eq i8 %inc, 0
  br i1 %tobool18.not, label %retry.do.end421_crit_edge, label %if.end20

retry.do.end421_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end421

if.end20:                                         ; preds = %retry
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %inc)
  %cmp3.i = icmp ugt i8 %inc, 28
  %conv.i = zext i8 %inc to i32
  %mul.i = shl i32 4, %conv.i
  %add.i = add i32 %mul.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool22.not703 = icmp eq i32 %add.i, 0
  %tobool22.not = select i1 %cmp3.i, i1 true, i1 %tobool22.not703
  br i1 %tobool22.not, label %if.end20.do.end421_crit_edge, label %if.end24

if.end20.do.end421_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end421

if.end24:                                         ; preds = %if.end20
  %call25 = tail call ptr @ip_set_alloc(i32 noundef %add.i) #12
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.out_crit_edge, label %if.end28

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %inc)
  %cmp = icmp ult i8 %inc, 10
  %sub = add nsw i32 %conv.i, -10
  %shl = shl nuw i32 1, %sub
  %cond = select i1 %cmp, i32 1, i32 %shl
  %mul = mul i32 %cond, 52
  %call31 = tail call ptr @ip_set_alloc(i32 noundef %mul) #12
  %hregion = getelementptr inbounds %struct.htable, ptr %call25, i32 0, i32 4
  %8 = ptrtoint ptr %hregion to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call31, ptr %hregion, align 4
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ip_set_free(ptr noundef nonnull %call25) #12
  br label %out

if.end35:                                         ; preds = %if.end28
  %htable_bits36 = getelementptr inbounds %struct.htable, ptr %call25, i32 0, i32 2
  %9 = ptrtoint ptr %htable_bits36 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %inc, ptr %htable_bits36, align 4
  %10 = ptrtoint ptr %maxelem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maxelem, align 4
  %12 = select i1 %cmp, i32 0, i32 %sub
  %div704 = lshr i32 %11, %12
  %maxelem47 = getelementptr inbounds %struct.htable, ptr %call25, i32 0, i32 3
  %13 = ptrtoint ptr %maxelem47 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div704, ptr %maxelem47, align 4
  br label %do.body60

do.body60:                                        ; preds = %do.body60.do.body60_crit_edge, %if.end35
  %i.0708 = phi i32 [ 0, %if.end35 ], [ %inc65, %do.body60.do.body60_crit_edge ]
  %14 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hregion, align 4
  %arrayidx = getelementptr %struct.ip_set_region, ptr %15, i32 %i.0708
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.6, ptr noundef nonnull @hash_netport6_resize.__key, i16 noundef signext 3) #12
  %inc65 = add nuw i32 %i.0708, 1
  %exitcond.not = icmp eq i32 %inc65, %cond
  br i1 %exitcond.not, label %for.end, label %do.body60.do.body60_crit_edge

do.body60.do.body60_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body60

for.end:                                          ; preds = %do.body60
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %1, align 4
  %call72 = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #12
  br i1 %call72, label %for.end.do.end85_crit_edge, label %lor.lhs.false74

for.end.do.end85_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end85

lor.lhs.false74:                                  ; preds = %for.end
  %call75 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %land.lhs.true77, label %lor.lhs.false74.do.end85_crit_edge

lor.lhs.false74.do.end85_crit_edge:               ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end85

land.lhs.true77:                                  ; preds = %lor.lhs.false74
  %call78 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %land.lhs.true77.do.end85_crit_edge, label %land.lhs.true80

land.lhs.true77.do.end85_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end85

land.lhs.true80:                                  ; preds = %land.lhs.true77
  %.b579580 = load i1, ptr @hash_netport6_resize.__warned.55, align 1
  br i1 %.b579580, label %land.lhs.true80.do.end85_crit_edge, label %if.then82

land.lhs.true80.do.end85_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end85

if.then82:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport6_resize.__warned.55, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 677, ptr noundef nonnull @.str.8) #12
  br label %do.end85

do.end85:                                         ; preds = %if.then82, %land.lhs.true80.do.end85_crit_edge, %land.lhs.true77.do.end85_crit_edge, %lor.lhs.false74.do.end85_crit_edge, %for.end.do.end85_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %17, i32 noundef 4) #12
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %17, align 4
  %uref = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 1
  %call.i.i584 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport6_resize.__UNIQUE_ID_ddebug713, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport6_resize, %if.then94)) #12
          to label %do.end100 [label %if.then94], !srcloc !222

if.then94:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #14
  %htable_bits95 = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %htable_bits95 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %htable_bits95, align 4
  %conv96 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport6_resize.__UNIQUE_ID_ddebug713, ptr noundef nonnull @.str.27, ptr noundef %set, i32 noundef %conv96, i32 noundef %conv.i, ptr noundef %17) #12
  br label %do.end100

do.end100:                                        ; preds = %if.then94, %do.end85
  %htable_bits102 = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 2
  %notmask = shl nsw i32 -1, %conv.i
  %sub178 = xor i32 %notmask, -1
  %22 = add i32 %cond, -1
  br label %for.body116

for.body116:                                      ; preds = %rcu_read_unlock_bh.exit.for.body116_crit_edge, %do.end100
  %r.0724 = phi i32 [ 0, %do.end100 ], [ %inc303, %rcu_read_unlock_bh.exit.for.body116_crit_edge ]
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %for.body116.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

for.body116.rcu_read_lock_bh.exit_crit_edge:      ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %for.body116
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i596

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

if.then.i596:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 750, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i596, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %for.body116.rcu_read_lock_bh.exit_crit_edge
  %23 = ptrtoint ptr %htable_bits102 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %htable_bits102, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %24)
  %cmp119 = icmp ult i8 %24, 10
  %mul123 = shl i32 %r.0724, 10
  %spec.select = select i1 %cmp119, i32 0, i32 %mul123
  %mul136 = add i32 %mul123, 1024
  %conv128714 = zext i8 %24 to i32
  %shl134715 = shl nuw i32 1, %conv128714
  %cond138716 = select i1 %cmp119, i32 %shl134715, i32 %mul136
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %cond138716)
  %cmp139717 = icmp ult i32 %spec.select, %cond138716
  br i1 %cmp139717, label %rcu_read_lock_bh.exit.do.end144_crit_edge, label %rcu_read_lock_bh.exit.for.end301_crit_edge

rcu_read_lock_bh.exit.for.end301_crit_edge:       ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end301

rcu_read_lock_bh.exit.do.end144_crit_edge:        ; preds = %rcu_read_lock_bh.exit
  br label %do.end144

do.end144:                                        ; preds = %for.inc299.do.end144_crit_edge, %rcu_read_lock_bh.exit.do.end144_crit_edge
  %i.1718 = phi i32 [ %inc300, %for.inc299.do.end144_crit_edge ], [ %spec.select, %rcu_read_lock_bh.exit.do.end144_crit_edge ]
  %arrayidx146 = getelementptr %struct.htable, ptr %17, i32 0, i32 5, i32 %i.1718
  %25 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx146, align 4
  %tobool147.not = icmp eq ptr %26, null
  br i1 %tobool147.not, label %do.end144.for.inc299_crit_edge, label %for.cond150.preheader

do.end144.for.inc299_crit_edge:                   ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc299

for.cond150.preheader:                            ; preds = %do.end144
  %pos = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp152710.not = icmp eq i8 %28, 0
  br i1 %cmp152710.not, label %for.cond150.preheader.for.inc299_crit_edge, label %for.body154.lr.ph

for.cond150.preheader.for.inc299_crit_edge:       ; preds = %for.cond150.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc299

for.body154.lr.ph:                                ; preds = %for.cond150.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 5
  br label %for.body154

for.body154:                                      ; preds = %for.inc296.for.body154_crit_edge, %for.body154.lr.ph
  %j.0711 = phi i32 [ 0, %for.body154.lr.ph ], [ %inc297, %for.inc296.for.body154_crit_edge ]
  %div3.i = lshr i32 %j.0711, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %j.0711, 31
  %31 = shl nuw i32 1, %and.i
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool157.not = icmp eq i32 %32, 0
  br i1 %tobool157.not, label %for.body154.for.inc296_crit_edge, label %if.end159

for.body154.for.inc296_crit_edge:                 ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc296

if.end159:                                        ; preds = %for.body154
  %mul161 = mul i32 %j.0711, %3
  %add.ptr = getelementptr i8, ptr %value, i32 %mul161
  %33 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %extensions, align 2
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool163.not = icmp eq i8 %35, 0
  br i1 %tobool163.not, label %if.end159.jhash2.exit_crit_edge, label %land.lhs.true164

if.end159.jhash2.exit_crit_edge:                  ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #14
  br label %jhash2.exit

land.lhs.true164:                                 ; preds = %if.end159
  %36 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx165, align 4
  %add.ptr166 = getelementptr i8, ptr %add.ptr, i32 %37
  %38 = ptrtoint ptr %add.ptr166 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not.i = icmp eq i32 %39, 0
  br i1 %cmp.not.i, label %land.lhs.true164.jhash2.exit_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true164.jhash2.exit_crit_edge:           ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #14
  br label %jhash2.exit

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true164
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %39, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.for.inc296_crit_edge, label %ip_set_timeout_expired.exit.jhash2.exit_crit_edge

ip_set_timeout_expired.exit.jhash2.exit_crit_edge: ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %jhash2.exit

ip_set_timeout_expired.exit.for.inc296_crit_edge: ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc296

jhash2.exit:                                      ; preds = %ip_set_timeout_expired.exit.jhash2.exit_crit_edge, %land.lhs.true164.jhash2.exit_crit_edge, %if.end159.jhash2.exit_crit_edge
  %41 = call ptr @memcpy(ptr %call9.i, ptr %add.ptr, i32 %3)
  %42 = ptrtoint ptr %nomatch.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i = load i8, ptr %nomatch.i, align 1
  %bf.clear3.i = and i8 %bf.load.i, -2
  store i8 %bf.clear3.i, ptr %nomatch.i, align 1
  %43 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %initval, align 4
  %add1.i = add i32 %44, -559038717
  %45 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call9.i, align 128
  %add2.i = add i32 %46, %add1.i
  %47 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx3.i, align 4
  %add4.i = add i32 %48, %add1.i
  %49 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx5.i, align 8
  %add6.i = add i32 %50, %add1.i
  %sub.i597 = sub i32 %add2.i, %add6.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #12
  %xor.i = xor i32 %sub.i597, %or.i.i
  %add7.i = add i32 %add6.i, %add4.i
  %sub8.i = sub i32 %add4.i, %xor.i
  %or.i135.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #12
  %xor10.i = xor i32 %sub8.i, %or.i135.i
  %add11.i = add i32 %xor.i, %add7.i
  %sub12.i = sub i32 %add7.i, %xor10.i
  %or.i136.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i, i32 %xor10.i, i32 8) #12
  %xor14.i = xor i32 %sub12.i, %or.i136.i
  %add15.i = add i32 %xor10.i, %add11.i
  %sub16.i = sub i32 %add11.i, %xor14.i
  %or.i137.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 16) #12
  %xor18.i = xor i32 %sub16.i, %or.i137.i
  %add19.i = add i32 %xor14.i, %add15.i
  %sub20.i = sub i32 %add15.i, %xor18.i
  %or.i138.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 19) #12
  %xor22.i = xor i32 %sub20.i, %or.i138.i
  %add23.i = add i32 %xor18.i, %add19.i
  %sub24.i = sub i32 %add19.i, %xor22.i
  %or.i139.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i, i32 %xor22.i, i32 4) #12
  %xor26.i = xor i32 %sub24.i, %or.i139.i
  %add27.i = add i32 %xor22.i, %add23.i
  %bf.clear.i = and i8 %bf.load.i, 1
  %51 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx32.i, align 16
  %add33.i = add i32 %52, %add27.i
  %53 = ptrtoint ptr %uglygep to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %uglygep, align 4
  %add36.i = add i32 %54, %add23.i
  %xor37.i = xor i32 %xor26.i, %add33.i
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #12
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %add36.i, %sub39.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #12
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #12
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #12
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #12
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #12
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #12
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  %and179 = and i32 %sub57.i, %sub178
  %arrayidx185 = getelementptr %struct.htable, ptr %call25, i32 0, i32 5, i32 %and179
  %55 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx185, align 4
  %rem = and i32 %and179, %22
  %tobool196.not = icmp eq ptr %56, null
  br i1 %tobool196.not, label %if.end8.i.i, label %if.else

if.end8.i.i:                                      ; preds = %jhash2.exit
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add261, i32 noundef 2848) #16
  %tobool201.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool201.not, label %if.end8.i.i.cleanup412_crit_edge, label %if.end203

if.end8.i.i.cleanup412_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup412

if.end203:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %size = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 2
  %57 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 2, ptr %size, align 16
  %58 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %59, i32 %rem, i32 1
  %60 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ext_size, align 4
  %add208 = add i32 %61, %add261
  store i32 %add208, ptr %ext_size, align 4
  br label %if.end281.sink.split

if.else:                                          ; preds = %jhash2.exit
  %pos223 = getelementptr inbounds %struct.hbucket, ptr %56, i32 0, i32 3
  %62 = ptrtoint ptr %pos223 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %pos223, align 1
  %size225 = getelementptr inbounds %struct.hbucket, ptr %56, i32 0, i32 2
  %64 = ptrtoint ptr %size225 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %size225, align 8
  %conv226 = zext i8 %65 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %65)
  %cmp227.not = icmp ult i8 %63, %65
  br i1 %cmp227.not, label %if.else.if.end281_crit_edge, label %if.then229

if.else.if.end281_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end281

if.then229:                                       ; preds = %if.else
  %66 = ptrtoint ptr %bucketsize to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bucketsize, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %67)
  %cmp233.not = icmp ult i8 %65, %67
  br i1 %cmp233.not, label %if.end8.i.i630, label %if.then229.cleanup412_crit_edge

if.then229.cleanup412_crit_edge:                  ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup412

if.end8.i.i630:                                   ; preds = %if.then229
  %add239 = add nuw nsw i32 %conv226, 2
  %mul240 = mul i32 %add239, %3
  %add241 = add i32 %mul240, 24
  %call9.i.i629 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add241, i32 noundef 2848) #16
  %tobool243.not = icmp eq ptr %call9.i.i629, null
  br i1 %tobool243.not, label %if.end8.i.i630.cleanup412_crit_edge, label %cleanup

if.end8.i.i630.cleanup412_crit_edge:              ; preds = %if.end8.i.i630
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup412

cleanup:                                          ; preds = %if.end8.i.i630
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %size225 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %size225, align 8
  %conv252 = zext i8 %69 to i32
  %mul253 = mul i32 %3, %conv252
  %add254 = add i32 %mul253, 24
  %70 = call ptr @memcpy(ptr %call9.i.i629, ptr %56, i32 %add254)
  %71 = load i8, ptr %size225, align 8
  %add257 = add i8 %71, 2
  %size259 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i629, i32 0, i32 2
  %72 = ptrtoint ptr %size259 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %add257, ptr %size259, align 16
  %73 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hregion, align 4
  %ext_size264 = getelementptr %struct.ip_set_region, ptr %74, i32 %rem, i32 1
  %75 = ptrtoint ptr %ext_size264 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ext_size264, align 4
  %add265 = add i32 %add261, %76
  store i32 %add265, ptr %ext_size264, align 4
  tail call void @kfree(ptr noundef nonnull %56) #12
  br label %if.end281.sink.split

if.end281.sink.split:                             ; preds = %cleanup, %if.end203
  %ht.0.sink = phi ptr [ %call9.i.i629, %cleanup ], [ %call9.i.i, %if.end203 ]
  %77 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %ht.0.sink, ptr %arrayidx185, align 4
  br label %if.end281

if.end281:                                        ; preds = %if.end281.sink.split, %if.else.if.end281_crit_edge
  %m.1 = phi ptr [ %56, %if.else.if.end281_crit_edge ], [ %ht.0.sink, %if.end281.sink.split ]
  %value282 = getelementptr inbounds %struct.hbucket, ptr %m.1, i32 0, i32 5
  %pos284 = getelementptr inbounds %struct.hbucket, ptr %m.1, i32 0, i32 3
  %78 = ptrtoint ptr %pos284 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %pos284, align 1
  %conv285 = zext i8 %79 to i32
  %mul286 = mul i32 %3, %conv285
  %add.ptr287 = getelementptr i8, ptr %value282, i32 %mul286
  %80 = call ptr @memcpy(ptr %add.ptr287, ptr %call9.i, i32 %3)
  %81 = load i8, ptr %pos284, align 1
  %inc289 = add i8 %81, 1
  store i8 %inc289, ptr %pos284, align 1
  %conv290 = zext i8 %81 to i32
  %used291 = getelementptr inbounds %struct.hbucket, ptr %m.1, i32 0, i32 1
  tail call void @_set_bit(i32 noundef %conv290, ptr noundef %used291) #12
  %82 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %83, i32 %rem, i32 2
  %84 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %elements, align 4
  %inc295 = add i32 %85, 1
  store i32 %inc295, ptr %elements, align 4
  %nomatch.i633 = getelementptr inbounds %struct.hash_netport6_elem, ptr %add.ptr287, i32 0, i32 3
  %86 = ptrtoint ptr %nomatch.i633 to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load.i634 = load i8, ptr %nomatch.i633, align 1
  %bf.clear3.i638 = and i8 %bf.load.i634, -2
  %bf.set.i639 = or i8 %bf.clear3.i638, %bf.clear.i
  store i8 %bf.set.i639, ptr %nomatch.i633, align 1
  br label %for.inc296

for.inc296:                                       ; preds = %if.end281, %ip_set_timeout_expired.exit.for.inc296_crit_edge, %for.body154.for.inc296_crit_edge
  %inc297 = add nuw nsw i32 %j.0711, 1
  %87 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %pos, align 1
  %conv151 = zext i8 %88 to i32
  %cmp152 = icmp ult i32 %inc297, %conv151
  br i1 %cmp152, label %for.inc296.for.body154_crit_edge, label %for.inc296.for.inc299_crit_edge

for.inc296.for.inc299_crit_edge:                  ; preds = %for.inc296
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc299

for.inc296.for.body154_crit_edge:                 ; preds = %for.inc296
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body154

for.inc299:                                       ; preds = %for.inc296.for.inc299_crit_edge, %for.cond150.preheader.for.inc299_crit_edge, %do.end144.for.inc299_crit_edge
  %inc300 = add nuw i32 %i.1718, 1
  %89 = ptrtoint ptr %htable_bits102 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %htable_bits102, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %90)
  %cmp129 = icmp ult i8 %90, 10
  %conv128 = zext i8 %90 to i32
  %shl134 = shl nuw i32 1, %conv128
  %cond138 = select i1 %cmp129, i32 %shl134, i32 %mul136
  %cmp139 = icmp ult i32 %inc300, %cond138
  br i1 %cmp139, label %for.inc299.do.end144_crit_edge, label %for.inc299.for.end301_crit_edge

for.inc299.for.end301_crit_edge:                  ; preds = %for.inc299
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end301

for.inc299.do.end144_crit_edge:                   ; preds = %for.inc299
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end144

for.end301:                                       ; preds = %for.inc299.for.end301_crit_edge, %rcu_read_lock_bh.exit.for.end301_crit_edge
  %call.i640 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i640, label %for.end301.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i643

for.end301.rcu_read_unlock_bh.exit_crit_edge:     ; preds = %for.end301
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i643:                               ; preds = %for.end301
  %call1.i641 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i641)
  %tobool.not.i642 = icmp eq i32 %call1.i641, 0
  br i1 %tobool.not.i642, label %land.lhs.true.i643.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i645

land.lhs.true.i643.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i643
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i645:                              ; preds = %land.lhs.true.i643
  %.b4.i644 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i644, label %land.lhs.true2.i645.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i646

land.lhs.true2.i645.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i645
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i646:                                     ; preds = %land.lhs.true2.i645
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i646, %land.lhs.true2.i645.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i643.rcu_read_unlock_bh.exit_crit_edge, %for.end301.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  %inc303 = add nuw i32 %r.0724, 1
  %91 = ptrtoint ptr %htable_bits102 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %htable_bits102, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %92)
  %cmp104 = icmp ult i8 %92, 10
  %conv103 = zext i8 %92 to i32
  %sub110 = add nsw i32 %conv103, -10
  %shl111 = shl nuw i32 1, %sub110
  %cond113 = select i1 %cmp104, i32 1, i32 %shl111
  %cmp114 = icmp ult i32 %inc303, %cond113
  br i1 %cmp114, label %rcu_read_unlock_bh.exit.for.body116_crit_edge, label %do.body305

rcu_read_unlock_bh.exit.for.body116_crit_edge:    ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body116

do.body305:                                       ; preds = %rcu_read_unlock_bh.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !247
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %call25, ptr %1, align 4
  tail call void @synchronize_rcu() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport6_resize.__UNIQUE_ID_ddebug720, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport6_resize, %if.then358)) #12
          to label %do.end367 [label %if.then358], !srcloc !222

if.then358:                                       ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %htable_bits102 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %htable_bits102, align 4
  %conv362 = zext i8 %95 to i32
  %96 = ptrtoint ptr %htable_bits36 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %htable_bits36, align 4
  %conv364 = zext i8 %97 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport6_resize.__UNIQUE_ID_ddebug720, ptr noundef nonnull @.str.30, ptr noundef %set, i32 noundef %conv362, ptr noundef %17, i32 noundef %conv364, ptr noundef nonnull %call25) #12
  br label %do.end367

do.end367:                                        ; preds = %if.then358, %do.body305
  %ad = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 5
  %98 = ptrtoint ptr %ad to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ad, align 4
  %cmp.i647.not726 = icmp eq ptr %99, %ad
  br i1 %cmp.i647.not726, label %do.end367.for.end391_crit_edge, label %do.end367.for.body375_crit_edge

do.end367.for.body375_crit_edge:                  ; preds = %do.end367
  br label %for.body375

do.end367.for.end391_crit_edge:                   ; preds = %do.end367
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end391

for.body375:                                      ; preds = %list_del.exit.for.body375_crit_edge, %do.end367.for.body375_crit_edge
  %l.0727 = phi ptr [ %lt.0729, %list_del.exit.for.body375_crit_edge ], [ %99, %do.end367.for.body375_crit_edge ]
  %100 = ptrtoint ptr %l.0727 to i32
  call void @__asan_load4_noabort(i32 %100)
  %lt.0729 = load ptr, ptr %l.0727, align 4
  %ad378 = getelementptr inbounds %struct.hash_netport6_resize_ad, ptr %l.0727, i32 0, i32 1
  %101 = ptrtoint ptr %ad378 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ad378, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp379 = icmp eq i32 %102, 0
  %d382 = getelementptr inbounds %struct.hash_netport6_resize_ad, ptr %l.0727, i32 0, i32 2
  br i1 %cmp379, label %if.then381, label %if.else385

if.then381:                                       ; preds = %for.body375
  call void @__sanitizer_cov_trace_pc() #14
  %ext = getelementptr inbounds %struct.hash_netport6_resize_ad, ptr %l.0727, i32 0, i32 3
  %mext = getelementptr inbounds %struct.hash_netport6_resize_ad, ptr %l.0727, i32 0, i32 4
  %flags383 = getelementptr inbounds %struct.hash_netport6_resize_ad, ptr %l.0727, i32 0, i32 5
  %103 = ptrtoint ptr %flags383 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags383, align 8
  %call384 = tail call i32 @hash_netport6_add(ptr noundef %set, ptr noundef %d382, ptr noundef %ext, ptr noundef %mext, i32 noundef %104)
  br label %if.end388

if.else385:                                       ; preds = %for.body375
  call void @__sanitizer_cov_trace_pc() #14
  %call387 = tail call i32 @hash_netport6_del(ptr noundef %set, ptr noundef %d382, ptr noundef null, ptr noundef null, i32 noundef 0)
  br label %if.end388

if.end388:                                        ; preds = %if.else385, %if.then381
  %call.i.i649 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l.0727) #12
  br i1 %call.i.i649, label %if.end.i.i650, label %if.end388.list_del.exit_crit_edge

if.end388.list_del.exit_crit_edge:                ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i650:                                    ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %l.0727, i32 0, i32 1
  %105 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prev.i.i, align 4
  %107 = ptrtoint ptr %l.0727 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %l.0727, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %prev1.i.i.i, align 4
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %108, ptr %106, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i650, %if.end388.list_del.exit_crit_edge
  %111 = ptrtoint ptr %l.0727 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr inttoptr (i32 256 to ptr), ptr %l.0727, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %l.0727, i32 0, i32 1
  %112 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %l.0727) #12
  %cmp.i647.not = icmp eq ptr %lt.0729, %ad
  br i1 %cmp.i647.not, label %list_del.exit.for.end391_crit_edge, label %list_del.exit.for.body375_crit_edge

list_del.exit.for.body375_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body375

list_del.exit.for.end391_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end391

for.end391:                                       ; preds = %list_del.exit.for.end391_crit_edge, %do.end367.for.end391_crit_edge
  %call.i.i588 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %113 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !232
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %113, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !233
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i589 = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i589, label %do.body395, label %for.end391.out_crit_edge

for.end391.out_crit_edge:                         ; preds = %for.end391
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body395:                                       ; preds = %for.end391
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport6_resize.__UNIQUE_ID_ddebug721, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport6_resize, %if.then407)) #12
          to label %do.end.i [label %if.then407], !srcloc !222

if.then407:                                       ; preds = %do.body395
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport6_resize.__UNIQUE_ID_ddebug721, ptr noundef nonnull @.str.31, ptr noundef %17) #12
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.then407, %do.body395
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.do.end.i_crit_edge ], [ 0, %do.body395 ], [ 0, %if.then407 ]
  %arrayidx.i651 = getelementptr %struct.htable, ptr %17, i32 0, i32 5, i32 %i.017.i
  %114 = ptrtoint ptr %arrayidx.i651 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx.i651, align 4
  %tobool.not.i652 = icmp eq ptr %115, null
  br i1 %tobool.not.i652, label %do.end.i.for.inc.i_crit_edge, label %if.end.i653

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i653:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %115) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i653, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %116 = ptrtoint ptr %htable_bits102 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %htable_bits102, align 4
  %conv.i654 = zext i8 %117 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i654
  %cmp.i655 = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i655, label %for.inc.i.do.end.i_crit_edge, label %hash_netport6_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hash_netport6_ahash_destroy.exit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %hregion.i = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 4
  %118 = ptrtoint ptr %hregion.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hregion.i, align 4
  tail call void @ip_set_free(ptr noundef %119) #12
  tail call void @ip_set_free(ptr noundef %17) #12
  br label %out

out:                                              ; preds = %do.end421, %hash_netport6_ahash_destroy.exit681.out_crit_edge, %hash_netport6_ahash_destroy.exit, %for.end391.out_crit_edge, %if.then34, %if.end24.out_crit_edge
  %ret.7 = phi i32 [ 0, %hash_netport6_ahash_destroy.exit ], [ 0, %for.end391.out_crit_edge ], [ -12, %if.then34 ], [ -4352, %do.end421 ], [ -12, %if.end24.out_crit_edge ], [ %ret.8, %hash_netport6_ahash_destroy.exit681.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %cleanup426

cleanup412:                                       ; preds = %if.end8.i.i630.cleanup412_crit_edge, %if.then229.cleanup412_crit_edge, %if.end8.i.i.cleanup412_crit_edge
  %cmp415 = phi i1 [ false, %if.end8.i.i630.cleanup412_crit_edge ], [ true, %if.then229.cleanup412_crit_edge ], [ false, %if.end8.i.i.cleanup412_crit_edge ]
  %ret.8 = phi i32 [ -12, %if.end8.i.i630.cleanup412_crit_edge ], [ -11, %if.then229.cleanup412_crit_edge ], [ -12, %if.end8.i.i.cleanup412_crit_edge ]
  %call.i656 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i656, label %cleanup412.rcu_read_unlock_bh.exit664_crit_edge, label %land.lhs.true.i659

cleanup412.rcu_read_unlock_bh.exit664_crit_edge:  ; preds = %cleanup412
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit664

land.lhs.true.i659:                               ; preds = %cleanup412
  %call1.i657 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i657)
  %tobool.not.i658 = icmp eq i32 %call1.i657, 0
  br i1 %tobool.not.i658, label %land.lhs.true.i659.rcu_read_unlock_bh.exit664_crit_edge, label %land.lhs.true2.i661

land.lhs.true.i659.rcu_read_unlock_bh.exit664_crit_edge: ; preds = %land.lhs.true.i659
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit664

land.lhs.true2.i661:                              ; preds = %land.lhs.true.i659
  %.b4.i660 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i660, label %land.lhs.true2.i661.rcu_read_unlock_bh.exit664_crit_edge, label %if.then.i662

land.lhs.true2.i661.rcu_read_unlock_bh.exit664_crit_edge: ; preds = %land.lhs.true2.i661
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit664

if.then.i662:                                     ; preds = %land.lhs.true2.i661
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit664

rcu_read_unlock_bh.exit664:                       ; preds = %if.then.i662, %land.lhs.true2.i661.rcu_read_unlock_bh.exit664_crit_edge, %land.lhs.true.i659.rcu_read_unlock_bh.exit664_crit_edge, %cleanup412.rcu_read_unlock_bh.exit664_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  %call.i.i593 = tail call zeroext i1 @__kasan_check_write(ptr noundef %17, i32 noundef 4) #12
  %120 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile i32 0, ptr %17, align 4
  %call.i.i594 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %121 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !237
  br label %do.end.i672

do.end.i672:                                      ; preds = %for.inc.i679.do.end.i672_crit_edge, %rcu_read_unlock_bh.exit664
  %i.017.i669 = phi i32 [ 0, %rcu_read_unlock_bh.exit664 ], [ %inc.i675, %for.inc.i679.do.end.i672_crit_edge ]
  %arrayidx.i670 = getelementptr %struct.htable, ptr %call25, i32 0, i32 5, i32 %i.017.i669
  %122 = ptrtoint ptr %arrayidx.i670 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx.i670, align 4
  %tobool.not.i671 = icmp eq ptr %123, null
  br i1 %tobool.not.i671, label %do.end.i672.for.inc.i679_crit_edge, label %if.end.i674

do.end.i672.for.inc.i679_crit_edge:               ; preds = %do.end.i672
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i679

if.end.i674:                                      ; preds = %do.end.i672
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %123) #12
  br label %for.inc.i679

for.inc.i679:                                     ; preds = %if.end.i674, %do.end.i672.for.inc.i679_crit_edge
  %inc.i675 = add i32 %i.017.i669, 1
  %124 = ptrtoint ptr %htable_bits36 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %htable_bits36, align 4
  %conv.i676 = zext i8 %125 to i32
  %i.0.highbits.i677 = lshr i32 %inc.i675, %conv.i676
  %cmp.i678 = icmp eq i32 %i.0.highbits.i677, 0
  br i1 %cmp.i678, label %for.inc.i679.do.end.i672_crit_edge, label %hash_netport6_ahash_destroy.exit681

for.inc.i679.do.end.i672_crit_edge:               ; preds = %for.inc.i679
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i672

hash_netport6_ahash_destroy.exit681:              ; preds = %for.inc.i679
  %126 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %127) #12
  tail call void @ip_set_free(ptr noundef nonnull %call25) #12
  br i1 %cmp415, label %hash_netport6_ahash_destroy.exit681.retry_crit_edge, label %hash_netport6_ahash_destroy.exit681.out_crit_edge

hash_netport6_ahash_destroy.exit681.out_crit_edge: ; preds = %hash_netport6_ahash_destroy.exit681
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

hash_netport6_ahash_destroy.exit681.retry_crit_edge: ; preds = %hash_netport6_ahash_destroy.exit681
  call void @__sanitizer_cov_trace_pc() #14
  br label %retry

do.end421:                                        ; preds = %if.end20.do.end421_crit_edge, %retry.do.end421_crit_edge
  %call425 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %set) #17
  br label %out

cleanup426:                                       ; preds = %out, %entry.cleanup426_crit_edge
  %retval.0 = phi i32 [ %ret.7, %out ], [ -12, %entry.cleanup426_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_netport6_destroy(ptr noundef %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %2 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %extensions, align 2
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %gc = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 1
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %gc) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #12
  br i1 %call1, label %if.end.do.end_crit_edge, label %land.lhs.true

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b25 = load i1, ptr @hash_netport6_destroy.__warned, align 1
  br i1 %.b25, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport6_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 466, ptr noundef nonnull @.str.33) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call fastcc void @hash_netport6_ahash_destroy(ptr noundef %set, ptr noundef %6, i1 noundef zeroext true)
  %ad = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %ad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ad, align 4
  %cmp.i.not27 = icmp eq ptr %8, %ad
  br i1 %cmp.i.not27, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %l.028 = phi ptr [ %lt.030, %list_del.exit.for.body_crit_edge ], [ %8, %do.end.for.body_crit_edge ]
  %9 = ptrtoint ptr %l.028 to i32
  call void @__asan_load4_noabort(i32 %9)
  %lt.030 = load ptr, ptr %l.028, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l.028) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %l.028, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %l.028 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %l.028, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %16 = ptrtoint ptr %l.028 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %l.028, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %l.028, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %l.028) #12
  %cmp.i.not = icmp eq ptr %lt.030, %ad
  br i1 %cmp.i.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @kfree(ptr noundef %1) #12
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %data, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_netport6_flush(ptr noundef %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #12
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b135 = load i1, ptr @hash_netport6_flush.__warned, align 1
  br i1 %.b135, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport6_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 412, ptr noundef nonnull @.str.33) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %htable_bits = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 2
  %hregion = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 4
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %dsize.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %arrayidx.i9.i = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %do.end
  %r.0147 = phi i32 [ 0, %do.end ], [ %inc103, %for.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hregion, align 4
  %arrayidx = getelementptr %struct.ip_set_region, ptr %5, i32 %r.0147
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #12
  %6 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %htable_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cmp11 = icmp ult i8 %7, 10
  %mul = shl i32 %r.0147, 10
  %spec.select = select i1 %cmp11, i32 0, i32 %mul
  %mul27 = add i32 %mul, 1024
  %conv19137 = zext i8 %7 to i32
  %shl25138 = shl nuw i32 1, %conv19137
  %cond29139 = select i1 %cmp11, i32 %shl25138, i32 %mul27
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %cond29139)
  %cmp30140 = icmp ult i32 %spec.select, %cond29139
  br i1 %cmp30140, label %for.body.do.end35_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.do.end35_crit_edge:                      ; preds = %for.body
  br label %do.end35

do.end35:                                         ; preds = %for.inc.do.end35_crit_edge, %for.body.do.end35_crit_edge
  %i.0141 = phi i32 [ %inc, %for.inc.do.end35_crit_edge ], [ %spec.select, %for.body.do.end35_crit_edge ]
  %arrayidx37 = getelementptr %struct.htable, ptr %3, i32 0, i32 5, i32 %i.0141
  %8 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx37, align 4
  %tobool38.not = icmp eq ptr %9, null
  br i1 %tobool38.not, label %do.end35.for.inc_crit_edge, label %if.end40

do.end35.for.inc_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end40:                                         ; preds = %do.end35
  %10 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %extensions, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool42.not = icmp sgt i8 %11, -1
  br i1 %tobool42.not, label %if.end40.do.body53_crit_edge, label %if.then43

if.end40.do.body53_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

if.then43:                                        ; preds = %if.end40
  %pos.i = getelementptr inbounds %struct.hbucket, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp11.not.i = icmp eq i8 %13, 0
  br i1 %cmp11.not.i, label %if.then43.do.body53_crit_edge, label %for.body.lr.ph.i

if.then43.do.body53_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

for.body.lr.ph.i:                                 ; preds = %if.then43
  %used.i = getelementptr inbounds %struct.hbucket, ptr %9, i32 0, i32 1
  %value.i = getelementptr inbounds %struct.hbucket, ptr %9, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %i.012.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %used.i, i32 %div3.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.012.i, 31
  %16 = shl nuw i32 1, %and.i.i
  %17 = and i32 %16, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %18 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %extensions, align 2
  %20 = and i8 %19, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %dsize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dsize.i, align 4
  %mul.i = mul i32 %22, %i.012.i
  %add.ptr.i = getelementptr i8, ptr %value.i, i32 %mul.i
  %23 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i9.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %25(ptr noundef %set, ptr noundef %add.ptr.i.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %26 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pos.i, align 1
  %conv.i = zext i8 %27 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.body53_crit_edge

for.inc.i.do.body53_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body53

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.body53:                                        ; preds = %for.inc.i.do.body53_crit_edge, %if.then43.do.body53_crit_edge, %if.end40.do.body53_crit_edge
  %28 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr null, ptr %arrayidx37, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %9, ptr noundef null) #12
  br label %for.inc

for.inc:                                          ; preds = %do.body53, %do.end35.for.inc_crit_edge
  %inc = add nuw i32 %i.0141, 1
  %29 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %htable_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %30)
  %cmp20 = icmp ult i8 %30, 10
  %conv19 = zext i8 %30 to i32
  %shl25 = shl nuw i32 1, %conv19
  %cond29 = select i1 %cmp20, i32 %shl25, i32 %mul27
  %cmp30 = icmp ult i32 %inc, %cond29
  br i1 %cmp30, label %for.inc.do.end35_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.do.end35_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %31 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %32, i32 %r.0147, i32 1
  %33 = ptrtoint ptr %ext_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %ext_size, align 4
  %34 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %34, i32 %r.0147, i32 2
  %35 = ptrtoint ptr %elements to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %elements, align 4
  %36 = load ptr, ptr %hregion, align 4
  %arrayidx100 = getelementptr %struct.ip_set_region, ptr %36, i32 %r.0147
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx100) #12
  %inc103 = add nuw i32 %r.0147, 1
  %37 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %htable_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %38)
  %cmp = icmp ult i8 %38, 10
  %conv = zext i8 %38 to i32
  %sub = add nsw i32 %conv, -10
  %shl = shl nuw i32 1, %sub
  %cond = select i1 %cmp, i32 1, i32 %shl
  %cmp7 = icmp ult i32 %inc103, %cond
  br i1 %cmp7, label %for.end.for.body_crit_edge, label %for.end104

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end104:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %nets = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 7
  %39 = call ptr @memset(ptr %nets, i32 0, i32 1024)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netport6_head(ptr noundef %set, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i.i103 = alloca i32, align 4
  %tmp.i.i101 = alloca i32, align 4
  %tmp.i.i99 = alloca i32, align 4
  %tmp.i.i97 = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  %tmp.i.i94 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 750, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end7_crit_edge

rcu_read_lock_bh.exit.do.end7_crit_edge:          ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b77 = load i1, ptr @hash_netport6_head.__warned, align 1
  br i1 %.b77, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport6_head.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1272, ptr noundef nonnull @.str.8) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock_bh.exit.do.end7_crit_edge
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %5, align 4
  %call.i78 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool.not.i79 = icmp eq i32 %call.i78, 0
  br i1 %tobool.not.i79, label %land.lhs.true.i80, label %do.end7.do.end8.i_crit_edge

do.end7.do.end8.i_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

land.lhs.true.i80:                                ; preds = %do.end7
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i80.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i80.do.end8.i_crit_edge:            ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i80
  %.b112.i = load i1, ptr @hash_netport6_ext_size.__warned, align 1
  br i1 %.b112.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i81

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

if.then.i81:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport6_ext_size.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 818, ptr noundef nonnull @.str.8) #12
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i81, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i80.do.end8.i_crit_edge, %do.end7.do.end8.i_crit_edge
  %htable_bits.i = getelementptr inbounds %struct.htable, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %htable_bits.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %htable_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %9)
  %cmp124.i = icmp ult i8 %9, 10
  %extensions.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %dsize.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %arrayidx73.i = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %hregion.i = getelementptr inbounds %struct.htable, ptr %7, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.end82.i.for.body.i_crit_edge, %do.end8.i
  %elements.0 = phi i32 [ 0, %do.end8.i ], [ %elements.5, %for.end82.i.for.body.i_crit_edge ]
  %ext_size.0 = phi i32 [ 0, %do.end8.i ], [ %add85.i, %for.end82.i.for.body.i_crit_edge ]
  %cmp130.i = phi i1 [ %cmp124.i, %do.end8.i ], [ %cmp.i, %for.end82.i.for.body.i_crit_edge ]
  %r.0129.i = phi i32 [ 0, %do.end8.i ], [ %inc87.i, %for.end82.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %r.0129.i, 10
  %spec.select.i = select i1 %cmp130.i, i32 0, i32 %mul.i
  %mul33.i = add i32 %mul.i, 1024
  %10 = ptrtoint ptr %htable_bits.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %htable_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %11)
  %cmp26118.i = icmp ult i8 %11, 10
  %conv25119.i = zext i8 %11 to i32
  %shl31120.i = shl nuw i32 1, %conv25119.i
  %cond35121.i = select i1 %cmp26118.i, i32 %shl31120.i, i32 %mul33.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %cond35121.i)
  %cmp36122.i = icmp ult i32 %spec.select.i, %cond35121.i
  br i1 %cmp36122.i, label %for.body.i.for.body38.i_crit_edge, label %for.body.i.for.end82.i_crit_edge

for.body.i.for.end82.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end82.i

for.body.i.for.body38.i_crit_edge:                ; preds = %for.body.i
  br label %for.body38.i

for.body38.i:                                     ; preds = %for.inc80.i.for.body38.i_crit_edge, %for.body.i.for.body38.i_crit_edge
  %elements.1 = phi i32 [ %elements.4, %for.inc80.i.for.body38.i_crit_edge ], [ %elements.0, %for.body.i.for.body38.i_crit_edge ]
  %i.0123.i = phi i32 [ %inc81.i, %for.inc80.i.for.body38.i_crit_edge ], [ %spec.select.i, %for.body.i.for.body38.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.htable, ptr %7, i32 0, i32 5, i32 %i.0123.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx.i, align 4
  %call44.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %land.lhs.true46.i, label %for.body38.i.do.end54.i_crit_edge

for.body38.i.do.end54.i_crit_edge:                ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54.i

land.lhs.true46.i:                                ; preds = %for.body38.i
  %call47.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %land.lhs.true46.i.do.end54.i_crit_edge, label %land.lhs.true49.i

land.lhs.true46.i.do.end54.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54.i

land.lhs.true49.i:                                ; preds = %land.lhs.true46.i
  %.b110111.i = load i1, ptr @hash_netport6_ext_size.__warned.60, align 1
  br i1 %.b110111.i, label %land.lhs.true49.i.do.end54.i_crit_edge, label %if.then51.i

land.lhs.true49.i.do.end54.i_crit_edge:           ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54.i

if.then51.i:                                      ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport6_ext_size.__warned.60, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 822, ptr noundef nonnull @.str.8) #12
  br label %do.end54.i

do.end54.i:                                       ; preds = %if.then51.i, %land.lhs.true49.i.do.end54.i_crit_edge, %land.lhs.true46.i.do.end54.i_crit_edge, %for.body38.i.do.end54.i_crit_edge
  %tobool56.not.i = icmp eq ptr %13, null
  br i1 %tobool56.not.i, label %do.end54.i.for.inc80.i_crit_edge, label %for.cond59.preheader.i

do.end54.i.for.inc80.i_crit_edge:                 ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc80.i

for.cond59.preheader.i:                           ; preds = %do.end54.i
  %pos.i = getelementptr inbounds %struct.hbucket, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp61114.not.i = icmp eq i8 %15, 0
  br i1 %cmp61114.not.i, label %for.cond59.preheader.i.for.inc80.i_crit_edge, label %for.body63.lr.ph.i

for.cond59.preheader.i.for.inc80.i_crit_edge:     ; preds = %for.cond59.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc80.i

for.body63.lr.ph.i:                               ; preds = %for.cond59.preheader.i
  %used.i = getelementptr inbounds %struct.hbucket, ptr %13, i32 0, i32 1
  %value.i = getelementptr inbounds %struct.hbucket, ptr %13, i32 0, i32 5
  %conv60.i = zext i8 %15 to i32
  br label %for.body63.i

for.body63.i:                                     ; preds = %for.inc.i.for.body63.i_crit_edge, %for.body63.lr.ph.i
  %elements.2 = phi i32 [ %elements.1, %for.body63.lr.ph.i ], [ %elements.3, %for.inc.i.for.body63.i_crit_edge ]
  %j.0115.i = phi i32 [ 0, %for.body63.lr.ph.i ], [ %inc79.i, %for.inc.i.for.body63.i_crit_edge ]
  %div3.i.i = lshr i32 %j.0115.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %used.i, i32 %div3.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %j.0115.i, 31
  %18 = shl nuw i32 1, %and.i.i
  %19 = and i32 %18, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool65.not.i = icmp eq i32 %19, 0
  br i1 %tobool65.not.i, label %for.body63.i.for.inc.i_crit_edge, label %if.end67.i

for.body63.i.for.inc.i_crit_edge:                 ; preds = %for.body63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end67.i:                                       ; preds = %for.body63.i
  %20 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %extensions.i, align 2
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool71.not.i = icmp eq i8 %22, 0
  br i1 %tobool71.not.i, label %if.end67.i.if.then77.i_crit_edge, label %land.lhs.true72.i

if.end67.i.if.then77.i_crit_edge:                 ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then77.i

land.lhs.true72.i:                                ; preds = %if.end67.i
  %23 = ptrtoint ptr %dsize.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dsize.i, align 4
  %mul69.i = mul i32 %24, %j.0115.i
  %add.ptr.i = getelementptr i8, ptr %value.i, i32 %mul69.i
  %25 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx73.i, align 4
  %add.ptr74.i = getelementptr i8, ptr %add.ptr.i, i32 %26
  %27 = ptrtoint ptr %add.ptr74.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr74.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not.i.i = icmp eq i32 %28, 0
  br i1 %cmp.not.i.i, label %land.lhs.true72.i.if.then77.i_crit_edge, label %ip_set_timeout_expired.exit.i

land.lhs.true72.i.if.then77.i_crit_edge:          ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then77.i

ip_set_timeout_expired.exit.i:                    ; preds = %land.lhs.true72.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %28, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp1.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp1.i.i, label %ip_set_timeout_expired.exit.i.for.inc.i_crit_edge, label %ip_set_timeout_expired.exit.i.if.then77.i_crit_edge

ip_set_timeout_expired.exit.i.if.then77.i_crit_edge: ; preds = %ip_set_timeout_expired.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then77.i

ip_set_timeout_expired.exit.i.for.inc.i_crit_edge: ; preds = %ip_set_timeout_expired.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then77.i:                                      ; preds = %ip_set_timeout_expired.exit.i.if.then77.i_crit_edge, %land.lhs.true72.i.if.then77.i_crit_edge, %if.end67.i.if.then77.i_crit_edge
  %inc.i = add i32 %elements.2, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then77.i, %ip_set_timeout_expired.exit.i.for.inc.i_crit_edge, %for.body63.i.for.inc.i_crit_edge
  %elements.3 = phi i32 [ %elements.2, %for.body63.i.for.inc.i_crit_edge ], [ %inc.i, %if.then77.i ], [ %elements.2, %ip_set_timeout_expired.exit.i.for.inc.i_crit_edge ]
  %inc79.i = add nuw nsw i32 %j.0115.i, 1
  %exitcond.not = icmp eq i32 %inc79.i, %conv60.i
  br i1 %exitcond.not, label %for.inc.i.for.inc80.i_crit_edge, label %for.inc.i.for.body63.i_crit_edge

for.inc.i.for.body63.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body63.i

for.inc.i.for.inc80.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc80.i

for.inc80.i:                                      ; preds = %for.inc.i.for.inc80.i_crit_edge, %for.cond59.preheader.i.for.inc80.i_crit_edge, %do.end54.i.for.inc80.i_crit_edge
  %elements.4 = phi i32 [ %elements.1, %do.end54.i.for.inc80.i_crit_edge ], [ %elements.1, %for.cond59.preheader.i.for.inc80.i_crit_edge ], [ %elements.3, %for.inc.i.for.inc80.i_crit_edge ]
  %inc81.i = add nuw i32 %i.0123.i, 1
  %30 = ptrtoint ptr %htable_bits.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %htable_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %31)
  %cmp26.i = icmp ult i8 %31, 10
  %conv25.i = zext i8 %31 to i32
  %shl31.i = shl nuw i32 1, %conv25.i
  %cond35.i = select i1 %cmp26.i, i32 %shl31.i, i32 %mul33.i
  %cmp36.i = icmp ult i32 %inc81.i, %cond35.i
  br i1 %cmp36.i, label %for.inc80.i.for.body38.i_crit_edge, label %for.inc80.i.for.end82.i_crit_edge

for.inc80.i.for.end82.i_crit_edge:                ; preds = %for.inc80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end82.i

for.inc80.i.for.body38.i_crit_edge:               ; preds = %for.inc80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body38.i

for.end82.i:                                      ; preds = %for.inc80.i.for.end82.i_crit_edge, %for.body.i.for.end82.i_crit_edge
  %elements.5 = phi i32 [ %elements.0, %for.body.i.for.end82.i_crit_edge ], [ %elements.4, %for.inc80.i.for.end82.i_crit_edge ]
  %32 = ptrtoint ptr %hregion.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hregion.i, align 4
  %ext_size84.i = getelementptr %struct.ip_set_region, ptr %33, i32 %r.0129.i, i32 1
  %34 = ptrtoint ptr %ext_size84.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ext_size84.i, align 4
  %add85.i = add i32 %35, %ext_size.0
  %inc87.i = add nuw i32 %r.0129.i, 1
  %36 = ptrtoint ptr %htable_bits.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %htable_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %37)
  %cmp.i = icmp ult i8 %37, 10
  %conv.i = zext i8 %37 to i32
  %sub.i = add nsw i32 %conv.i, -10
  %shl.i = shl nuw i32 1, %sub.i
  %cond.i = select i1 %cmp.i, i32 1, i32 %shl.i
  %cmp13.i = icmp ult i32 %inc87.i, %cond.i
  br i1 %cmp13.i, label %for.end82.i.for.body.i_crit_edge, label %hash_netport6_ext_size.exit

for.end82.i.for.body.i_crit_edge:                 ; preds = %for.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

hash_netport6_ext_size.exit:                      ; preds = %for.end82.i
  %htable_bits.i82 = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 2
  %38 = ptrtoint ptr %htable_bits.i82 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %htable_bits.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %39)
  %cmp.i83 = icmp ult i8 %39, 10
  %conv.i84 = zext i8 %39 to i32
  %sub.i85 = add nsw i32 %conv.i84, -10
  %phi.bo.i = shl i32 52, %sub.i85
  %phi.bo1.i = add i32 %phi.bo.i, 1196
  %cond.i86 = select i1 %cmp.i83, i32 1248, i32 %phi.bo1.i
  %ext_size10 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 12
  %40 = ptrtoint ptr %ext_size10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ext_size10, align 4
  %add = add i32 %41, %add85.i
  %add11 = add i32 %add, %cond.i86
  %call.i87 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i87, label %hash_netport6_ext_size.exit.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i90

hash_netport6_ext_size.exit.rcu_read_unlock_bh.exit_crit_edge: ; preds = %hash_netport6_ext_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i90:                                ; preds = %hash_netport6_ext_size.exit
  %call1.i88 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %tobool.not.i89 = icmp eq i32 %call1.i88, 0
  br i1 %tobool.not.i89, label %land.lhs.true.i90.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i92

land.lhs.true.i90.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i92:                               ; preds = %land.lhs.true.i90
  %.b4.i91 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i91, label %land.lhs.true2.i92.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i93

land.lhs.true2.i92.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i93:                                      ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i93, %land.lhs.true2.i92.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i90.rcu_read_unlock_bh.exit_crit_edge, %hash_netport6_ext_size.exit.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %42 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32775, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool14.not108 = icmp eq ptr %43, null
  %tobool14.not = select i1 %cmp.i.i, i1 true, i1 %tobool14.not108
  br i1 %tobool14.not, label %rcu_read_unlock_bh.exit.cleanup_crit_edge, label %if.end16

rcu_read_unlock_bh.exit.cleanup_crit_edge:        ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %rcu_read_unlock_bh.exit
  %shl = shl nuw i32 1, %conv.i84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #12
  %44 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shl, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 16402, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end16
  %maxelem = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %maxelem to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %maxelem, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i94) #12
  %47 = ptrtoint ptr %tmp.i.i94 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %tmp.i.i94, align 4
  %call.i.i95 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16403, i32 noundef 4, ptr noundef nonnull %tmp.i.i94) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i94) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i95)
  %tobool20.not = icmp eq i32 %call.i.i95, 0
  br i1 %tobool20.not, label %if.end22, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 9
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flags, align 1
  %50 = and i8 %49, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool24.not = icmp eq i8 %50, 0
  br i1 %tobool24.not, label %if.end22.if.end33_crit_edge, label %if.then25

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then25:                                        ; preds = %if.end22
  %bucketsize = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 4
  %51 = ptrtoint ptr %bucketsize to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bucketsize, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #12
  %53 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %tmp.i, align 1
  %call.i96 = call i32 @nla_put(ptr noundef %skb, i32 noundef 21, i32 noundef 1, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool27.not = icmp eq i32 %call.i96, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false28:                                  ; preds = %if.then25
  %initval = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 3
  %54 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %initval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i97) #12
  %56 = ptrtoint ptr %tmp.i.i97 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %tmp.i.i97, align 4
  %call.i.i98 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16401, i32 noundef 4, ptr noundef nonnull %tmp.i.i97) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i97) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98)
  %tobool30.not = icmp eq i32 %call.i.i98, 0
  br i1 %tobool30.not, label %lor.lhs.false28.if.end33_crit_edge, label %lor.lhs.false28.cleanup_crit_edge

lor.lhs.false28.cleanup_crit_edge:                ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false28.if.end33_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.end33:                                         ; preds = %lor.lhs.false28.if.end33_crit_edge, %if.end22.if.end33_crit_edge
  %ref = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 2
  %57 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ref, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i99) #12
  %59 = ptrtoint ptr %tmp.i.i99 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %tmp.i.i99, align 4
  %call.i.i100 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16409, i32 noundef 4, ptr noundef nonnull %tmp.i.i99) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i99) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i100)
  %tobool35.not = icmp eq i32 %call.i.i100, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false36:                                  ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i101) #12
  %60 = ptrtoint ptr %tmp.i.i101 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add11, ptr %tmp.i.i101, align 4
  %call.i.i102 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16410, i32 noundef 4, ptr noundef nonnull %tmp.i.i101) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i101) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102)
  %tobool38.not = icmp eq i32 %call.i.i102, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %lor.lhs.false36.cleanup_crit_edge

lor.lhs.false36.cleanup_crit_edge:                ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i103) #12
  %61 = ptrtoint ptr %tmp.i.i103 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %elements.5, ptr %tmp.i.i103, align 4
  %call.i.i104 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16408, i32 noundef 4, ptr noundef nonnull %tmp.i.i103) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i103) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i104)
  %tobool41.not = icmp eq i32 %call.i.i104, 0
  br i1 %tobool41.not, label %if.end43, label %lor.lhs.false39.cleanup_crit_edge

lor.lhs.false39.cleanup_crit_edge:                ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end43:                                         ; preds = %lor.lhs.false39
  %call44 = call i32 @ip_set_put_flags(ptr noundef %skb, ptr noundef %set) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end49, label %if.end43.cleanup_crit_edge, !prof !238

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %63 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i105 = trunc i32 %sub.ptr.sub.i to i16
  %64 = ptrtoint ptr %43 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i105, ptr %43, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end43.cleanup_crit_edge, %lor.lhs.false39.cleanup_crit_edge, %lor.lhs.false36.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %lor.lhs.false28.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %rcu_read_unlock_bh.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -90, %if.end43.cleanup_crit_edge ], [ -90, %if.end33.cleanup_crit_edge ], [ -90, %lor.lhs.false36.cleanup_crit_edge ], [ -90, %lor.lhs.false39.cleanup_crit_edge ], [ -90, %if.then25.cleanup_crit_edge ], [ -90, %lor.lhs.false28.cleanup_crit_edge ], [ -90, %if.end16.cleanup_crit_edge ], [ -90, %lor.lhs.false.cleanup_crit_edge ], [ -90, %rcu_read_unlock_bh.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netport6_list(ptr noundef %set, ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %tmp.i.i29.i = alloca i32, align 4
  %tmp.i27.i = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  %tmp.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32776, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not226 = icmp eq ptr %3, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not226
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport6_list.__UNIQUE_ID_ddebug766, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport6_list, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !222

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport6_list.__UNIQUE_ID_ddebug766, ptr noundef nonnull @.str.37, ptr noundef %set) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %arrayidx7 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx7, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !239
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %do.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end.rcu_read_lock.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.41) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end.rcu_read_lock.exit_crit_edge
  %htable_bits = getelementptr inbounds %struct.htable, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %htable_bits, align 4
  %conv234 = zext i8 %14 to i32
  %.highbits235 = lshr i32 %12, %conv234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.highbits235)
  %cmp236 = icmp eq i32 %.highbits235, 0
  br i1 %cmp236, label %for.body.lr.ph, label %rcu_read_lock.exit.for.end106_crit_edge

rcu_read_lock.exit.for.end106_crit_edge:          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end106

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx63 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc103.for.body_crit_edge, %for.body.lr.ph
  call fastcc void @cond_resched_rcu()
  %15 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i.i, align 8
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %arrayidx16 = getelementptr %struct.htable, ptr %6, i32 0, i32 5, i32 %18
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx16, align 4
  %call18 = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true, label %for.body.do.end27_crit_edge

for.body.do.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

land.lhs.true:                                    ; preds = %for.body
  %call20 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true.do.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true
  %.b180 = load i1, ptr @hash_netport6_list.__warned, align 1
  br i1 %.b180, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport6_list.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1362, ptr noundef nonnull @.str.8) #12
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true.do.end27_crit_edge, %for.body.do.end27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport6_list.__UNIQUE_ID_ddebug769, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport6_list, %if.then41)) #12
          to label %do.end45 [label %if.then41], !srcloc !222

if.then41:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport6_list.__UNIQUE_ID_ddebug769, ptr noundef nonnull @.str.38, i32 noundef %22, ptr noundef %6, ptr noundef %20) #12
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.end27
  %tobool46.not = icmp eq ptr %20, null
  br i1 %tobool46.not, label %do.end45.for.inc103_crit_edge, label %for.cond49.preheader

do.end45.for.inc103_crit_edge:                    ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc103

for.cond49.preheader:                             ; preds = %do.end45
  %pos = getelementptr inbounds %struct.hbucket, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp51230.not = icmp eq i8 %24, 0
  br i1 %cmp51230.not, label %for.cond49.preheader.for.inc103_crit_edge, label %for.body53.lr.ph

for.cond49.preheader.for.inc103_crit_edge:        ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc103

for.body53.lr.ph:                                 ; preds = %for.cond49.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %20, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %20, i32 0, i32 5
  br label %for.body53

for.body53:                                       ; preds = %for.inc.for.body53_crit_edge, %for.body53.lr.ph
  %i.0231 = phi i32 [ 0, %for.body53.lr.ph ], [ %inc, %for.inc.for.body53_crit_edge ]
  %div3.i = lshr i32 %i.0231, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0231, 31
  %27 = shl nuw i32 1, %and.i
  %28 = and i32 %26, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool56.not = icmp eq i32 %28, 0
  br i1 %tobool56.not, label %for.body53.for.inc_crit_edge, label %if.end58

for.body53.for.inc_crit_edge:                     ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end58:                                         ; preds = %for.body53
  %29 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dsize, align 4
  %mul = mul i32 %30, %i.0231
  %add.ptr = getelementptr i8, ptr %value, i32 %mul
  %31 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %extensions, align 2
  %33 = and i8 %32, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool61.not = icmp eq i8 %33, 0
  br i1 %tobool61.not, label %if.end58.do.body69_crit_edge, label %land.lhs.true62

if.end58.do.body69_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body69

land.lhs.true62:                                  ; preds = %if.end58
  %34 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx63, align 4
  %add.ptr64 = getelementptr i8, ptr %add.ptr, i32 %35
  %36 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.not.i = icmp eq i32 %37, 0
  br i1 %cmp.not.i, label %land.lhs.true62.do.body69_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true62.do.body69_crit_edge:              ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body69

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %37, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.for.inc_crit_edge, label %ip_set_timeout_expired.exit.do.body69_crit_edge

ip_set_timeout_expired.exit.do.body69_crit_edge:  ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body69

ip_set_timeout_expired.exit.for.inc_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.body69:                                        ; preds = %ip_set_timeout_expired.exit.do.body69_crit_edge, %land.lhs.true62.do.body69_crit_edge, %if.end58.do.body69_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport6_list.__UNIQUE_ID_ddebug770, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport6_list, %if.then81)) #12
          to label %do.end85 [label %if.then81], !srcloc !222

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport6_list.__UNIQUE_ID_ddebug770, ptr noundef nonnull @.str.39, i32 noundef %40, ptr noundef nonnull %20, i32 noundef %i.0231, ptr noundef %add.ptr) #12
  br label %do.end85

do.end85:                                         ; preds = %if.then81, %do.body69
  %41 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i188 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32775, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i188)
  %cmp.i.i189 = icmp slt i32 %call1.i.i188, 0
  %tobool87.not227 = icmp eq ptr %42, null
  %tobool87.not = select i1 %cmp.i.i189, i1 true, i1 %tobool87.not227
  br i1 %tobool87.not, label %if.then88, label %if.end94

if.then88:                                        ; preds = %do.end85
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %1)
  %cmp90 = icmp eq i32 %44, %1
  br i1 %cmp90, label %if.then.i.i, label %if.then88.nla_put_failure_crit_edge

if.then88.nla_put_failure_crit_edge:              ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.then.i.i:                                      ; preds = %if.then88
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %45 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i191 = icmp ugt ptr %46, %3
  br i1 %cmp.i.i191, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !223

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #12
  br label %out

if.end94:                                         ; preds = %do.end85
  %nomatch.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %add.ptr, i32 0, i32 3
  %49 = ptrtoint ptr %nomatch.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i = load i8, ptr %nomatch.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool.not.i192 = icmp eq i8 %bf.clear.i, 0
  %50 = shl nuw nsw i8 %bf.clear.i, 2
  %51 = zext i8 %50 to i32
  %52 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool.not1.i.i = icmp eq ptr %53, null
  %tobool.not.i.i193 = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool.not1.i.i
  br i1 %tobool.not.i.i193, label %if.end94.nla_put_failure_crit_edge, label %if.end.i.i194

if.end94.nla_put_failure_crit_edge:               ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end.i.i194:                                    ; preds = %if.end94
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 16, ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i, label %if.end.i.i194.nla_put_failure_crit_edge

if.end.i.i194.nla_put_failure_crit_edge:          ; preds = %if.end.i.i194
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false.i:                                  ; preds = %if.end.i.i194
  %54 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i.i.i, ptr %53, align 2
  %port.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %add.ptr, i32 0, i32 1
  %57 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %port.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i.i) #12
  %59 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %tmp.i.i.i, align 2
  %call.i.i26.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 16388, i32 noundef 2, ptr noundef nonnull %tmp.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26.i)
  %tobool3.not.i = icmp eq i32 %call.i.i26.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.nla_put_failure_crit_edge

lor.lhs.false.i.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %60 = ptrtoint ptr %nomatch.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load5.i = load i8, ptr %nomatch.i, align 1
  %bf.lshr.i = lshr i8 %bf.load5.i, 1
  %narrow.i = add nuw i8 %bf.lshr.i, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #12
  %61 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %narrow.i, ptr %tmp.i.i, align 1
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false10.i, label %lor.lhs.false4.i.nla_put_failure_crit_edge

lor.lhs.false4.i.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false10.i:                                ; preds = %lor.lhs.false4.i
  %proto.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %add.ptr, i32 0, i32 2
  %62 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %proto.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i27.i) #12
  %64 = ptrtoint ptr %tmp.i27.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %tmp.i27.i, align 1
  %call.i28.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i27.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i27.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %tobool12.not.i = icmp eq i32 %call.i28.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false13.i, label %lor.lhs.false10.i.nla_put_failure_crit_edge

lor.lhs.false10.i.nla_put_failure_crit_edge:      ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false13.i:                                ; preds = %lor.lhs.false10.i
  br i1 %tobool.not.i192, label %lor.lhs.false13.i.if.end97_crit_edge, label %land.lhs.true.i195

lor.lhs.false13.i.if.end97_crit_edge:             ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

land.lhs.true.i195:                               ; preds = %lor.lhs.false13.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i29.i) #12
  %65 = ptrtoint ptr %tmp.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %51, ptr %tmp.i.i29.i, align 4
  %call.i.i30.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 16392, i32 noundef 4, ptr noundef nonnull %tmp.i.i29.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i29.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30.i)
  %tobool16.not.i = icmp eq i32 %call.i.i30.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i195.if.end97_crit_edge, label %land.lhs.true.i195.nla_put_failure_crit_edge

land.lhs.true.i195.nla_put_failure_crit_edge:     ; preds = %land.lhs.true.i195
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

land.lhs.true.i195.if.end97_crit_edge:            ; preds = %land.lhs.true.i195
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

if.end97:                                         ; preds = %land.lhs.true.i195.if.end97_crit_edge, %lor.lhs.false13.i.if.end97_crit_edge
  %call98 = call i32 @ip_set_put_extensions(ptr noundef %skb, ptr noundef %set, ptr noundef %add.ptr, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.end97.nla_put_failure_crit_edge

if.end97.nla_put_failure_crit_edge:               ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end101:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %67 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %68 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i, ptr %42, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end101, %ip_set_timeout_expired.exit.for.inc_crit_edge, %for.body53.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0231, 1
  %69 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %pos, align 1
  %conv50 = zext i8 %70 to i32
  %cmp51 = icmp ult i32 %inc, %conv50
  br i1 %cmp51, label %for.inc.for.body53_crit_edge, label %for.inc.for.inc103_crit_edge

for.inc.for.inc103_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc103

for.inc.for.body53_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body53

for.inc103:                                       ; preds = %for.inc.for.inc103_crit_edge, %for.cond49.preheader.for.inc103_crit_edge, %do.end45.for.inc103_crit_edge
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx, align 4
  %inc105 = add i32 %72, 1
  store i32 %inc105, ptr %arrayidx, align 4
  %73 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %htable_bits, align 4
  %conv = zext i8 %74 to i32
  %.highbits = lshr i32 %inc105, %conv
  %cmp = icmp eq i32 %.highbits, 0
  br i1 %cmp, label %for.inc103.for.body_crit_edge, label %for.inc103.for.end106_crit_edge

for.inc103.for.end106_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end106

for.inc103.for.body_crit_edge:                    ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end106:                                       ; preds = %for.inc103.for.end106_crit_edge, %rcu_read_lock.exit.for.end106_crit_edge
  %75 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i198 = ptrtoint ptr %76 to i32
  %sub.ptr.rhs.cast.i199 = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i200 = sub i32 %sub.ptr.lhs.cast.i198, %sub.ptr.rhs.cast.i199
  %conv.i201 = trunc i32 %sub.ptr.sub.i200 to i16
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv.i201, ptr %3, align 2
  %78 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %arrayidx, align 4
  br label %out

nla_put_failure:                                  ; preds = %if.end97.nla_put_failure_crit_edge, %land.lhs.true.i195.nla_put_failure_crit_edge, %lor.lhs.false10.i.nla_put_failure_crit_edge, %lor.lhs.false4.i.nla_put_failure_crit_edge, %lor.lhs.false.i.nla_put_failure_crit_edge, %if.end.i.i194.nla_put_failure_crit_edge, %if.end94.nla_put_failure_crit_edge, %if.then88.nla_put_failure_crit_edge
  %tobool.not.i202 = icmp eq ptr %16, null
  br i1 %tobool.not.i202, label %nla_put_failure.nlmsg_trim.exit_crit_edge, label %if.then.i203

nla_put_failure.nlmsg_trim.exit_crit_edge:        ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #14
  br label %nlmsg_trim.exit

if.then.i203:                                     ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %79 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %80, %16
  br i1 %cmp.i, label %do.end.i, label %if.then.i203.if.end.i_crit_edge, !prof !223

if.then.i203.if.end.i_crit_edge:                  ; preds = %if.then.i203
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i203
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i203.if.end.i_crit_edge
  %81 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i204 = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i205 = ptrtoint ptr %82 to i32
  %sub.ptr.sub.i206 = sub i32 %sub.ptr.lhs.cast.i204, %sub.ptr.rhs.cast.i205
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i206) #12
  br label %nlmsg_trim.exit

nlmsg_trim.exit:                                  ; preds = %if.end.i, %nla_put_failure.nlmsg_trim.exit_crit_edge
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %84)
  %cmp110 = icmp eq i32 %1, %84
  br i1 %cmp110, label %do.end121, label %if.else, !prof !223

do.end121:                                        ; preds = %nlmsg_trim.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %set) #17
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %arrayidx, align 4
  br label %out

if.else:                                          ; preds = %nlmsg_trim.exit
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i208 = ptrtoint ptr %87 to i32
  %sub.ptr.rhs.cast.i209 = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i210 = sub i32 %sub.ptr.lhs.cast.i208, %sub.ptr.rhs.cast.i209
  %conv.i211 = trunc i32 %sub.ptr.sub.i210 to i16
  %88 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv.i211, ptr %3, align 2
  br label %out

out:                                              ; preds = %if.else, %do.end121, %for.end106, %nla_nest_cancel.exit
  %ret.0 = phi i32 [ -90, %do.end121 ], [ 0, %if.else ], [ -90, %nla_nest_cancel.exit ], [ 0, %for.end106 ]
  %call.i212 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i212, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i215

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i215:                               ; preds = %out
  %call1.i213 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i213)
  %tobool.not.i214 = icmp eq i32 %call1.i213, 0
  br i1 %tobool.not.i214, label %land.lhs.true.i215.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i217

land.lhs.true.i215.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i215
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i217:                              ; preds = %land.lhs.true.i215
  %.b4.i216 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i216, label %land.lhs.true2.i217.rcu_read_unlock.exit_crit_edge, label %if.then.i218

land.lhs.true2.i217.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i217
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i218:                                     ; preds = %land.lhs.true2.i217
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.44) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i218, %land.lhs.true2.i217.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i215.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !240
  %89 = call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i.i.i219 = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i.i.i219 to ptr
  %preempt_count.i.i.i.i220 = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %preempt_count.i.i.i.i220 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %preempt_count.i.i.i.i220, align 4
  %sub.i.i.i = add i32 %92, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i220, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_netport6_uref(ptr nocapture noundef readonly %set, ptr nocapture noundef %cb, i1 noundef zeroext %start) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %start, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.then.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock_bh.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 750, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %if.then.rcu_read_lock_bh.exit_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %call = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #12
  br i1 %call, label %rcu_read_lock_bh.exit.do.end10_crit_edge, label %lor.lhs.false

rcu_read_lock_bh.exit.do.end10_crit_edge:         ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

lor.lhs.false:                                    ; preds = %rcu_read_lock_bh.exit
  %call2 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true6

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b46 = load i1, ptr @hash_netport6_uref.__warned, align 1
  br i1 %.b46, label %land.lhs.true6.do.end10_crit_edge, label %if.then8

land.lhs.true6.do.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport6_uref.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1321, ptr noundef nonnull @.str.8) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %land.lhs.true6.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %rcu_read_lock_bh.exit.do.end10_crit_edge
  %uref = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !227
  %5 = ptrtoint ptr %3 to i32
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx, align 4
  %call.i49 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i49, label %do.end10.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i52

do.end10.rcu_read_unlock_bh.exit_crit_edge:       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i52:                                ; preds = %do.end10
  %call1.i50 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool.not.i51, label %land.lhs.true.i52.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i54

land.lhs.true.i52.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i54:                               ; preds = %land.lhs.true.i52
  %.b4.i53 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i53, label %land.lhs.true2.i54.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i55

land.lhs.true2.i54.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i55:                                      ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i55, %land.lhs.true2.i54.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i52.rcu_read_unlock_bh.exit_crit_edge, %do.end10.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  br label %if.end36

if.else:                                          ; preds = %entry
  %arrayidx12 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not = icmp eq i32 %8, 0
  br i1 %tobool13.not, label %if.else.if.end36_crit_edge, label %if.then14

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then14:                                        ; preds = %if.else
  %9 = inttoptr i32 %8 to ptr
  %uref16 = getelementptr inbounds %struct.htable, ptr %9, i32 0, i32 1
  %call.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref16, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void @llvm.prefetch.p0(ptr %uref16, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref16, ptr %uref16, i32 1, ptr elementtype(i32) %uref16) #12, !srcloc !232
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !233
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true18, label %if.then14.if.end33_crit_edge

if.then14.if.end33_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true18:                                  ; preds = %if.then14
  %call.i.i48 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %9, i32 noundef 4) #12
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool20.not = icmp eq i32 %12, 0
  br i1 %tobool20.not, label %land.lhs.true18.if.end33_crit_edge, label %do.body22

land.lhs.true18.if.end33_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

do.body22:                                        ; preds = %land.lhs.true18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport6_uref.__UNIQUE_ID_ddebug765, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport6_uref, %if.then29)) #12
          to label %do.end32 [label %if.then29], !srcloc !222

if.then29:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport6_uref.__UNIQUE_ID_ddebug765, ptr noundef nonnull @.str.46, ptr noundef nonnull %9) #12
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body22
  %htable_bits.i = getelementptr inbounds %struct.htable, ptr %9, i32 0, i32 2
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %do.end32
  %i.017.i = phi i32 [ 0, %do.end32 ], [ %inc.i, %for.inc.i.do.end.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.htable, ptr %9, i32 0, i32 5, i32 %i.017.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i56 = icmp eq ptr %14, null
  br i1 %tobool.not.i56, label %do.end.i.for.inc.i_crit_edge, label %if.end.i

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %14) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %15 = ptrtoint ptr %htable_bits.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %htable_bits.i, align 4
  %conv.i = zext i8 %16 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i
  %cmp.i = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i, label %for.inc.i.do.end.i_crit_edge, label %hash_netport6_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hash_netport6_ahash_destroy.exit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %hregion.i = getelementptr inbounds %struct.htable, ptr %9, i32 0, i32 4
  %17 = ptrtoint ptr %hregion.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hregion.i, align 4
  tail call void @ip_set_free(ptr noundef %18) #12
  tail call void @ip_set_free(ptr noundef nonnull %9) #12
  br label %if.end33

if.end33:                                         ; preds = %hash_netport6_ahash_destroy.exit, %land.lhs.true18.if.end33_crit_edge, %if.then14.if.end33_crit_edge
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx12, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %if.else.if.end36_crit_edge, %rcu_read_unlock_bh.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @hash_netport6_same_set(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %a, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %data1 = getelementptr inbounds %struct.ip_set, ptr %b, i32 0, i32 15
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %maxelem = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %maxelem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxelem, align 4
  %maxelem2 = getelementptr inbounds %struct.hash_netport6, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %maxelem2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxelem2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %timeout = getelementptr inbounds %struct.ip_set, ptr %a, i32 0, i32 10
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timeout, align 4
  %timeout3 = getelementptr inbounds %struct.ip_set, ptr %b, i32 0, i32 10
  %10 = ptrtoint ptr %timeout3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timeout3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp4 = icmp eq i32 %9, %11
  br i1 %cmp4, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %extensions = getelementptr inbounds %struct.ip_set, ptr %a, i32 0, i32 8
  %12 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %extensions, align 2
  %extensions5 = getelementptr inbounds %struct.ip_set, ptr %b, i32 0, i32 8
  %14 = ptrtoint ptr %extensions5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %extensions5, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp7 = icmp eq i8 %13, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %16 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %cmp7, %land.rhs ]
  ret i1 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ip_set_get_ip6_port(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_get_ipaddr6(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hash_netport6_gc_do(ptr noundef %set, ptr nocapture noundef %h, ptr noundef %t, i32 noundef %r) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dsize1 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %0 = ptrtoint ptr %dsize1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dsize1, align 4
  %htable_bits2 = getelementptr inbounds %struct.htable, ptr %t, i32 0, i32 2
  %2 = ptrtoint ptr %htable_bits2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %htable_bits2, align 4
  %hregion = getelementptr inbounds %struct.htable, ptr %t, i32 0, i32 4
  %4 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hregion, align 4
  %arrayidx = getelementptr %struct.ip_set_region, ptr %5, i32 %r
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #12
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp = icmp ult i8 %3, 10
  %mul = shl i32 %r, 10
  %spec.select = select i1 %cmp, i32 0, i32 %mul
  %shl = shl nuw i32 1, %conv
  %mul10 = add i32 %mul, 1024
  %cond12 = select i1 %cmp, i32 %shl, i32 %mul10
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %cond12)
  %cmp13342 = icmp ult i32 %spec.select, %cond12
  br i1 %cmp13342, label %do.end.lr.ph, label %entry.for.end235_crit_edge

entry.for.end235_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end235

do.end.lr.ph:                                     ; preds = %entry
  %arrayidx27 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %lock.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  %extensions.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx.i322 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %mul172.neg = mul i32 %1, -2
  %add173.neg = add i32 %mul172.neg, -24
  br label %do.end

do.end:                                           ; preds = %for.inc233.do.end_crit_edge, %do.end.lr.ph
  %i.0343 = phi i32 [ %spec.select, %do.end.lr.ph ], [ %inc234, %for.inc233.do.end_crit_edge ]
  %arrayidx16 = getelementptr %struct.htable, ptr %t, i32 0, i32 5, i32 %i.0343
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx16, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end.for.inc233_crit_edge, label %for.cond17.preheader

do.end.for.inc233_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc233

for.cond17.preheader:                             ; preds = %do.end
  %pos = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp19331.not = icmp eq i8 %9, 0
  br i1 %cmp19331.not, label %for.cond17.preheader.for.inc233_crit_edge, label %for.body21.lr.ph

for.cond17.preheader.for.inc233_crit_edge:        ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc233

for.body21.lr.ph:                                 ; preds = %for.cond17.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 5
  br label %for.body21

for.body21:                                       ; preds = %for.inc63.for.body21_crit_edge, %for.body21.lr.ph
  %d.0335 = phi i32 [ 0, %for.body21.lr.ph ], [ %d.1, %for.inc63.for.body21_crit_edge ]
  %j.0332 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc64, %for.inc63.for.body21_crit_edge ]
  %div3.i = lshr i32 %j.0332, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %j.0332, 31
  %12 = shl nuw i32 1, %and.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool22.not = icmp eq i32 %13, 0
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %d.0335, 1
  br label %for.inc63

if.end24:                                         ; preds = %for.body21
  %mul26 = mul i32 %j.0332, %1
  %add.ptr = getelementptr i8, ptr %value, i32 %mul26
  %14 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx27, align 4
  %add.ptr28 = getelementptr i8, ptr %add.ptr, i32 %15
  %16 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %if.end24.for.inc63_crit_edge, label %ip_set_timeout_expired.exit

if.end24.for.inc63_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc63

ip_set_timeout_expired.exit:                      ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %do.body32, label %ip_set_timeout_expired.exit.for.inc63_crit_edge

ip_set_timeout_expired.exit.for.inc63_crit_edge:  ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc63

do.body32:                                        ; preds = %ip_set_timeout_expired.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport6_gc_do.__UNIQUE_ID_ddebug697, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport6_gc_do, %if.then38)) #12
          to label %do.end41 [label %if.then38], !srcloc !222

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport6_gc_do.__UNIQUE_ID_ddebug697, ptr noundef nonnull @.str.17, i32 noundef %i.0343, i32 noundef %j.0332) #12
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %do.body32
  tail call void @_clear_bit(i32 noundef %j.0332, ptr noundef %used) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !248
  %cidr = getelementptr inbounds %struct.hash_netport6_elem, ptr %add.ptr, i32 0, i32 3
  %19 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %cidr, align 1
  %bf.lshr = lshr i8 %bf.load, 1
  %narrow = add nuw i8 %bf.lshr, 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc57.i.for.body.i_crit_edge, %do.end41
  %indvars.iv.i = phi i32 [ 0, %do.end41 ], [ %indvars.iv.next.i, %for.inc57.i.for.body.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.hash_netport6, ptr %h, i32 0, i32 7, i32 %indvars.iv.i, i32 1, i32 0
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %narrow)
  %cmp7.not.i = icmp eq i8 %21, %narrow
  br i1 %cmp7.not.i, label %if.end.i, label %for.inc57.i

if.end.i:                                         ; preds = %for.body.i
  %sub.i319 = zext i8 %bf.lshr to i32
  %arrayidx11.i = getelementptr %struct.hash_netport6, ptr %h, i32 0, i32 7, i32 %sub.i319
  %22 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx11.i, align 4
  %dec.i = add i32 %23, -1
  store i32 %dec.i, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp22.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp22.not.i, label %for.cond26.preheader.i, label %if.end.i.hash_netport6_del_cidr.exit_crit_edge

if.end.i.hash_netport6_del_cidr.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hash_netport6_del_cidr.exit

for.cond26.preheader.i:                           ; preds = %if.end.i
  %24 = trunc i32 %indvars.iv.i to i8
  %conv2786.i = and i32 %indvars.iv.i, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %24)
  %cmp2987.i = icmp ult i8 %24, 127
  br i1 %cmp2987.i, label %for.cond26.preheader.i.land.rhs.i320_crit_edge, label %for.cond26.preheader.i.for.end.i_crit_edge

for.cond26.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.cond26.preheader.i.land.rhs.i320_crit_edge:   ; preds = %for.cond26.preheader.i
  br label %land.rhs.i320

land.rhs.i320:                                    ; preds = %for.body38.i.land.rhs.i320_crit_edge, %for.cond26.preheader.i.land.rhs.i320_crit_edge
  %indvars.iv92.i = phi i32 [ %add.i, %for.body38.i.land.rhs.i320_crit_edge ], [ %indvars.iv.i, %for.cond26.preheader.i.land.rhs.i320_crit_edge ]
  %arrayidx36.i = getelementptr %struct.hash_netport6, ptr %h, i32 0, i32 7, i32 %indvars.iv92.i, i32 1, i32 0
  %25 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %land.rhs.i320.for.end.i_crit_edge, label %for.body38.i

land.rhs.i320.for.end.i_crit_edge:                ; preds = %land.rhs.i320
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body38.i:                                     ; preds = %land.rhs.i320
  %add.i = add nuw nsw i32 %indvars.iv92.i, 1
  %arrayidx44.i = getelementptr %struct.hash_netport6, ptr %h, i32 0, i32 7, i32 %add.i, i32 1, i32 0
  %27 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx44.i, align 1
  %29 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx36.i, align 1
  %exitcond94.not.i = icmp eq i32 %add.i, 127
  br i1 %exitcond94.not.i, label %for.body38.i.for.end.i_crit_edge, label %for.body38.i.land.rhs.i320_crit_edge

for.body38.i.land.rhs.i320_crit_edge:             ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i320

for.body38.i.for.end.i_crit_edge:                 ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body38.i.for.end.i_crit_edge, %land.rhs.i320.for.end.i_crit_edge, %for.cond26.preheader.i.for.end.i_crit_edge
  %conv27.lcssa.i = phi i32 [ %conv2786.i, %for.cond26.preheader.i.for.end.i_crit_edge ], [ %indvars.iv92.i, %land.rhs.i320.for.end.i_crit_edge ], [ 127, %for.body38.i.for.end.i_crit_edge ]
  %arrayidx56.i = getelementptr %struct.hash_netport6, ptr %h, i32 0, i32 7, i32 %conv27.lcssa.i, i32 1, i32 0
  %30 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx56.i, align 1
  br label %hash_netport6_del_cidr.exit

for.inc57.i:                                      ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 128
  br i1 %exitcond.not.i, label %for.inc57.i.hash_netport6_del_cidr.exit_crit_edge, label %for.inc57.i.for.body.i_crit_edge

for.inc57.i.for.body.i_crit_edge:                 ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc57.i.hash_netport6_del_cidr.exit_crit_edge: ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hash_netport6_del_cidr.exit

hash_netport6_del_cidr.exit:                      ; preds = %for.inc57.i.hash_netport6_del_cidr.exit_crit_edge, %for.end.i, %if.end.i.hash_netport6_del_cidr.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  %31 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %32, i32 %r, i32 2
  %33 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %elements, align 4
  %dec = add i32 %34, -1
  store i32 %dec, ptr %elements, align 4
  %35 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %extensions.i, align 2
  %37 = and i8 %36, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i321 = icmp eq i8 %37, 0
  br i1 %tobool.not.i321, label %hash_netport6_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge, label %if.then.i

hash_netport6_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge: ; preds = %hash_netport6_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_ext_destroy.exit

if.then.i:                                        ; preds = %hash_netport6_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %arrayidx.i322 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i322, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %40(ptr noundef %set, ptr noundef %add.ptr.i) #12
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i, %hash_netport6_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge
  %inc62 = add i32 %d.0335, 1
  br label %for.inc63

for.inc63:                                        ; preds = %ip_set_ext_destroy.exit, %ip_set_timeout_expired.exit.for.inc63_crit_edge, %if.end24.for.inc63_crit_edge, %if.then23
  %d.1 = phi i32 [ %inc62, %ip_set_ext_destroy.exit ], [ %d.0335, %ip_set_timeout_expired.exit.for.inc63_crit_edge ], [ %inc, %if.then23 ], [ %d.0335, %if.end24.for.inc63_crit_edge ]
  %inc64 = add nuw nsw i32 %j.0332, 1
  %41 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pos, align 1
  %conv18 = zext i8 %42 to i32
  %cmp19 = icmp ult i32 %inc64, %conv18
  br i1 %cmp19, label %for.inc63.for.body21_crit_edge, label %for.end65

for.inc63.for.body21_crit_edge:                   ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body21

for.end65:                                        ; preds = %for.inc63
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %d.1)
  %cmp66 = icmp ugt i32 %d.1, 1
  br i1 %cmp66, label %if.then68, label %for.end65.for.inc233_crit_edge

for.end65.for.inc233_crit_edge:                   ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc233

if.then68:                                        ; preds = %for.end65
  %size = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 2
  %43 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %size, align 8
  %conv69 = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %d.1, i32 %conv69)
  %cmp70.not = icmp ult i32 %d.1, %conv69
  br i1 %cmp70.not, label %if.end8.i.i, label %if.then72

if.then72:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  %mul75 = mul i32 %1, %conv69
  %45 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %46, i32 %r, i32 1
  %47 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ext_size, align 4
  %add76.neg = sub i32 -24, %mul75
  %sub = add i32 %add76.neg, %48
  store i32 %sub, ptr %ext_size, align 4
  br label %for.inc233.sink.split

if.end8.i.i:                                      ; preds = %if.then68
  %sub132 = add nsw i32 %conv69, -2
  %mul133 = mul i32 %sub132, %1
  %add134 = add i32 %mul133, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add134, i32 noundef 2848) #16
  %tobool136.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool136.not, label %if.end8.i.i.for.inc233_crit_edge, label %if.end138

if.end8.i.i.for.inc233_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc233

if.end138:                                        ; preds = %if.end8.i.i
  %49 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %size, align 8
  %sub141 = add i8 %50, -2
  %size143 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %size143 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %sub141, ptr %size143, align 16
  %52 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp147337.not = icmp eq i8 %53, 0
  br i1 %cmp147337.not, label %if.end138.for.end169_crit_edge, label %for.body149.lr.ph

if.end138.for.end169_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end169

for.body149.lr.ph:                                ; preds = %if.end138
  %used150 = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 1
  %value156 = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 5
  %value160 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 5
  %used164 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 1
  br label %for.body149

for.body149:                                      ; preds = %for.inc167.for.body149_crit_edge, %for.body149.lr.ph
  %d.2340 = phi i32 [ 0, %for.body149.lr.ph ], [ %d.3, %for.inc167.for.body149_crit_edge ]
  %j.1338 = phi i32 [ 0, %for.body149.lr.ph ], [ %inc168, %for.inc167.for.body149_crit_edge ]
  %div3.i314 = lshr i32 %j.1338, 5
  %arrayidx.i315 = getelementptr i32, ptr %used150, i32 %div3.i314
  %54 = ptrtoint ptr %arrayidx.i315 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %arrayidx.i315, align 4
  %and.i316 = and i32 %j.1338, 31
  %56 = shl nuw i32 1, %and.i316
  %57 = and i32 %55, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool153.not = icmp eq i32 %57, 0
  br i1 %tobool153.not, label %for.body149.for.inc167_crit_edge, label %if.end155

for.body149.for.inc167_crit_edge:                 ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc167

if.end155:                                        ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #14
  %mul158 = mul i32 %j.1338, %1
  %add.ptr159 = getelementptr i8, ptr %value156, i32 %mul158
  %mul162 = mul i32 %d.2340, %1
  %add.ptr163 = getelementptr i8, ptr %value160, i32 %mul162
  %58 = call ptr @memcpy(ptr %add.ptr163, ptr %add.ptr159, i32 %1)
  tail call void @_set_bit(i32 noundef %d.2340, ptr noundef %used164) #12
  %inc166 = add i32 %d.2340, 1
  br label %for.inc167

for.inc167:                                       ; preds = %if.end155, %for.body149.for.inc167_crit_edge
  %d.3 = phi i32 [ %inc166, %if.end155 ], [ %d.2340, %for.body149.for.inc167_crit_edge ]
  %inc168 = add nuw nsw i32 %j.1338, 1
  %59 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %pos, align 1
  %conv146 = zext i8 %60 to i32
  %cmp147 = icmp ult i32 %inc168, %conv146
  br i1 %cmp147, label %for.inc167.for.body149_crit_edge, label %for.inc167.for.end169_crit_edge

for.inc167.for.end169_crit_edge:                  ; preds = %for.inc167
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end169

for.inc167.for.body149_crit_edge:                 ; preds = %for.inc167
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body149

for.end169:                                       ; preds = %for.inc167.for.end169_crit_edge, %if.end138.for.end169_crit_edge
  %d.2.lcssa = phi i32 [ 0, %if.end138.for.end169_crit_edge ], [ %d.3, %for.inc167.for.end169_crit_edge ]
  %conv170 = trunc i32 %d.2.lcssa to i8
  %pos171 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %pos171 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv170, ptr %pos171, align 1
  %62 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hregion, align 4
  %ext_size176 = getelementptr %struct.ip_set_region, ptr %63, i32 %r, i32 1
  %64 = ptrtoint ptr %ext_size176 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ext_size176, align 4
  %sub177 = add i32 %add173.neg, %65
  store i32 %sub177, ptr %ext_size176, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !249
  br label %for.inc233.sink.split

for.inc233.sink.split:                            ; preds = %for.end169, %if.then72
  %retval.1.i.i327.sink = phi ptr [ %call9.i.i, %for.end169 ], [ null, %if.then72 ]
  %66 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %retval.1.i.i327.sink, ptr %arrayidx16, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %7, ptr noundef null) #12
  br label %for.inc233

for.inc233:                                       ; preds = %for.inc233.sink.split, %if.end8.i.i.for.inc233_crit_edge, %for.end65.for.inc233_crit_edge, %for.cond17.preheader.for.inc233_crit_edge, %do.end.for.inc233_crit_edge
  %inc234 = add nuw i32 %i.0343, 1
  %exitcond.not = icmp eq i32 %inc234, %cond12
  br i1 %exitcond.not, label %for.inc233.for.end235_crit_edge, label %for.inc233.do.end_crit_edge

for.inc233.do.end_crit_edge:                      ; preds = %for.inc233
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.inc233.for.end235_crit_edge:                  ; preds = %for.inc233
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end235

for.end235:                                       ; preds = %for.inc233.for.end235_crit_edge, %entry.for.end235_crit_edge
  %67 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hregion, align 4
  %arrayidx237 = getelementptr %struct.ip_set_region, ptr %68, i32 %r
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx237) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hash_netport6_ahash_destroy(ptr noundef %set, ptr noundef %t, i1 noundef zeroext %ext_destroy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %htable_bits = getelementptr inbounds %struct.htable, ptr %t, i32 0, i32 2
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %dsize.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %arrayidx.i9.i = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %for.inc.do.end_crit_edge ]
  %arrayidx = getelementptr %struct.htable, ptr %t, i32 0, i32 5, i32 %i.017
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end.for.inc_crit_edge, label %if.end

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %do.end
  %2 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %extensions, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp slt i8 %3, 0
  %4 = and i1 %tobool3.not, %ext_destroy
  br i1 %4, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end
  %pos.i = getelementptr inbounds %struct.hbucket, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pos.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp11.not.i = icmp eq i8 %6, 0
  br i1 %cmp11.not.i, label %if.then6.if.end7_crit_edge, label %for.body.lr.ph.i

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

for.body.lr.ph.i:                                 ; preds = %if.then6
  %used.i = getelementptr inbounds %struct.hbucket, ptr %1, i32 0, i32 1
  %value.i = getelementptr inbounds %struct.hbucket, ptr %1, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %i.012.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %used.i, i32 %div3.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.012.i, 31
  %9 = shl nuw i32 1, %and.i.i
  %10 = and i32 %9, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %11 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %extensions, align 2
  %13 = and i8 %12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %dsize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dsize.i, align 4
  %mul.i = mul i32 %15, %i.012.i
  %add.ptr.i = getelementptr i8, ptr %value.i, i32 %mul.i
  %16 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i9.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %18(ptr noundef %set, ptr noundef %add.ptr.i.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %19 = ptrtoint ptr %pos.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pos.i, align 1
  %conv.i = zext i8 %20 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end7_crit_edge

for.inc.i.if.end7_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end7:                                          ; preds = %for.inc.i.if.end7_crit_edge, %if.then6.if.end7_crit_edge, %if.end.if.end7_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %do.end.for.inc_crit_edge
  %inc = add i32 %i.017, 1
  %21 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %htable_bits, align 4
  %conv = zext i8 %22 to i32
  %i.0.highbits = lshr i32 %inc, %conv
  %cmp = icmp eq i32 %i.0.highbits, 0
  br i1 %cmp, label %for.inc.do.end_crit_edge, label %for.end

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %hregion = getelementptr inbounds %struct.htable, ptr %t, i32 0, i32 4
  %23 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %24) #12
  tail call void @ip_set_free(ptr noundef %t) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hash_netport6_test_cidrs(ptr noundef %set, ptr nocapture noundef %d, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b111 = load i1, ptr @hash_netport6_test_cidrs.__warned, align 1
  br i1 %.b111, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport6_test_cidrs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1161, ptr noundef nonnull @.str.8) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport6_test_cidrs.__UNIQUE_ID_ddebug752, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport6_test_cidrs, %if.then16)) #12
          to label %do.end19 [label %if.then16], !srcloc !222

if.then16:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport6_test_cidrs.__UNIQUE_ID_ddebug752, ptr noundef nonnull @.str.23) #12
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.end7
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %d, i32 0, i32 1
  %arrayidx8.i.i = getelementptr [4 x i32], ptr %d, i32 0, i32 2
  %arrayidx12.i.i = getelementptr [4 x i32], ptr %d, i32 0, i32 3
  %cidr2.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %d, i32 0, i32 3
  %initval = getelementptr inbounds %struct.hash_netport6, ptr %1, i32 0, i32 3
  %htable_bits = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 2
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %port4.i = getelementptr %struct.hash_netport6_elem, ptr %d, i32 0, i32 1
  %proto9.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %d, i32 0, i32 2
  br label %land.lhs.true20

land.lhs.true20:                                  ; preds = %for.inc78.land.lhs.true20_crit_edge, %do.end19
  %j.0126 = phi i32 [ 0, %do.end19 ], [ %inc79, %for.inc78.land.lhs.true20_crit_edge ]
  %cidr = getelementptr %struct.hash_netport6, ptr %1, i32 0, i32 7, i32 %j.0126, i32 1
  %4 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cidr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool22.not = icmp eq i8 %5, 0
  br i1 %tobool22.not, label %land.lhs.true20.cleanup_crit_edge, label %jhash2.exit

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

jhash2.exit:                                      ; preds = %land.lhs.true20
  %sub = add i8 %5, -1
  %idxprom.i.i.i = zext i8 %sub to i32
  %arrayidx.i.i.i = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_netmask_map, i32 0, i32 %idxprom.i.i.i
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i, align 4
  %8 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %d, align 4
  %and.i.i = and i32 %9, %7
  store i32 %and.i.i, ptr %d, align 4
  %arrayidx3.i.i = getelementptr i32, ptr %arrayidx.i.i.i, i32 1
  %10 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3.i.i, align 4
  %12 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i.i, align 4
  %and5.i.i = and i32 %13, %11
  store i32 %and5.i.i, ptr %arrayidx4.i.i, align 4
  %arrayidx7.i.i = getelementptr i32, ptr %arrayidx.i.i.i, i32 2
  %14 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7.i.i, align 4
  %16 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8.i.i, align 4
  %and9.i.i = and i32 %17, %15
  store i32 %and9.i.i, ptr %arrayidx8.i.i, align 4
  %arrayidx11.i.i = getelementptr i32, ptr %arrayidx.i.i.i, i32 3
  %18 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx11.i.i, align 4
  %20 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx12.i.i, align 4
  %and13.i.i = and i32 %21, %19
  store i32 %and13.i.i, ptr %arrayidx12.i.i, align 4
  %22 = ptrtoint ptr %cidr2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %cidr2.i, align 1
  %sub.i = shl i8 %sub, 1
  %bf.shl.i = add i8 %sub.i, -2
  %bf.clear.i = and i8 %bf.load.i, 1
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %cidr2.i, align 1
  %23 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %initval, align 4
  %add1.i = add i32 %24, -559038717
  %add2.i = add i32 %and.i.i, %add1.i
  %add4.i = add i32 %and5.i.i, %add1.i
  %add6.i = add i32 %and9.i.i, %add1.i
  %sub.i112 = sub i32 %add2.i, %add6.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #12
  %xor.i = xor i32 %sub.i112, %or.i.i
  %add7.i = add i32 %add6.i, %add4.i
  %sub8.i = sub i32 %add4.i, %xor.i
  %or.i135.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #12
  %xor10.i = xor i32 %sub8.i, %or.i135.i
  %add11.i = add i32 %xor.i, %add7.i
  %sub12.i = sub i32 %add7.i, %xor10.i
  %or.i136.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i, i32 %xor10.i, i32 8) #12
  %xor14.i = xor i32 %sub12.i, %or.i136.i
  %add15.i = add i32 %xor10.i, %add11.i
  %sub16.i = sub i32 %add11.i, %xor14.i
  %or.i137.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 16) #12
  %xor18.i = xor i32 %sub16.i, %or.i137.i
  %add19.i = add i32 %xor14.i, %add15.i
  %sub20.i = sub i32 %add15.i, %xor18.i
  %or.i138.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 19) #12
  %xor22.i = xor i32 %sub20.i, %or.i138.i
  %add23.i = add i32 %xor18.i, %add19.i
  %sub24.i = sub i32 %add19.i, %xor22.i
  %or.i139.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i, i32 %xor22.i, i32 4) #12
  %xor26.i = xor i32 %sub24.i, %or.i139.i
  %add27.i = add i32 %xor22.i, %add23.i
  %25 = ptrtoint ptr %port4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port4.i, align 4
  %add33.i = add i32 %26, %add27.i
  %27 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx12.i.i, align 4
  %add36.i = add i32 %28, %add23.i
  %xor37.i = xor i32 %xor26.i, %add33.i
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #12
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %add36.i, %sub39.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #12
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #12
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #12
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #12
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #12
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #12
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  %29 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %htable_bits, align 4
  %conv37 = zext i8 %30 to i32
  %notmask = shl nsw i32 -1, %conv37
  %sub38 = xor i32 %notmask, -1
  %and = and i32 %sub57.i, %sub38
  %arrayidx43 = getelementptr %struct.htable, ptr %3, i32 0, i32 5, i32 %and
  %31 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %arrayidx43, align 4
  %call45 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true47, label %jhash2.exit.do.end55_crit_edge

jhash2.exit.do.end55_crit_edge:                   ; preds = %jhash2.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end55

land.lhs.true47:                                  ; preds = %jhash2.exit
  %call48 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true47.do.end55_crit_edge, label %land.lhs.true50

land.lhs.true47.do.end55_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end55

land.lhs.true50:                                  ; preds = %land.lhs.true47
  %.b109110 = load i1, ptr @hash_netport6_test_cidrs.__warned.54, align 1
  br i1 %.b109110, label %land.lhs.true50.do.end55_crit_edge, label %if.then52

land.lhs.true50.do.end55_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end55

if.then52:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport6_test_cidrs.__warned.54, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1185, ptr noundef nonnull @.str.8) #12
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %land.lhs.true50.do.end55_crit_edge, %land.lhs.true47.do.end55_crit_edge, %jhash2.exit.do.end55_crit_edge
  %tobool57.not = icmp eq ptr %32, null
  br i1 %tobool57.not, label %do.end55.for.inc78_crit_edge, label %for.cond60.preheader

do.end55.for.inc78_crit_edge:                     ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc78

for.cond60.preheader:                             ; preds = %do.end55
  %pos = getelementptr inbounds %struct.hbucket, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp62123.not = icmp eq i8 %34, 0
  br i1 %cmp62123.not, label %for.cond60.preheader.for.inc78_crit_edge, label %for.body64.lr.ph

for.cond60.preheader.for.inc78_crit_edge:         ; preds = %for.cond60.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc78

for.body64.lr.ph:                                 ; preds = %for.cond60.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %32, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %32, i32 0, i32 5
  br label %for.body64

for.body64:                                       ; preds = %for.inc.for.body64_crit_edge, %for.body64.lr.ph
  %i.0124 = phi i32 [ 0, %for.body64.lr.ph ], [ %inc, %for.inc.for.body64_crit_edge ]
  %div3.i = lshr i32 %i.0124, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0124, 31
  %37 = shl nuw i32 1, %and.i
  %38 = and i32 %36, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool66.not = icmp eq i32 %38, 0
  br i1 %tobool66.not, label %for.body64.for.inc_crit_edge, label %if.end68

for.body64.for.inc_crit_edge:                     ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end68:                                         ; preds = %for.body64
  %39 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dsize, align 4
  %mul = mul i32 %40, %i.0124
  %add.ptr = getelementptr i8, ptr %value, i32 %mul
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr, align 4
  %43 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %d, align 4
  %xor.i.i = xor i32 %44, %42
  %arrayidx4.i.i113 = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx4.i.i113 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx4.i.i113, align 4
  %47 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx4.i.i, align 4
  %xor7.i.i = xor i32 %48, %46
  %or.i.i114 = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 2
  %49 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx9.i.i, align 4
  %51 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx8.i.i, align 4
  %xor12.i.i = xor i32 %52, %50
  %or13.i.i = or i32 %or.i.i114, %xor12.i.i
  %arrayidx15.i.i = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 3
  %53 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx15.i.i, align 4
  %55 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx12.i.i, align 4
  %xor18.i.i = xor i32 %56, %54
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %if.end68.for.inc_crit_edge

if.end68.for.inc_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.end68
  %port.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %add.ptr, i32 0, i32 1
  %57 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %port.i, align 4
  %59 = ptrtoint ptr %port4.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %port4.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %58, i16 %60)
  %cmp.i116 = icmp eq i16 %58, %60
  br i1 %cmp.i116, label %land.lhs.true7.i, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %proto.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %add.ptr, i32 0, i32 2
  %61 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %proto.i, align 2
  %63 = ptrtoint ptr %proto9.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %proto9.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %64)
  %cmp11.i = icmp eq i8 %62, %64
  br i1 %cmp11.i, label %hash_netport6_data_equal.exit, label %land.lhs.true7.i.for.inc_crit_edge

land.lhs.true7.i.for.inc_crit_edge:               ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

hash_netport6_data_equal.exit:                    ; preds = %land.lhs.true7.i
  %cidr.i = getelementptr inbounds %struct.hash_netport6_elem, ptr %add.ptr, i32 0, i32 3
  %65 = ptrtoint ptr %cidr.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i117 = load i8, ptr %cidr.i, align 1
  %66 = ptrtoint ptr %cidr2.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load15.i = load i8, ptr %cidr2.i, align 1
  %cmp18.unshifted.i = xor i8 %bf.load15.i, %bf.load.i117
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %cmp18.unshifted.i)
  %cmp18.i = icmp ult i8 %cmp18.unshifted.i, 2
  br i1 %cmp18.i, label %if.end72, label %hash_netport6_data_equal.exit.for.inc_crit_edge

hash_netport6_data_equal.exit.for.inc_crit_edge:  ; preds = %hash_netport6_data_equal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end72:                                         ; preds = %hash_netport6_data_equal.exit
  %call.i = tail call zeroext i1 @ip_set_match_extensions(ptr noundef %set, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags, ptr noundef %add.ptr) #12
  br i1 %call.i, label %hash_netport6_data_match.exit, label %if.end72.for.inc_crit_edge

if.end72.for.inc_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

hash_netport6_data_match.exit:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %cidr.i.le = getelementptr inbounds %struct.hash_netport6_elem, ptr %add.ptr, i32 0, i32 3
  %67 = ptrtoint ptr %cidr.i.le to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load.i.i = load i8, ptr %cidr.i.le, align 1
  %bf.clear.i.i = and i8 %bf.load.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i.i)
  %tobool.not.i.i = icmp eq i8 %bf.clear.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 -39
  br label %cleanup

for.inc:                                          ; preds = %if.end72.for.inc_crit_edge, %hash_netport6_data_equal.exit.for.inc_crit_edge, %land.lhs.true7.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end68.for.inc_crit_edge, %for.body64.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0124, 1
  %68 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %pos, align 1
  %conv61 = zext i8 %69 to i32
  %cmp62 = icmp ult i32 %inc, %conv61
  br i1 %cmp62, label %for.inc.for.body64_crit_edge, label %for.inc.for.inc78_crit_edge

for.inc.for.inc78_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc78

for.inc.for.body64_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body64

for.inc78:                                        ; preds = %for.inc.for.inc78_crit_edge, %for.cond60.preheader.for.inc78_crit_edge, %do.end55.for.inc78_crit_edge
  %inc79 = add nuw nsw i32 %j.0126, 1
  %exitcond.not = icmp eq i32 %inc79, 128
  br i1 %exitcond.not, label %for.inc78.cleanup_crit_edge, label %for.inc78.land.lhs.true20_crit_edge

for.inc78.land.lhs.true20_crit_edge:              ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true20

for.inc78.cleanup_crit_edge:                      ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc78.cleanup_crit_edge, %hash_netport6_data_match.exit, %land.lhs.true20.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond.i.i, %hash_netport6_data_match.exit ], [ 0, %for.inc78.cleanup_crit_edge ], [ 0, %land.lhs.true20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_netport4_gc(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %set1 = getelementptr inbounds %struct.htable_gc, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %set1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set1, align 4
  %data = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %lock = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %call = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #12
  br i1 %call, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b79 = load i1, ptr @hash_netport4_gc.__warned, align 1
  br i1 %.b79, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport4_gc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 582, ptr noundef nonnull @.str.33) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %uref = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !227
  %htable_bits = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %htable_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %cmp = icmp ult i8 %8, 10
  %conv = zext i8 %8 to i32
  %sub = add nsw i32 %conv, -10
  %shl = shl nuw i32 1, %sub
  %cond = select i1 %cmp, i32 1, i32 %shl
  %region = getelementptr inbounds %struct.htable_gc, ptr %work, i32 0, i32 2
  %9 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %region, align 4
  %inc = add i32 %10, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %cond)
  %cmp12.not = icmp ult i32 %10, %cond
  %storemerge = select i1 %cmp12.not, i32 %inc, i32 0
  %r.0 = select i1 %cmp12.not, i32 %10, i32 0
  %11 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %region, align 4
  %timeout = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timeout, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  tail call fastcc void @hash_netport4_gc_do(ptr noundef %1, ptr noundef %3, ptr noundef %5, i32 noundef %r.0)
  %call.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !232
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !233
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true40, label %do.end.if.end54_crit_edge

do.end.if.end54_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

land.lhs.true40:                                  ; preds = %do.end
  %call.i.i81 = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #12
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool42.not = icmp eq i32 %16, 0
  br i1 %tobool42.not, label %land.lhs.true40.if.end54_crit_edge, label %do.body44

land.lhs.true40.if.end54_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

do.body44:                                        ; preds = %land.lhs.true40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport4_gc.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport4_gc, %if.then50)) #12
          to label %do.end.i [label %if.then50], !srcloc !222

if.then50:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport4_gc.__UNIQUE_ID_ddebug630, ptr noundef nonnull @.str.67, ptr noundef %5) #12
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.then50, %do.body44
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.do.end.i_crit_edge ], [ 0, %do.body44 ], [ 0, %if.then50 ]
  %arrayidx.i = getelementptr %struct.htable, ptr %5, i32 0, i32 5, i32 %i.017.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %do.end.i.for.inc.i_crit_edge, label %if.end.i

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %18) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %19 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %htable_bits, align 4
  %conv.i = zext i8 %20 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i
  %cmp.i = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i, label %for.inc.i.do.end.i_crit_edge, label %hash_netport4_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hash_netport4_ahash_destroy.exit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %hregion.i = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 4
  %21 = ptrtoint ptr %hregion.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hregion.i, align 4
  tail call void @ip_set_free(ptr noundef %22) #12
  tail call void @ip_set_free(ptr noundef %5) #12
  br label %if.end54

if.end54:                                         ; preds = %hash_netport4_ahash_destroy.exit, %land.lhs.true40.if.end54_crit_edge, %do.end.if.end54_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %23 = icmp ult i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 540, i32 %13)
  %cmp22 = icmp ult i32 %13, 540
  %div = udiv i32 %13, 3
  %div.op = mul i32 %div, 100
  %div..op = select i1 %cmp22, i32 %div.op, i32 18000
  %mul = select i1 %23, i32 100, i32 %div..op
  %24 = select i1 %cmp, i32 0, i32 %sub
  %div3184 = lshr i32 %mul, %24
  %25 = tail call i32 @llvm.umax.i32(i32 %div3184, i32 10)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %26 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i82 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %work, i32 noundef %25) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_netport6_gc(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %set1 = getelementptr inbounds %struct.htable_gc, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %set1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set1, align 4
  %data = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %lock = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %call = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #12
  br i1 %call, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b79 = load i1, ptr @hash_netport6_gc.__warned, align 1
  br i1 %.b79, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_netport6_gc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 582, ptr noundef nonnull @.str.33) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %uref = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !227
  %htable_bits = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %htable_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %cmp = icmp ult i8 %8, 10
  %conv = zext i8 %8 to i32
  %sub = add nsw i32 %conv, -10
  %shl = shl nuw i32 1, %sub
  %cond = select i1 %cmp, i32 1, i32 %shl
  %region = getelementptr inbounds %struct.htable_gc, ptr %work, i32 0, i32 2
  %9 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %region, align 4
  %inc = add i32 %10, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %cond)
  %cmp12.not = icmp ult i32 %10, %cond
  %storemerge = select i1 %cmp12.not, i32 %inc, i32 0
  %r.0 = select i1 %cmp12.not, i32 %10, i32 0
  %11 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %region, align 4
  %timeout = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timeout, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  tail call fastcc void @hash_netport6_gc_do(ptr noundef %1, ptr noundef %3, ptr noundef %5, i32 noundef %r.0)
  %call.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !231
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !232
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !233
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true40, label %do.end.if.end54_crit_edge

do.end.if.end54_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

land.lhs.true40:                                  ; preds = %do.end
  %call.i.i81 = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #12
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool42.not = icmp eq i32 %16, 0
  br i1 %tobool42.not, label %land.lhs.true40.if.end54_crit_edge, label %do.body44

land.lhs.true40.if.end54_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

do.body44:                                        ; preds = %land.lhs.true40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netport6_gc.__UNIQUE_ID_ddebug708, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netport6_gc, %if.then50)) #12
          to label %do.end.i [label %if.then50], !srcloc !222

if.then50:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netport6_gc.__UNIQUE_ID_ddebug708, ptr noundef nonnull @.str.67, ptr noundef %5) #12
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.then50, %do.body44
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.do.end.i_crit_edge ], [ 0, %do.body44 ], [ 0, %if.then50 ]
  %arrayidx.i = getelementptr %struct.htable, ptr %5, i32 0, i32 5, i32 %i.017.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %do.end.i.for.inc.i_crit_edge, label %if.end.i

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %18) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %19 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %htable_bits, align 4
  %conv.i = zext i8 %20 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i
  %cmp.i = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i, label %for.inc.i.do.end.i_crit_edge, label %hash_netport6_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hash_netport6_ahash_destroy.exit:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %hregion.i = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 4
  %21 = ptrtoint ptr %hregion.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hregion.i, align 4
  tail call void @ip_set_free(ptr noundef %22) #12
  tail call void @ip_set_free(ptr noundef %5) #12
  br label %if.end54

if.end54:                                         ; preds = %hash_netport6_ahash_destroy.exit, %land.lhs.true40.if.end54_crit_edge, %do.end.if.end54_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %23 = icmp ult i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 540, i32 %13)
  %cmp22 = icmp ult i32 %13, 540
  %div = udiv i32 %13, 3
  %div.op = mul i32 %div, 100
  %div..op = select i1 %cmp22, i32 %div.op, i32 18000
  %mul = select i1 %23, i32 100, i32 %div..op
  %24 = select i1 %cmp, i32 0, i32 %sub
  %div3184 = lshr i32 %mul, %24
  %25 = tail call i32 @llvm.umax.i32(i32 %div3184, i32 10)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %26 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i82 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %work, i32 noundef %25) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_type_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !31, !33, !34, !36, !38, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !53, !55, !56, !57, !59, !61, !63, !65, !66, !67, !69, !71, !73, !75, !76, !77, !79, !81, !83, !85, !87, !88, !89, !91, !93, !95, !96, !98, !99, !101, !102, !103, !105, !106, !108, !110, !112, !114, !116, !118, !119, !120, !122, !124, !125, !127, !128, !130, !131, !132, !134, !135, !137, !139, !141, !142, !144, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !198, !199, !200, !201, !203, !205, !206, !207, !208, !209, !210, !211}
!llvm.named.register.sp = !{!212}
!llvm.module.flags = !{!213, !214, !215, !216, !217, !218, !219, !220}
!llvm.ident = !{!221}

!0 = !{ptr @__UNIQUE_ID_file610, !1, !"__UNIQUE_ID_file610", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipset/ip_set_hash_netport.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_license611, !1, !"__UNIQUE_ID_license611", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author612, !4, !"__UNIQUE_ID_author612", i1 false, i1 false}
!4 = !{!"../net/netfilter/ipset/ip_set_hash_netport.c", i32 33, i32 1}
!5 = !{ptr @__UNIQUE_ID_description613, !6, !"__UNIQUE_ID_description613", i1 false, i1 false}
!6 = !{!"../net/netfilter/ipset/ip_set_hash_netport.c", i32 34, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias614, !8, !"__UNIQUE_ID_alias614", i1 false, i1 false}
!8 = !{!"../net/netfilter/ipset/ip_set_hash_netport.c", i32 35, i32 1}
!9 = !{ptr @__initcall__kmod_ip_set_hash_netport__774_519_hash_netport_init6, !10, !"__initcall__kmod_ip_set_hash_netport__774_519_hash_netport_init6", i1 false, i1 false}
!10 = !{!"../net/netfilter/ipset/ip_set_hash_netport.c", i32 519, i32 1}
!11 = !{ptr @__exitcall_hash_netport_fini, !12, !"__exitcall_hash_netport_fini", i1 false, i1 false}
!12 = !{!"../net/netfilter/ipset/ip_set_hash_netport.c", i32 520, i32 1}
!13 = !{ptr @hash_netport_type, !14, !"hash_netport_type", i1 false, i1 false}
!14 = !{!"../net/netfilter/ipset/ip_set_hash_netport.c", i32 465, i32 27}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1458, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hash_netport_create.__UNIQUE_ID_ddebug771, !16, !"__UNIQUE_ID_ddebug771", i1 false, i1 false}
!21 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @hash_netport_create.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1537, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1592, i32 2}
!28 = !{ptr @hash_netport_create.__UNIQUE_ID_ddebug773, !27, !"__UNIQUE_ID_ddebug773", i1 false, i1 false}
!29 = !{ptr @hash_netport4_variant, !30, !"hash_netport4_variant", i1 false, i1 false}
!30 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1422, i32 41}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 855, i32 6}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 878, i32 6}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1015, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hash_netport4_add._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @hash_netport4_add._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1022, i32 3}
!43 = !{ptr @hash_netport4_add.__UNIQUE_ID_ddebug657, !42, !"__UNIQUE_ID_ddebug657", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 509, i32 7}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 520, i32 4}
!55 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @hash_netport4_gc_do.__UNIQUE_ID_ddebug619, !54, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 443, i32 7}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1048, i32 6}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1055, i32 6}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1135, i32 3}
!65 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @hash_netport4_del.__UNIQUE_ID_ddebug671, !64, !"__UNIQUE_ID_ddebug671", i1 false, i1 false}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1224, i32 6}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1239, i32 6}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1161, i32 21}
!73 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1172, i32 2}
!75 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @hash_netport4_test_cidrs.__UNIQUE_ID_ddebug674, !74, !"__UNIQUE_ID_ddebug674", i1 false, i1 false}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1185, i32 7}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 647, i32 9}
!81 = !{ptr @hash_netport4_resize.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 672, i32 3}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 677, i32 9}
!85 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 680, i32 2}
!87 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @hash_netport4_resize.__UNIQUE_ID_ddebug635, !86, !"__UNIQUE_ID_ddebug635", i1 false, i1 false}
!89 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!90 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 687, i32 8}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 706, i32 9}
!93 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 764, i32 2}
!95 = !{ptr @hash_netport4_resize.__UNIQUE_ID_ddebug642, !94, !"__UNIQUE_ID_ddebug642", i1 false, i1 false}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 782, i32 3}
!98 = !{ptr @hash_netport4_resize.__UNIQUE_ID_ddebug643, !97, !"__UNIQUE_ID_ddebug643", i1 false, i1 false}
!99 = !{ptr @.str.32, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 803, i32 2}
!101 = !{ptr @hash_netport4_resize._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @hash_netport4_resize._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 466, i32 27}
!105 = !{ptr @.str.33, !104, !"<string literal>", i1 false, i1 false}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 412, i32 6}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 417, i32 8}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1272, i32 6}
!112 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!113 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 818, i32 6}
!114 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!115 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 822, i32 8}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1354, i32 2}
!118 = !{ptr @.str.37, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @hash_netport4_list.__UNIQUE_ID_ddebug688, !117, !"__UNIQUE_ID_ddebug688", i1 false, i1 false}
!120 = distinct !{null, !121, !"__warned", i1 false, i1 false}
!121 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1362, i32 7}
!122 = !{ptr @.str.38, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1363, i32 3}
!124 = !{ptr @hash_netport4_list.__UNIQUE_ID_ddebug691, !123, !"__UNIQUE_ID_ddebug691", i1 false, i1 false}
!125 = !{ptr @.str.39, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1373, i32 4}
!127 = !{ptr @hash_netport4_list.__UNIQUE_ID_ddebug692, !126, !"__UNIQUE_ID_ddebug692", i1 false, i1 false}
!128 = !{ptr @.str.40, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1400, i32 3}
!130 = !{ptr @hash_netport4_list._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @hash_netport4_list._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = distinct !{null, !133, !"__warned", i1 false, i1 false}
!133 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!134 = !{ptr @.str.41, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.42, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../include/linux/sched.h", i32 2089, i32 2}
!137 = !{ptr @.str.43, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../include/net/netlink.h", i32 991, i32 3}
!139 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!140 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!141 = !{ptr @.str.44, !140, !"<string literal>", i1 false, i1 false}
!142 = distinct !{null, !143, !"__warned", i1 false, i1 false}
!143 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1321, i32 7}
!144 = !{ptr @.str.45, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1328, i32 4}
!146 = !{ptr @.str.46, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @hash_netport4_uref.__UNIQUE_ID_ddebug687, !145, !"__UNIQUE_ID_ddebug687", i1 false, i1 false}
!148 = !{ptr @hash_netport6_variant, !30, !"hash_netport6_variant", i1 false, i1 false}
!149 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!150 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!151 = !{ptr @.str.48, !37, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @hash_netport6_add._entry, !37, !"_entry", i1 false, i1 false}
!153 = !{ptr @hash_netport6_add._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @hash_netport6_add.__UNIQUE_ID_ddebug735, !42, !"__UNIQUE_ID_ddebug735", i1 false, i1 false}
!155 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!156 = !{ptr @.str.49, !54, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @hash_netport6_gc_do.__UNIQUE_ID_ddebug697, !54, !"__UNIQUE_ID_ddebug697", i1 false, i1 false}
!158 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!159 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!160 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!161 = !{ptr @.str.51, !64, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @hash_netport6_del.__UNIQUE_ID_ddebug749, !64, !"__UNIQUE_ID_ddebug749", i1 false, i1 false}
!163 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!164 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!165 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!166 = !{ptr @.str.53, !74, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @hash_netport6_test_cidrs.__UNIQUE_ID_ddebug752, !74, !"__UNIQUE_ID_ddebug752", i1 false, i1 false}
!168 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!169 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!170 = !{ptr @hash_netport6_resize.__key, !82, !"__key", i1 false, i1 false}
!171 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!172 = !{ptr @.str.56, !86, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @hash_netport6_resize.__UNIQUE_ID_ddebug713, !86, !"__UNIQUE_ID_ddebug713", i1 false, i1 false}
!174 = distinct !{null, !90, !"__warned", i1 false, i1 false}
!175 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!176 = !{ptr @hash_netport6_resize.__UNIQUE_ID_ddebug720, !94, !"__UNIQUE_ID_ddebug720", i1 false, i1 false}
!177 = !{ptr @hash_netport6_resize.__UNIQUE_ID_ddebug721, !97, !"__UNIQUE_ID_ddebug721", i1 false, i1 false}
!178 = !{ptr @hash_netport6_resize._entry, !100, !"_entry", i1 false, i1 false}
!179 = !{ptr @hash_netport6_resize._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!180 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!181 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!182 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!183 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!184 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!185 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!186 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @hash_netport6_list.__UNIQUE_ID_ddebug766, !117, !"__UNIQUE_ID_ddebug766", i1 false, i1 false}
!188 = distinct !{null, !121, !"__warned", i1 false, i1 false}
!189 = !{ptr @hash_netport6_list.__UNIQUE_ID_ddebug769, !123, !"__UNIQUE_ID_ddebug769", i1 false, i1 false}
!190 = !{ptr @hash_netport6_list.__UNIQUE_ID_ddebug770, !126, !"__UNIQUE_ID_ddebug770", i1 false, i1 false}
!191 = !{ptr @hash_netport6_list._entry, !129, !"_entry", i1 false, i1 false}
!192 = !{ptr @hash_netport6_list._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!193 = distinct !{null, !143, !"__warned", i1 false, i1 false}
!194 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @hash_netport6_uref.__UNIQUE_ID_ddebug765, !145, !"__UNIQUE_ID_ddebug765", i1 false, i1 false}
!196 = !{ptr @hash_netport4_gc_init.__key, !197, !"__key", i1 false, i1 false}
!197 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 608, i32 2}
!198 = !{ptr @.str.63, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @hash_netport4_gc_init.__key.64, !197, !"__key", i1 false, i1 false}
!200 = !{ptr @.str.65, !197, !"<string literal>", i1 false, i1 false}
!201 = distinct !{null, !202, !"__warned", i1 false, i1 false}
!202 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 582, i32 6}
!203 = !{ptr @.str.66, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 597, i32 3}
!205 = !{ptr @.str.67, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @hash_netport4_gc.__UNIQUE_ID_ddebug630, !204, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!207 = !{ptr @hash_netport6_gc_init.__key, !197, !"__key", i1 false, i1 false}
!208 = !{ptr @hash_netport6_gc_init.__key.68, !197, !"__key", i1 false, i1 false}
!209 = distinct !{null, !202, !"__warned", i1 false, i1 false}
!210 = !{ptr @.str.69, !204, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @hash_netport6_gc.__UNIQUE_ID_ddebug708, !204, !"__UNIQUE_ID_ddebug708", i1 false, i1 false}
!212 = !{!"sp"}
!213 = !{i32 1, !"wchar_size", i32 2}
!214 = !{i32 1, !"min_enum_size", i32 4}
!215 = !{i32 8, !"branch-target-enforcement", i32 0}
!216 = !{i32 8, !"sign-return-address", i32 0}
!217 = !{i32 8, !"sign-return-address-all", i32 0}
!218 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!219 = !{i32 7, !"uwtable", i32 1}
!220 = !{i32 7, !"frame-pointer", i32 2}
!221 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!222 = !{i64 2148974834, i64 2148974839, i64 2148974852, i64 2148974896, i64 2148974930, i64 2148974951}
!223 = !{!"branch_weights", i32 1, i32 2000}
!224 = !{i32 0, i32 33}
!225 = !{!"auto-init"}
!226 = !{!"branch_weights", i32 1073205, i32 2146410443}
!227 = !{i64 2148178835, i64 2148178861, i64 2148178890, i64 2148178924, i64 2148178955, i64 2148178978}
!228 = !{i64 2158899439}
!229 = !{i64 2158905208}
!230 = !{i8 0, i8 2}
!231 = !{i64 2148267287}
!232 = !{i64 2148182020, i64 2148182052, i64 2148182081, i64 2148182115, i64 2148182146, i64 2148182169}
!233 = !{i64 2148267516}
!234 = !{i64 2158931082}
!235 = !{i64 2158948653}
!236 = !{i64 2158864095}
!237 = !{i64 2148181300, i64 2148181326, i64 2148181355, i64 2148181389, i64 2148181420, i64 2148181443}
!238 = !{!"branch_weights", i32 2000, i32 1}
!239 = !{i64 2149377616}
!240 = !{i64 2149377882}
!241 = !{i64 2158801019}
!242 = !{i64 2158817859}
!243 = !{i64 2159179247}
!244 = !{i64 2159185016}
!245 = !{i64 2159206829}
!246 = !{i64 2159224400}
!247 = !{i64 2159139842}
!248 = !{i64 2159080827}
!249 = !{i64 2159097667}
